@extends('themes.default.common.master')
@section('title', $data->post_type)
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('thumbnail',$data->banner)
@section('content')
<main>
 <section class="news-detail-header-section text-center" style="background-image: url( '{{ asset('uploads/original/' . $data->banner ) }}' );">
    <div class="section-overlay"></div>

    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12">
                <h1 class="text-white">{{$data->post_type}}</h1>
            </div>

        </div>
    </div>
</section>

<section class="section-padding section-bg" id="section_2">
        <div class="container">
            <div class="row">

                <div class="col-lg-6 col-12 mb-5 mb-lg-0">
                    <img src="@if($data->featured) {{ asset('uploads/original/' . $data->featured) }} @else {{asset('uploads/default-placeholder.png')}} @endif" class="custom-text-box-image img-fluid" alt="{{$data->uid}}">
                </div>

                <div class="col-lg-6 col-12">
                    <div class="custom-text-box">
                        <h2 class="mb-2">{{$data->post_type}}</h2>
                        <h5 class="mb-3">{{$data->uid}}</h5>
                        <p class="mb-0">{!!$data->content!!}</p>
                    </div>                           
                </div>

            </div>
        </div>
    </section>
</main>
@endsection
