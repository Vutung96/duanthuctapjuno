@extends('backend.master')
@section('main')
@section('title','Sửa sản phẩm')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">           
    <div class="row">
        <ol class="breadcrumb">
             <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Sửa sản phẩm</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Quản lý sản phẩm</h1>
        </div>
    </div><!--/.row-->


        <div class="row">
            <div class="col-lg-12">
                @if($prodlist->prod_type=='Con')
                    @include('backend.Product.Loaisp.child')
                @else
                    @include('backend.Product.Loaisp.parent')
                @endif
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