@extends('frontend.master')
@section('main')
<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="{{ url( '/' ) }}">Trang chủ</a></li>
			<li class="breadcrumb-item active">{{ $new->tieu_de }}</li>
		</ol>
	<div class="tag-content">
		<div class="col-md-12 col-sm-7 col-xs-10">
			<div class="article-km">
				<h2 class="parent">
					<a href="/blogs/tin-tuc-juno">Tin tức Juno</a>
				</h2>
				<h1 class="title-post">
					{{ $new->tieu_de }}
				</h1>
				<span class="date">
					{{\Carbon\Carbon::createFromTimeStamp(strtotime($new->created_at))->format('d.m.Y')}}
				</span>
					<div class="detail">
						
					</div>
				<div class="description">
					{!! $new->chi_tiet_tin !!}
				</div>
				<div class="clear"></div>
				<div id="fb-root"></div>
			</div>
		</div>
		<div class="col-md-12 col-sm-7 col-xs-10">
			<div class="blog-category-items">
				<h3 class="category-title title-shoptype">
					<a href="">Tin bài khác</a>
				</h3>
				<div class="items-doc">
					<div class="row">
						@foreach ($news as $new)
							<div class="col-xs-5 col-md-25" style="margin-bottom:10px;padding: 0 15px;">
								<a href="{{ route( 'newsdetail', ['slug' => $new->id]) }}">
									<div class="item-img" style="background: url('{{ asset("/storage/avatar/".$new->image->img_name)}}') no-repeat;background-size: cover;background-position: center;">
									</div>
								</a>
								<h3>
									<a href="{{ route( 'newsdetail', ['slug' => $new->id]) }}">{{ $new->tieu_de }}</a>
								</h3>
								<span class="date">{{\Carbon\Carbon::createFromTimeStamp(strtotime($new->created_at))->format('d.m.Y')}}</span>
							</div>
										
							<div class="clearfix"></div>
						@endforeach
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@stop