<html lang="en">
<head>
	<base href="{{ asset('frontend')}}/">
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/png" href="access/image/junoicon.png" />
	<link rel="stylesheet" href="css/bs.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/default.css">
	<link rel="stylesheet" href="css/tintuc.css">
	{{-- <link rel="stylesheet" href="css/juno.min.css"> --}}
	<link rel="stylesheet" href="css/lightslider.css">
	<link rel="stylesheet" href="css/pnotify.custom.min.css">
	<script src="js/jquery-3.3.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/lightslider.js"></script>
	<script src="js/myscript.js"></script>
	<title>@if(isset($title)) {{ $title }} @endif | Juno Shop</title>
</head>
<body>
	<!-- HEADER -->
	<header id="header">

		<!-- HEADER-TOP -->
		<div id="header_top" >
			<div class="container">
				<div class="row">
					<div class="col-6">
						<div class="row">
							<div class="col-3">
								<div class="logo"><img style="margin-top: 2px;" class="img-fluid" src="access/image/logo.png" alt=""></div>
							</div>
							<div class="col-9">
								<form class="search" action="{{ route('search') }}">
									<input name="search" type="text" placeholder="Bạn muốn tìm gì ?" class="form-control">
									<button type="submit"><i class="fa fa-search"></i></button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-6">
						<div class="row right_top">
							<div class="col-md-5 item">
								<i class="fa fa-phone icon"></i>
								<span>BÁN HÀNG: <strong>1800 8198</strong> (miễn phí)</span>
							</div>
							<div class="col-md-4 item">
								<i class="fa fa-building icon"></i>
								<a href="#"><span>Xem hệ thống <strong>64</strong> cửa hàng</span></a>
							</div>
							<div class="col-md-3 item">
								<div id="cart"><a href="{{ route( 'cart' ) }}">
									<i class="fa fa-shopping-bag icon bg_c4 cl_c1"></i> <span>{{ Cart::count() }} Sản phẩm</span>
									</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- END HEADER-TOP -->

		<!-- MENU-TOP -->
		<div id="menu-top">
			<nav class="container">
				<ul class="menu--top">
					<li class="menu--top__item">
						<a href="{{ url( '/' ) }}">
							<img src="access/image/ic10.png" alt="">
							<span class="title">Trang chủ</span>
						</a>
					</li>
					
					{!! Menu::menuHead($category) !!}
						
				</ul>
				<div class="clearfix"></div>
			</nav>
		</div>
		<!-- END MENU-TOP -->
	</header>
	<!-- END HEADER -->
		<!-- WRAPPER -->
	<div id="main">
		@yield('main')
	</div>
	<!-- END WRAPPER -->

	<script src="js/pnotify.custom.min.js"></script>
	@include('error.note')
	<div id="maps">
        <div class="container-fluid ">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <a href="#" target="_blank">Mời bạn xem địa chỉ hệ thống 68 cửa hàng</a>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div id="footer-t">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <p class="time_call">Gọi mua hàng(08:30-21:30)</p>
                        <img src="access/image/phone.jpg" alt="icon phone">
                        <span class="hotline">1800 1162</span>
                        <p class="more">Tất cả các ngày trong tuần</p>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <p class="time_call">Góp ý, khiếu nại(08:30-20:30)</p>
                        <img src="access/image/phone.jpg" alt="icon phone">
                        <span class="hotline">1800 1160</span>
                        <p class="more">Các ngày trong tuần ( trừ ngày lễ )</p>
                    </div>
                    <div id="subcribe" class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <p>đăng ký nhận thông tin mới từ Juno </p>
                        <form>
                            <input type="email" placeholder="Nhập email của bạn tại đây...">
                            <input type="submit" value="ĐĂNG KÝ"/>
                        </form>
                    </div>
                    <div id="social" class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <p>Like Juno trên mạng xã hội</p>
                        <a href="#">
                            <span class="fa fa-facebook"></span>
                        </a>
                        <a href="#">
                            <span class="fa fa-instagram"></span>
                        </a>
                        <a href="#">
                            <span class="fa fa-youtube"></span>
                        </a>
                        <a href="#" target="_blank">
                            <span class="fa fa-twitter"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer-m">
            <div class="container">
            	@foreach ($page_all as $pages)
                	<a target="_bla<a target="_blank" href="{{ asset('/pages/'.$pages->page_id) }}">{{ $pages->page_name }}</a> |
                @endforeach
                	<a target="_blank" href="{{ asset('/news/') }}">Tin tức juno</a>
            </div>
        </div>
        <div id="footer-b">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-xs-12">
                        <p>&copy; 2015 JUNO. Công ty cổ phần sản xuất thương mại dịch vụ JUNO.</p>
                        <p>Văn phòng: 313 Nguyễn Thị Thập, Q.7, TP.HCM. GP số 0310350452-002 do Sở Kế Hoạch và Đầu Tư TP.HCM cấp ngày 29/06/2011 </p>
                    </div>
                    <div class="col-lg-6 col-md-6 col-xs-12 text-center">
                        Bộ Công thương.
                    </div>
                </div>
            </div>
        </div>
    </footer>
<script src="js/pnotify.custom.min.js"></script>
@include('error.note')
@yield('footer')
</body>
</html>