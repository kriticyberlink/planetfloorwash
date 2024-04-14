@extends('admin.master')
@section('breadcrumb')
     <a href="{{ Request::segment(1).'/'.Request::segment(2) }}" class="btn btn-primary btn-sm">List</a>
@endsection
@section('content')
<form class="form-horizontal" role="form" action="{{url('admin/videogallery')}}" method="post" enctype="multipart/form-data">
	{{ csrf_field() }}            
	<div class="col-md-8">
		<!-- Input Fields -->
		<div class="panel">
			<div class="panel-heading">
				<span class="panel-title">New Gallery Video  </span>
			</div>
			<div class="panel-body"> 

				<div class="form-group">
                    <label for="inputSelect" class="col-lg-3 control-label">Category </label>
                    <div class="col-lg-8">
                      <div class="bs-component">
                        <select class="form-control" name="category_id">
                         @foreach($data as $row)
                         <option value="{{$row->id}}">{{$row->category}}</option>
                         @endforeach
                        </select>
                      <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div></div>
                    </div>
                  </div>

				  <div class="form-group">
                    <label class="col-lg-3 control-label" for="textArea3"> Video ID </label>
                    <div class="col-lg-8">
                      <div class="bs-component">
						  <input type="text" name="video" id="video" class="form-control" placeholder="sAzlWScHTc4"/> 
						</div> For Example: https://youtu.be/ <b>sAzlWScHTc4</b>
                    </div>
                  </div>  

				<div class="form-group">
					<label for="inputStandard" class="col-lg-3 control-label">Caption </label>
					<div class="col-lg-8">
						<div class="bs-component">
							<input type="text" id="inputStandard" name="caption" class="form-control" placeholder="" />
						</div>
					</div>
				</div>         

				<div class="form-group">
					<label class="col-lg-3 control-label" for="textArea3"> </label>
					<div class="col-lg-8">
						<div class="bs-component">
							<input type="submit" class="btn btn-primary btn-lg" value="Submit" />
						</div>
					</div>
				</div> 


			</div>
		</div>          
	</div>

</form>
@endsection
