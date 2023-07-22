<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Project;


use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;

class ProjectController extends Controller
{
    public function index($slug) {
        $Project = Project::whereTranslation('slug',$slug)->get()->first();
        if (empty($Project)) abort('404');

        SEOMeta::setTitleDefault(__('name'));
        SEOMeta::setTitle($Project->getTranslatedAttribute('title'));
        SEOMeta::setDescription($Project->getTranslatedAttribute('spot'));
        SEOMeta::setCanonical(url()->full());


        OpenGraph::setDescription($Project->getTranslatedAttribute('spot'));
        OpenGraph::setTitle($Project->getTranslatedAttribute('title'));
        OpenGraph::setUrl(url()->full());
        OpenGraph::addProperty('type', 'article');

        OpenGraph::addImage($Project->image);

        JsonLd::setTitle($Project->getTranslatedAttribute('title'));
        JsonLd::setDescription($Project->getTranslatedAttribute('spot'));
        JsonLd::setType('Article');
        JsonLd::addImage($Project->image);

        $Next = Project::find(Project::where('status',1)->where('id', '>', $Project->id)->min('id'));
        if(empty($Next)) $Next = Project::find(Project::where('status',1)->where('id', '<', $Project->id)->max('id'));


        return view('pages.project')->with('Project',$Project)->with('Next',$Next);
    }
}
