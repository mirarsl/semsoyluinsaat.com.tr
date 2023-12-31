<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Page extends Model
{
    use Translatable;
    protected $translatable = ['title', 'text',"meta_title",'meta_desc','meta_tags','slug'];   
}