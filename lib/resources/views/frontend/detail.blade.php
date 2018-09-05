@extends('frontend.master')
@section('main')
<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
			<li class="breadcrumb-item"><a href="{{ route('front_cate', ['slug' => $product->prod_cate]) }}">{{ $product->category->cate_name }}</a></li>
			<li class="breadcrumb-item active">{{ $product->prod_name }}</li>
		</ol>
		<div id="product__info">
			<div class="row">
				<div class="col-8">
					
					<div class="demo">
				  		@if($product->prod_type == 'Don')
						  	@include('frontend.component.slide')
						@endif					
					</div>
				</div>
				<div class="col-4">
					<form method="post" action="{{ route('add-to-cart') }}">
						<div class="line">
							<h1 class="title">{{ $product->prod_name }}</h1>
							<p class="code">Mã SP:<span> {{ $product->prod_code }}</span></p>
						</div>

						<div class="line">
							<p class="price"><span>{{ Menu::price($product->prod_price) }}</span><sup>đ</sup> <button class="status float-right">@if($product->prod_type==1) Còn hàng @else Hết hàng @endif</button></p>
						</div>
						<div class="line">
							<div class="rating">
								<b>Đánh giá sản phẩm:</b> 
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
						</div>
						@if ($product->prod_type == 'Nhom')
						<div class="line">
							<p class="mb-2"><strong>Chọn màu yêu thích</strong></p>
							<div class="list__radio color">
					
								@foreach($product->childs as $child)
									<input data-gallery="{{ $child->gallery }}" data-thumbnail="{{ $child->thumbnail }}" data-product="{{ $child }}" id="color{{ $child->prod_id }}" type="radio" name="color" value="{{ $child->single_value->att_value }}">
									<label  for="color{{ $child->prod_id }}"><img style="max-width: 40px;" src="{{ asset("/storage/avatar/".$child->thumbnail->img_name)}}" alt=""> {{ $child->single_value->att_value }}</label>
								@endforeach
								
							</div>
						</div>
						@endif
						<div class="line">
							<p class="mb-2"><strong>Chọn size phù hợp</strong></p>
							<div class="list__radio small">
								@foreach($product->value as $value)
									@if($value->att_id == 2)
										<input  id="size{{$value->att_value_id}}" type="radio" name="size" value="{{$value->att_value}}">
										<label for="size{{$value->att_value_id}}">{{ $value->att_value }}</label>

									@endif
								@endforeach
							</div>
							<p class="chose-size">Bạn không nhớ size của mình: <a href="" rel="tinhsize">Mời bạn xem cách tính size giầy</a></p>
						</div>
						<input type="hidden" value="{{ $product->prod_id }}" name="prod_id">
						{{ csrf_field() }}
						<div class="row">
							<div class="col-12">
								<div class="line py-3">
									<button  type="submit" class="btn btn-success btn-lg btn-block py-2 bg_c4" style="border: none;border-radius: unset;">
										Mua Ngay
										<p class="buy">Mua online giao hàng tận nơi</p>
									</button>
								</div>
							</div>
						</div>

					</form>
					</div>
			</div>
		</div>

		<div id="product__sp">
			<div class="row">
				<div class="col-md-10">
					<div class="product__sp--item">
						<div class="pr__spec">
							<ul class="tab__list nav nav_tabs">
								<li class="active">Thông số kỹ thuật</li>
							</ul>
							<div class="tab__content row py-5">
								<div class="col-md-6 text-center">
									<img class="img-fluid" src="{{ asset("/storage/avatar/".$product->thumbnail->img_name)}}" alt="">
								</div>
								<div class="col-md-6 params">
									<div><span>Mã SP</span><span>{{ $product->prod_code }}</span></div>
									@foreach($product->attribute as $attr)
										<div><span>{{ $attr->att_name }}</span><span> @foreach($product->value as $val) @if($val->att_id == $attr->att_id) {{ $val->att_value }} @endif  @endforeach </span></div>
									@endforeach

								</div>
							</div>
						</div>

					</div>
					<div class="product__sp--item">
						<div class="pr__desc">
							<ul class="tab__list nav nav_tabs">
								<li class="active">Chi tiết sản phẩm</li>
							</ul>
							<div class="tab__content my-5">
								{!! $product->prod_des !!}
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2">

					<div class="sider__bar">
						<div class="sider__bar--item">
							<a class="title" href="{{ route( 'detail', ['slug' => $product->prod_id]) }}">{{ $product->prod_name }}</a>
							<p class="code"><span>Mã SP : {{ $product->prod_code }} </span></p>
						</div>

					</div>

					
				</div>
			</div>
		</div>
		<div id="product__comment">
			<div class="row">
				<div class="col-12">
					<div class="blog-comment">
						<ul class="tab__list nav nav_tabs">
							<li class="active">Bình luận</li>
						</ul>
						<hr/>
						<ul class="comments">
							@foreach($comments as $comment)
							<li class="clearfix">
								<img src="access/image/no.png" class="avatar" alt="">
								<div class="post-comments">
									<p class="meta">{{ $comment->created_at->format('j F Y') }}	<a href="#">{{ $comment->comment_name }}</a> bình luận : </p>
									<p>
										{{ $comment->comment_content }}
									</p>
								</div>
							</li>
							@endforeach
						</ul>
						{{-- <ul class="pagination">
							
						</ul> --}}

						{{ $comments->links() }}

					</div>
				</div>


				<div class="col-12">
					<form action="{{ route( 'add-comment', ['id' => $product->prod_id ]) }}" method="post" class="form-horizontal" id="commentForm" role="form"> 
						<div class="form-group">
							<label for="uploadMedia" class="col-sm-2 control-label">Họ &#38; tên</label>
							<div class="col-sm-10">                    
								<div class="input-group">
									<input class="form-control" type="text" name="name" class="form-control" id="uploadMedia">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">Nội dung bình luận:</label>
							<div class="col-sm-10">
								<textarea name="content" class="form-control"  id="addComment" rows="5"></textarea>
							</div>
						</div>
						{{ csrf_field() }}
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">                    
								<button name="addcomment" class="btn btn-success btn-circle text-uppercase btn-c4" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Gửi bình luận</button>
							</div>
						</div>            
					</form>
				</div>
			</div>
		</div>

		<div id="product_related" class="my-5">
			<ul class="tab__list nav nav_tabs">
				<li class="active">Sản phẩm tương tự</li>	
			</ul>
			<div class="row" id="products">
				@foreach ($products as $prod)
					@if($prod->prod_cate==$product->prod_cate)
						<div class="col-xl-2 col-md-4 col-sm-6 col-12 product--item">					
							<div class="product--item--top">
								<a href="{{ route( 'detail', ['slug' => $prod->prod_id]) }}">
									@foreach ($prod->gallery as $key=> $image)
										@if($key<2)	
											<img class="img-fluid" src="{{ asset("/storage/avatar/".$image->img_name)}}" alt="">
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
								<p class="code"><a href=""> {{ $prod->prod_name }}</a></p>
								<p class="price">{{ Menu::price($prod->prod_price) }}<sup>đ</sup></p>
								<div class="img-lazi">
									@foreach($product->childs as $key =>  $child)
										<img @if($key == 0) class="active" @endif src="{{ asset("/storage/avatar/".$child->thumbnail->img_name)}}" alt="">
									@endforeach
								</div>
							</div>
						
						</div>
					@endif
				@endforeach
			</div>
		</div>
</div>
<div id="myModal" class="modal">
    
</div> 
<script>
    $(document).ready(function(){
        $('[rel="tinhsize"]').click(function(e){
        
        e.preventDefault();

        $.ajax({
          url: '{{ route('form-size') }}',

        }).done(function(data){
          $('#myModal').modal().html(data);
          console.log(data);
        });

      });

    });        
</script>
@stop
