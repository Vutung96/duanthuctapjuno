<style type="text/css">
</style>
@extends('frontend.master')
@section('main')
<div id="banner--top" style="background: #E3C9BC;" class="container-fluid d-none d-xl-block">
	<div  class="banner--top__item">
		<img  src="access/image/banner-top.png" alt="">
	</div>
</div>
<div class="container">
	<div id="products" class="row">
		<div class="col-12">
			<h3 class="title text-center">Sản phẩm mới nhất</h3>
		</div>
		@foreach($product as $prod)
		<div class="col-xl-2 col-md-4 col-sm-6 col-12 product--item">
				<div class="product--item--top">
					<a href="{{ route( 'detail', ['slug' => $prod->prod_id]) }}">
						@foreach($prod->gallery as $key=>$img)
						@if($key<2)
						<img class="img-fluid" src="{{ asset('/storage/avatar/'.$img->img_name)}}" alt="">
						@endif
						@endforeach
					</a>
				</div>
				<div class="product--item--bottom">
					<div class="rating">
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
					</div>
					<p class="code"><a href="">{{ $prod->prod_code }}</a></p>
					<p class="price">{{ Menu::price($prod->prod_price) }}<sup>đ</sup></p>
					<div class="img-lazi">
						@foreach($prod->childs as $key=>$child)
							<img @if($key==0) class="active" @endif  src="{{ asset('/storage/avatar/'.$child->thumbnail->img_name) }}" alt="">
						@endforeach
					</div>
				</div>
		</div>
		@endforeach
	</div>
	<div class="row my-3">
		<div class="col-3 offset-9">
			<nav aria-label="Page navigation example">
			</nav>
		</div>
	</div>
</div>
<div class="container-fluid wow fadeIn">
	<div class="container" >
		<div class="row shoptype">
			<div class="col-xs-12 col-sm-12" >
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 padding-bottoms" style="padding-left:10px;">

						<h3 class="category-title title-shoptype">
							<a href="">tin thời trang</a>
						</h3>

						<p class="title-shoptype-small">Hiểu thời trang và thật thời trang mỗi ngày!</p>
					</div>
				</div>
					<div class="row" style="margin-left:10px;">
						<div class="col-xs-10 col-sm-6">
							<div class="row">
								<div id="owl-blog-slider" class="owl-carousel owl-theme">	
									<div class="blog-slider-item 5">
										<a href="" target="_blank"><img class="lazy" src="access/image/juno_blog1.jpg" alt="8 vũ khí thời trang dành cho nàng U30"></a>
										<div class="blog-slider-info">
											<a href="/blogs/mot" target="_blank" class="blog-category">Mốt</a>
											<h3>
												<a href="" target="_blank" class="blog-title">8 vũ khí thời trang dành cho nàng U30</a>
											</h3>
										</div>
									</div>									
								</div>
							</div>
						</div>
						<div class="col-xs-10 col-sm-4">
							<div class="row">
								<div class="blog-read-viewed">
									<h2>
										<span>Bài viết mới</span>
									</h2>
									<div class="clearfix blog-read-item">
										<a href="" target="_blank">
											<div class="item-img pull-left">
												<img class="lazy" src="access/image/juno_blog1.jpg" data-src=""/><span style="margin-left:-100px">1</span></div>
										</a>
										<div class="caption pull-right" >						
											<h3 class="title"><a href="/blogs/mot/8-vu-khi-thoi-trang-danh-cho-nang-u30" target="_blank">8 vũ khí thời trang dành cho nàng U30</a></h3>
											<span class="date">26.07.2018</span>
											<a href="/blogs/mot" target="_blank" class="title-category">Tin Mốt</a>
										</div>
									</div>
									<div class="clearfix blog-read-item">
										<a href="/blogs/mot/nhung-mau-giay-co-nang-u20-nhat-dinh-phai-co" target="_blank">
											<div class="item-img pull-left">
												<img style="max-width: 100%" class="lazy" src="access/image/juno_blog2.jpg" data-src=""/><span style="margin-left:-100px">2</span></div>
										</a>
										<div class="caption pull-right" >						
											<h3 class="title"><a href="/blogs/mot/nhung-mau-giay-co-nang-u20-nhat-dinh-phai-co" target="_blank">Những mẫu giày cô nàng U20 nhất định phải có!</a></h3>
											<span class="date">25.07.2018</span>
											<a href="/blogs/mot" target="_blank" class="title-category">Tin Mốt</a>
										</div>
									</div>
									<div class="clearfix blog-read-item">
										<a href="/blogs/mot/mua-ngay-tui-xach-chi-350k-tai-thien-duong-san-sale" target="_blank">
											<div class="item-img pull-left">
												<img class="lazy" src="access/image/juno_blog3.jpg" data-src=""/><span style="margin-left:-100px">3</span></div>
										</a>
										<div class="caption pull-right" >						
											<h3 class="title"><a href="/blogs/mot/mua-ngay-tui-xach-chi-350k-tai-thien-duong-san-sale" target="_blank">Mua ngay túi xách chỉ 350K tại Thiên đường săn sale</a></h3>
											<span class="date">24.07.2018</span>
											<a href="/blogs/mot" target="_blank" class="title-category">Tin Mốt</a>
										</div>
									</div>
									<div class="clearfix blog-read-item">
										<a href="/blogs/mot/giay-tui-danh-cho-quy-co-tiec-tung" target="_blank">
											<div class="item-img pull-left">
												<img class="lazy" src="access/image/juno_blog4.jpg" data-src=""/><span style="margin-left:-100px">4</span></div>
										</a>
										<div class="caption pull-right" >						
											<h3 class="title"><a href="/blogs/mot/giay-tui-danh-cho-quy-co-tiec-tung" target="_blank">Giày, túi dành cho quý cô tiệc tùng</a></h3>
											<span class="date">24.07.2018</span>
											<a href="/blogs/mot" target="_blank" class="title-category">Tin Mốt</a>
										</div>
									</div>			
									<div class="clearfix blog-read-item">
										<a href="/blogs/mot/da-la-con-gai-thi-phai-co-nhung-item-nay" target="_blank">
											<div class="item-img pull-left">
												<img class="lazy" src="access/image/juno_blog5.jpg" data-src=""/><span style="margin-left:-100px">5</span></div>
										</a>
										<div class="caption pull-right" >						
											<h3 class="title"><a href="/blogs/mot/da-la-con-gai-thi-phai-co-nhung-item-nay" target="_blank">Đã là con gái thì phải có những item này</a></h3>
											<span class="date">24.07.2018</span>
											<a href="/blogs/mot" target="_blank" class="title-category">Tin Mốt</a>
										</div>
									</div>																				
									
								</div>
							</div>
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 title-more-bottom text-right">
					<span style="display: block; padding: 20px 0;" class="title-more">Bài viết mới cập nhật mỗi ngày. Mời bạn <a href="http://juno.vn/blogs/magazine" class="link">xem thêm</a> tin bài khác</span>
				</div>
			</div>
		</div>
	</div>
</div>
@stop