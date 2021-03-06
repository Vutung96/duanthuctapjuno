@extends('backend.master')
@section('title','Thêm thuộc tính')
@section('main')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">           
    <div class="row">
        <ol class="breadcrumb">
             <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Thêm thuộc tính</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thuộc tính sản phẩm</h1>
        </div>
    </div><!--/.row-->


    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">Thêm thuộc tính</div>
                <div class="panel-body">
                    <div class="col-md-12">
                        <form role="form" method="post">
                            <div class="form-group">
                                <label>Tên thuộc tính</label>
                                <input class="form-control" type="text" name="ten_tt" required="">
                            </div>
                            <div class="form-group">
                                <label>Giá trị</label>
                                <textarea class="form-control" rows="3" name="gt"></textarea>
                            </div>                                   
                           <button type="submit" class="btn btn-primary" name="submit">Thêm</button>
                    </div>
                    {{ csrf_field() }}
                    </form>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->

</div><!--/.main-->
@stop