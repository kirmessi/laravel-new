<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\user;
use App\role;
use App\post;



class homeController extends Controller
{
       public function index()

    {	
    	$post = post::first();
    	$role = user::find(2)->roles;
    	$user_role = role::find(2)->users;
    	$mobiles = user::find(1)->mobile;
    	$user = user::find(1);
    //	return $post->tags;

    	return view('welcome',compact('user','mobiles','post'));
//
    	}
}
