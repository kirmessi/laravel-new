<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class Pagination extends Controller
{
    public function users() {

    	//$users = User::simplePaginate(10);
    	$users = User::find(22);
    	return view('pagination',compact('users'));
    }
}
