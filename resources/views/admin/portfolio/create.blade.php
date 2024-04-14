@extends('admin.master')
@section('title', Request::segment(2))

@section('breadcrumb')
<button type="button" class="btn btn-default btn-sm backlink"><i class="fa fa-angle-double-left" aria-hidden="true"></i> Back </button>
<a href="{{ route('our-trades.index') }}" class="btn btn-default btn-sm backlink"><i class="fa fa-list" aria-hidden="true"></i> Show List </a>
@endsection

@section('content')
<form class="form-horizontal" role="form" action="{{ route('our-trades.store') }}" method="post" enctype="multipart/form-data">
  {{ csrf_field() }}     
  <div class="col-md-9">
    <!-- Input Fields -->
    <div class="panel">
      <div class="panel-heading">
        <span class="panel-title">New Logo</span>
      </div>
      <div class="panel-body"> 
                    
        <div class="form-group">
          <label for="inputStandard" class="col-lg-2 control-label">Title</label>
          <div class="col-lg-9">
            <div class="bs-component">
              <input type="text" id="title" name="title" class="form-control" placeholder="" />
              <input type="hidden" id="uri" name="uri" class="form-control" placeholder="" />
            </div>
          </div>
        </div>

        <div class="form-group">
          <label for="inputStandard" class="col-lg-2 control-label">Sub Title</label>
          <div class="col-lg-9">
            <div class="bs-component">
              <input type="text" id="" name="sub_title" class="form-control" placeholder="" />
            </div>
          </div>
        </div>      

      <!--   <div class="form-group">
              <label class="col-lg-2 control-label" for="textArea3"> Category  </label>
              <div class="col-lg-9">
              <div class="bs-component">    
              <select name="category_id" class="form-control">
                <option value="0"> Select Category </option>
                  @if($category)
                  @foreach($category as $row)
                  <option value="{{$row->id}}"> {{$row->category}}</option>
                  @endforeach  
                  @endif 
                </select>
                </div>
              </div>
        </div>              

            <div class="form-group">
              <label class="col-lg-2 control-label" for="textArea3"> Brief </label>
              <div class="col-lg-9">
                <div class="bs-component">
                  <textarea class="form-control" id="" name="brief" rows="3"></textarea>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label class="col-lg-2 control-label">UID</label>
              <div class="col-lg-9">
                <div class="bs-component">
                   <input type="text" id="" name="content" class="form-control" placeholder="" />                
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="inputStandard" class="col-lg-2 control-label">Client Name</label>
              <div class="col-lg-9">
                <div class="bs-component">
                  <input type="text" id="" name="client_name" class="form-control" placeholder="" />
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="inputStandard" class="col-lg-2 control-label">Country</label>
              <div class="col-lg-9">
                <div class="bs-component">
                  <input type="text" id="" name="country" class="form-control" placeholder="" />
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="inputStandard" class="col-lg-2 control-label">	Service </label>
              <div class="col-lg-9">
                <div class="bs-component">
                  <input type="text" id="" name="service" class="form-control" placeholder="" />
                </div>
              </div>
            </div>

            <div class="form-group">
              <label for="inputStandard" class="col-lg-2 control-label">	Year </label>
              <div class="col-lg-9">
                <div class="bs-component">
                  <input type="text" id="" name="year" class="form-control" placeholder="" />
                </div>
              </div>
            </div> -->

            <div class="form-group">
              <label for="inputStandard" class="col-lg-2 control-label">Meta Keyword</label>
              <div class="col-lg-9">
                <div class="bs-component">
                  <input type="text" id="" name="meta_keyword" class="form-control" placeholder="" />
                </div>
              </div>
            </div>

            <div class="form-group">
              <label class="col-lg-2 control-label" for="textArea3"> Meta Description </label>
              <div class="col-lg-9">
                <div class="bs-component">
                   <input type="text" id="" name="meta_description" class="form-control" >
                  
                </div>
              </div>
            </div>                    

            <div class="form-group">
              <label for="inputStandard" class="col-lg-2 control-label"> External Link</label>
              <div class="col-lg-9">
                <div class="bs-component">
                  <input type="text" id="" name="external_link" class="form-control" >
                </div>
              </div>         
            </div> 

          </div>
        </div>          
      </div>

      <div class="col-md-3">
        <div class="admin-form">
          <div class="sid_ mb10">                   
            <div class="hd_show_con">
              <div class="publice_edi">
                Status: <a href="avoid:javascript;" data-toggle="collapse" data-target="#publish_1">Active</a>
              </div>                    
            </div>
            <footer>                        
              <div id="publishing-action">
                <input type="submit" class="btn btn-primary btn-sm" value="Publish" />
              </div>
              <div class="clearfix"></div>
            </footer>
            <div class="clearfix"></div>
          </div>

          <div class="sid_ mb10">
            <label class="field text">
              <input type="number" id="" name="ordering" class="form-control" placeholder="Ordering" value="{{ $ordering }}" />   
            </label>
          </div>

         <!--  <div class="sid_ mb10">
            <h4> Icon </h4>
            <div class="hd_show_con">
              <div id="xedit-demo">
               <input type="file" name="icon" />
             </div>
           </div>
         </div> -->

         <div class="sid_ mb10">
            <h4> Thumbnail </h4>
            <div class="hd_show_con">
              <div id="xedit-demo">
               <input type="file" name="thumbnail" />
             </div>
           </div>
         </div>

       <!--   <div class="sid_ mb10">
            <h4> Page Thumbnail </h4>
            <div class="hd_show_con">
              <div id="xedit-demo">
               <input type="file" name="page_thumbnail" />
             </div>
           </div>
         </div>

         <div class="sid_ mb10">
            <h4> Banner </h4>
            <div class="hd_show_con">
              <div id="xedit-demo">
               <input type="file" name="banner" />
             </div>
           </div>
         </div> -->

       </div>     
     </div>
   </form>
   @endsection
   @section('scripts')
   <script type="text/javascript">
    $(document).ready(function(){
      $('#title').on('keyup',function(){
        var title;
        title = $('#title').val();
        title=title.replace(/[^a-zA-Z0-9 ]+/g,"");
        title=title.replace(/\s+/g, "-");
        $('#uri').val(title);
      });
    });

// Go back link
$('.backlink').click(function(){
  var url = '<?=url()->previous(); ?>';
  window.location=url;
});

</script>
@endsection