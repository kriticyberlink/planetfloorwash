@extends('themes.default.common.master')
@section('title',$data->post_title)
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('thumbnail',$data->banner)
@section('content')

<!-- BANNER -->
<div class="section banner-page">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="title-page">{{ $data->post_title }}</div>
				<ol class="breadcrumb">
					<li><a href=" {{ url('/') }} ">Home</a></li>
					<li class="active">{{ ucwords( $data->post_title ) }}</li>
				</ol>
			</div>
		</div>
	</div>
</div>

<!-- ABOUT FEATURE -->
<div class="section pad">
	<div class="container">

		<div class="row">
			<div class="col-sm-3 col-md-3">
				@include( 'themes.default.common.sidebar-blog' )
			</div>

			<div class="col-sm-9 col-md-9">
				<div class="single-page">
					<img src="@if($data->banner) {{asset('uploads/original/' . $data->banner)}} 
                    @else {{ asset('themes-assets/images/service-2.jpg') }} @endif" alt="" class="img-responsive">
					<div class="margin-bottom-30"></div>
					{!! $data->post_content !!}
					@isset($data->post_excerpt)
					<blockquote> {!! $data->post_excerpt !!} </blockquote>
					@endisset

				</div>

			</div>

		</div>

	</div>
</div>



@endsection