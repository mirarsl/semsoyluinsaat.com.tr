<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Project extends Model
{
    use Translatable;

    protected $translatable = ['title', 'text',"spot","type","slug"];   
}
