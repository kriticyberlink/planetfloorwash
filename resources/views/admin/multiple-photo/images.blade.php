@extends('admin.master')
@section('title', '')
@section('breadcrumb')
    <a href="{{ route('admin.post.index',$postTypeUri) }}" class="btn btn-default btn-sm backlink"><i class="fa fa-list" aria-hidden="true"></i> Show List </a>
@endsection
@section('content')
<div class="row">
    <form class="form-horizontal" role="form" action="{{ route('post.image.store') }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="col-md-9">
            <!-- Input Fields -->
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title">Add Images</span>
                </div>
                <div class="panel-body">
                <input type="hidden" name="post_id" value="{{$data->id}}">
                <div class="form-group">
                    <label for="inputStandard" class="col-lg-2 control-label">Images</label>
                    <div class="col-lg-9">
                        <div class="bs-component">
                            <input type="file" required name="picture" />
                        </div>
                        ( Width: 1500px, Height: 500px) <br/>
						Please upload same size all time. Image size must be less than 2048 KB.
                    </div>
                </div>
                <div class="form-group">
					<label for="inputStandard" class="col-lg-2 control-label">  </label>
					<div class="col-lg-8">
						<div class="bs-component">
							<input type="submit" name="submit" value="Submit" class="btn btn-primary">      
						</div>
					</div>
				</div>
            </div>
        </div>
    </div>
</form>
   
</div>
<div class="row">
    <h6>Images: </h6>
  <?php $i =0; ?>
	@if($image->count() > 0) 
    @foreach ($image as $item)
    <div class="col-md-4">
        <a href="#{{ $item->id }}" class="bannerdelete">X</a>
        <img src="{{asset('uploads/original/'.$item->image)}}" alt="" width="100%" height="100%">
    </div>
       <?php $i++; 
		
		if($i%3 == 0){
		    echo '<div class="clearfix"></div>';
		}
		?>
		@endforeach
		@endif
</div>
    
@endsection

@section('scripts')
<script type="text/javascript">
$('.bannerdelete').on('click',function(e){
    e.preventDefault();
    if(!confirm('Are you sure to delete?')) return false;
    var csrf = $('meta[name="csrf-token"]').attr('content');
    var str = $(this).attr('href');
    var id = str.slice(1);
    $.ajax({
      type:'delete',
      url:"{{url('delete_post_image') . '/'}}" + id,
      data:{_token:csrf},
      success:function(data){
        $('span.banner_id' + id ).remove();
        location.reload();
      },
      error:function(data){
        alert(data + 'Error!');
      }
    });
  });
  </script>
@endsection