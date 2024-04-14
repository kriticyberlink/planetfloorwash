<?php

namespace App\Http\ViewComposers;

use App\Models\Posts\PostCategoryModel;
use Illuminate\Contracts\View\view;
use App\Models\Settings\SettingModel;
use App\Models\Posts\PostModel;
use App\Models\Posts\PostTypeModel;
use App\Models\Portfolios\PortfolioModel;

class FooterComposer{

	 public function __construct()
    {
        // Dependencies automatically resolved by service container...
    }

	public function compose(View $view){
        

        $view->with('logo', PortfolioModel::where(['id'=>'1', 'status'=>'1'])->first());
        $view->with('contact-us', PostTypeModel::where(['id'=>'40','status'=>'1'])->first());

        $view->with('footer_navigations', PostTypeModel::where(['is_menu'=>'1'])
        ->orderBy('ordering','asc')
        ->get());

        $view->with('about_us', PostModel::where(['post_type'=>37,'status'=>'1'])->orderBy('id','desc')->get());
        $view->with('services', PostModel::where(['post_type'=>38,'status'=>'1'])->orderBy('id','desc')->get());
		}
}
