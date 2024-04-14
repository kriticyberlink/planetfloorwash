
<form action="{{ route('free-quote') }}" method="post" class="form-contact">
	@csrf
	@method('POST')
	@if ($errors->count())
	<div class="alert alert-danger">
		@foreach ($errors->all() as $error)
		{{ $error }}<br>
		@endforeach
	</div>
	@endif

	<div class="row">
		<div class="col-sm-4 col-md-4">
			<div class="form-group">
				<label>Full Name</label>
				<input type="text" class="form-control" name="first_name" id="first_name" placeholder="" required="">
				<div class="help-block with-errors"></div>
			</div>
		</div>
		<div class="col-sm-4 col-md-4">
			<div class="form-group">
				<label>Email</label>
				<input type="email" class="form-control" name="email" id="email" placeholder="" required="">
				<div class="help-block with-errors"></div>
			</div>
		</div>
		<div class="col-sm-4 col-md-4">
			<div class="form-group">
				<label>City </label>
				<input type="text" class="form-control" name="city" id="city " placeholder="" required="">
				<div class="help-block with-errors"></div>
			</div>
		</div>

		<div class="col-sm-4 col-md-4">
			<div class="form-group">
				<label>Street Address </label>
				<input type="text" class="form-control" name="address" id="address" placeholder="" required="">
				<div class="help-block with-errors"></div>
			</div>
		</div>


		<div class="col-sm-4 col-md-4">
			<div class="form-group">
				<label>Company </label>
				<input type="text" class="form-control" name="company" id="company" placeholder="" required="">
				<div class="help-block with-errors"></div>
			</div>
		</div>

		<div class="col-sm-4 col-md-4">
			<div class="form-group">
				<label>Phone </label>
				<input type="number" class="form-control" name="contact" id="contact" placeholder="" required="">
				<div class="help-block with-errors"></div>
			</div>
		</div>

		<div class="col-sm-12 col-md-12">
			<div class="form-group">
				<label>
					Cleaning Needs
				</label>
				<textarea id="p_message" name="message" class="form-control" rows="6" placeholder="Write message"></textarea>
				<div class="help-block with-errors"></div>
			</div>
		</div>
		<div class="col-sm-12 col-md-12">
			<div class="form-group">
				<div class="row">

					<div class="col-6 col-sm-6 col-md-5">
						<div class="contact-captcha">
							<span>{!! captcha_img('flat') !!}</span>

							<button id="reloadCaptchaBtn" type="button" class="btn btn-success reload contact-captcha">&#x21bb;</button>
						</div>
					</div>
					<div class="col-6 col-sm-6 col-md-7">

						<input id="contact-captcha" type="text" class="form-control col-md-3" placeholder="Enter Captcha" name="captcha" required>
						<div class="help-block with-errors">
							@if($errors->has('captcha'))
							{{ $errors->first('captcha') }}
							@endif
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-sm-12 col-md-12">
			<div class="form-group">
				<div id="success"></div>
				<button type="submit" class="btn btn-secondary">REQUEST FREE QUOTE</button>
			</div>
		</div>

	</div>
</form>
@section('inline-scripts')

@if (session('message'))
<script>
	let msg = '{{ session("message") }}';
	toastr.success(msg);
</script>
@endif
@if( session('failed') )
<script>
	let msg = '{{ session("failed") }}';
	toastr.error(msg); 
</script>
@endif
@endsection