<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pasport extends Model
{
     public function user()
    {
    	return $this->belongsTo(User::class);
    }
}
