<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Categorys;
use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Http\Requests\AddProductRequest;
class ProductController extends Controller
{
    //

    public function getProduct(){
        $data['productlist']=Product::where('prod_type','<>','Con')->paginate(5);
    	return view('backend.Product.danhsachsp',$data);
    }
    public function getAddProduct(){
        $data['attlist']= Attribute::all();
        $data['catelist']=Categorys::all();
    	return view('backend.Product.themsp',$data);
    }
    public function postAddProduct (AddProductRequest $request)
    {
    	$product =new Product;
    	$product->prod_name = $request->ten_sp;
        $product->prod_code = $request->ma_sp;
    	$product->prod_price = $request->gia_sp;
    	$product->prod_sale_price = $request->khuyen_mai;
        $product->prod_cate = $request->dm_sp;
        $product->prod_status = $request->trang_thai;

        $product->prod_thumbnail = $request->prod_thumbnail;
        $product->prod_type = $request->loai_sp;
    	$product->prod_parent = 0;
        $product->prod_value_id = 0;
    	$product->prod_des = $request->mo_ta_sp;
    	$product->save();
        $product->value()->sync($request->value_id);
        $product->gallery()->sync($request->img_gallery);
        if($request->loai_sp == 'Nhom'){
            foreach ($product->value as $value) {
                if($value->att_id == 1){
                    $prod =new Product;
                    $prod->prod_name = $request->ten_sp.'-'.$value->att_value;
                    $prod->prod_code = $request->ma_sp;
                    $prod->prod_price = $request->gia_sp;
                    $prod->prod_sale_price = $request->khuyen_mai;
                    $prod->prod_cate = $request->dm_sp;
                    $prod->prod_status = $request->trang_thai;
                    $prod->prod_thumbnail = $request->prod_thumbnail;
                    $prod->prod_type ='Con';
                    $prod->prod_parent = $product->prod_id;
                    $prod->prod_value_id= $value->att_value_id;
                    $prod->prod_des = $request->mo_ta_sp;
                    $prod->save();
                }
            }
        }
	    
    	return redirect()->intended('admin/product');
    }
    public function getEditProduct($id)
    {
        
        $data['prodlist'] = Product::find($id);
        $data['catelist']=Categorys::all();
        $data['attlist']= Attribute::with('value')->get();
        return view('backend.Product.suasp',$data);
    }
    public function postEditProduct(Request $request,$id){
        $product = Product::find($id);
        $product->prod_name = $request->ten_sp;
        $product->prod_code = $request->ma_sp;
        $product->prod_price = $request->gia_sp;
        $product->prod_sale_price = $request->khuyen_mai;
        $product->prod_cate = $request->dm_sp;
        $product->prod_status = $request->trang_thai;
        $product->prod_thumbnail = $request->prod_thumbnail;
        $product->prod_type = $request->loai_sp;
        $product->prod_des = $request->mo_ta_sp;
        $product->save();
        $product->value()->sync($request->value_id);
        $product->gallery()->sync($request->img_gallery);
        return redirect()->intended('admin/product');
    }
    public function getDeleteProduct($id){
        Product::destroy($id);
        return back();
    }
}
