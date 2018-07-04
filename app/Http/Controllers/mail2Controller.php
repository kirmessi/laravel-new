<?php

namespace App\Http\Controllers;

use Mail;
use App\Mail\Mailtrap;
use Illuminate\Http\Request;



class mail2Controller extends Controller
{
    public function index(){


         Mail::to('kirmessi2394@gmail.com')->send(new Mailtrap());
    }
}
