<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Page;
class PageController extends Controller
{
    public function getPage(){
    	$pagelist=Page::paginate(5);
    	return view('backend.Page.page',compact('pagelist'));
    }
    public function PostAddPage(Request $request){
        $Page = new Page;
        $Page->page_name  = $request->ten_page;
        $Page->page_des  = $request->mo_ta_page;
        $Page->save();

        return back()->with('success', 'Tạo page thành công');
    }
    public function getEditPage($id){
            $page=Page::findOrFail($id);
            return view('backend.Page.edit',compact('page'));
    }
    public function PostEditPage(Request $request,$id){
            $page=Page::findOrFail($id);
            $page->page_name  = $request->ten_page;
            $page->page_des  = $request->mo_ta_page;
            $page->save();

        return redirect('admin/page')->with('success', 'Sửa thành công');
    }

}
