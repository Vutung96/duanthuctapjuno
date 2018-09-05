<script>
     function xoaSanPham(){
        var conf=confirm("Bạn có chắc chắn muốn xóa sản phẩm này hay không?");
        return conf;
    }
</script>
@extends('backend.master')
@section('main')
@section('title','Quản lý sản phẩm')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
    <div class="row">
        <ol class="breadcrumb">
            <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Danh sách sản phẩm</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Quản lý sản phẩm</h1>
        </div>
    </div><!--/.row-->


    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">					
                <div class="panel-body" style="position: relative;">
                    <a href="{{ asset('admin/product/add') }}" class="btn btn-success" style="margin: 10px 0 20px 0; position: absolute;">Thêm sản phẩm mới</a>				
                    <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                        <thead>
                            <tr>						        
                                <th data-sortable="true">ID</th>
                                <th data-sortable="true">Tên sản phẩm</th>
                                <th data-sortable="true">Mã sản phẩm</th>
                                <th data-sortable="true">Sản phẩm con</th>
                                <th data-sortable="true">Giá</th>
                                <th data-sortable="true">Danh mục</th>
                                <th data-sortable="true">Ảnh sản phẩm</th>
                                <th data-sortable="true">Tùy chọn</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($productlist as $product)
                            <tr>
                               
                                <td data-checkbox="true">{{ $product->prod_id }}</td>
                                <td data-checkbox="true">{{ $product->prod_name }}</td>
                                <td data-checkbox="true">{{ $product->prod_code }}</td>
                                
                                    <td data-checkbox="true">
                                        @foreach($product->childs as $childs)
                                        <a style="margin-top: 10px;color: #fff;text-decoration: none; background:#956bc0;border-color:#956bc0" class="btn btn-info" href="{{ asset('admin/product/edit/'.$childs->prod_id) }}">
                                        {{ $childs->prod_name}}<br>
                                        
                                        </a>
                                        @endforeach
                                    </td>
                                <td data-checkbox="true">{{ $product->prod_price }} VNĐ</td>
                                <td data-checkbox="true">{{ $product->category->cate_name }}</td>
                                <td data-sortable="true">
                                    <img width="80px" height="80px" src="{{ asset('/storage/avatar/'.$product->thumbnail->img_name) }}" />

                                </td>						        
                                <td>
                                    <a href="{{ asset('admin/product/edit/'.$product->prod_id) }}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span> Sửa</a>
                                    <a onclick="return xoaSanPham();" href="{{ asset('admin/product/delete/'.$product->prod_id) }}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <ul class="pagination" style="float: right;">
                        {{ $productlist->links() }}
                    </ul>
                </div>
            </div>
        </div>
    </div><!--/.row-->	



</div><!--/.main-->
@stop