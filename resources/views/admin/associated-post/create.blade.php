@extends('admin.master')
@section('title','Post Category')
@section('breadcrumb')
    <a href="{{ url('admin/associated/'.Request::segment(3).'/'.Request::segment(4)) }}" class="btn btn-primary btn-sm">List</a>
@endsection
@section('content')
    <form class="form-horizontal" role="form"
          action="{{url('admin/associated/'.Request::segment(3).'/'.Request::segment(4).'/store')}}" method="post"
          enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="col-md-12">
            <!-- Input Fields -->
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title">Create Associated Post</span>
                </div>
                <div class="panel-body">
                    <input type="hidden" name="post_id" value="{{Request::segment(4)}}"/>
                    <div class="form-group">
                        <label for="title" class="col-lg-2 control-label">Title</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <input type="text" id="title" name="title" class="form-control"/>
                                <input type="hidden" id="uri" name="uri" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="title" class="col-lg-2 control-label">Sub Title</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                 <input type="text" id="" name="sub_title" class="form-control"/>
                            </div>
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Content</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <div class="bs-component">
                                    <textarea class="form-control my-editor" id="" name="content" rows="15" autocomplete="off"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <?php /*?>
                    <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Brief</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <div class="bs-component">
                                    <textarea class="form-control" id="" name="brief" rows="3"
                                              autocomplete="off"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                   
                      @if(Request::segment(3)=='core-companies')
                    <div class="form-group">
                        <label for="inputSelect" class="col-lg-2 control-label"> Category </label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <select name="category" class="form-control">
                                    <option disabled selected> Select Category</option>
                                    <option value="1">Slider</option>
                                    <option value="2">Lightbox</option>
                                </select>
                                <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt;
                                    &gt;
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif
                    <div class="form-group">
                        <label for="title" class="col-lg-2 control-label">External Link</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <input type="text" id="ordering" name="phone" class="form-control"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="title" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <input type="text" id="ordering" name="email" class="form-control"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="title" class="col-lg-2 control-label">Facebook Link</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <input type="text" id="ordering" name="facebook_link" class="form-control"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="title" class="col-lg-2 control-label">Twitter Link</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <input type="text" id="ordering" name="twitter_link" class="form-control"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="title" class="col-lg-2 control-label">LinkedIn Link</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <input type="text" id="ordering" name="linked_in_link" class="form-control"/>
                            </div>
                        </div>
                    </div>
                <?php */?>

                    <div class="form-group">
                        <label for="title" class="col-lg-2 control-label">Ordering</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <input type="text" id="ordering" name="ordering" class="form-control" value="{{$ordering}}"/>
                            </div>
                       </div>
                    </div>

                    <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Thumbnail</label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <div class="bs-component">
                                    <div id="xedit-demo">
                                        <input type="file" name="thumbnail"/><br>( Width: 1500px, Height:1500px maximum fix size:2MB )
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for=""> </label>
                        <div class="col-lg-8">
                            <div class="bs-component">
                                <input type="submit" class="btn btn-primary btn-lg" value="Submit"/>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

        <div class="col-md-4"></div>
    </form>
@endsection
@section('scripts')
    <script type="text/javascript">
        $(document).ready(function () {
            $('#title').on('keyup', function () {
                var title;
                title = $('#title').val();
                title = title.replace(/[^a-zA-Z0-9 ]+/g, "");
                title = title.replace(/\s+/g, "-");
                $('#uri').val(title);
            });
        });
    </script>
@endsection
