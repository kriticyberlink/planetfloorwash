<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Http\Request;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class VerifyMail extends Mailable
{
    use Queueable, SerializesModels;
    protected $token;
    protected $id;
    protected $user_name;
    protected $password;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($token,$id,$name,$password)
    {
        $this->token = $token;
        $this->id = $id;
        $this->user_name = $name;
        $this->password=$password;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build(Request $request)
    {
        $email = $request->user_email;
        $token = $this->token;
        $user_id = $this->id;
        $name = $this->user_name;
        $password=$request->password;
        return $this->view('emails.verifyuser', ['email' => $email, 'token' => $token, 'user_id' => $user_id, 'name' => $name, 'security'=> $password ])->to($email);
    }
}
