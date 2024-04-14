<?php

namespace App\Http\ViewComposers;

use Illuminate\Contracts\View\view;
use App\Models\Posts\PostTypeModel;
use App\Models\Posts\PostModel;
use App\Models\Settings\SettingModel;

class SidebarBlogComposer
{

	public function __construct()
	{
		// Dependencies automatically resolved by service container...
	}

	public function compose(View $view)
	{
		$view->with('sidebar_about', PostTypeModel::whereIn('id', [37])
			->where(['is_menu' => '1'])
			->first());
		$view->with('sidebar_service', PostTypeModel::whereIn('id', [38])
			->where(['is_menu' => '1'])
			->first());
		$view->with('sidebar_contact_quote', PostTypeModel::where(['id' => '48', 'status' => '1'])->first());
	}
}
