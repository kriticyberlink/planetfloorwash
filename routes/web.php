<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */
Route::get('/', 'FrontendControllers\FrontpageController@index');
//================== Frontend Routes =================//

// Normal Pages
Route::get('{uri}.html', 'FrontendControllers\FrontpageController@pagedetail')->name('page.pagedetail');
Route::get('page/{uri}.html', 'FrontendControllers\FrontpageController@posttype')->name('page.posttype');
// Route::get('service-category/{uri}.html', 'FrontendControllers\FrontpageController@servicetype')->name('page.servicetype');
// Route::get('trades/detail/{uri}', 'FrontendControllers\FrontpageController@portfolio')->name('page.portfolio');

Route::get('{parenturi}/{uri}.html', 'FrontendControllers\FrontpageController@pagedetail_child')->name('page.pagedetail_child');
Route::get('page/photogallery/{category_id}', 'FrontendControllers\FrontpageController@photo_gallery');

//Contact Us 
Route::post('/free-quote','FrontendControllers\ContactUsController@store')->name('free-quote');
Route::post('/career','FrontendControllers\CareerController@store')->name('career');
Route::get('/refresh-captcha','FrontendControllers\ContactUsController@refreshCaptcha')->name('refresh-captcha');

// Send Mail
Route::post('page/contact/sendmail', 'FrontendControllers\FrontpageController@sendmail')->name('sendmail');
Route::post('page/contact/contact-sendmail', 'FrontendControllers\FrontpageController@sendmail_contact')->name('sendmail_contact');
Route::get('category/{uri}', 'FrontendControllers\FrontpageController@category_navigation')->name('category.navigation');
Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});

Route::get('/category/{category?}/{uri?}', 'FrontendControllers\FrontpageController@news_category')->name('news-category');
Route::post('contact-form','FrontendControllers\FrontpageController@contact_form')->name('contact-form');


// Route::get('member/membercaptcha/{uri?}', 'FrontendControllers\FrontpageController@refreshCaptcha')->name('member-captcha');

// Route::get('/fetch/districts/{province_id}', 'FrontendControllers\FrontpageController@loadDistricts');
// Route::get('/fetch/city_state/{district_id}', 'FrontendControllers\FrontpageController@loadCityStates');
// Route::post('/forgot-password/{token?}', 'FrontendControllers\FrontpageController@forgot_password')->name('password.forget');
// Route::get('/update-password/{token?}', 'FrontendControllers\FrontpageController@update_password')->name('password.update');
// Route::post('/update-password/{token?}', 'FrontendControllers\FrontpageController@update_password')->name('password.update');

