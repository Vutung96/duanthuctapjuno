<!DOCTYPE html>
<html>
<head>
<base href="{{ asset('backend') }}/">
<meta name="csrf-token" content="{{ csrf_token() }}">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>@yield('title') | Juno Shop</title>
<link href="anh/admin.png" rel="shortcut icon">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/select2.min.css" rel="stylesheet" >
<link href="css/pnotify.custom.min.css" rel="stylesheet">
<link href="css/dropzone.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<script>
    $.ajaxSetup({
  headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
  }
});
</script>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color: #242227;box-shadow: 0 4px 50px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{  asset('admin/home') }}"><span>JUNOSHOP</span>Admin</a>
            <ul class="user-menu">
                <li class="dropdown pull-right">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg><span style="color: white;">Xin chào, {{ Auth::user()->user_name}}</span> <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Thông tin thành viên</a></li>
                        <li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Cài đặt</a></li>
                        <li><a href="{{ asset('logout') }}"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </div>

    </div><!-- /.container-fluid -->
</nav>

<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar" style="background: #3d3942;">
    <form role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Tìm kiếm">
        </div>
    </form>
    <ul class="nav menu">
        <li class="{{ Request::is('admin/home') ? 'active' : '' }}"><a href="{{ asset('admin/home') }}"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Trang chủ quản trị</a></li>
        <li class="{{ Request::is('admin/account') ? 'active' : '' }}">
            <a href="{{ asset('admin/account') }}">
                <span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg></span> Quản lý thành viên
            </a>
        </li>
        <li class="@if(Request::is('admin/product') || Request::is('admin/attribute') || Request::is('admin/category') || Request::is('admin/product/add') || Request::is('admin/attribute/add') || Request::is('admin/category/add')) active @endif parent">
            <a href="{{ asset('admin/product') }}">
                <span data-toggle="collapse" href="#sub-item-2"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span> Quản lý sản phẩm
            </a>
            <ul class="children collapse" id="sub-item-2">
                <li>
                    <a class="children" href="{{ asset('admin/attribute') }} ">
                        <svg class="glyph stroked clipboard with paper"><use xlink:href="#stroked-clipboard-with-paper"/></svg> Thuộc tính sản phẩm
                    </a>
                </li>
                <li>
                    <a class="children" href="{{ asset('admin/category') }}">
                        <svg class="glyph stroked notepad "><use xlink:href="#stroked-notepad"/></svg> Danh mục sản phẩm
                    </a>
                </li>

            </ul>				
        </li>
        <li class="{{ Request::is('admin/gallery') ? 'active' : '' }}">
            <a href="{{ asset('admin/gallery') }}">
                <span data-toggle="collapse" href="#sub-item-3"><svg class="glyph stroked landscape"><use xlink:href="#stroked-landscape"/></svg>
</span> Thư viện ảnh
            </a>
        </li>
        <li class="{{ Request::is('admin/comment') ? 'active' : '' }}">
            <a href="{{ asset('admin/comment') }}">
                <span data-toggle="collapse" href="#sub-item-4"><svg class="glyph stroked two messages"><use xlink:href="#stroked-two-messages"/></svg></span> Quản lý bình luận
            </a>

        </li>

        <li class="{{ Request::is('admin/order') ? 'active' : '' }}">
            <a href="{{ asset('admin/order') }}">
                <span data-toggle="collapse" href="#sub-item-5"><svg class="glyph stroked bag"><use xlink:href="#stroked-bag"></use></svg>
</span> Quản lý đơn hàng
            </a>
        </li>  
        <li class="{{ Request::is('admin/page') ? 'active' : '' }}">
            <a href="{{ asset('admin/page') }}">
                <span data-toggle="collapse" href="#sub-item-5"><svg class="glyph stroked app window with content"><use xlink:href="#stroked-app-window-with-content"/></svg>
</span> Quản lý page
            </a>
        </li> 

        {{-- <li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"/></svg> Cấu hình</a></li> --}}

        <li role="presentation" class="divider"></li>
        <li><a href="{{ asset('logout') }}"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Đăng xuất</a></li>
    </ul>

</div><!--/.sidebar-->

<!-- Main -->
    @yield('main')

        
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/chart.min.js"></script>
        <script src="js/chart-data.js"></script>
        <script src="js/easypiechart.js"></script>
        <script src="js/easypiechart-data.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>  
        <script src="js/bootstrap-table.js"></script>
        <link rel="stylesheet" href="css/bootstrap-table.css"/>
        <script type="text/javascript" src="js/select2.full.min.js"></script>
        <script type="text/javascript" src="js/select2.min.js"></script>
        <script src="js/pnotify.custom.min.js"></script>
        <script src="js/dropzone.js" type="text/javascript"></script>
        <script src="js/myscript.js" type="text/javascript"></script>
        <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
        <script>
            $('#calendar').datepicker({
            });

            !function ($) {
                $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
                    $(this).find('em:first').toggleClass("glyphicon-minus");
                });
                $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
            }(window.jQuery);

            $(window).on('resize', function () {
                if ($(window).width() > 768)
                    $('#sidebar-collapse').collapse('show')
            })
            $(window).on('resize', function () {
                if ($(window).width() <= 767)
                    $('#sidebar-collapse').collapse('hide')
            })
            $(".select2").select2();
        </script> 
        @include('error.note') 
        @yield('footer')

    </body>

</html>
