<?php

namespace App\Http\Controllers\AdminControllers\Inquiry;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\AppointmentModel;
use App\Models\ContactUs;
use App\Models\Career;

class InquiryController extends Controller
{
    //
    public function index()
    {
        $data = ContactUs::orderBy('id','desc')->get();
        return view('admin.contact.index',compact('data'));    
    }

    public function careerIndex()
    {
        $data = Career::orderBy('id','desc')->get();
        return view('admin.career.index',compact('data'));    
    }
}
