<?php
namespace App\Http\Controllers\FrontendControllers;

use DB;
use Auth;
use Hash;
use Mail;
use App\Membership;
use App\VerifyUser;
use App\Mail\SendMail;
use App\Model\Donation;
use App\Mail\VerifyMail;
use App\Mail\ContactMail;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Mail\SendMailContact;
use Illuminate\Support\Carbon;
use App\Models\Posts\PostModel;
use App\Models\Posts\PostDocModel;
use App\Models\Banners\BannerModel;
use App\Models\Posts\PostTypeModel;
use App\Http\Controllers\Controller;
use App\Models\Galleries\ImageModel;
use App\Models\Posts\PostImageModel;
use App\Models\Settings\CountryModel;
use App\Models\Settings\SettingModel;
use App\Models\Posts\PostCategoryModel;
use App\Models\Portfolios\PortfolioModel;
use App\Models\Posts\AssociatedPostModel;
use App\Models\Galleries\ImageGalleryModel;
use App\Models\Galleries\VideoGalleryModel;
use App\Models\Portfolios\PortfolioCategoryModel;
use App\Models\Galleries\ImageGalleryCategoryModel;
use App\Models\MultipleBanners\MultipleBannerModel;
use App\Models\Portfolios\AssociatedPortfolioModel; 
 
class FrontpageController extends Controller
{

  public function index(Request $request)
  {
    $banner          = BannerModel::orderBy('id','desc')->get();
    $about           = PostModel::where(['id'=>'385','status'=>'1'])->first();
    $reviewsPostType = PostTypeModel::where(['id'=>'46','status'=>'1'])->first();
    $reviews         = PostModel::where(['post_type'=>'46','status'=>'1'])->orderBy('id','desc')->get();
    $clients         = PostModel::where(['post_type'=>'47','status'=>'1'])->orderBy('id','desc')->get();
    $clientsPostType = PostTypeModel::where(['id'=>'47', 'status'=>'1'])->first();
    $contact         = PostTypeModel::where(['id'=>'48','status'=>'1'])->first();
    $servicePostType = PostTypeModel::where(['id'=>'38','status'=>'1'])->first();
    $services        = PostModel::where(['post_type'=>$servicePostType->id,'status'=>'1'])->orderBy('id','desc')->get();
    
    return view('themes.default.frontpage', compact('banner','about','servicePostType','services','reviews', 'reviewsPostType', 'clients', 'clientsPostType' ,'contact'));

  }

  public function posttype(Request  $request,$uri){
    if(!check_posttype_uri($uri)){
      abort(404);
    }
    $data     = PostTypeModel::where('uri',$uri)->first();
    $services = PostModel::where(['post_type'=>38, 'status'=>'1'])->get();
    $tmpl['template'] = 'page';
    if($tmpl['template']){
      $data['template'] = $data['template'];
    }
    if($data)
    {
      $posts = PostModel::where(['post_type'=>$data->id,'status'=>'1'])->orderBy('post_order','asc')->get();
      $membership = PostModel::where(['post_type'=>$data->id,'status'=>'1'])->orderBy('post_order','asc')->get();
      $first = PostModel::where(['post_type'=>$data->id,'status'=>'1'])->orderBy('post_order','desc')->first();
    }
    $country=CountryModel::all();
    if($first){
    $documents = PostDocModel::where('post_id',$first->id)->orderBy('ordering','desc')->paginate(10);
     return view('themes.default.'.$data['template'].'', compact('data','documents','posts','country','membership','services'));
    }else{
    return view('themes.default.'.$data['template'].'', compact('data','posts','country','services'));
    }
  }

