<?php

namespace App\Http\Controllers;
use Mail;
use App\Http\Requests\StoreFormvalidation;
use App\Mail\SendForm;
use Illuminate\Http\Request;

class FormController extends Controller
{
    public function index(){

    	return view('form');
    }

    public function store(StoreFormvalidation $request)  {

  	Mail::send(new SendForm());

  	return view('thx');

    }

 
    
}
