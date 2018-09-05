<script>
     function xoaPage(){
        var conf=confirm("Bạn có chắc chắn muốn xóa page này hay không?");
        return conf;
    }
</script>
@extends('backend.master')
@section('main')
@section('title','PAGE')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
    <div class="row">
        <ol class="breadcrumb">
              <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Quản lý page</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Quản lý page</h1>
        </div>
    </div><!--/.row-->
 


    <div class="row">
        <div class="col-lg-6" >
            <div class="panel panel-default">
            <div class="panel-heading">Thêm mới page</div>
            <div class="panel-body">
                <form  action="" enctype="multipart/form-data" role="form" method="post">         
                    <div class="form-group">
                        <label>Tên page</label>
                        <input class="form-control" type="text" name="ten_page" required="">
                    </div>
                    <div class="form-group">
                        <label>Mô tả page</label>
                        <textarea class="form-control ckeditor" name="mo_ta_page"></textarea>     
                    </div>                                 
                    <button type="submit" class="btn btn-primary" name="submit">Thêm</button> 
                    {{ csrf_field() }}     
                </form>
            </div>
        </div>
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-body" style="position: relative;">
                    <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                        <thead>
                            <tr>                                
                                <th data-sortable="true">ID</th>
                                <th data-sortable="true">Tên page</th>
                                <th data-sortable="true">Tùy chọn</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($pagelist as $page)
                                <tr>
                                    <td data-checkbox="true">{{ $page->page_id }}</td>
                                    <td data-checkbox="true">{{ $page->page_name }}</td>                                
                                    <td>
                                        <a rel="edit" href="{{ route('edit-page', ['id' => $page->page_id]) }}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span> Sửa</a>
                                        <a onclick="return xoaPage();" href="" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $pagelist->links() }}
                </div>
            </div>
        </div>
    </div><!--/.row-->	



</div><!--/.main-->
@stop