<?php

namespace App\Http\Controllers\AdminControllers\Galleries;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Galleries\ImageModel;
use App\Models\Posts\PostModel;
use App\Models\Posts\PostTypeModel;

class ImageController extends Controller
{
    //
    public function index($id){
        $data = PostModel::find($id);
        $postTypeUri = PostTypeModel::where('id', $data->post_type)->first()->uri;
        $image = ImageModel::where('post_id',$data->id)->get();
        // dd($image);
        return view('admin.multiple-photo.images',compact('data','image','postTypeUri'));
    }
    public function store(Request $request){
        // dd($request->all());
        $formFields = $request->validate([
            'picture'=>['required', 'image']
        ]);
        $banner = new ImageModel();
        $banner->post_id = $request->post_id;

        if($request->hasfile('picture')){
            $image = $request->file('picture');
            $name = time().rand(1,50).'.'.$image->extension();
            $image->move(public_path('uploads/original/'),$name);
            $banner->image = $name;
          
        }
        $banner->save();
        return back()->with('success','Image added successfully');
    }
    public function delete_image_post($id){
        // dd('here');  
        $data = ImageModel::find($id);
             if ($data->image) {
                 if (file_exists(env('PUBLIC_PATH') . 'uploads/original/' . $data->image)) {
                     unlink(env('PUBLIC_PATH') . 'uploads/original/' . $data->image);
                 }
             }
             $data->image = null;
             $data->delete();
             return response('Delete Successful.');
      }
}