  public function pagedetail($uri){
    if(!check_uri($uri)){
      abort(404);
    }
    $data = PostModel::where('uri',$uri)->orWhere('page_key',$uri)->first();
    $tmpl['template'] = 'single';
    if($tmpl['template']){
      $data['template'] = $data['template'];
    }

    if($data->id){
      $data->visiter = $data->visiter + 1;
      $data->save();
    }
    $data_child = PostModel::where(['post_parent'=>$data['id'],'status'=>'1'])->orderBy('post_order','desc')->paginate(12);
    $associated_posts = AssociatedPostModel::where('post_id', $data['id'])->orderBy('ordering','asc')->paginate(6);
    $images = ImageModel::where('post_id', $data['id'])->get();
    $documents = PostDocModel::where('post_id', $data['id'])->orderBy('ordering','desc')->paginate(10);
    $pos_type = PostTypeModel::where('id',$data->post_type)->first();
    $related= PostModel::where(['status'=>'1', 'post_type'=> $pos_type->id])->whereNotIn('id', [$data->id])->get();
  

    return view('themes.default.'.$data['template'].'', compact('related','data','data_child','associated_posts','documents','images','pos_type'));
  }

  public function pagedetail_child($parenturi,$uri){
    $data = PostModel::where('uri',$uri)->orWhere('page_key',$uri)->first();

    $tmpl['template'] = 'single';
    if($tmpl['template']){
      $data['template'] = $data['template'];
    }

    if($data->id){
      $data->visiter = $data->visiter + 1;
      $data->save();
    }

    $data_child = PostModel::where('id', $data['post_parent'])->first();
    if($data_child){

      $data['template'] = $data_child['template_child'];
    }
    $associated_posts = array();
    if( $data){
      $associated_posts = AssociatedPostModel::where('post_id', $data['id'])->get();
    }
    $post_id = $data->id;
    $documents = PostDocModel::where('post_id', $data['id'])->orderBy('ordering','desc')->get();
    $pos_type = PostTypeModel::where('id',$data->post_type)->first();
    return view('themes.default.'.$data['template'].'', compact('data','data_child','associated_posts','documents','pos_type'));
  }

  public function portfolio($uri){
    $data = PortfolioModel::where('uri',$uri)->first();
    $associated_post = AssociatedPortfolioModel::where('portfolio_id', $data['id'])->get();
    $trades = PortfolioModel::inRandomOrder()->limit(2)->get();
    if($data){
      return view('themes.default.trade', compact('data','associated_post','trades'));
    }
    return false;
  }


  public function navigation($uri){
    $getId = PostModel::where(['uri'=>$uri])->first();
    $childCount = PostModel::where(['post_parent'=>$getId->id])->count();
    if( $childCount > 0 ){
      $parent_post = PostModel::where('uri',$uri)->first();
      $post = PostModel::where(['post_parent'=>intval($getId->id)])->orderBy('post_order','asc')->paginate(15);
      $template = $parent_post->template;
    }else{
      $parent_post = PostModel::where('uri',$uri)->first();
      $post = PostModel::where('uri',$uri)->first();
      $template = $post->template;
      $news_updates = PostModel::where(['post_type'=>9])->orderBy('post_order','asc')->paginate(15);
    }
    $bod = PostModel::where(['post_type'=>12])->get();
    return view('themes.default.'.$template.'',compact('post','bod','parent_post','news_updates'));
  }

  public function category_navigation($uri){
    $newsroom = PostTypeModel::where('id','29')->first();
    $category=PostCategoryModel::all();
    $post_category = PostCategoryModel::where('uri',trim($uri))->first();
    if($post_category){
      $data =  PostModel::where(['post_category'=>$post_category->id])->orderBy('post_order','asc')->paginate(15);
    }
    return view('themes.default.newsroom-list',compact('data','post_category','category','newsroom'));
  }

  /***********************************
  ******** Root Navigation ***********
  ************************************/

public function photo_gallery($cat_id){
  $data = ImageGalleryModel::where(['category_id'=>$cat_id])->orderBy('id','desc')->get();
  $data2 = ImageGalleryCategoryModel::where(['id'=>$cat_id])->first();
  return view('themes.default.photo_gallery_thumbnail',compact('data','data2'));
}


  public function sendmail(){
    $data = SettingModel::where('id',1)->first();
    Mail::to($data->email_primary)->send( new SendMail() );
    return redirect()->back()->with('message','Contact message successfully sent.');
  }

