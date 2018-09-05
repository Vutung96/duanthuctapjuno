<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Oders;
use App\Models\Product;
use DB;

class OrderController extends Controller
{
    //
    public function getOder(){
    	$orders = Oders::all();
    	return view('backend.Order.order', compact('orders'));
    }

    public function getEditOrder($id)
    {
        $total = 0;
        $order = Oders::findOrFail($id);
    	return view('backend.Order.orderdetail',compact( 'order' , 'total'));
    }
    public function postEditOrder(Request $request, $id){
        $order = Oders::findOrFail($id);
        $order->update([
            'oder_status' => $request->status
        ]);
        return redirect()->back()->with('success', 'Cập nhật đơn hàng thành công');
    }

    public function getDeleteOrder($id)
    {
    	Oders::destroy($id);
    	return redirect()->back()->with('success', 'Đơn hàng đã được xóa thành công');
    }
}
