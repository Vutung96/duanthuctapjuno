<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\News;

class NewsController extends Controller
{
    //
    public function getNew(){
    	$new = News::paginate(5);
    	return view('backend.News.index',compact('new'));
    }
    public function postNew(Request $request){
    	$new = new News;
    	$new->tieu_de=$request->tieu_de;
    	$new->anh=$request->image;
    	$new->tom_tat_tin=$request->tom_tat;
    	$new->chi_tiet_tin=$request->chi_tiet;
    	$new->save();
    	return back()->with('success', 'Thêm thành công');;
    }
    public function getEdit($id){
        $new = News::findOrFail($id);
        return view('backend.News.edit',compact('new'));
    }
    public function postEdit(Request $request,$id){
        $new = News::findOrFail($id);
        $new->tieu_de=$request->tieu_de;
        $new->anh=$request->image;
        $new->tom_tat_tin=$request->tom_tat;
        $new->chi_tiet_tin=$request->chi_tiet;
        $new->save();
        return redirect('admin/news')->with('success', 'Sửa thành công');
    }
    public function getDelete($id){
        News::destroy($id);
        return back()->with('success', 'Xóa thành công');
    }
}
