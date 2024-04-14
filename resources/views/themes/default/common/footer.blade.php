<!-- FOOTER SECTION -->
<div class="footer">

	<div class="container">

		<div class="row">
			<div class="col-sm-4 col-md-4">
				<div class="footer-item">
					<img src="{{ asset('themes-assets/images/logo-planetwash.png') }} " alt="logo bottom" class="logo-bottom" width="120">
					<p>{!! $setting->welcome_text !!}</p>
					<div class="footer-sosmed">
						<a href="{{ $setting->facebook_link }}" target="_blank" title="">
							<div class="item">
								<i class="fa fa-facebook" ></i>
							</div>
						</a>
						<a href="{{ $setting->twitter_link }}" target="_blank" title="">
							<div class="item">
								<i class="fa fa-twitter"></i>
							</div>
						</a>
						<a href="{{ $setting->instagram_link }}" target="_blank" title="">
							<div class="item">
								<i class="fa fa-instagram"></i>
							</div>
						</a>
						<a href="{{ $setting->pinterest_link }}" target="_blank" title="">
							<div class="item">
								<i class="fa fa-pinterest"></i>
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4 col-md-4 ">
				<div class="footer-item">
					<div class="footer-title">
						Links
					</div>
					<ul class="list">
					<li><a href="{{ url('/') }}" title="">Home</a></li>
						@foreach ($footer_navigations as $row)

						@if(getposts($row->id)->count() > 0)

						@foreach (getposts($row->id) as $_row)
						<li><a href="{{ url( geturl($_row['uri'], $_row['page_key'] ) ) }} ">{{ ucwords( $_row->post_title ) }}</a></li>
						@endforeach
					@else
					<li>
						<a href="{{ url( 'page/' . posttype_url( $row->uri )) }}">{{ ucwords( $row->post_type ) }}</a>
					</li>
					@endif
					@endforeach
					</ul>
				</div>
			</div>
			<div class="col-sm-4 col-md-4">
				<div class="footer-item">
					<div class="footer-title">
						Contact Us
					</div>
					<ul class="list-info">
						<li>
							<p><strong>{{ $setting->site_name }}<br>
						<li>
							<div class="info-icon">
								<span class="fa fa-map-marker"></span>
							</div>
							<div class="info-text"> {{ $setting->location1 }} </div>
						</li>
						<li>
							<div class="info-icon">
								<span class="fa fa-phone"></span>
							</div>
							<div class="info-text">{{ $setting->phone }}</div>
						</li>
						<li>
							<div class="info-icon">
								<span class="fa fa-envelope"></span>
							</div>
							<div class="info-text"> {{ $setting->email_primary }}</div>
						</li>

					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="fcopy">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-6">
					<p class="ftex">&copy; {{ date('Y') }} {{ $setting->copyright_text }}</p>
				</div>

				<div class="col-sm-12 col-md-6 text-right">
					<p class="ftex">Design and Development by <a href="http://cyberlink.com.np">Cyberlink Pvt. Ltd</a></p>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- JS VENDOR -->
<script type="text/javascript" src="{{ asset('themes-assets/js/vendor/jquery.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes-assets/js/vendor/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes-assets/js/vendor/jquery.superslides.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes-assets/js/vendor/owl.carousel.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes-assets/js/vendor/bootstrap-hover-dropdown.min.js') }}"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<script type="text/javascript" src="{{ asset('themes-assets/js/vendor/jquery.magnific-popup.min.js') }}"></script>

<!-- sendmail -->
<script type="text/javascript" src="{{ asset('themes-assets/js/vendor/validator.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes-assets/js/vendor/form-scripts.js') }}"></script>

<script type='text/javascript' src='https://maps.google.com/maps/api/js?sensor=false&amp;ver=4.1.5'></script>

<script type="text/javascript" src="{{ asset('themes-assets/js/script.js') }}"></script>

@yield('inline-scripts')

</body>

</html>