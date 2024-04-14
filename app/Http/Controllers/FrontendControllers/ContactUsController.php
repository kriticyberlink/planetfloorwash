<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Models\ContactUs;
use App\Models\ServiceContactModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
// use Mail;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactMail;

class ContactUsController extends Controller
{
    //
    public function index()
    {
        //
    }

    private function getCaptcha($secretKey)
    {
        $secret_key = env('SECRET_KEY');
        $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=" . $secret_key . "&response={$secretKey}");
        $result = json_decode($response);
        return $result;
    }

    public function storeit(Request $request)
    {
        //  dd($request->all());
        // $g_recaptcha_response = $request->input('g_recaptcha_response');
        // $result = $this->getCaptcha($g_recaptcha_response);
        // if($result->success == true && $result->score > 0.3){

        $formFields = $request->validate([
            'first_name' => ['required', 'string'],
            // 'last_name' => 'required',
            'email' => ['required', 'email'],
            'message' => ['required', 'string'],
            'city' => ['required', 'string'],
            'address' => ['required', 'string'],
            'company' => ['required', 'string'],
            'captcha'  => ['required', 'captcha'],
        ]);



        $data = ContactUs::create([
            'first_name' => $request->first_name,
            'email'   => $request->email,
            'message' => $request->message,
            'city'    => $request->city,
            'address' => $request->address,
            'company' => $request->company,
            'contact' => $request->contact,
        ]);

        // if ($data) {
        //     foreach ($request->services as $service) {
        //         $formFields = ServiceContactModel::create([
        //             'contact_us_id' => $data->id,
        //             'service_name' => $service
        //         ]);
        //     }
        // }

        Mail::send(new ContactMail());
        return new ContactMail();
        return redirect()->back()->with('message', 'Thank you for contacting us.');

        // }else{
        //     return back()->with('message','You are a robot!, Please try again.');
        // }   
    }

    public function store(Request $request)
    {
        //  dd($request->all());
        // $g_recaptcha_response = $request->input('g_recaptcha_response');
        // $result = $this->getCaptcha($g_recaptcha_response);
        // if($result->success == true && $result->score > 0.3){
        $formFields = $request->validate([
            'first_name' => ['required', 'string'],
            // 'last_name' => 'required',
            'email' => ['required', 'email'],
            'message' => ['required', 'string'],
            'city' => ['required', 'string'],
            'address' => ['required', 'string'],
            'company' => ['required', 'string'],
            'captcha'  => ['required', 'captcha'],
        ]);

        $data = ContactUs::create([
            'first_name' => $request->first_name,
            'email'   => $request->email,
            'message' => $request->message,
            'city'    => $request->city,
            'address' => $request->address,
            'company' => $request->company,
            'contact' => $request->contact,
        ]);

        

        if ($data) {
            Mail::send(new ContactMail($data)); 
            return redirect()->back()->with("message", "Thanks for reaching out! We'll be in touch soon. ");
        } else {
            return redirect()->back()->with("failed", "Failed to submit form. Please try again!");
        } 
    }

    
    public function refreshCaptcha()
    {
        return response()->json(['captcha' => captcha_img('flat')]);
    }
}
