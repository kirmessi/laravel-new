<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use App\Mail\SendMail;

class mailController extends Controller
{
    public function send() {

    /*	Mail::send(['text'=>'mail'],['name','Kir'],function($message){

    		$message->to('kirmessi2394@gmail.com','To Kir')->subject('Test Email');
    		$message->from('kirmessi2394@gmail.com', 'Kir');
    	});*/

		Mail::send(new sendMail());

    }

    public function email()
    {

    	return view('email');
    }
}