  public function sendmail_contact(Request $request){
    $return = $this->getCaptcha($request['g_recaptcha_response']);
    $data = SettingModel::where('id',1)->first();
    $data->num_of_inquiries = $data->num_of_inquiries + 1;
    $data->save();
    if($return->success == true && $return->score > 0.5){
      Mail::to($data->email_primary)->send( new SendMailContact() );
      return redirect()->back()->with('message','Contact message successfully sent.');
    }else{
      return redirect()->back()->with('message','Please, try again!');
    }
  }

  private function getCaptcha($Secretkey){
    $secret = env('SECRET_KEY');
    $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret={$secret}&response={$Secretkey}");
    $return = json_decode($response);
    return $return;
  }



  public function postby_category($id){
    $post_category = PostCategoryModel::where(['id'=>$id])->first();
    $data = PostModel::where(['post_category'=>$id])->paginate(20);
    if($data){
      return view('themes.default.postbycategory',compact('data','post_category'));
    }
    return false;
  }

  public function news_category(Request $request)
  {
    if ($request->isMethod('get'))
    {
      $uri=$request->uri;
      $data = PostTypeModel::where('id',$uri)->first();

      $data1=$request->category;
      $newsroom=PostModel::where('post_category',$data1)->get();
      $category=PostCategoryModel::all();
      return view('themes.default.newsroom-list',compact('category','data','newsroom'));
    }
  }

  public function member_login(Request $request)
  {
    if($request->isMethod('get'))
    {
      return view('themes.default.login');
    }
    if($request->isMethod('post'))
    {
      $request->validate([
        'email' => 'required|email',
        'password' => 'required'
      ]);
      $email = $request->email;
      $password = $request->password;
      if(auth()->guard('member')->attempt([
        'user_email' => $request->email,
        'password' => $request->password,
        ]))
        {
          $user = auth()->user();
         return redirect()->intended(url('/member-dashboard'));
        } else {
          return redirect()->back()->with('error','Credentials doesn\'t match.');
        }
      }
    }

    public function loadProvinces(){
      $provinces = DB::table('tbl_provinces')->get();
      return response()->json($provinces);
    }

    function loadDistricts ($province_id){
      $districts = DB::table('tbl_districts')->where('provincecode', $province_id)->get();
      return response()->json($districts);
    }

    function loadCityStates($district_id){
      $city_states = DB::table('tbl_municipal')->where('districtcode', $district_id)->get();
      return response()->json($city_states);
    }

    public function become_member(Request $request)
    {
      if($request->isMethod('get'))
      {
        $provinces = DB::table('tbl_provinces')->get();

        return view('themes.default.become-member',compact('provinces'));
      }
      if($request->isMethod('post'))      {
          $request->validate([
              'user_email'=>'required|email|unique:memberships,user_email',
              'captcha' => 'required|captcha'
              ]);
        $data = $request->all();
        $data['password']=bcrypt($request->password);
        $store=Membership::create($data);
        $verifyUser = VerifyUser::create([
          'user_id' => $store->id,
          'token' => Str::random(20)
        ]);
        if($store && $verifyUser)
        {
           Mail::send(new VerifyMail($verifyUser->token, $store->id, $store->name, $request->password));
          return back()->with('message','Form submitted successfully. Please check your mail and verify.');
        }
      }
    }


    public function verifyUser($token)
    {
      $verifyUser = VerifyUser::where('token', $token)->first();
      if (isset($verifyUser)) {
        $user = $verifyUser->users;
        if (!$user->verified) {
          $verifyUser->users->verified = 1;
          $verifyUser->users->save();
          $status = "Your e-mail is verified. You can now login.";
        } else {
          $status = "Your e-mail is already verified. You can now login.";
        }
      } else {
        return redirect()->intended(route('member-login'))->with('message', "Sorry your email cannot be identified.");
      }

      return redirect()->intended(route('member-login'))->with('success', $status);
    }


