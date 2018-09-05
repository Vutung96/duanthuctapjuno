<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Oders extends Model
{
    //
    protected $table = 'oders';
    protected $primaryKey = 'oder_id';
    protected $guarded=[];
    public function products()
    {
     	return $this->belongsToMany('App\Models\Product', 'product_oder','oder_id','prod_id')->withPivot('qty','price', 'options')->withTimestamps(); 
    }
}
