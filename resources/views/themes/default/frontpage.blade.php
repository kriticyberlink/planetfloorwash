@extends('themes.default.common.master')
@section('content')

<!-- BANNER -->
@if( $banner->count() > 0 )
<div id="slides" class="section banner">
	<ul class="slides-container">

		@foreach( $banner as $value )
		<li>
			<img src="{{ asset('uploads/banners/'.$value->picture) }}" alt="{{ $value->title }}">
			<div class="overlay-bg"></div>
			<div class="container">
				<div class="wrap-caption center">
					<h2 class="caption-heading">
						{{ $value->title }}

					</h2>
					<p class="excerpt">{!! $value->caption !!}
						</p>
					<a href="{{ $value->link }}" class="btn btn-primary" title="Get in Touch">{{ $value->link_title }}</a>
				</div>
			</div>
		</li>
		@endforeach
	</ul>

	<nav class="slides-navigation">
		<div class="container">
			<a href="#" class="next">
				<i class="fa fa-chevron-right"></i>
			</a>
			<a href="#" class="prev">
				<i class="fa fa-chevron-left"></i>
			</a>
		</div>
	</nav>

</div>
@endif

<!-- SERVICES -->
@if( $servicePostType->id )
<div class="section wedo pad">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<h2 class="section-heading">
					<!-- ->We Provide these Services -->
					{{ $servicePostType->uid }}
				</h2>
			</div>
		</div>

		<div class="row">

			<div id="owl-servicas" class="">
				@foreach ( $services as $value )

				<!-- BOX 1 -->
				<div class="box-image-1">
					<div class="media">
						<img src="@if( $value->page_thumbnail) {{ asset('uploads/original/' . $value->page_thumbnail) }}
                             @else {{ asset('themes-assets/images/service-1.jpg') }} @endif" alt="{{ $value->post_title }}" class="img-responsive">
					</div>
					<div class="body">
						<a href="{{url(geturl($value['uri'], $value['page_key']))}}" class="title">{{ $value->post_title }}</a>
						<p>{{ $value->sub_title }}</p>
						<a href="{{url(geturl($value['uri'], $value['page_key']))}}" class="readmore">Read More</a>
					</div>
				</div>
				@endforeach


			</div>

		</div>

	</div>
</div>
@endif

<div class="section testimony">
	<div class="container">

		<div class="row">

			<div class="col-sm-12 col-md-12">

				<div class="row">
					<div class="col-sm-12 col-md-12">
						<h2 class="section-heading">
						{{ $reviewsPostType->uid }}
						</h2>
					</div>
				</div>
				<div id="owl-testimony2">
					@foreach ( $reviews as $value )
					<div class="item">
						<div class="testimonial-2">
							<div class="body">
								<p>{!! str_limit( $value->post_excerpt, 350 ) !!}</p>
								<div class="panah"></div>
							</div>
							<div class="media">
								<img src="@if( $value->page_thumbnail) {{ asset('uploads/original/' . $value->page_thumbnail) }}
                             @else {{ asset('themes-assets/images/team-1.jpg') }} @endif" alt="{{ $value->post_title }}" class="img-circle">
								<div class="title">{{ $value->post_title }}</div>
								<div class="company"> {{ $value->sub_title }}</div>
							</div>
						</div>
					</div>
					@endforeach

				</div>

			</div>

		</div>
	</div>
</div>



<!-- PARTNERS -->
<div class="section partner bglight">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<h2 class="section-heading">
				{{ $clientsPostType->uid }}

				</h2>
			</div>
		</div>

		<div class=" patner">
			<div id="owl-patner">
				@foreach ($clients as $value)
				<div class="client-img">
					<a href="#"><img src="@if( $value->page_thumbnail) {{ asset('uploads/original/' . $value->page_thumbnail) }}
                             @else {{ asset( 'themes-assets/images/partners-1.png' ) }} @endif " alt="{{ $value->post_title }}" class="img-responsive"></a>
				</div>
				@endforeach

			</div>
		</div>
	</div>
</div>



<!-- CONTACT -->
<div class="section contact pad">
	<div class="container">

		<div class="col-sm-12 col-md-12">
			<h2 class="section-heading white">
				{{ $contact->uid }}
			</h2>
		</div>
		<div class="clearfix"></div>
		<div class="col-sm-5 col-md-5">

			<div class="contact-info">
				<p>{{ $contact->content }}</p>
				<p> {{ $setting->location1 }}</p>
				<p><a href="#">{{ $setting->email_primary }}</a></p>
				<p class="phone"><i class="fa fa-phone"></i> {{ $setting->phone }}</p>
				<p>{{ $setting->field1 }} <br> {{ $setting->field2 }}</p>
			</div>
		</div>
		<div class="col-sm-7 col-md-7">
			@include('themes.default.contact')
		</div>
	</div>
</div>

<!-- end of add section -->
@endsection