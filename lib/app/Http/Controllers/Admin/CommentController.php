<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Comments;
use App\Http\Requests\EditCommentRequest;
class CommentController extends Controller
{
    public function getComment(){
    	$data['commentlist'] = Comments::paginate(5);
    	return view('backend.Comment.danhsachbl',$data);
    }

    public function getEditComment($id){
    	$data['comment']=Comments::find($id);
    	return view('backend.Comment.suabl',$data);
    }

    public function postEditComment(Request $request,$id){
		$comment = Comments::find($id);
    	$comment->comment_content = $request->noi_dung;
		$comment->comment_status = (int)$request->hien_thi;
		$comment->save();
		return redirect()->intended('admin/comment')->with('success', 'Cập nhật bình luận thành công');
    }
    public function getDeleteComment($id){
    	Comments::destroy($id);
    	return back()->with('success', 'Bình luận được xóa thành công');
    }
}
