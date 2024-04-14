@extends('admin.master')
@section('title','Dashboard')
@section('content')
<!-- Dashboard Tiles -->
<div class="row mb10">
          <div class="col-sm-6 col-md-3">
            <div class="panel bg-alert light of-h mb10">
              <div class="pn pl20 p5">
                <div class="icon-bg">
                  <i class="fa fa-file-o"></i>
                </div>
                <h2 class="mt15 lh15">
                  <b>{{$total_posts}}</b>
                </h2>
                <h5 class="text-muted">Total Posts</h5>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="panel bg-info light of-h mb10">
              <div class="pn pl20 p5">
                <div class="icon-bg">
                  <i class="fa fa-circle-o"></i>
                </div>
                <h2 class="mt15 lh15">
                  <b>{{$total_category}}</b>
                </h2>
                <h5 class="text-muted">Total Post Categories</h5>
              </div>
            </div>
          </div>
          <!--<div class="col-sm-6 col-md-3">-->
          <!--  <div class="panel bg-danger light of-h mb10">-->
          <!--    <div class="pn pl20 p5">-->
          <!--      <div class="icon-bg">-->
          <!--        <i class="fa fa-bar-envelope"></i>-->
          <!--      </div>-->
          <!--      <h2 class="mt15 lh15">-->
          <!--        <b>{{$num_of_inquiries}}</b>-->
          <!--      </h2>-->
          <!--      <h5 class="text-muted">Number of Inquiries</h5>-->
          <!--    </div>-->
          <!--  </div>-->
          <!--</div>-->
          <div class="col-sm-6 col-md-3">
            <div class="panel bg-warning light of-h mb10">
              <div class="pn pl20 p5">
                <div class="icon-bg">
                  <i class="fa fa-bar-chart-o"></i>
                </div>
                <h2 class="mt15 lh15">
                  <b>{{$post_visiters}}</b>
                </h2>
                <h5 class="text-muted">Post Visitors</h5>
              </div>
            </div>
          </div>
        </div>

@endsection
