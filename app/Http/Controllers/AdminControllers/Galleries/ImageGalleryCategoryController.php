<?php

namespace App\Http\Controllers\AdminControllers\Galleries;

use App\Models\Galleries\ImageGalleryCategoryModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Image;
use Illuminate\Support\Str;

class ImageGalleryCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = ImageGalleryCategoryModel::orderBy('id','desc')->get();
        return view('admin.image-gallery-category.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.image-gallery-category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'category'=>'required',
            'picture'=> 'required|image|mimes:jpeg,png,jpg,gif|max:3072|dimensions:max_width=2500,max_height=2000',
        ]);       

        $data = $request->all();
        $file = $request->file('picture');

        if($request->hasFile('picture')){
            $thumb_width = env('GALLERY_IMAGE_THUMB_WIDTH');
            $thumb_height = env('GALLERY_IMAGE_THUMB_HEIGHT');
            $picture = $request->file('picture')->getClientOriginalName();
            $extension = $request->file('picture')->getClientOriginalExtension();
            $picture = explode('.', $picture);
            $picture_name = Str::slug($picture[0]) .'-cat-thumb-'. Str::random(40) .'.'. $extension;
            $destinationPath = public_path('uploads/galleries');
            $gallery_picture = Image::make($file->getRealPath());
            $gallery_picture->save($destinationPath .'/'. $picture_name);
        }
        $data['picture'] = $picture_name;
        $result = ImageGalleryCategoryModel::create($data);
        if($result){
            return redirect()->back()->with('message','Successfully added.');
        }else{
            return 'Error';
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Galleries\ImageGalleryCategoryModel  $imageGalleryCategoryModel
     * @return \Illuminate\Http\Response
     */
    public function show(ImageGalleryCategoryModel $imageGalleryCategoryModel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Galleries\ImageGalleryCategoryModel  $imageGalleryCategoryModel
     * @return \Illuminate\Http\Response
     */
    public function edit(ImageGalleryCategoryModel $imageGalleryCategoryModel, $id)
    {
        $data = ImageGalleryCategoryModel::find($id);
        return view('admin.image-gallery-category.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Galleries\ImageGalleryCategoryModel  $imageGalleryCategoryModel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ImageGalleryCategoryModel $imageGalleryCategoryModel, $id)
    {   
        $request->validate([
        'picture'=> 'image|mimes:jpeg,png,jpg,gif|max:3072|dimensions:max_width=2500,max_height=2000',
        ]);
        $data = ImageGalleryCategoryModel::find($id);   
        $data->category = $request->category;
        $data->caption = $request->caption;
        if($request->hasFile('picture')){
            $thumb_width = env('GALLERY_IMAGE_THUMB_WIDTH');
            $thumb_height = env('GALLERY_IMAGE_THUMB_HEIGHT');
            $file = $request->file('picture'); 
            if(file_exists(public_path('uploads/galleries/' . $data->picture ))){
                unlink(public_path('uploads/galleries/' . $data->picture ));
            }

            $picture = $request->file('picture')->getClientOriginalName();
            $extension = $request->file('picture')->getClientOriginalExtension();
            $picture = explode('.', $picture);
            $picture_name = Str::slug($picture[0]) .'-cat-thumb-'. Str::random(40) .'.'. $extension;
            $destinationPath = public_path('uploads/galleries');
            $gallery_picture = Image::make($file->getRealPath());
            $gallery_picture->save($destinationPath .'/'. $picture_name); 

            $data->picture = $picture_name;  
        }

        
        $data->save();        
        return redirect()->back()->with('message','Update Successful.');        

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Galleries\ImageGalleryCategoryModel  $imageGalleryCategoryModel
     * @return \Illuminate\Http\Response
     */
    public function destroy(ImageGalleryCategoryModel $imageGalleryCategoryModel, $id)
    {
         $data = ImageGalleryCategoryModel::find($id);
        if(file_exists(public_path('uploads/galleries/' .  $data->picture))){
              unlink('uploads/galleries/' . $data->picture);
            }        
        $data->delete();
    }
}
