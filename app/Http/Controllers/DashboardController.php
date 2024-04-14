<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Posts\PostModel;
use App\Models\Posts\PostCategoryModel;
use App\Models\Settings\SettingModel;
use Illuminate\Support\Str;
use App\Membership;
use App\Model\Donation;


class DashboardController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $recent_posts = PostModel::orderBy('id','desc')->take(10)->get();
       $total_posts = PostModel::count();
       $post_visiters = PostModel::sum('visiter');
       $max_viewed = PostModel::orderBy('visiter','desc')->take(10)->get();
       $total_category = PostCategoryModel::count();
       $num_of_inquiries = SettingModel::first()->num_of_inquiries;
       $donation=Donation::where('verified','0')->orderBy('updated_at','desc')->take(10)->get();
        $verified_donation=Donation::where('verified','1')->orderBy('updated_at','desc')->take(10)->get();
       return view('admin.dashboard',compact('recent_posts','total_posts','total_category','post_visiters','max_viewed','num_of_inquiries','donation','verified_donation'));
    }

    public function member_list()
    {
      $data=Membership::orderBy('id','desc')->get();
       $donation=Donation::where('verified','0')->orderBy('updated_at','desc')->get();
        $verified_donation=Donation::where('verified','1')->orderBy('updated_at','desc')->get();
      return view('admin.members',compact('data','donation','verified_donation'));
    }

    public function donation_details($id)
    {
      $data=Donation::where('user_id',$id)->get();
      return view('admin.payments',compact('data'));
    }

    public function member_details($id)
    {
      $data=Membership::where('id',$id)->first();
      $payment=Donation::where('user_id',$id)->get();
      return view('admin.details',compact('data','payment'));
    }
    
    public function isverified(Request $request)
    {
    $data = Donation::find($request->id);
    if($data->verified == '1'){
      $data->verified = '0';   
      $data->save();  
     return redirect()->back()->with('error','Payment unVerified');
    }else if($data->verified == '0'){
      $data->verified = '1';
      $data->save();  
    return redirect()->back()->with('message','Payment Verified');
    }
  return redirect()->back()->with('error','Verification Failed');
    }
    
    public function deletePayment($id){
        $data = Donation::find($id);
          $data->delete();
    }
    
     public function deletemember($id){
        $data = Membership::find($id);
          $data->delete();
           return redirect()->back()->with('message','Member Deleted');
    }
  
}
