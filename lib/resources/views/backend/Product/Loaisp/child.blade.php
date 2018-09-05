<form method="post" enctype="multipart/form-data" role="form">
    <div class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">Sửa sản phẩm</div>
            <div class="panel-body">
                <div class="form-group">
                    <label>Tên sản phẩm</label>
                    <input type="text" class="form-control"  name="ten_sp" required="" value="{{ $prodlist->prod_name}}">
                </div>
                <div class="form-group">
                    <label>Mã sản phẩm</label>
                    <input type="text" class="form-control"  name="ma_sp" required="" value="{{ $prodlist->prod_code }}">
                </div>
                <div class="form-group">
                    <label>Giá sản phẩm</label>
                    <input type="text" class="form-control" name="gia_sp" required="" value="{{ $prodlist->prod_price}}">
                </div>

                <div class="form-group">
                    <label>Giá khuyễn mãi</label>
                    <input type="text" class="form-control" name="khuyen_mai"  required="" value="{{ $prodlist->prod_sale_price }}">
                </div>
                <div class="form-group">
                    <label>Trạng thái</label>
                    <select name="trang_thai" class="form-control">
                        <option value="1" @if($prodlist->prod_status==1) selected @endif>Còn hàng</option>
                        <option value="2" @if($prodlist->prod_status==2) selected @endif>Hết hàng</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Loại sản phẩm</label>
                    <select name="loai_sp" class="form-control">
                        <option value="Con" @if($prodlist->prod_type=='Con') selected @endif>Sản phẩm con</option>
                        
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="panel panel-default">
            <div class="panel-heading">Ảnh sản phẩm</div>
            <div class="panel-body">
                <div class="form-group">
                    <div class="img">
                        <img width="150" src="{{ asset("storage/avatar/".$prodlist->thumbnail->img_name) }}" alt="">
                    </div>
                    <a style="color: #956bc0" href="" rel="thumbnail">Thay đổi ảnh đại diện</a>
                    <input type="hidden" name="prod_thumbnail" value="{{ $prodlist->prod_thumbnail }}">
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">Thư viện ảnh</div>
            <div class="panel-body">
                <div class="form-group">
                    <div class="gallery">
                        @foreach($prodlist->gallery as $gallery)
                            <img style="width: 50px; height: 50px" src="{{ asset("/storage/avatar/".$gallery->img_name)}}" alt="">
                            <input type="hidden" name="img_gallery[]" value="{{ $gallery->img_id }}">
                        @endforeach
                    </div>
                    <a style="color: #956bc0" href="" rel="gallery">Chọn ảnh</a>
                </div>
            </div>
        </div>
    </div>
    <button style="margin-left: 15px;" type="submit" class="btn btn-primary" name="submit">Sửa</button>

{{ csrf_field() }}
</form>
