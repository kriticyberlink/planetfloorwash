@extends('admin.master')
@section('title','Multiple Video')
@section('breadcrumb')
@if(Request::segment(3))
<a href="{{ url('admin/'.posttype_bypostid(Request::segment(3))) }}" class="btn btn-primary btn-sm">Go Back</a>
@endif
<a href="{{ route('admin.multiplevideo.create', Request::segment(3) ) }}" class="btn btn-primary btn-sm">Create</a>
@endsection
@section('content')
<section id="" class="table-layout animated fadeIn">
  <!-- begin: .tray-center -->
  <div class="">
   <h4> Video List </h4>
   <!-- recent orders table -->
   <div class="panel">
    <div class="panel-body pn">
      <div class="table-responsive">
        <table class="table admin-form table-striped dataTable" id="datatable3">
          <thead>
            <tr class="bg-light">
              <th class="text-center"> SN </th>
              <th>Post Name</th>
              <th>Video</th>                          
              <th>Published</th>
            </tr>
          </thead>
          <tbody>

            @foreach($data as $row)
            <tr class="id{{$row->id}}">
              <td class="text-center">
                {{$loop->iteration}}
              </td>
              <td class="post_title title_hi_sh">                
                    <strong> {{ ucfirst($row->title) }} </strong> 
                <div class="row_actions"><span class="id">ID: {{$row->id}} | </span><span class="edit">
                <a href="{{route('admin.multiplevideo.edit',['post_id'=>Request::segment(3),'id'=>$row->id])}}">Edit</a> | </span><span class="trash"><a href="#{{$row->id}}" class="submitdelete" data-postid="{{Request::segment(2)}}">Delete</a> </span>
                </td>
                <td>
                    <iframe width="300" height="150" src="https://www.youtube.com/embed/{{$row->video}}" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </td>
                <td class="date"> {{$row->created_at}} </td>             
              </tr>
              @endforeach

            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- end: .tray-center -->
</section>

@endsection

@section('libraries')
<!-- Datatables -->
<script src="{{asset(env('PUBLIC_PATH').'vendor/plugins/datatables/media/js/jquery.dataTables.js')}}"></script>
<!-- Datatables Tabletools addon -->
<script src="{{asset(env('PUBLIC_PATH').'vendor/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js')}}"></script>
<!-- Datatables ColReorder addon -->
<script src="{{asset(env('PUBLIC_PATH').'vendor/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js')}}"></script>
<!-- Datatables Bootstrap Modifications  -->
<script src="{{asset(env('PUBLIC_PATH').'vendor/plugins/datatables/media/js/dataTables.bootstrap.js')}}"></script>
<script type="text/javascript">
  $('document').ready(function(){
    // Select Checkbox
    $('#checkAll').on('click',function(e){
      if($(this).is(':checked', true)){
        $('.check_box').prop('checked', true);
      }else{
        $('.check_box').prop('checked', false);
      }
    });
    // Delete Data
    $('.deleteAll').on(function(){

    });
  });


  // Data Table
  $('#datatable3').dataTable({
    "aoColumnDefs": [{
      'bSortable': true,
      'aTargets': [-1]

    }],
    "oLanguage": {
      "oPaginate": {
        "sPrevious": "Previous",
        "sNext": "Next"
      }
    },
    "iDisplayLength": 10,
    "aLengthMenu": [
    [5, 10, 25, 50, -1],
    [5, 10, 25, 50, "All"]
    ],
    "sDom": '<"dt-panelmenu clearfix"Tfr>t<"dt-panelfooter clearfix"ip>',
    "oTableTools": {
      "sSwfPath": "{{asset(env('PUBLIC_PATH'))}}vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf"
    }
  });

  // Delete row
  $('.submitdelete').on('click',function(e){
    e.preventDefault();
    var csrf = $('meta[name="csrf-token"]').attr('content');
    var str = $(this).attr('href');
    var id = str.slice(1);
    var post_id = $(this).attr('data-postid');
    var url = '{{route("admin.multiplevideo.destroy",["post_id"=>':post_id',"id"=>':id'])}}';
    url = url.replace(':post_id',post_id);
    url = url.replace(':id',id);
    $.ajax({
      type:'delete',
      url:url,
      data:{_token:csrf},    
      success:function(data){  
       alert(data);             
       $('tbody tr.id' + id ).remove();
     },
     error:function(data){       
       alert('Error occurred!');
     }
   });
  });

</script>

@endsection