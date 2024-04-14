<!DOCTYPE>
<html lang="eng" class="">

<head>
	<!-- Basic Page Needs
    ================================================== -->
	<meta charset="utf-8">
	<!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> @yield('post_title') {{ $setting->site_name}} </title>
	<meta name="description" content=" @yield( 'meta_description' ) ">
	<meta name="keywords" content=" @yield( 'meta_keyword' ) ">
	<meta name="author" content=" @yield( 'post_title' ) ">
	<meta property="image" content=" @yield( 'thumbnail' ) ">
	<link rel="shortcut icon" type="image/x-icon" href="{{ asset('themes-assets/images/planet-floor-logo.jpg') }}">
	
	
	<!-- ==============================================
	CSS VENDOR
	=============================================== -->
	<link rel="stylesheet" type="text/css" href="{{ asset('themes-assets/css/vendor/bootstrap.min.css') }}" />
	<link rel="stylesheet" type="text/css" href="{{ asset('themes-assets/css/vendor/font-awesome.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('themes-assets/css/vendor/simple-line-icons.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('themes-assets/css/vendor/owl.carousel.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('themes-assets/css/vendor/owl.theme.default.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('themes-assets/css/vendor/magnific-popup.css') }}">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
	<!-- ==============================================
	Custom Stylesheet
	=============================================== -->
	<link rel="stylesheet" type="text/css" href="{{ asset('themes-assets/css/style.css') }}" />

	<script type="text/javascript" src="{{ asset('themes-assets/js/vendor/modernizr.min.js') }}"></script>
	

</head>

<body>

	<!-- Load page -->
	<div class="animationload">
		<div class="loader"></div>
	</div>

	<!-- HEADER -->
	<div class="header">
		<!-- TOPBAR -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-md-5">
						<div class="topbar-left">
							<div class="welcome-text">

							</div>
						</div>
					</div>
					<div class="col-sm-9 col-md-7">
						<div class="topbar-right">
							<ul class="topbar-menu">
								<li><i class="icon-phone icons"></i> Call Us Today {{$setting->phone }}</li>
								<li class=""><i class="icon-location-pin icons"></i> {{$setting->location1 }}</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- NAVBAR SECTION -->
		<div class="navbar navbar-main">

			<div class="container container-nav">

				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<a class="navbar-brand" href="{{ url('/') }}">
						<img src="{{ asset('themes-assets/images/logo-planetwash.png') }}" class="brand-one" alt="" />
						<img src="{{ asset('themes-assets/images/logo-planetwash.png') }}" class="brand-two" alt="" />
					</a>
				</div>


				<nav class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">

						<li> <a href="{{ url('/') }}">Home</a> </li>
						@foreach ($navigations as $row)

						@if(getposts($row->id)->count() > 0)
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{ ucwords( $row->post_type ) }} <span class="caret"></span></a>
							<ul class="dropdown-menu">
								@foreach (getposts($row->id) as $_row)
								<li><a href="{{ url( geturl($_row['uri'], $_row['page_key'] ) ) }} ">{{ ucwords( $_row->post_title ) }}</a></li>
								@endforeach

							</ul>
						</li>
						@else
						<li>
							<a href="{{ url( 'page/' . posttype_url( $row->uri )) }}">{{ ucwords( $row->post_type ) }}</a>
						</li>
						@endif
						@endforeach
					</ul>

				</nav>

			</div>
		</div>

	</div>