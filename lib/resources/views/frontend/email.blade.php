
	<div id="cart">
		<div class="container">
				<h3 style="color: #E32124;">Thông tin khách hàng</h3>
				<p>
					<span style="font-weight:bold;" class="info">Khách hàng: </span>
					{{ $info['name'] }}
				</p>
				<p>
					<span style="font-weight:bold;" class="info">Email: </span>
					{{ $info['email'] }}
				</p>
				<p>
					<span style="font-weight:bold;" class="info">Điện thoại: </span>
					{{ $info['phone'] }}
				</p>
				<p>
					<span style="font-weight:bold;" class="info">Địa chỉ: </span>
					{{ $info['address'].'-'.$info['xa'].'-'.$info['quan'].'-'.$info['tinh']}}
				</p>
		</div>
	</div>						
	<div id="cart">
		<div class="container">
				<h3 style="color: #E32124;">Hóa đơn mua hàng</h3>							
				<table border="1" cellpadding="0" width="100%">
					<thead class="thead-inverse">
						    <tr>
						      <th style="color: #fff;background-color:#E32124;">Thông tin</th>
						      <th style="color: #fff;background-color:#E32124;">Số lượng</th>
						      <th style="color: #fff;background-color:#E32124;">Giá</th>
						      <th style="color: #fff;background-color:#E32124;">Thành tiền</th>
						    </tr>
					</thead>
					 	<tbody>
					 		@foreach($cart as $item)
						    <tr>
						      	<td>
							      	<p class="name">{{ $item->name }}</p>
							      	@if($item->options->color)<p>Màu: {{ $item->options->color }}</p>@endif
				      				@if($item->options->size)<p>Size: {{ $item->options->size }}</p>@endif
						      	</td>
						      	<td style="text-align: center;"><span>{{$item->qty }}</span></td>
						      	<td>
						      		<p style="text-align: center;">{{ Menu::price($item->price) }}<sup>đ</sup></p>
						      	</td>
						      	<td>
						 			<p style="text-align: center;">{{ Menu::price($item->price*$item->qty) }}<sup>đ</sup></p>
						      	</td>
						    </tr>
						    @endforeach
						    <tr>
								<td colspan="3">Tổng tiền:</td>
								<td style="color:#E32124; text-align: center; " class="total-price"><span style="text-align: center;">{{$total}} <sup>đ</sup></span></td>
							</tr>	
						</tbody>
					
				</table>
		</div>
	</div>
	<div id="cart">
		<div class="container">
			<br>
			<p align="justify">
				<b style="color: #E32124;">Quý khách đã đặt hàng thành công!</b><br />
				• Sản phẩm của Quý khách sẽ được chuyển đến Địa chỉ có trong phần Thông tin Khách hàng của chúng Tôi sau thời gian 2 đến 3 ngày, tính từ thời điểm này.<br />
				• Nhân viên giao hàng sẽ liên hệ với Quý khách qua Số Điện thoại trước khi giao hàng 24 tiếng.<br />
				<b style="color: #E32124;"><br/>Cảm ơn Quý khách đã sử dụng Sản phẩm của Công ty chúng Tôi!</b>
			</p>
		</div>
	</div>					