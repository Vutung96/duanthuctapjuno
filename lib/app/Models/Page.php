<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    //
    protected $table ='pages';
    protected $primaryKey='page_id';
    protected $guarded=[];
}
