@extends('backend.master')
@section('main')
@section('title','News')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
    <div class="row">
        <ol class="breadcrumb">
              <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Sửa tin</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Quản lý tin tức</h1>
        </div>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12" >
            <div class="panel panel-default">
                <div class="panel-heading">Sửa tin</div>
                <div class="panel-body">
                    <form  action="" enctype="multipart/form-data" role="form" method="post">         
                        <div class="form-group">
                            <label>Tiêu đề</label>
                            <input class="form-control" type="text" name="tieu_de" required="" value="{{ $new->tieu_de }}">
                        </div>
                        <div class="form-group">
                                <label>Ảnh</label>
                                <div class="data-img">
                                    <img src="{{ asset("/storage/avatar/".$new->image->img_name)}}" alt="">
                                    <input type="hidden" name="image" value="{{ $new->image->img_id }}">
                                </div>
                                <a style="color: #956bc0;" href="" rel="doianh" class="">Thay ảnh</a>
                        </div>      
                        <div class="form-group">
                            <label>Tóm tắt</label>
                            <textarea class="form-control ckeditor" name="tom_tat">{{ $new->tom_tat_tin }}</textarea>     
                        </div> 
                        <div class="form-group">
                            <label>Chi tiết</label>
                            <textarea class="form-control ckeditor" name="chi_tiet">{{ $new->chi_tiet_tin }}</textarea>     
                        </div>                                 
                        <button type="submit" class="btn btn-primary" name="submit">Sửa</button> 
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