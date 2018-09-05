@extends('backend.master')
@section('title','Chi tiết đơn hàng')
@section('main')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
        <ol class="breadcrumb">
              <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Chi tiết đơn hàng</li>
        </ol>
    </div><!--/.row-->
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Quản lý đơn hàng</h1>
		</div>
	</div><!--/.row-->
	
	<div class="row">
		<div class="col-xs-12 col-md-9 col-lg-9">
			<div class="panel panel-primary">
				<div style="background-color:#956bc0;border-color:#956bc0;" class="panel-heading">Chi tiết đơn hàng </div>
				<div class="panel-body">
					
					<table data-toggle="table">
		              	<thead>
			                <tr class="bg-primary">
			                  <th data-sortable="true">Mã đơn hàng</th>
			                  <th data-sortable="true">Tên khách hàng</th>
			                  <th data-sortable="true">Địa chỉ</th>
			                  <th data-sortable="true">Email</th>
			                  <th data-sortable="true">Số điện thoại</th>
			                </tr>
		              	</thead>
		              	<tbody>
						<tr>
							<td data-checkbox="true">JUNO {{ $order->oder_id }}</td>
							<td data-checkbox="true">{{ $order->oder_name }}</td>
							<td data-checkbox="true">{{ $order->oder_address }}</td>
							<td data-checkbox="true">{{ $order->oder_email }}</td>
							<td data-checkbox="true">{{ $order->oder_phone }}</td>
	                  	</tr>
		                </tbody>
		            </table>

		            <table data-toggle="table">
		              	<thead>
			                <tr class="bg-primary">
			                  <th data-sortable="true">Hình Ảnh</th>
			                  <th data-sortable="true">Thông tin</th>
			                  <th data-sortable="true">Số lượng</th>
			                  <th data-sortable="true">Giá</th>
			                  <th data-sortable="true">Thành tiền</th>							
			                </tr>
		              	</thead>
		              	<tbody>
						@foreach($order->products as $product)
						@php $options =  unserialize($product->pivot->options); $total += $product->pivot->price * $product->pivot->qty @endphp
						<tr style="text-align: left;">
							<td><img height="150px" src="{{ asset('/storage/avatar/'.$options['thumnail']) }}" alt="anh" class="thumbnail"></td>
							<td data-checkbox="true">
								<p class="name"><b>{{ $product->prod_name }}</b></p>

								@if(isset($options['color']))<p>Màu: {{ $options['color'] }}</p>@endif
								@if(isset($options['size']))<p>Size: {{ $options['size'] }}</p>@endif
							</td>
							<td data-checkbox="true"><span>{{ $product->pivot->qty }}</span></td>
							<td data-checkbox="true">{{ $product->pivot->price }} <sup>đ</sup></td>
							<td data-checkbox="true">{{ ($product->pivot->price * $product->pivot->qty) }} <sup>đ</sup></td>
	                  	</tr>
	                  	@endforeach
	                  
		                </tbody>
		                <tfoot>
		                		<tr><td style="text-align: left;" colspan="2">Tổng cộng: </td> <td>{{ $total }} <sup>đ</sup></td></tr>
		                </tfoot>
		            </table>
					
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="col-xs-12 col-md-3 col-lg-3">
				<div class="panel panel-primary">
					<div style="background-color: #956bc0;
    border-color: #956bc0;
}" class="panel-heading">
						Thay đổi trạng thái
					</div>
					<div class="panel-body">
						<form action="" method="post">
							<div class="form-group">
								
								<label>Trạng thái giao hàng:</label>
								<select name="status" class="form-control input-inline" style="width: 200px">
	                                <option value="0" @if($order->oder_status == 0) selected @endif>Chưa kiểm tra</option>
	                                <option value="1" @if($order->oder_status == 1) selected @endif>Đang vận chuyển</option>
	                                <option value="2" @if($order->oder_status == 2) selected @endif>Giao hàng thành công</option>
	                                <option value="3" @if($order->oder_status == 3) selected @endif>Giao hàng thất bại</option>
	                            </select>
							</div>
							{{ csrf_field() }}
							<button type="submit" class="btn btn-primary" name="submit">Cập nhật</button>
						</form>
					</div>
				</div>
		</div>
	</div><!--/.row-->
</div>	<!--/.main-->
 @stop