// Route::get('member-login', 'FrontendControllers\FrontpageController@member_login')->name('member-login');
// Route::post('member-login', 'FrontendControllers\FrontpageController@member_login')->name('member-login');
// Route::get('member-logout', 'FrontendControllers\FrontpageController@member_logout')->name('member-logout');
// Route::get('become-member', 'FrontendControllers\FrontpageController@become_member')->name('become-member');
// Route::post('become-member', 'FrontendControllers\FrontpageController@become_member')->name('become-member');
// Route::get('/user/verify/{token}', 'FrontendControllers\FrontpageController@verifyUser')->name('verify-user');
// Route::get('/member-dashboard','FrontendControllers\FrontpageController@member_dashboard')->name('member-dashboard');
// Route::get('/payment-details','FrontendControllers\FrontpageController@payment_details')->name('payment-details');
// Route::get('/paynow','FrontendControllers\FrontpageController@donate')->name('donate');
// Route::post('/paynow','FrontendControllers\FrontpageController@donate')->name('donate');
// Route::post('page/contentsearch','FrontendControllers\FrontpageController@content_search')->name('page.content_search');
// Route::redirect('/dashboard', '/admin/dashboard', 301);
/* Authentication Routes... */
Route::get('adminisclient', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('adminisclient', 'Auth\LoginController@login');
Route::post('logout', 'Auth\LoginController@logout')->name('logout');

//=========================================== Backend Routes =======================================================//
Route::middleware(['auth'])->group(function () {
    Route::get('admin/dashboard', 'DashboardController@index')->name('dashboard');
    Route::get('admin/members-registration', 'DashboardController@member_list')->name('members-list');
    Route::get('admin/members-registration/{id?}', 'DashboardController@deletemember')->name('deletemember');
    Route::get('admin/donation-details/{id?}', 'DashboardController@donation_details')->name('donation-details');
    Route::get('admin/member-details/{id?}', 'DashboardController@member_details')->name('member-details');
    Route::post('payment-verified/{id?}', 'DashboardController@isverified')->name('payment-verified');
    Route::delete('payment-delete/{id}','DashboardController@deletePayment')->name('delete-payment');


    Route::get('admin/admin-user', 'AdminControllers\Members\UserController@admin_user');
    Route::get('admin/agent-user', 'AdminControllers\Members\UserController@agent_user');
    Route::resources([
        'admin/adminmenu' => 'AdminControllers\AdminMenu\AdminMenuController',
        'admin/user' => 'AdminControllers\Members\UserController',

        'admin/banner' => 'AdminControllers\Banners\BannerController',
        'admin/postcategory' => 'AdminControllers\Posts\PostCategoryController',
        'admin/imagecategory' => 'AdminControllers\Galleries\ImageGalleryCategoryController',
        'admin/imagegallery' => 'AdminControllers\Galleries\ImageGalleryController',
        'admin/videocategory' => 'AdminControllers\Galleries\VideoGalleryCategoryController',
        'admin/videogallery' => 'AdminControllers\Galleries\VideoGalleryController',
        'admin/settings' => 'AdminControllers\Settings\SettingController',
        'admin/portfoliocategory' => 'AdminControllers\Portfolios\PortfolioCategoryController',
        'admin/our-trades' => 'AdminControllers\Portfolios\PortfolioController',
        'admin/member' => 'AdminControllers\Members\MemberController',
        'admin/role' => 'AdminControllers\Members\RoleController',
    ]);


     // Upload multiple image
    Route::get('post/image/{id}','AdminControllers\Galleries\ImageController@index')->name('post.image.index');
    Route::post('post-image/create','AdminControllers\Galleries\ImageController@store')->name('post.image.store');
    Route::delete('delete_post_image/{id}', 'AdminControllers\Galleries\ImageController@delete_image_post')->name('delete_post_image');

    Route::get('adminimg/multiplephoto/{post_id}', 'AdminControllers\Posts\PostImageController@upload_form')->name('admin.multiplephoto');
    Route::post('multiplephoto/store', 'AdminControllers\Posts\PostImageController@store')->name('multiplephoto.store');
    Route::get('adminimg/multiplephoto/{post_id}/{id}/edit', 'AdminControllers\Posts\PostImageController@edit')->name('edit.multiplephoto');
     Route::put('adminimg/multiplephoto/{id}', 'AdminControllers\Posts\PostImageController@update')->name('multiplephoto.update');
    Route::delete('adminimg/multiplephoto/{id}', 'AdminControllers\Posts\PostImageController@destroy');
    
     // Upload multiple video
    Route::get('admin/multiplevideo/{post_id}', 'AdminControllers\Posts\MultipleVideoController@index')->name('admin.multiplevideo.index');
    Route::get('admin/multiplevideo/{post_id}/create', 'AdminControllers\Posts\MultipleVideoController@create')->name('admin.multiplevideo.create');
    Route::get('admin/multiplevideo/{post_id}/{id}/edit', 'AdminControllers\Posts\MultipleVideoController@edit')->name('admin.multiplevideo.edit');
    Route::post('admin/multiplevideo', 'AdminControllers\Posts\MultipleVideoController@store')->name('admin.multiplevideo.store');
    Route::put('admin/multiplevideo/{post_id}', 'AdminControllers\Posts\MultipleVideoController@update')->name('admin.multiplevideo.update');
    Route::delete('admin/multiplevideo/{post_id}/{id}', 'AdminControllers\Posts\MultipleVideoController@destroy')->name('admin.multiplevideo.destroy');

    Route::resource('admin.multiplebanner', 'AdminControllers\MultipleBanners\MultipleBannerController');
    Route::get('admin/permissionedit/{user}', 'AdminControllers\Members\UserController@permission_edit')->name('user.permissionEdit');;
    Route::put('admin/permissionedit/{user}', 'AdminControllers\Members\UserController@permission_update')->name('user.permissionUpdate');;

    Route::get('admin/assignroles/{id}', 'AdminControllers\Members\UserController@assign_roles')->name('user.assignroles');
    Route::put('admin/assignroles/{user}', 'AdminControllers\Members\UserController@update_roles')->name('user.update_roles');

    Route::get('admin/userprofile', 'AdminControllers\Members\UserController@userprofile')->name('admin.userprofile');
    Route::put('admin/update_password', 'AdminControllers\Members\UserController@update_password')->name('admin.update_password');
    Route::get('admin/changepassword', 'AdminControllers\Members\UserController@changepassword')->name('admin.changepassword');

    // For posttype
    Route::get('type/{posttype}', 'AdminControllers\Posts\PostTypeController@index')->name('type.posttype.index');
    Route::get('type-user/{posttype}', 'AdminControllers\Posts\PostTypeController@index_user')->name('type.posttype.index.user');
    Route::get('type/{posttype}/create', 'AdminControllers\Posts\PostTypeController@create')->name('type.posttype.create');
    Route::post('type/{posttype}/store', 'AdminControllers\Posts\PostTypeController@store')->name('type.posttype.store');
    Route::put('type/{posttype}/{id}', 'AdminControllers\Posts\PostTypeController@update')->name('type.posttype.update');
    Route::get('type/{posttype}/{id}/edit', 'AdminControllers\Posts\PostTypeController@edit')->name('type.posttype.edit');
    Route::delete('type/{posttype}/{id}', 'AdminControllers\Posts\PostTypeController@destroy')->name('type.posttype.destroy');
    Route::delete('delete_posttype_thumb/{id}', 'AdminControllers\Posts\PostTypeController@delete_posttype_thumb');
    Route::delete('delete_posttype_featured/{id}', 'AdminControllers\Posts\PostTypeController@delete_posttype_featured');


    // For post
    Route::get('admin/{post}', 'AdminControllers\Posts\PostController@index')->name('admin.post.index');
    Route::get('admin/{post}/create', 'AdminControllers\Posts\PostController@create')->name('admin.post.create');
    Route::post('admin/{post}/store', 'AdminControllers\Posts\PostController@store')->name('admin.post.store');
    Route::put('admin/{post}/{id}', 'AdminControllers\Posts\PostController@update')->name('admin.post.update');
    Route::get('admin/{post}/{id}/edit', 'AdminControllers\Posts\PostController@edit')->name('admin.post.edit');
    Route::get('admin/{post}/{id}', 'AdminControllers\Posts\PostController@childlist')->name('post.childlist');
    Route::delete('admin/{post}/{id}', 'AdminControllers\Posts\PostController@destroy')->name('admin.post.destroy');
    Route::delete('delete_pagethumbnail/{id}', 'AdminControllers\Posts\PostController@delete_pagethumbnail');
    Route::delete('delete_icon/{id}', 'AdminControllers\Posts\PostController@delete_icon');
    Route::delete('delete_thumbnail/{id}', 'AdminControllers\Posts\PostController@delete_thumbnail');
    Route::delete('delete_banner/{id}', 'AdminControllers\Posts\PostController@delete_banner');
    Route::delete('delete_audio/{id}', 'AdminControllers\Posts\PostController@delete_audio');
    Route::put('poststatus/{id}', 'AdminControllers\Posts\PostController@poststatus')->name('admin.poststatus');
    Route::put('globalpost/{id}', 'AdminControllers\Posts\PostController@globalpost')->name('admin.globalpost');

    Route::delete('delete_portfolio_thumb/{id}', 'AdminControllers\Portfolios\PortfolioController@delete_portfolio_pthumb');
    Route::delete('delete_picon/{id}', 'AdminControllers\Portfolios\PortfolioController@delete_picon');
    Route::delete('delete_pthumbnail/{id}', 'AdminControllers\Portfolios\PortfolioController@delete_pthumbnail');
    Route::delete('delete_pbanner/{id}', 'AdminControllers\Portfolios\PortfolioController@delete_pbanner');
    Route::delete('delete_portfolio_cat/{id}', 'AdminControllers\Portfolios\PortfolioCategoryController@delete_category_thumb');


// Associated Post
    Route::get('admin/associated/{type}/{id}', 'AdminControllers\Posts\AssociatedPostController@associated_post')->name('associated.post.index');
    Route::get('admin/associated/{type}/{id}/create', 'AdminControllers\Posts\AssociatedPostController@create')->name('admin.associated.create');
    Route::post('admin/associated/{type}/{id}/store', 'AdminControllers\Posts\AssociatedPostController@store')->name('admin.associated.store');
    Route::delete('admin/associated/{type}/{id}', 'AdminControllers\Posts\AssociatedPostController@destroy')->name('admin.associated.destroy');
    Route::get('admin/associated/{type}/{id}/edit', 'AdminControllers\Posts\AssociatedPostController@edit')->name('admin.associated.edit');
    Route::put('admin/associated/{type}/{id}', 'AdminControllers\Posts\AssociatedPostController@update')->name('admin.associated.update');

// Associated Portfolios
    Route::get('admin/associates/{type}/{id}', 'AdminControllers\Portfolios\AssociatedPortfolioController@associated_post')->name('associates.post.index');
    Route::get('admin/associates/{type}/{id}/create', 'AdminControllers\Portfolios\AssociatedPortfolioController@create')->name('admin.associates.create');
    Route::post('admin/associates/{type}/{id}/store', 'AdminControllers\Portfolios\AssociatedPortfolioController@store')->name('admin.associates.store');
    Route::delete('admin/associates/{type}/{id}', 'AdminControllers\Portfolios\AssociatedPortfolioController@destroy')->name('admin.associates.destroy');
    Route::get('admin/associates/{type}/{id}/edit', 'AdminControllers\Portfolios\AssociatedPortfolioController@edit')->name('admin.associates.edit');
    Route::put('admin/associates/{type}/{id}', 'AdminControllers\Portfolios\AssociatedPortfolioController@update')->name('admin.associates.update');

// Contact Us
    Route::get('contact-us', 'AdminControllers\Inquiry\InquiryController@index')->name('contact-us');
    Route::get('career', 'AdminControllers\Inquiry\InquiryController@careerIndex')->name('career');


    // Upload multiple document
    Route::get('doc/multipledocument/{post_id}', 'AdminControllers\Posts\PostDocController@index')->name('doc.multipledocument');
    Route::get('doc/multipledocument/{post_id}/create', 'AdminControllers\Posts\PostDocController@create');
    Route::post('doc/multipledocument/store', 'AdminControllers\Posts\PostDocController@store')->name('multipledocument.store');
    Route::get('doc/multipledocument/{post_id}/{id}/edit', 'AdminControllers\Posts\PostDocController@edit');
    Route::put('doc/multipledocument/{post_id}', 'AdminControllers\Posts\PostDocController@update');
    Route::delete('doc/deleterow/{id}', 'AdminControllers\Posts\PostDocController@destroy');
    Route::delete('doc/multipledocument/{id}', 'AdminControllers\Posts\PostDocController@delete_doc_file');

    View::composer(['*'], function ($view) {
        $posttype = App\Models\Posts\PostTypeModel::orderBy('ordering', 'asc')->get();
        $view->with('posttype', $posttype);
    });
});
