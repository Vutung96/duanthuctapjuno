@extends('frontend.master')
@section('main')
<div class="container">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="{{ url( '/' ) }}">Trang chủ</a></li>
		<li class="breadcrumb-item active">{{ $page->page_name }}</li>
	</ol>
	<div class="row">
		<div class="col-md-2">
			<div id="menu-cate">
				<ul class="menu-left">
					@foreach ($page_all as $pages)
						<li class="menu--left__item"><a href="{{ asset('/pages/'.$pages->page_id) }}">{{ $pages->page_name }}</a></li>
					@endforeach
				</ul>
			</div>
		</div>
		<div class="col-md-10">
			<div id="products">
				<div class="row">
					<div class="col-12">
						<h1 class="title">{{ $page->page_name }}</h1>
					</div>
					<div class="col-xl-11 col-md-4 col-sm-6 col-12 ">
						<div class="row">
							<div class="col-12">	
								{!! $page->page_des !!}				
							</div>
						</div>
						
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
@stop