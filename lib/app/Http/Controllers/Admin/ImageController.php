<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Images;
use App\Models\Product;

class ImageController extends Controller
{
    public function getImage(){
    	$data['image']=Images::paginate(12);
    	return view('backend.Image.index',$data);
    }
    public function formUpload(Request $request){
    	if($request->ajax()){
    		return view('backend.Image.form.upload');
    	}
    }
    public function image(Request $request){
        if ($request->ajax()) {
            $images = Images::all();
            $id = $request->id;
            $select = [];
            if($id != 'false'){
                if ($request->type == 'thumbnail') {
                $select[] = Product::findOrFail($id)->prod_thumbnail;
                }
                if ($request->type == 'gallery') {
                    foreach (Product::findOrFail($id)->gallery as $gallery) {
                        $select[] = $gallery->img_id;
                    }
                }
            }
            
            return view('backend.Image.form.media' , compact('images','select'))->render();
        }
    }     
    public function store(Request $request){
    	if ($request->ajax()) {
            if ($request->hasFile('file')) {
                $imageFiles = $request->file('file');

                foreach ($request->file('file') as  $file ) {

                    if ($file->isValid()) {
                    	$name = $file->getClientOriginalName();
                    	$type = $file->getClientOriginalExtension();
                       	$path = $file->storeAs('avatar',$name, 'public');
                       Images::create([
                       		'img_name' => $name,
                       		'img_type' => $type
                       ]);
                    }
                }
            }
        }
    }
}
