<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\News;


use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;

class NewsController extends Controller
{
    function index($slug) {
        $News = News::whereTranslation('slug',$slug)->get()->first();
        if (empty($News)) abort('404');

        SEOMeta::setTitleDefault(__('name'));
        SEOMeta::setTitle($News->getTranslatedAttribute('title'));
        SEOMeta::setDescription($News->getTranslatedAttribute('spot'));
        SEOMeta::setCanonical(url()->full());


        OpenGraph::setDescription($News->getTranslatedAttribute('spot'));
        OpenGraph::setTitle($News->getTranslatedAttribute('title'));
        OpenGraph::setUrl(url()->full());
        OpenGraph::addProperty('type', 'article');

        OpenGraph::addImage($News->image);

        JsonLd::setTitle($News->getTranslatedAttribute('title'));
        JsonLd::setDescription($News->getTranslatedAttribute('spot'));
        JsonLd::setType('Article');
        JsonLd::addImage($News->image);

        $Next = News::find(News::where('status',1)->where('id', '>', $News->id)->min('id'));
        if(empty($Next)) $Next = News::find(News::where('status',1)->where('id', '<', $News->id)->max('id'));


        return view('pages.news')->with('News',$News)->with('Next',$Next);
        
    }
}
