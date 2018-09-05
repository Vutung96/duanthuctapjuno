<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Categorys;
use App\Http\Requests\AddCategoryRequest;
use App\Http\Requests\EditCategoryRequest;
use DB;
class CategoryController extends Controller
{
    //
    public function getCategory(){
    	$data['catelist']=Categorys::paginate(5);
        //$data['catelist'] = DB::table('categorys')->paginate(1);
        return view('backend.Category.danhsachdm',$data);
    }
    public function getAddCategory(Request $request){
    	
        if ($request->ajax()) {
            $category = Categorys::where('cate_parent', 0)->get();
        }
        return view('backend.Category.themdm', compact('category'));
    }
    public function postAddCategory(AddCategoryRequest $request){
 
    	$Category = new Categorys;
    	$Category->cate_name = $request->ten_dm;	    	
        $Category->cate_thumbnail=$request->image; 
    	$Category->cate_slug = str_slug($request->ten_dm);
    	$Category->cate_parent = $request->dm_cha;
    	$Category->save();

    	return redirect()->intended('admin/category')->with(['success' =>'Thêm thành công']);;
    } 
    public function getEditCategory($id){
        
            $cate['cate'] = Categorys::findOrFail($id);
            $category['category'] = Categorys::where('cate_parent', 0)->get();   
            return view('backend.Category.suadm', $cate,$category);

    }
    public function postEditCategory(EditCategoryRequest $request,$id){
        $cate=Categorys::find($id);
        $cate->update([
            'cate_name'     => $request->ten_dm,
            'cate_slug'     => str_slug($request->ten_dm),
            'cate_thumbnail' => $request->image,
            'cate_parent'   => $request->dm_cha
        ]);
        $cate->save();
        return redirect()->intended('admin/category')->with(['success' =>'Sửa thành công']);;
    }
    public function getDeleteCategory($id){
        Categorys::destroy($id);
        return back()->with(['success' =>'Xóa danh mục thành công']);;
        

    }

}
