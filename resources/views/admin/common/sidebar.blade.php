<aside id="sidebar_left" class="nano nano-primary affix">

    <!-- Start: Sidebar Left Content -->
    <div class="sidebar-left-content nano-content">

        <!-- Start: Sidebar Header -->
        <header class="sidebar-header">
            <!-- Sidebar Widget - Search (hidden) -->
            <div class="sidebar-widget search-widget hidden">
                <div class="input-group">
              <span class="input-group-addon">
                <i class="fa fa-search"></i>
              </span>
                    <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                </div>
            </div>
        </header>

        <!-- Start: Sidebar Left Menu -->
        <ul class="nav sidebar-menu">
            <li class="sidebar-label pt15"> Navigations</li>
            <li class="{{ (Request::segment(2) == 'dashboard')?'active':'' }}">
                <a href="{{ url('admin/dashboard') }}">
                    <span class="glyphicon glyphicon-home"></span>
                    <span class="sidebar-title">Dashboard</span>
                </a>
            </li>

            @if(checkAuth(1))
                <li class="{{ (Request::segment(2) == 'banner')?'active':'' }}">
                    <a href="{{ url('admin/banner') }}">
                        <span class="fa fa-file-image-o text-info" aria-hidden="true"></span>
                        <span class="sidebar-title"> Manage Banner</span>
                    </a>
                </li>
            @endif
            @if(checkAuth(2))
                <li>
                    @if(Request::segment(2) == 'posttype' || Request::segment(2) == 'postcategory' || Request::segment(2) == 'member-country' || Request::segment(2) == 'about-us' || Request::segment(2) == 'information' || Request::segment(2) == 'documents' || Request::segment(2) == 'contact-us')
                    <a class="accordion-toggle menu-open">
                    @else
                     <a class="accordion-toggle">
                             @endif
                        <span class="fa fa-files-o text-info"></span>
                        <span class="sidebar-title"> Manage Posts </span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">

                            <li class="{{ (Request::segment(2) == 'posttype')?'active':'' }}">
                                <a href="{{ url('type/posttype') }}">
                                    <span class="fa fa-arrows"></span>
                                    Post Types
                                </a>
                            </li>
                            <li class="{{ (Request::segment(2) == 'postcategory')?'active':'' }}">
                                <a href="{{ url('admin/postcategory') }}">
                                    <span class="fa fa-arrows"></span>
                                    Post Categories
                                </a>
                            </li>

                    <!-- Post Type List -->
                        @if($posttype)
                            @foreach($posttype as $row)
                            <li class="{{ (Request::segment(2) == $row->uri)?'active':'' }}">
                                @if(has_posts($row->id))
                                <a href="{{ url('admin/'.$row->uri)}}">
                                    @else
                                    <a href="{{ url('type/posttype/'.$row->id.'/edit') }}">
                                        @endif
                                    <span class="fa fa fa-arrows-h"></span>
                                    {{$row->post_type}}
                                </a>
                            </li>
                            @endforeach
                        @endif
                    </ul>
                </li>
            @endif
            @if(checkAuth(3))
                <!-- <li class="">
                     @if(Request::segment(2) == 'our-trades')
                    <a class="accordion-toggle menu-open">
                    @else
                     <a class="accordion-toggle">
                             @endif
                        <span class="fa fa-files-o text-info" aria-hidden="true"></span>
                        <span class="sidebar-title"> Manage Logos </span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav"> -->

                    <!--   <li>
                        <a href="{{ url('admin/portfoliocategory') }}">
                          <span class="fa fa fa-arrows-h"></span>
                          Portfolio Category
                        </a>
                      </li> -->

                         <!-- <li class="{{ (Request::segment(2) == 'our-trades')?'active':'' }}">
                            <a href="{{ url('admin/our-trades') }}">
                                <span class="fa fa fa-arrows-h"></span>
                                Logos
                            </a>
                        </li> -->
                    <!-- </ul> 
                </li> -->
            @endif
             @if(checkAuth(13))
            <li class="">
            @if(Request::segment(2) == 'imagecategory' || Request::segment(2) == 'imagegallery')
                    <a class="accordion-toggle menu-open">
                    @else
                     <a class="accordion-toggle">
                             @endif
              <span class="fa fa-dot-circle-o text-info"></span>
              <span class="sidebar-title">  Manage Photo Gallery </span>
              <span class="caret"></span>
            </a>
            <ul class="nav sub-nav">
               <li class="{{ (Request::segment(2) == 'imagecategory')?'active':'' }}">
                <a href="{{ url('admin/imagecategory') }}">
                  <span class="fa fa fa-arrows-h"></span>
                  Gallery Album                
                </a>                
              </li>               
               <li class="{{ (Request::segment(2) == 'imagegallery')?'active':'' }}">
                <a href="{{ url('admin/imagegallery') }}">
                  <span class="fa fa fa-arrows-h"></span>
                  Photos                 
                </a>                
              </li>              
              </ul>
          </li>
            @endif
             @if(checkAuth(14))
          <li class="">
             @if(Request::segment(2) == 'videocategory' || Request::segment(2) == 'videogallery')
                    <a class="accordion-toggle menu-open">
                    @else
                     <a class="accordion-toggle">
                             @endif
              <span class="fa fa-dot-circle-o text-info"></span>
              <span class="sidebar-title">  Manage Video Gallery </span>
              <span class="caret"></span>
            </a>
            <ul class="nav sub-nav">
             
              <!-- <li class="{{ (Request::segment(2) == 'videocategorys')?'active':'' }}">-->
              <!--  <a href="{{ url('admin/videocategory') }}">-->
              <!--    <span class="fa fa fa-arrows-h"></span>-->
              <!--    Video Album               -->
              <!--  </a>                -->
              <!--</li>        -->
                   
              <li class="{{ (Request::segment(2) == 'videogallery')?'active':'' }}">
                <a href="{{ url('admin/videogallery') }}">
                  <span class="fa fa fa-arrows-h"></span>
                  Videos                 
                </a>                
              </li>              
              </ul>
          </li> 
          @endif

            @if(checkAuth(9))
                <li class="">
                    <a class="accordion-toggle">
                        <span class="glyphicon glyphicon-user text-info"></span>
                        <span class="sidebar-title"> Manage Users </span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="{{ route('user.index') }}">
                                <span class="fa fa fa-arrows-h"></span>
                                Users
                            </a>
                        </li>
                        <li>
                            <a href="{{ route('role.index') }}">
                                <span class="fa fa fa-arrows-h"></span>
                                User Roles
                            </a>
                        </li>
                        <li>
                            <a href="{{ route('adminmenu.index') }}">
                                <span class="fa fa fa-arrows-h"></span>
                                Admin Menus
                            </a>
                        </li>
                    </ul>
                </li>
            @endif

            @if(checkAuth(9))
            <li class="{{ (Request::segment(2) == 'members-registration')?'active':'' }}">
              <a href="{{ route('members-list') }}">
                  <span class="fa fa-cogs text-info"></span>
                  <span class="sidebar-title">Members List </span>
              </a>
          </li>

      @endif
                 <li class="{{ (Request::segment(1) == 'contact-us')?'active':'' }}">
                    <a href="{{ route('contact-us') }}">
                        <span class="fa fa-book text-info"></span>
                        <span class="sidebar-title"> Contact Us </span>
                    </a>
                </li>
                
                
         

                <!-- <li class="{{ (Request::segment(1) == 'career')?'active':'' }}">
                    <a href="{{ route('career') }}">
                        <span class="fa fa-lightbulb-o text-info"></span>
                        <span class="sidebar-title"> Career </span>
                    </a>
                </li> -->

 @if(checkAuth(12))
                  <li class="{{ (Request::segment(2) == 'settings')?'active':'' }}">
                    <a href="{{ route('settings.index') }}">
                        <span class="fa fa-cogs text-info"></span>
                        <span class="sidebar-title"> Settings </span>
                    </a>
                </li>
                @endif

            <div class="sidebar-toggle-mini">
                <a href="avoid:javascript;">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
    </div>

</aside>
