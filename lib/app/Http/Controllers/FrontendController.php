<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Categorys;
use App\Models\Attribute;
use App\Models\Comments;
use App\Models\Page;
use App\Models\News;

class FrontendController extends Controller
{
    //
    public function index(){
    	// $product['product'] =Product::where('prod_type','<>','Con')->orderBy('prod_id,desc');
    	$title = "Trang chủ";
        $product = Product::where('prod_type','<>','Con')->orderBy('prod_id', 'desc')->paginate(20);
        $page_all = Page::all();
    	//dd($product);
    	return view('frontend.index',compact('product','category','title','page_all'));

    }

    public function detail($id)
    {

        $product = Product::where('prod_type','<>','Con')->findOrFail($id);
        $product['attribute'] = Attribute::all();
        $comments = $product->comment()->where('comment_status','=', 1)->orderBy('comment_id', 'DESC')->paginate(10);
        $title = "$product->prod_name";
        $page_all = Page::all();
        $products=Product::where('prod_type','<>','Con')->where('prod_id','<>',$id)->get();
        return view('frontend.detail', compact('product', 'title','comments','page_all','products'));

    }

    public function category($id)
    {
        $cate = Categorys::findOrFail($id);
        $title = "$cate->cate_name";
        $cate_all = Categorys::all();
        $cate_id[] = $id;
        $page_all = Page::all();
        if ($cate->cate_parent == 0) {
            foreach(Categorys::where('cate_parent', $id)->get() as $cate_item) {
                $cate_id[] = $cate_item->cate_id;
            }
        }
        $products = Product::whereIn('prod_cate', $cate_id)->where('prod_type','<>','Con')->orderBy('prod_id', 'desc')->paginate(16);
        return view('frontend.cate', compact('products', 'cate', 'cate_all', 'title','page_all'));

    }
    public function search(Request $request)
    {   
        $value = $request->search;
        $page_all = Page::all();
        $title = "Tìm kiếm từ khóa: $value";
        $str = str_replace(' ', '%', $value);
        $products = Product::where([['prod_name', 'like', '%'.$str.'%'],['prod_type', '<>', 'Con']])->orderBy('prod_id', 'desc')->paginate(16);
        return view('frontend.search', compact('products', 'value', 'title','page_all'));
    }
    public function page($id){
        $page = Page::findOrFail($id);
        $title="$page->page_name";
        $page_all = Page::all();
        return view('frontend.page',compact('page','page_all','title'));
    }
    public function comment(Request $request, $id)
    {

        $comment = Comments::create(
            [
                'comment_name' => $request->name,
                'comment_content' => $request->content,
                'comment_status' => 0
            ]
        );

        $product = Product::findOrFail($id);
        $comment->product()->save($product);

        return redirect()->back()->with('success', "Bình luận thành công. Vui lòng chờ QTV duyệt bình luận");
    }

    public function loadslide(Request $request)
    {
        if ($request->ajax()) {

            $product = Product::findOrFail($request->id);
            return view('frontend.component.slide', compact( 'product' ));

        }
    }
    public function formSize(Request $request){
        if($request->ajax()){
            return view('frontend.form.size');
        }
    }
    public function new(){
        $new['new'] = News::orderBy('id', 'desc')->get();
        $title="Tin tức";
        $page_all = Page::all();
        return view('frontend.tintuc',compact('page_all','title'),$new);
    }
    public function newsdetail($id){
        $new = News::findOrFail($id);
        $news = News::where('id','<>',$id)->get();
        $title="$new->tieu_de";
        $page_all = Page::all();
        return view('frontend.newsdetail',compact('new','title','page_all','news'));
    }   
}
