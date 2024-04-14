@extends('admin.master')
@section('breadcrumb')
     <a href="{{ route('adminmenu.index') }}" class="btn btn-primary btn-sm">List</a>
@endsection
@section('content')

<form class="form-horizontal" role="form" action="{{ route('adminmenu.store') }}" method="post" enctype="multipart/form-data">
          {{ csrf_field() }}                 
          <div class="col-md-8">
            <!-- Input Fields -->
            <div class="panel">
              <div class="panel-heading">
                <span class="panel-title">Create New Menu</span>
              </div>
              <div class="panel-body"> 
                           
                  <div class="form-group">
                    <label for="inputStandard" class="col-lg-3 control-label">Title</label>
                    <div class="col-lg-8">
                      <div class="bs-component">
                        <input type="text" name="title" class="form-control" />
                      </div>
                    </div>
                  </div>         
              
                   <div class="form-group">
                    <label class="col-lg-3 control-label" for="textArea3">  </label>
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