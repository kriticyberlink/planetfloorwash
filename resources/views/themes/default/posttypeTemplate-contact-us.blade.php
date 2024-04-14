 @extends('themes.default.common.master')
 @section('title',$data->post_type)
 @section('meta_keyword',$data->meta_keyword)
 @section('meta_description',$data->meta_description)
 @section('thumbnail',$data->banner)
 @section('content')
 <!-- BANNER -->

 <div class="section banner-page">
 	<div class="container">
 		<div class="row">
 			<div class="col-sm-12 col-md-12">
 				<div class="title-page">{{ $data->post_type }}</div>
 				<ol class="breadcrumb">
 					<li><a href="{{ url('/') }}">Home</a></li>
 					<li class="active">{{ $data->post_type }}</li>
 				</ol>
 			</div>
 		</div>
 	</div>
 </div>

 <!-- ABOUT FEATURE -->
 <div class="section pad">
 	<div class="container">

 		<div class="row">

 			<div class="col-sm-4 col-md-4">
 				<div class="box-icon-4">
 					<div class="icon">
 						<i class="icon-phone icons"></i>
 					</div>
 					<div class="body">
 						Call us
 						<div class="heading">
 							{{ $setting->phone }}
 						</div>
 					</div>
 				</div>
 			</div>
 			<div class="col-sm-4 col-md-4">
 				<div class="box-icon-4">
 					<div class="icon">
 						<i class="icon-envelope-open icons"></i>
 					</div>
 					<div class="body">
 						Have any questions?
 						<div class="heading">
 							{{ $setting->email_primary }}
 						</div>
 					</div>
 				</div>
 			</div>
 			<div class="col-sm-4 col-md-4">
 				<div class="box-icon-4">
 					<div class="icon">
 						<i class="icon-location-pin icons"></i>
 					</div>
 					<div class="body">

 						<div class="heading">
 							{{ $setting->location1 }}
 						</div>
 					</div>
 				</div>
 			</div>
 		</div>

 	</div>
 </div>

 <!-- QUOTE -->
 <div class="section pad bglight">
 	<div class="container">
 		<div class="row">
 			<div class="col-sm-12 col-md-10 col-md-offset-1">
 				<h2 class="section-heading">
 					Get free quote
 				</h2>
 				@include('themes.default.contact')
 			</div>
 		</div>
 	</div>
 </div>

 <!-- MAPS -->
 <div class="maps-wraper">
 	<iframe src={!! $setting->google_map2 !!} ></iframe>
 </div>


 @endsection