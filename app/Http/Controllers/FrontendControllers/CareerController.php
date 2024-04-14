<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Models\Career;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CareerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }
    private function getCaptcha($secretKey){
        $secret_key = env('SECRET_KEY');
        $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secret_key."&response={$secretKey}");
        $result = json_decode($response);
        return $result;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
         // $g_recaptcha_response = $request->input('g_recaptcha_response');
        // $result = $this->getCaptcha($g_recaptcha_response);
        // if($result->success == true && $result->score > 0.3){
            $formFields = $request->validate([
                'name'=>'required',
                'email'=>['required', 'email'],
                'cv' => 'required|file|mimes:jpg,png,pdf,doc,docx|max:2048', 
            ]);
            $data = Career::create([
                'name' => $request->name,
                'subject' => $request->subject,
                'email' => $request->email,
                'message' => $request->message,
            ]);
            if ($request->file('cv')->isValid()) {
                $doc = $request->file('cv')->getClientOriginalName();
                $extension = $request->file('cv')->getClientOriginalExtension();
                $doc = explode('.', $doc);
                $document = Str::slug($doc[0]) . '-' . uniqid() . '.' . $extension;

                $request->file('cv')->move( public_path('uploads/doc/'), $document);      
                $data['file'] = $document;
                $data->save();
            }
            return redirect()->back()->with('message','Submit successfully.');  
            
        // }else{
        //     return back()->with('message','You are a robot!, Please try again.');
        // }   
    }
    

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Career  $career
     * @return \Illuminate\Http\Response
     */
    public function show(Career $career)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Career  $career
     * @return \Illuminate\Http\Response
     */
    public function edit(Career $career)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Career  $career
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Career $career)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Career  $career
     * @return \Illuminate\Http\Response
     */
    public function destroy(Career $career)
    {
        //
    }
}
