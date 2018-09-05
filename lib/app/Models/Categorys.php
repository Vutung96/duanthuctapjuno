<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categorys extends Model
{
    //
    protected $table ='categorys';
    protected $primaryKey='cate_id';
    protected $guarded=[];
    public function childs(){
    	return $this->hasMany('App\Models\Categorys','cate_parent');
    }
    public function image()
    {
    	return $this->hasOne('App\Models\Images', 'img_id', 'cate_thumbnail');
    }
}