    public function member_dashboard()
    {
      if(Auth::guard('member')->check())
      {
        return view('themes.default.user-dashboard');
      }
      else{
        return redirect()->intended(route('member-login'))->with('error', 'Forbidden Access');
      }
    }

    public function payment_details()
    {
      if(Auth::guard('member')->check())
      {
        return view('themes.default.payment-details');
      }
      else{
        return redirect()->intended(route('member-login'))->with('error', 'Forbidden Access');
      }
    }

    public function member_logout(Request $request)
    {
      Auth::guard('member')->logout();

     $request->session()->flush();

     $request->session()->regenerate();

      return redirect()->intended(route('member-login'))->with('message', 'Successfully logged out');
    }



    public function donate(Request $request)
    {
      if($request->isMethod('get'))
      {
        if(Auth::guard('member')->check() && Auth::guard('member')->user()->donations == NULL )
        {
          return view('themes.default.donate');
        }
        else{
          return redirect()->intended(route('member-login'))->with('error', 'Forbidden Access');
        }
      }
      if($request->isMethod('post'))
      {
        $request->validate([
          'invoice_no'=>'required',
          'full_name'=>'required',
          'mobile_no'=>'required',
          'amount'=>'required',
          'file' => 'required|mimes:png,jpg,jpeg,csv,txt,xlx,xls,pdf|max:2048'
      ]);
      $file = new Donation();
      $file->invoice_no=$request->invoice_no;
      $file->full_name=$request->full_name;
      $file->mobile_no=$request->mobile_no;
      $file->amount=$request->amount;
      $file->user_id=$request->user_id;
      if($request->file()) {

          $image = $request->file('file');
          $name = time() . '.' . $image->getClientOriginalExtension();
          $destinationPath = public_path('uploads/members/');
          $image->move($destinationPath, $name);
          $file['file'] = $name;
      }


      $file->save();
       return redirect()->intended(route('payment-details'))->with('message', 'Payment Successful');
    }
}

public function forgot_password(Request $request)
{
if ($request->isMethod('post')) {
    $request->validate([
        'email' => 'required|exists:memberships,user_email',
    ]);
    $token = Str::random(64);
    $email = $request->email;

    DB::table('password_resets')->insert(
        ['email' => $request->email, 'token' => $token, 'created_at' => Carbon::now()]
    );
    // return new VerifyMail($verifyUser->token, $store->id, $store->name,$request->password);

    \Illuminate\Support\Facades\Mail::send('emails.reset_password', ['token' => $token], function ($message) use ($request) {
        $message->to($request->email);
        $message->subject('Reset Password Notification');
    });

    return back()->with('message', 'We have e-mailed your password reset link!');
}

}

public function update_password(Request $request)
{
    if ($request->isMethod('get')) {
        $token = $request->token;
        return view('themes.default.new_password', ['token' => $token]);
    }

    if ($request->isMethod('post')) {

        $request->validate([
            'email' => 'required|email|exists:memberships,user_email',
            'new_password' => 'required_with:confirm_password|same:confirm_password',
            'confirm_password' => 'required',
        ]);
        $token = $request->token;
        $email = $request->email;
        $updatePassword = DB::table('password_resets')
            ->where(['email' => $email, 'token' => $token])
            ->first();

        if (!$updatePassword)
            return back()->withInput()->with('error', 'Invalid token!');

        $user = \App\Membership::where('user_email', $request->email)
            ->update(['password' => Hash::make($request->new_password)]);

        DB::table('password_resets')->where(['email' => $request->email])->delete();

        return redirect('/member-login')->with('message', 'Your password has been changed!');
    }

}

    public function content_search(Request $request){
        if($request->has('content_search')){
        $content_search = $request->content_search;
        $data = PostModel::where('post_title','like','%'.trim($content_search).'%')->orWhere('post_content','like','%'.trim($content_search).'%')->get();
        return view('themes.default.search', compact('data'));
        }
    }
    
     public function refreshCaptcha()
 {
     return response()->json(['captcha'=> captcha_img('flat')]);
 }


  }
