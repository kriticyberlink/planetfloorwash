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
			<div class="col-sm-3 col-md-3">

				@include('themes.default.common.sidebar-blog')

			</div>

			<div class="col-sm-9 col-md-9">

				<div class="team-page">
					<!--start-->
					@foreach($associated_posts as $value)
					<div class="col-sm-4 col-md-4">
						<div class="box-team-3">
							<div class="media">
								<img src="@if( $value->thumbnail) {{ asset('uploads/original/' . $value->thumbnail) }}
                             @else {{ asset('themes-assets/images/team-1.jpg') }} @endif" alt="{{ $value->title}}" class="img-responsive img-circle">
							</div>
							<div class="body">
								<div class="info-box">

									<div class="text">
										<div class="title"> {{ $value->title }} </div>
										<p>{{ $value->sub_title }}</p>

									</div>
								</div>
							</div>
						</div>
					</div>
					@endforeach
					<!--end-->
				</div>

			</div>
		</div>
		
	</div>
</div>
<div class="text-center">
	{!! $associated_posts->links( 'pagination::bootstrap-4' ) !!}
</div>


@endsection