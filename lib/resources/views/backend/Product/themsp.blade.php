@extends('backend.master')
@section('main')
@section('title','Thêm sản phẩm')
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
        <div class="row">
            <ol class="breadcrumb">
                <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                <li class="active">Thêm sản phẩm</li>
            </ol>
        </div><!--/.row-->

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Quản lý sản phẩm</h1>
            </div>
        </div><!--/.row-->


        <div class="row">
            <div class="col-lg-12">   
                <form method="post" enctype="multipart/form-data" role="form">
                    <div class="col-md-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">Thêm sản phẩm mới</div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label>Tên sản phẩm</label>
                                    <input type="text" class="form-control"  name="ten_sp" required="">
                                </div>
                                <div class="form-group">
                                    <label>Mã sản phẩm</label>
                                    <input type="text" class="form-control"  name="ma_sp" required="">
                                </div>
                                <div class="form-group">
                                    <label>Giá sản phẩm</label>
                                    <input type="text" class="form-control" name="gia_sp" required="">
                                </div>

                                <div class="form-group">
                                    <label>Giá khuyễn mãi</label>
                                    <input type="text" class="form-control" name="khuyen_mai"  required="">
                                </div>

                                {{-- <div class="form-group">
                                    <label>Ảnh sản phẩm</label>
                                    <input type="file" name="anh_sp">
                                </div> --}}
                                <div class="form-group">
                                    <label>Danh mục sản phẩm</label>
                                    <select name="dm_sp" class="form-control">
                                        <option value="unselect" selected>Lựa chọn danh mục</option>
                                        @foreach($catelist as $cate)
                                           <option value="{{ $cate->cate_id }}">{{ $cate->cate_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái</label>
                                    <select name="trang_thai" class="form-control">
                                        <option value="unselect" selected>Trạng thái</option>
                                        <option value="1">Còn hàng</option>
                                        <option value="2">Hết hàng</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Loại sản phẩm</label>
                                    <select name="loai_sp" class="form-control">
                                        <option value="unselect" selected>Loại sản phẩm</option>
                                        <option value="Don">Đơn</option>
                                        <option value="Nhom">Nhóm</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                        <label>Mô tả sản phẩm</label>
                                        <textarea class="form-control ckeditor" name="mo_ta_sp"></textarea>                                               
                                </div>
                            </div>  
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">Thuộc tính sản phẩm</div>
                            <div class="panel-body">
                                <div class="form-group">
                                    @foreach ($attlist as $att)
                                    <label>{{ $att->att_name }}</label>
                                    <select name="value_id[]" class="select2 form-control" multiple="multiple" style="height: 36px;width: 100%;">
                                        @foreach($att->value as $attvalue)
                                            <option value="{{ $attvalue->att_value_id }}">{{ $attvalue->att_value }}</option>
                                        @endforeach
                                    </select>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">Ảnh sản phẩm</div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="img">
                                        <img width="200" src="" alt="">
                                    </div>
                                    <a style="color: #956bc0;" href="" rel="thumbnail">Thay đổi ảnh đại diện</a>
                                    <input type="hidden" name="prod_thumbnail" value="">
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">Thư viện ảnh</div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="gallery">
                                    </div>
                                    <a style="color: #956bc0;" href="" rel="gallery">Chọn ảnh</a>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" name="submit">Thêm mới</button>
                    </div>
                {{ csrf_field() }}
                </form>  
            </div><!-- /.col-->
        </div><!-- /.row -->

    </div><!--/.main-->  
    <div id="myModal" class="modal">
    
    </div> 
@stop  

@section('footer')
<script type="text/javascript">
    $(document).ready(function(){
        var thumbnail,gallery, url = '{{ asset("storage/avatar/")}}';

        $('[rel="thumbnail"]').click(function(e){
            e.preventDefault();
            if (thumbnail) {

                thumbnail.open();
                return
            }
                thumbnail = new Media({
                url: '{{ route('upload') }}'
                },
                {
                init: function(data){
                    if (data.length) {
                        $('.img').find('img').attr('src', url + '/' + data[0].img_name);
                        $('[rel="thumbnail"]').text('Đổi ảnh đại diện');
                        $('[name="prod_thumbnail"]').val(data[0].img_id);
                    }
                }
            });
        });
        $('[rel="gallery"]').click(function(e){
                e.preventDefault();
                if (gallery) {
                    gallery.open();
                    return
                }
                gallery = new Media({
                    url: '{{ route('upload') }}',
                    multiselect: true
                },{
                    init: function(data){
                        $('.gallery').empty();
                    $.each(data, function(index, val) {
                        $('.gallery').append('<img style="height: 50px; width: 50px;" src="' + url+ '/' +val.img_name+'">');
                        $('.gallery').append('<input type ="hidden" name="img_gallery[]" value="' + val.img_id + '">');
                    });
                }
            });
        });
    });

</script>
@stop    