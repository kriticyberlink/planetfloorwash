@extends('admin.master')
@section('title', Request::segment(2))

@section('breadcrumb')
    <button type="button" class="btn btn-default btn-sm backlink"><i class="fa fa-angle-double-left"  aria-hidden="true"></i> Back </button>
    <a href="{{ route('admin.post.index',Request::segment(2)) }}" class="btn btn-default btn-sm backlink"><i class="fa fa-list" aria-hidden="true"></i> Show List </a>
@endsection

@section('content')
    <form class="form-horizontal" role="form" action="{{ route('admin.post.store',Request::segment(2)) }}" method="post"
          enctype="multipart/form-data">
        {{ csrf_field() }}
         @if(Request::segment(2)=='member-country')
         <div class="col-md-9">
            <!-- Input Fields -->
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title">New Post</span>
                </div>
                <div class="panel-body">
                    <input type="hidden" name="post_date" value="<?=date('Y-m-d h:i:s')?>"/>
                    <input type="hidden" name="post_type" value="{{ Request::segment(2) }}"/>
                    <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Title</label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <input type="text" id="post_title" name="post_title" class="form-control"
                                       placeholder=""/>
                                <input type="hidden" id="uri" name="uri" class="form-control" placeholder=""/>
                                <input type="hidden" id="" name="post_parent" class="form-control" placeholder=""  value="0" />

                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Sub Title</label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <input type="text" id="" name="sub_title" class="form-control" placeholder=""/>
                            </div>
                        </div>
                    </div>

                
                   <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Phone</label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <input type="text" id="" name="associated_title" class="form-control" placeholder=""  />
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="inputSelect" class="col-lg-2 control-label"> Country </label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <select name="post_category" class="form-control">
                                    <option value="0"> Select Country</option>
                                    @if($country)
                                        @foreach($country as $row)
                                            <option value="{{$row->code}}"> {{$row->countryname}}</option>
                                        @endforeach
                                    @endif
                                </select>
                                <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt;
                                    &gt;
                                </div>
                            </div>
                        </div>
                    </div>
                  
                         @if($category->count()>0)
                       <div class="form-group">
                        <label for="inputSelect" class="col-lg-2 control-label"> Category </label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <select name="category" class="form-control">
                                    <option value="0"> Select Category</option>
                                   
                                        @foreach($category as $row)
                                            <option value="{{$row->id}}"> {{$row->category}}</option>
                                        @endforeach
                                    
                                </select>
                                <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt;
                                    &gt;
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="admin-form">
                <div class="sid_ mb10">
                    <div class="hd_show_con">

                    </div>
                    <footer>
                        <div id="publishing-action">
                            <input type="submit" class="btn btn-primary btn-sm" value="Publish"/>
                        </div>
                        <div class="clearfix"></div>
                    </footer>
                    <div class="clearfix"></div>
                </div>

                <div class="sid_ mb10">
                    <label class="field select">
                        <select id="template" name="template">
                            @foreach($templates as $key=>$template)
                                <option value="{{$key}}">{{ ucfirst($template)}}</option>
                            @endforeach
                        </select>
                        <i class="arrow"></i>
                    </label>
                </div>

                <div class="sid_ mb10">
                    <label class="field text"> Post Order
                        <input type="number" id="" name="post_order" class="form-control"
                               placeholder="Insert Number Here" value="{{ $post_order }}"/>
                    </label>
                </div>

            </div>

        </div>
         @else
        <div class="col-md-9">
            <!-- Input Fields -->
            <div class="panel">
                <div class="panel-heading">
                    <span class="panel-title">New Post</span>
                </div>
                <div class="panel-body">
                    <input type="hidden" name="post_date" value="<?=date('Y-m-d h:i:s')?>"/>
                    <input type="hidden" name="post_type" value="{{ Request::segment(2) }}"/>
                    <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Title</label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <input type="text" id="post_title" name="post_title" class="form-control"
                                       placeholder=""/>
                                <input type="hidden" id="uri" name="uri" class="form-control" placeholder=""/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Sub Title</label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <input type="text" id="" name="sub_title" class="form-control" placeholder=""/>
                            </div>
                        </div>
                    </div>

                 @if(Request::segment(2)=='member-country')
                   <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Phone</label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <input type="text" id="" name="associated_title" class="form-control" placeholder=""  />
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="inputSelect" class="col-lg-2 control-label"> Country </label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <select name="post_category" class="form-control">
                                    <option value="0"> Select Country</option>
                                    @if($country)
                                        @foreach($country as $row)
                                            <option value="{{$row->code}}"> {{$row->countryname}}</option>
                                        @endforeach
                                    @endif
                                </select>
                                <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt;
                                    &gt;
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif
                          @if($category->count()>0)
                       <div class="form-group">
                        <label for="inputSelect" class="col-lg-2 control-label"> Category </label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <select name="category" class="form-control">
                                    <option value="0"> Select Category</option>
                                    
                                        @foreach($category as $row)
                                            <option value="{{$row->id}}"> {{$row->category}}</option>
                                        @endforeach
                                   
                                </select>
                                <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt;
                                    &gt;
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif
                      @if(Request::segment(2)=='information')
                    <div class="form-group">
                        <label for="inputSelect" class="col-lg-2 control-label">Select Parent</label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <select name="post_parent" class="form-control">
                                    <option value="0"> Choose Parent</option>
                                    @if($parent_post)
                                        @foreach($parent_post as $row)
                                            <option value="{{$row->id}}">{{$row->post_title}}</option>

                                        @endforeach
                                    @endif
                                </select>
                                <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt;
                                    &gt;
                                </div>
                            </div>
                        </div>
                    </div>
                    @else
                    <input type="hidden" id="" name="post_parent" class="form-control" placeholder=""  value="0" />
                    @endif

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="textArea3"> Brief </label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <textarea class="form-control my-editor" id="" name="post_excerpt" rows="9"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="textArea2">Content</label>
                        <div class="col-lg-10">
                            <div class="bs-component">
                                <textarea class="form-control my-editor" id="" name="post_content" rows="30"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputStandard" class="col-lg-2 control-label">Meta Key</label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <input type="text" id="" name="meta_keyword" class="form-control" placeholder=""/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label" for="textArea3"> Meta Description </label>
                        <div class="col-lg-9">
                            <div class="bs-component">
                                <textarea class="form-control" id="textArea3" name="meta_description"
                                          rows="3"></textarea>
                            </div>
                        </div>
                    </div>

                    <!--<div class="form-group">-->
                    <!--    <label for="inputStandard" class="col-lg-2 control-label"> External Link </label>-->
                    <!--    <div class="col-lg-9">-->
                    <!--        <div class="bs-component">-->
                    <!--            <input type="text" id="" name="external_link" class="form-control"-->
                    <!--                   placeholder="http://example.com"/>-->
                    <!--        </div>-->
                    <!--    </div>-->
                    <!--</div>-->

                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="admin-form">
                <div class="sid_ mb10">
                    <div class="hd_show_con">

                    </div>
                    <footer>
                        <div id="publishing-action">
                            <input type="submit" class="btn btn-primary btn-sm" value="Publish"/>
                        </div>
                        <div class="clearfix"></div>
                    </footer>
                    <div class="clearfix"></div>
                </div>

                <div class="sid_ mb10">
                    <label class="field select">
                        <select id="template" name="template">
                            @foreach($templates as $key=>$template)
                                <option value="{{$key}}">{{ ucfirst($template)}}</option>
                            @endforeach
                        </select>
                        <i class="arrow"></i>
                    </label>
                </div>

                <!--<div class="sid_ mb10">-->
                <!--    <label class="field select">-->
                <!--        <select id="template_child" name="template_child">-->
                <!--            @foreach($templates_child as $key=>$template_child)-->
                <!--                <option value="{{$key}}">{{ ucfirst($template_child)}}</option>-->
                <!--            @endforeach-->
                <!--        </select>-->
                <!--        <i class="arrow"></i>-->
                <!--    </label>-->
                <!--</div>-->

                <div class="sid_ mb10">
                    <label class="field text"> Post Order
                        <input type="number" id="" name="post_order" class="form-control"
                               placeholder="Insert Number Here" value="{{ $post_order }}"/>
                    </label>
                </div>
                 <?php /* ?>
                <div class="sid_ mb10">
                    <label class="field text"> Homepage Order
                        <input type="number" id="" name="home_order" class="form-control"
                               placeholder="Insert Order Here"/>
                    </label>
                </div>

                <div class="sid_ mb10">
                    <div class="hd_show_con">
                        <input type="checkbox" name="show_in_home" value="1"/> Show in home <br>

                    </div>
                </div>

              <div class="sid_bvijay mb10">
               <h4> Logos </h4>
               <div class="hd_show_con">


               <div class=" has-feedback has-search">
                  <input class="category-search form-control" type="text" placeholder="Search..">
                  <span class="glyphicon glyphicon-search form-control-feedback"></span>
                </div>
                <div class="tab-content mb15">
                 <div id="tab1" class="tab-pane active">
                  @if($post_portfolio->count() > 0)
                  <ul class="ctgor category-list">
                    @foreach($post_portfolio as $row)
                    <li>
                      <label>
                        <input type="checkbox" name="portfolios[]" value="{{ $row->id }}">
                        {{ $row->title }}
                      </label>
                    </li>
                    @endforeach
                  </ul>
                  @endif
                </div>
              </div>
              </div>
              </div>
               
                <div class="sid_ mb10">
                    <h4>Icon </h4>
                    <label class="field select">
                        <select id="template" name="price" style="font-family: 'FontAwesome';">
                            <option value="" selected>Choose Icon</option>
                            <option value="coins">&#xf1c0; COINS</option>

                        </select> <i class="arrow"></i>
                    </label>
                </div>
                 <div class="sid_ mb10">
                    <h4> Thumbnail </h4>
                    <div class="hd_show_con">
                      <div id="xedit-demo">
                       <input type="file" name="thumbnail" />
                     </div>
                   </div>
                 </div>

                 <div class="sid_ mb10">
                    <h4> Audio </h4>
                    <div class="hd_show_con">
                        <div id="xedit-demo">
                            <input type="file" name="audio"/>
                        </div>
                    </div>
                </div>
               

                <div class="sid_ mb10">
                    <h4> File </h4>
                    <div class="hd_show_con">
                      <div id="xedit-demo">
                       <input type="file" name="icon" />
                     </div><br>
                     <div>
                    <input type="text" id="" name="uid" class="form-control" placeholder=" File Caption" />
                     </div>
                   </div>

                 </div>
                 <?php */ ?>
                <div class="sid_ mb10">
                    <h4> Featured Image </h4>
                    <div class="hd_show_con">
                        <div id="xedit-demo">
                            <input type="file" name="page_thumbnail"/>
                        </div><br>( Width: 1500px, Height:1500px maximum fix size:2MB )
                        <!--<div> <input type="checkbox" name="project_status" value="0"/> Disable From Detail <br></div>-->
                    </div>
                </div>

                <div class="sid_ mb10">
                    <h4> Banner </h4>
                    <div class="hd_show_con">
                        <div id="xedit-demo">
                            <input type="file" name="banner"/><br>( Width: 1500px, Height:500px maximum fix size:2MB )
                        </div>
                    </div>
                </div>



            </div>

        </div>
        @endif
    </form>
@endsection
@section('scripts')
    <script type="text/javascript">
        $(document).ready(function () {
            $('#post_title').on('keyup', function () {
                var post_title;
                post_title = $('#post_title').val();
                post_title = post_title.replace(/[^a-zA-Z0-9 ]+/g, "");
                post_title = post_title.replace(/\s+/g, "-");
                $('#uri').val(post_title);
            });
        });

        // Go back link
        $('.backlink').click(function () {
            var url = '<?=url()->previous(); ?>';
            window.location = url;
        });

    </script>
@endsection
