<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Page;


use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;

use App\About;
use App\Service;
use App\Project;
use App\Counter;
use App\News;
class HomeController extends Controller
{
    public function index() {
        $Page = Page::find(1);

        SEOMeta::setTitleDefault(__('name'));
        SEOMeta::setTitle($Page->getTranslatedAttribute('meta_title'));
        SEOMeta::setDescription($Page->getTranslatedAttribute('meta_desc'));
        SEOMeta::setCanonical(url()->full());
        $keywords = explode(',',$Page->getTranslatedAttribute('meta_tags'));
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

        $About = About::find(1);

        $Services = Service::where('status',1)->orderBy('ordering')->limit(3,0)->get();

        $Projects = Project::where('status',1)->orderBy('ordering')->orderBy('created_at','desc')->limit(6,0)->get();

        $Counter = Counter::where('status',1)->orderBy('ordering')->get();

        $News = News::where('status',1)->orderBy('ordering')->orderBy('created_at','desc')->limit(3,0)->get();
        



        return view('pages.home')->with('Page',$Page)->with('About',$About)->with('Services',$Services)->with('Projects',$Projects)->with('Counter',$Counter)->with('News',$News);
    }
}
