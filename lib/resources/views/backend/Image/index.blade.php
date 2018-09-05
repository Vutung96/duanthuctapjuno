@extends('backend.master')
@section('title','Thư viện ảnh')
@section('main')

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
    <div class="row">
        <ol class="breadcrumb">
            <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Thư viện ảnh</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thư viện ảnh</h1>
        </div>
    </div><!--/.row-->


    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">

                <div class="panel-body" style="position: relative;">
                    <h5 rel="uploadanh" class="btn btn-success style="margin: 10px 0 20px 0; position: absolute;">Thêm ảnh</h5>            
                    <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">

                        <thead>
                            <tr>						        
                                <th data-sortable="true">ID</th>
                                <th data-sortable="true">Tên ảnh</th>
                                <th data-sortable="true">Định dạng</th>
                                <th data-sortable="true">Hình ảnh</th>
                                <th data-sortable="true">Tùy chọn</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($image as $img)
                            <tr>
                                <td data-checkbox="true">{{ $img->img_id }}</td>
                                <td data-checkbox="true">{{ $img->img_name }}</td>				
                                <td data-checkbox="true">{{ $img->img_type }}</td> 
                                <td data-checkbox="true">
                                    <img width="80px" class="thumbnail" src="{{ asset('/storage/avatar/'.$img->img_name) }}" />
                                </td> 
                                <td>
                                    <a target="_blank" class="btn btn-warning" href="{{ asset('/storage/avatar/'.$img->img_name) }}"><i class="fa fa-search"></i></a>
                                </td>
                            @endforeach
                            </tr>
                        </tbody>
                    </table>
                    {{ $image->links() }}
                </div>
            </div>
        </div>
    </div><!--/.row-->	
</div><!--/.main-->
<div id="myModal" class="modal">
    
</div> 
@stop
@section('footer')
<script>
    $(document).ready(function(){
        $('[rel="uploadanh"]').click(function(e){
        
        e.preventDefault();

        $.ajax({
          url: '{{ route('form-upload') }}',

        }).done(function(data){
          $('#myModal').modal().html(data);
          
          console.log(data);

        });

      });

    });        
</script>
@stop
