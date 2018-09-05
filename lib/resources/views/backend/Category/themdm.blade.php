@extends('backend.master')
@section('main')
@section('title','Thêm danh mục')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
    <div class="row">
        <ol class="breadcrumb">
           <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Thêm danh mục</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Danh mục sản phẩm</h1>
        </div>
    </div><!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">Thêm mới danh mục</div>
                <div class="panel-body">
                    <div class="col-md-12">
                        {{-- @include('error.note') --}}
                        <form  action="{{ route('create-cate') }}" enctype="multipart/form-data" role="form" method="post">
                            
                            <div class="form-group">
                                <label>Tên danh mục</label>
                                <input class="form-control" type="text" name="ten_dm" required="">
                            </div>
                            <div class="form-group">
                                        <label>Danh mục cha</label>
                                        <select name="dm_cha" class="form-control">
                                            <option value="0" selected>Lựa chọn danh mục</option>
                                            @foreach($category as $cate)
                                                <option value="{{ $cate->cate_id }}">{{ $cate->cate_name }}</option>
                                            @endforeach
                                            
                                        </select>
                            </div>
                            <div class="form-group">
                                <label>Ảnh danh mục</label>
                                <div class="data-img">
            
                                </div>
                                <a style="color: #956bc0;" href="" rel="doianh" class="">Thay ảnh</a>
                            </div>											
                            <button  type="submit" class="btn btn-primary" name="submit">Thêm mới</button>

                        {{ csrf_field() }}
                        </form>
                    </div>
                </div>
            </div><!-- /.col-->
        </div>
    </div><!-- /.row -->

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
