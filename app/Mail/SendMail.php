<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Http\request;//подключать обязательно
use App\user;

class SendMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build(request $request)
    {
       // $user = user::find(1);
      return $this->view('mail',['msg'=>$request->message])->to($request->to);
     //  return $this->view('mail',['name'=>'Kir'])->to('kirmessi2394@gmail.com')->from('support@laravel.com');
    }
}
