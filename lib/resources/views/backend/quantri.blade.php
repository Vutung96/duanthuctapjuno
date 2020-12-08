@extends('backend.master')
@section('main')
@section('title','Trang chủ quản trị')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">           
    <div class="row">
        <ol class="breadcrumb">
            <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Trang chủ quản trị</h1>
        </div>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">Giới thiệu</div>
                <div class="panel-body">
                    <div class="canvas-wrapper">
                       
                        <p>Hệ thống quản trị này có các chức năng quản lý sau: 
                            <br/>
                            - Quản lý Thành viên 
                            <br>
                            - Quản lý Danh mục sản phẩm 
                            <br/>
                            - Quản lý Sản phẩm 
                            <br/>
                            - Thư viện ảnh
                            <br/>
                            - Quản lý bình luận
                            <br/>
                            - Quản lý đơn hàng
                            <br/>
                            - Quản lý page
                        </p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div><!--/.row-->

</div>  <!--/.main-->
@stop  