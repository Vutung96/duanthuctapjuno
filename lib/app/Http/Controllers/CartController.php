<?php

namespace App\Http\Controllers;
use Cart;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Oders;
use App\Models\Page;
use App\Http\Requests\OrderRequest;
use Mail;
class CartController extends Controller
{
    //
    public function cart()
	{
		$title = "Giỏ hàng";
		$page_all = Page::all();
		return view('frontend.cart', compact('title','page_all'));	

	}
	public function addTocart(Request $request)
	{
		$product = Product::findOrFail($request->prod_id);
		Cart::add($product->prod_id,$product->prod_name,1, $product->prod_price, ['size' => $request->size,'color' => $request->color, 'thumnail' => $product->thumbnail->img_name]);
		return redirect()->back()->with('success', "Sản phẩm được thêm vào giỏ hàng thành công");
	}
	public function pay()
	{
		if (Cart::count() > 0) {
			$title = "Thanh toán đơn hàng";
			return view('frontend.pay');
		}
		return redirect()->back()->with('error', "Không có sản phẩm nào trong giỏ hàng");
		
	}
	public function checkout(OrderRequest $request)
	{
		$order = new Oders;
		$order->oder_name = $request->name;
		$order->oder_phone = $request->phone;
		$order->oder_email = $request->email;
		$order->oder_address = $request->address.' - '. $request->xa.' - '.$request->quan.' - '.$request->tinh;
		$order->oder_status = 0;
		$order->oder_note = $request->note;

		$order->save();
		$data['info'] = $request->all();
		$data['total'] = Cart::total();
		$data['cart'] = Cart::content();
		//dd($data);
		$email = $request->email;
		Mail::send('frontend.email',$data, function($message) use ($email){
			$message->from('thanhtung1907.it@gmail.com','JunoShop');
			$message->to($email,$email);
			$message->cc('thanhtung9617sss@gmail.com','Thanh Tùng');
			$message->subject('Xác nhận hóa đơn mua hàng JunoShop');

		});
		foreach(Cart::content() as $cart) {
			$options = $cart->options->toArray();
			$order->products()->attach($cart->id, ['qty' => $cart->qty, 'price' => $cart->price, 'options' =>  serialize($options)]);
		}
		Cart::destroy();
		return redirect()->route('index')->with('success', "Đặt hàng thành công! Đang chờ xử lý đơn hàng");
	}

	public function delete($id)
	{
		Cart::remove($id);
		return redirect()->back();

	}

	public function destroy()
	{
		Cart::destroy();
		return redirect()->back();
	}
    
}
