<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Account;
use App\Http\Requests\AddAccountRequest;
class AccountController extends Controller
{
    //
    public function getAccount(){
    	$data['accountlist']=Account::paginate(5);
    	return view('backend.User.danhsachtv',$data);
    }
    public function getAddAccount(){
    	return view('backend.User.themtv');
    }
    public function postAddAccount(AddAccountRequest $request){
    	$Account = new Account;
    	$Account->user_name = $request->ten_tv;
    	$Account->user_email = $request->email;
    	$Account->password = bcrypt($request->mk);
        
	    $Account->user_avatar = $request->user_avatar;
	    
    	$Account->user_phone = $request->phone;
    	$Account->user_role = $request->lv;
    	$Account->save();

    	return redirect()->intended('admin/account');
    }
    public function getEditAccount($id){
        $data['account']=Account::find($id);
        return view('backend.User.suatv',$data);
    }
    public function postEditAccount(Request $request,$id){
        $account =new Account;
        $arr['user_name']=$request->ten_tv;
        $arr['user_email']=$request->email;
        $arr['user_avatar']=$request->user_avatar;
        $arr['user_phone']=$request->phone;
        $arr['user_role']=$request->lv;
        $account::where('user_id',$id)->update($arr);
        return redirect()->intended('admin/account');
    }
    public function getDeleteAccount($id){
        Account::destroy($id);
        return back();
    }


    public function uploadImage(Request $request){
        if($request->ajax()){
            $filename = $request->img->getClientOriginalName();
            $path = $request->img->storeAs('avatar',$filename,'public');
            $arr =array('filename'=>$filename,'path'=>'/storage/'.$path);
            return $arr;
        }
    }

}
