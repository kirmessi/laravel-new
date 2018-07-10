<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Symfony\Component\HttpKernel\Tests\HttpCache\request;
use App\Http\Requests\StoreFormvalidation;

class SendForm extends Mailable
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
    public function build(StoreFormvalidation $request)
 {
         return $this->view('sendform',['name'=>$request->name,'email'=>$request->email])->to('kirmessi2394@gmail.com')->from('support@laravel.com');
   
       }
}
