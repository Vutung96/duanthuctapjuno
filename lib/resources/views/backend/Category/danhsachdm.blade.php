<script>
     function xoaDanhmuc(){
        var conf=confirm("Bạn có chắc chắn muốn xóa danh mục này hay không?");
        return conf;
    }
</script>
@extends('backend.master')
@section('main')
@section('title','Quản lý danh mục')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
    <div class="row">
        <ol class="breadcrumb">
             <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Danh sách danh mục</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Danh mục sản phẩm</h1>
        </div>
    </div><!--/.row-->
 


    <div class="row">
        <div class="col-lg-8">
            <div class="panel panel-default">

                <div class="panel-body" style="position: relative;">
                    <a href="{{ asset('admin/category/add') }}" class="btn btn-success" style="margin: 10px 0 20px 0; position: absolute;">Thêm danh mục mới</a>
                    <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                        <thead>
                            <tr>						        
                                <th data-sortable="true">ID</th>
                                <th data-sortable="true">Tên danh mục</th>
                                <th data-sortable="true">Tùy chọn</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($catelist as $cate)
                                <tr>
                                    <td data-checkbox="true">{{ $cate->cate_id }}</td>
                                    <td data-checkbox="true">{{ $cate->cate_name }}</td>						        
                                    <td>
                                        <a href="{{ asset('admin/category/edit/'.$cate->cate_id) }}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span> Sửa</a>
                                        <a onclick="return xoaDanhmuc();" href="{{ asset('admin/category/delete/'.$cate->cate_id) }}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $catelist->links() }}
                </div>
                </div>
            </div>
        </div>
    </div><!--/.row-->	



</div><!--/.main-->
@stop