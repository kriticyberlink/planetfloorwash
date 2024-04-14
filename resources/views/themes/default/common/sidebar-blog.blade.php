@php $check = 38; @endphp
@foreach (getposts( $sidebar_about->id ) as $_row)
@if(isset( $_row['uri'] ) && str_contains( url()->current(), $_row['uri'] ))
@php $check = $_row['post_type'] @endphp
@endif
@endforeach



@if( $sidebar_about->id == $check)
<div class="widget categories">
    <h6 class="diffren_headr">
        {{ ucwords( $sidebar_about->post_type ) }}
    </h6>

    <ul class="category-nav">
        @foreach (getposts( $sidebar_about->id ) as $_row)
        <li class="{{ isset( $_row['uri'] ) && str_contains( url()->current(), $_row['uri'] ) ? 'active' : '' }} "><a href=" {{ url( geturl($_row['uri'], $_row['page_key'] ) ) }}">{{ ucwords( $_row->post_title ) }}</a></li>
        @endforeach
    </ul>
</div>
<div class="widget categories">
    <h6 class="diffren_headr">
        {{ ucwords( $sidebar_service->post_type ) }}
    </h6>

    <ul class="category-nav">
        @foreach (getposts( $sidebar_service->id ) as $_row)
        <li class="{{ isset( $_row['uri'] ) && str_contains( url()->current(), $_row['uri'] ) ? 'active' : '' }} "><a href=" {{ url( geturl($_row['uri'], $_row['page_key'] ) ) }}">{{ ucwords( $_row->post_title ) }}</a></li>
        @endforeach
    </ul>
</div>
@elseif($sidebar_service->id == $check)
<div class="widget categories">
    <h6 class="diffren_headr">
        {{ ucwords( $sidebar_service->post_type ) }}
    </h6>

    <ul class="category-nav">
        @foreach (getposts( $sidebar_service->id ) as $_row)
        <li class="{{ isset( $_row['uri'] ) && str_contains( url()->current(), $_row['uri'] ) ? 'active' : '' }} "><a href=" {{ url( geturl($_row['uri'], $_row['page_key'] ) ) }}">{{ ucwords( $_row->post_title ) }}</a></li>
        @endforeach
    </ul>
</div>
<div class="widget categories">
    <h6 class="diffren_headr">
        {{ ucwords( $sidebar_about->post_type ) }}
    </h6>

    <ul class="category-nav">
        @foreach (getposts( $sidebar_about->id ) as $_row)
        <li class="{{ isset( $_row['uri'] ) && str_contains( url()->current(), $_row['uri'] ) ? 'active' : '' }} "><a href=" {{ url( geturl($_row['uri'], $_row['page_key'] ) ) }}">{{ ucwords( $_row->post_title ) }}</a></li>
        @endforeach
    </ul>
</div>
@endif



<!--<div class="widget categories">-->
<!--	<h6 class="diffren_headr">-->
<!--			In The Media-->
<!--		</h6>-->

<!--	<ul class="category-nav">-->

<!--	<li><a href=" media.php">News & Information </a></li>-->
<!--		<li><a href="testimonials.php"> Testimonials</a></li>-->

<!--	</ul>-->
<!--</div>-->

<div class="widget cta">
{!! $sidebar_contact_quote->caption !!}
    <a href="{{ url( 'page/' . posttype_url( $sidebar_contact_quote->uri )) }}" class="btn btn-primary btn-sidebar"><span class="fa fa-calendar-o"></span> Book Now</a>
</div>