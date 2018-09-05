<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    //
    protected $table ='comments';
    protected $primaryKey='comment_id';
    protected $guarded=[];

    public function product()
    {
    	return $this->belongsTomany('App\Models\Product', 'product_comments','comment_id','prod_id')->withTimestamps();
    }
}
