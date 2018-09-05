@extends('backend.master')
@section('main')
@section('title','PAGE')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
    <div class="row">
        <ol class="breadcrumb">
              <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Sửa page</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Quản lý page</h1>
        </div>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-8" >
            <div class="panel panel-default">
                <div class="panel-heading">Sửa page</div>
                <div class="panel-body">
                    <form  action="" enctype="multipart/form-data" role="form" method="post">         
                        <div class="form-group">
                            <label>Tên page</label>
                            <input class="form-control" type="text" name="ten_page" required="" value="{{ $page->page_name }}">
                        </div>
                        <div class="form-group">
                            <label>Mô tả page</label>
                            <textarea class="form-control ckeditor" name="mo_ta_page">{{ $page->page_des }}</textarea>     
                        </div>                                 
                        <button type="submit" class="btn btn-primary" name="submit">Sửa</button> 
                        {{ csrf_field() }}     
                    </form>
                </div>
            </div>
        </div>
    </div><!--/.row-->	
</div><!--/.main-->
@stop