@extends('frontend.master')
@section('main')
<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="{{ url( '/' ) }}">Trang chủ</a></li>
			<li class="breadcrumb-item active">Tin tức juno</li>
		</ol>
	<div class="tag-content">
		<div class="col-md-12 col-sm-7 col-xs-10">
			<div class="row">
				<div class="col-xs-10 col-md-6">
					@foreach ($new as $key=> $news)
						@if($key<1)
							<div class="item-to row">
								<div class="item-to-img">
									<a href="{{ route( 'newsdetail', ['slug' => $news->id]) }}"><img width="560px" src="{{ asset("/storage/avatar/".$news->image->img_name)}}"></a>
								</div>
								<h3>
									<a href="{{ route( 'newsdetail', ['slug' => $news->id]) }}">{{ $news->tieu_de }}</a>
								</h3>
							</div>
						@endif
					@endforeach	
				</div>
				<div class="col-xs-10 col-sm-5 col-md-6 padding-sm">
					@foreach ($new as $key=> $news)
						@if($key>0 && $key<5)
							<div class="clearfix blog-read-item">
								<a href="{{ route( 'newsdetail', ['slug' => $news->id]) }}">
									<div class="item-img pull-left">
										<img src ="{{ asset("/storage/avatar/".$news->image->img_name)}}"/>
									</div>
								</a>
								<div class="caption pull-right" >						
									<h3 class="title"><a href="{{ route( 'newsdetail', ['slug' => $news->id]) }}">{{ $news->tieu_de }}</a></h3>
									<span class="date">17.07.2018</span>
								</div>
							</div>
						@endif
					@endforeach
				</div>	
			</div>
			<div class="items-ngang" style="clear:both;">
				<div class="">
					@foreach($new as $news)		
						<div class="col-xs-10 clearfix" style="padding:20px 0;border-top:1px solid #ddd">
							<div class="info pull-left">
								<h3>
									<a href="{{ route( 'newsdetail', ['slug' => $news->id]) }}">{{ $news->tieu_de }}</a>
								</h3>
								<span class="date">{{\Carbon\Carbon::createFromTimeStamp(strtotime($news->created_at))->format('d.m.Y')}}</span>

								{!! $news->tom_tat_tin !!}

							</div>
							<a href="{{ route( 'newsdetail', ['slug' => $news->id]) }}">
								<div class="item-img pull-right" style="background: url('{{ asset("/storage/avatar/".$news->image->img_name)}}') no-repeat;background-size: contain;background-position: center;">
								</div>
							</a>
						</div>
					@endforeach								
				</div>
			</div>
			
		</div>
	</div>
</div>
@stop