<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Http\Request;

use App\Page;
use App\About;
use App\History;
use App\Project;
use App\News;
use App\Message;


use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


class PageController extends Controller
{
    public function index($slug)
    {
        $Page = Page::whereTranslation('slug', $slug)->get()->first();
        if (empty($Page))
            abort('404');

        SEOMeta::setTitleDefault(__('name'));
        SEOMeta::setTitle($Page->getTranslatedAttribute('meta_title'));
        SEOMeta::setDescription($Page->getTranslatedAttribute('meta_desc'));
        SEOMeta::setCanonical(url()->full());
        $keywords = explode(',', $Page->getTranslatedAttribute('meta_tags'));
        SEOMeta::addKeyword($keywords);


        OpenGraph::setDescription($Page->getTranslatedAttribute('meta_desc'));
        OpenGraph::setTitle($Page->getTranslatedAttribute('meta_title'));
        OpenGraph::setUrl(url()->full());
        OpenGraph::addProperty('type', 'article');

        OpenGraph::addImage($Page->image);

        JsonLd::setTitle($Page->getTranslatedAttribute('meta_title'));
        JsonLd::setDescription($Page->getTranslatedAttribute('meta_desc'));
        JsonLd::setType('Article');
        JsonLd::addImage($Page->images);

        $Content = [];
        switch ($Page->slug) {
            case 'hakkimizda':
                $Content = ['about' => About::find(1), 'history' => History::orderBy('ordering')->orderBy('year', 'desc')->get()];
                break;
            case 'projeler':
                $Content = ['projects' => Project::where('status', 1)->orderBy('ordering')->orderBy('created_at', 'desc')->get()];
                break;
            case 'haberler':
                $Content = ['news' => News::where('status', 1)->orderBy('ordering')->orderBy('created_at', 'desc')->get()];
                break;
        }

        return view('pages.template')->with('Page', $Page)->with('Content', $Content);
    }

    function contact(Request $request)
    {

        $executed = RateLimiter::attempt(
            'send-message:' . $request->ip(),
            $perMinute = 1,
            function () {
            }
        );

        if (!$executed) {
            return back()->with(['status' => 'danger', 'message' => __('response1')]);
        }

        $validated = $request->validate([
            'name' => 'required',
            'message' => 'required',
            'email' => 'required',
        ]);


        $Data = $request->all();
        $Message = new Message;
        $Message->name = $Data['name'];
        $Message->email = $Data['email'];
        $Message->message = $Data['message'];
        if ($Message->save()) {
            $mail = new PHPMailer(true);
            $mail->isSMTP(); 
            $mail->Host = env('MAIL_HOST'); 
            $mail->SMTPAuth = true;
            $mail->Username = env('MAIL_USERNAME'); 
            $mail->Password = env('MAIL_PASSWORD');
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; 
            $mail->Port = 465;

            $mail->setFrom('noreply@semsoyluinsaat.com.tr', 'Şemsoylu İnşaat');
            $mail->addAddress('info@semsoyluinsaat.com.tr'); 

            $mail->isHTML(true); 
            $mail->Subject = 'İletişim Mesajı Geldi';
            $mail->Body = view("email.contact")->with('Request', $request);
            $mail->AltBody = 'Mesajı site üzerinden görüntülemek için paneli ziyaret ediniz.';

            $mail->send();

            return back()->with(['status' => 'success', 'message' => __('response2')]);
        } else {
            return back()->with(['status' => 'danger', 'message' => __('response3')]);
        }
    }
}