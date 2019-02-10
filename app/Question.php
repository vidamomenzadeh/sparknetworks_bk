<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    //
    protected $fillable = [
    	'title',
	    'question',
	    'category_id',
	    'type',
	    'options',
	    'has_conditon',
	    'condition',
	    'range'
	];
}
