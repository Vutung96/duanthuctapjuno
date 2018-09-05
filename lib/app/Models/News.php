<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    //
    protected $table ='news';
    protected $primaryKey='id';
    protected $guarded=[];
    public function image()
    {
    	return $this->hasOne('App\Models\Images', 'img_id', 'anh');
    }
}
