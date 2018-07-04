<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class post extends Model
{
    public function comments() {
    	return $this->morphmany('App\comment','commentable');
    }

        public function tags()
    {
        return $this->morphToMany('App\Tag', 'taggable');
    }
}
