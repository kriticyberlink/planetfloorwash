<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Http\Request;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Settings\SettingModel;
use App\Models\ServiceContactModel;

class ContactMail extends Mailable
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
    public function build(Request $request)
    {
        $admin = SettingModel::where('id', 1)->first();
        $mail = $admin->email_primary;
        $company = $request->company;
        $first_name = $request->first_name;
        $email = $request->email;
        $messages = $request->message;
        $city = $request->city;
        $address = $request->address;
        $contact_number = $request->contact;
        return $this->view('emails.contact_us', ['first_name' => $first_name, 'contact_number' => $contact_number, 'address' => $address, 'city' => $city, 'messages' => $messages, 'company' => $company, 'email' => $email])->to($mail);
    }
}
