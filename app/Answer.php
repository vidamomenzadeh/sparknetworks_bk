<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    public $table = "answer";

    protected $fillable = [
	    'question_id',
	    'answer'
	];
}
