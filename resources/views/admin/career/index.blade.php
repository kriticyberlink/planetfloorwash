@extends('admin.master')
@section('title','Inquiry')
@section('breadcrumb')
@endsection
@section('content')
    <div class="tray tray-center" style="height: 647px;">
        <div class="panel">
            <div class="panel-body ph20">
                <div class="tab-content">
                    <div id="users" class="tab-pane active">
                        <div class="table-responsive mhn20 mvn15">
                            <table class="table admin-form table-striped dataTable" id="datatable3">
                                <thead>
                                <tr class="bg-light">
                                <th class="">SN</th>                                   
                                <th class="">Name</th>
                                <th class="">Date</th>
                                <th class="">Subject</th>
                                <th class="">File</th>
                                <th class="">Message</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if(count($data) > 0)
                                @foreach($data as $key=>$row)
                                <tr class="bg-light">
                                    <td class="">{{$key+=1}}</td>
                                    <td class="">{{ ucfirst($row->name) }} <br> {{ ($row->email) }}</td>
                                    <td>{{$row->created_at->format('d M Y')}}</td>
                                    <td class="">{{$row->subject}}</td>
                                    <td class=""><a href="{{asset('uploads/doc/'.$row->file)}}" target="_blank" title="{{$row->subject}}">
                      <i class="fa fa-file-pdf-o fa fa-2x" aria-hidden="true"></i>
                    </a></td>
                                    <td class=""><textarea>{!!$row->message!!}</textarea></td> 
                                </tr>
                                @endforeach
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('libraries')
<!-- Datatables -->
<script src="{{asset('vendor/plugins/datatables/media/js/jquery.dataTables.js')}}"></script>

<!-- Datatables Tabletools addon -->
<script src="{{asset('vendor/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js')}}"></script>

<!-- Datatables ColReorder addon -->
<script src="{{asset('vendor/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js')}}"></script>

<!-- Datatables Bootstrap Modifications  -->
<script src="{{asset('vendor/plugins/datatables/media/js/dataTables.bootstrap.js')}}"></script>

<script type="text/javascript">
jQuery(document).ready(function() {
  $('.btn-delete').on('click',function(e){
    e.preventDefault();
    if(!confirm('Are you sure to delete?')) return false;
    var csrf = $('meta[name="csrf-token"]').attr('content');
    var str = $(this).attr('href');
    var id = str.slice(1);
    $.ajax({
      type:'DELETE',
      url:"{{url('admin/teams') . '/'}}" + id,
      data:{_token:csrf},    
      success:function(data){ 
        $('tbody tr.id' + id ).remove();
      },
      error:function(data){       
       alert('Error occurred!');
     }
   });
  });
});

/************/
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
    "iDisplayLength": 50,
    "aLengthMenu": [
    [5, 10, 25, 50, -1],
    [5, 10, 25, 50, "All"]
    ],
    "sDom": '<"dt-panelmenu clearfix"Tfr>t<"dt-panelfooter clearfix"ip>',
    "oTableTools": {
      "sSwfPath": "{{asset('vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf')}}"
    }
  });
  </script>
@endsection

