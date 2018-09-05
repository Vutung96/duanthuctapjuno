<script>
     function xoaTin(){
        var conf=confirm("Bạn có chắc chắn muốn xóa tin này hay không?");
        return conf;
    }
</script>
@extends('backend.master')
@section('main')
@section('title','Tin tuc')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
    <div class="row">
        <ol class="breadcrumb">
              <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Quản lý tin tức</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Quản lý tin tức</h1>
        </div>
    </div><!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body" style="position: relative;">
                    <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                        <thead>
                            <tr>                                
                                <th data-sortable="true">ID</th>
                                <th data-sortable="true">Tiêu đề</th>
                                <th data-sortable="true">Ảnh</th>
                                <th width="10px" data-sortable="true">Tùy chọn</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($new as $news)
                                <tr>
                                    <td data-checkbox="true">{{ $news->id }}</td>
                                    <td data-checkbox="true">{{ $news->tieu_de }}</td>        
                                    <td data-checkbox="true">
                                        <img width="80px" height="80px" src="{{ asset('/storage/avatar/'.$news->image->img_name) }}" />
                                    </td>                                
                                    <td>
                                        <a href="{{ asset('admin/news/edit/'.$news->id) }}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span> Sửa</a>
                                        <a onclick="return xoaTin();" href="{{ asset('admin/news/delete/'.$news->id) }}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{-- {{ $pagelist->links() }} --}}
                </div>
            </div>
        </div>
        <div class="col-lg-12" >
            <div class="panel panel-default">
                <div class="panel-heading">Thêm mới tin</div>
                <div class="panel-body">
                    <form  action="" enctype="multipart/form-data" role="form" method="post">         
                        <div class="form-group">
                            <label>Tiêu đề</label>
                            <input class="form-control" type="text" name="tieu_de" required="">
                        </div>
                        <div class="form-group">
                                <label>Ảnh</label>
                                <div class="data-img">
            
                                </div>
                                <a style="color: #956bc0;" href="" rel="doianh" class="">Thay ảnh</a>
                        </div>      
                        <div class="form-group">
                            <label>Tóm tắt</label>
                            <textarea class="form-control ckeditor" name="tom_tat"></textarea>     
                        </div> 
                        <div class="form-group">
                            <label>Chi tiết</label>
                            <textarea class="form-control ckeditor" name="chi_tiet"></textarea>     
                        </div>                                 
                        <button type="submit" class="btn btn-primary" name="submit">Thêm</button> 
                        {{ csrf_field() }}     
                    </form>
                </div>
            </div>
        </div>
    </div><!--/.row-->	



</div><!--/.main-->
<div id="myModal" class="modal">
    
</div> 
@stop
@section('footer')
<script type="text/javascript">
    $(document).ready(function(){
        var thumbnail, url = '{{ asset("/storage/avatar/")}}';
        $('[rel="doianh"]').click(function(e){
            e.preventDefault();
            if (thumbnail) {

                thumbnail.open();
                return
            }
            thumbnail = new Media({
                url: '{{ route('image') }}',
                type: 'thumbnail'
            },
            {
            init: function(data){
                if (data.length) {
                    
                    $('.data-img').html('<img src="' + url + '/' +data[0].img_name + '"><input type="hidden" name="image" value="'+ data[0].img_id +'">');
                }
            }
            });
        });
    });
</script>
@stop