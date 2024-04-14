@extends('admin.master')
@section('title','Member Registration')

@section('content')
<div class="tray tray-center" style="">
<div class="panel">
	<div class="panel-body ph20">
		<div class="tab-content">
			<div id="users" class="tab-pane active">
				<div class="table-responsive mhn20 mvn15">

				<table class="table admin-form theme-warning fs13">
						<thead>
							<tr class="bg-light">
								<th class="">SN</th>
                                <th>Invoice No.</th>
								<th class="">Name</th>
								<th class="">Mobile No.</th>
								<th class="">Amount</th>
                <th class="">Status</th>
                <th class="">Invoice</th>
                <!-- <th class="">Action</th> -->

							</tr>
						</thead>
						<tbody>
							@if(count($data) > 0)
							@foreach($data as $row)
							<tr class="id{{$row->id}}">
								<td class="">{{$loop->iteration}}</td>
                <td>{{$row->invoice_no}}</td>
								<td class="">{{$row->full_name}}</td>
								<td class="">{{$row->mobile_no}}</td>
								<td>{{ $row->amount}} </td>
                <td>{{$row->verified==0 ? 'Pending' : 'Verified'}}</td>
								<td>
                <a href="{{asset('uploads/members/'.$row->file)}}">
                  <img src="{{asset('uploads/members/'.$row->file)}}" width="40%">
                  <span>Click here to view</span>
                </a>
                </td>
                <!-- <td class="text-left">

                </td> -->
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

@section('scripts')
<script type="text/javascript">

  </script>
@endsection
