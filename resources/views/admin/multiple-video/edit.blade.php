@extends('admin.master')
@section('breadcrumb')
<a href="{{ route('admin.multiplevideo.index', Request::segment(3) ) }}" class="btn btn-primary btn-sm">List</a>
@endsection
@section('content')
<div class="alert" id="message" style="display: none"></div>
<form class="form-horizontal" id="upload_image1" role="form" action="{{ url('admin/multiplevideo',$data->id) }}" method="post" enctype="multipart/form-data">
	{{ csrf_field() }}   
	<input type="hidden" name="_method" value="PUT" />           
	<div class="col-md-9">
		<!-- Input Fields -->
		<div class="panel">
			<div class="panel-heading">
				<span class="panel-title">Edit Video</span>
			</div>
			<div class="panel-body">  
				<input type="hidden" name="post_id" value="{{ Request::segment(2) }}">

				<div class="form-group">
					<label for="inputStandard" class="col-lg-2 control-label"> Title </label>
					<div class="col-lg-8">
						<div class="bs-component">
							<input type="text" name="title" id="title" value="{{ $data->title }}" class="form-control" /> 		
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="inputStandard" class="col-lg-2 control-label"> Ordering </label>
					<div class="col-lg-8">
		<input type="text" name="ordering" value="{{ ($data->ordering)?$data->ordering:'' }}" class="form-control" /> 		
						</div>
					</div>
			

				<div class="form-group">
					<label for="inputStandard" class="col-lg-2 control-label"> Video </label>
					<div class="col-lg-8">
						<div class="bs-component">
						    <div class="bs-component">
						  <input type="text" name="video" id="video" class="form-control" placeholder="sAzlWScHTc4" value="{{ $data->video }}"/> 
						</div> For Example: https://youtu.be/ <b>sAzlWScHTc4</b>
						</div>
					</div>
				</div>  

				<div class="form-group">
					<label for="inputStandard" class="col-lg-2 control-label">  </label>
					<div class="col-lg-8">
						<div class="bs-component">
							<input type="submit" name="submit" value="Submit" class="btn btn-primary btn-sm">      
						</div>
					</div>
				</div>  
			</div>
		</div>
</div>

	<div class="col-md-8">
		<div class="admin-form">
			<div class="">

			<iframe width="100%" height="350" src="https://www.youtube.com/embed/{{$data->video}}" title="YouTube video player" frameborder="0" allowfullscreen></iframe>


			</div>
		</div>
	</div>
</form>
@endsection

@section('libraries')
<script type="text/javascript">
	$('document').ready(function(){

		$('#upload_image').on('submit',function(event){
			event.preventDefault();
			$.ajax({
				url: "{{-- route('multiplephoto.store') --}}",
				method: "POST",
				data:new FormData(this),
				dataType:'JSON',
				contentType:false,
				cache:false,
				processData:false,
				success:function(data){
					$('#message').css('display','block');
					$('#message').html(data.message);
					$('#message').addClass(data.class_name);
					location.reload();
				},
				error:function(data){					
					alert('Error!!');
				}
			});
		});

// Delete Product Image
  $('.delete_image').on('click',function(e){
    e.preventDefault();
    var csrf = $('meta[name="csrf-token"]').attr('content');
    var str = $(this).attr('href');
    var id = str.slice(1);
    $.ajax({
      type:'delete',
      url:"{{-- url('/multiplephoto') . '/' --}}" + id,
      data:{_token:csrf},    
      success:function(data){   
       $('#message').css('display','block');
       $('#message').html(data.message);
       $('#message').addClass(data.class_name);
       $('div .id'+id ).remove();
      },
      error:function(data){       
       alert('Error occurred!');
     }
   });
  });


});
</script>
@endsection
