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
				<div class="title-page"> {{ ucwords($data->post_title) }} </div>
				<ol class="breadcrumb">
					<li><a href=" {{ url('/') }} ">Home</a></li>
					<li class="active"> {{ ucwords($data->post_title) }} </li>
				</ol>
			</div>
		</div>
	</div>
</div>

<!-- ABOUT FEATURE -->
<div class="section pad">
	<div class="container">

		<div class="row">
			@foreach($associated_posts as $value)
			<!--start-->
			<div class="col-sm-6 col-md-6">
				<div class="testimonial-2">
					<div class="body">
						<p> {!! $value->content !!} </p>
						<div class="panah"></div>
					</div>
					<div class="media">
						<img src="@if( $value->thumbnail) {{ asset('uploads/original/' . $value->thumbnail) }}
                             @else {{ asset('themes-assets/images/team-1.jpg') }} @endif" alt="{{ $value->title}}" alt="" class="img-circle">

						<div class="title"> {{ $value->title}} </div>
						<div class="company"> {{ $value->sub_title}} </div>
					</div>
				</div>
			</div>
			<!--end-->
			@endforeach

		</div>

	</div>
</div>


@endsection