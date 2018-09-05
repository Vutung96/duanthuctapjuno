<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'product';
    protected $primaryKey = 'prod_id';
    protected $fillable = ['prod_code','prod_name','prod_des','prod_cate','prod_price','prod_sale_price','prod_thumbnail','prod_type','prod_status','prod_parent'];
    protected $hidden = ['prod_thumbnail'];

    //
    public function childs(){
    	return $this->hasMany($this,'prod_parent','prod_id');
    }

    public function value() {
    	return $this->belongsToMany('App\Models\AttributeValue', 'product_attributes','prod_id','att_value_id')->withTimestamps();
    }
    public function category()
    {
        return $this->belongsTo('App\Models\Categorys','prod_cate','cate_id');
    }
    public function thumbnail()
    {
        return $this->belongsTo('App\Models\Images','prod_thumbnail','img_id');
    }

    public function gallery()
    {
        return $this->belongsToMany('App\Models\Images', 'product_images','prod_id','img_id')->withTimestamps();
    }

    public function comment()
    {
        return $this->belongsTomany('App\Models\Comments', 'product_comments','prod_id','comment_id')->withTimestamps();
    }
    public function single_value()
    {
        return $this->belongsTo('App\Models\AttributeValue','prod_value_id', 'att_value_id');
    }

}

