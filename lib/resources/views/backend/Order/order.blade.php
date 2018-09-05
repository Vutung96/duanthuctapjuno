<script>
     function xoaDonHang(){
        var conf=confirm("Bạn có chắc chắn muốn xóa đơn hàng này hay không?");
        return conf;
    }
</script>
@extends('backend.master')
@section('main')
@section('title','Quản lý đơn hàng')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">           
    <div class="row">
        <ol class="breadcrumb">
              <li><a style="color: #2f2b33;" href="{{ asset('admin/home') }}"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li>Đơn hàng</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Quản lý đơn hàng</h1>
        </div>
    </div><!--/.row-->


    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">

                <div class="panel-body" style="position: relative;">
                    <a href="{{ asset('admin/order') }}" class="btn btn-primary" style="margin: 10px 0 20px 0; position: absolute;">Danh sách đơn hàng</a>
                    <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                        <thead>
                            <tr>                                
                                <th data-sortable="true">Mã đơn hàng</th>
                                <th data-sortable="true">Họ tên</th>
                                <th data-sortable="true">Email</th>
                                <th data-sortable="true">Số điện thoại</th>
                                <th data-sortable="true">Địa chỉ</th>
                                <th data-sortable="true">Ngày đặt hàng</th>
                                <th data-sortable="true">Tùy chọn</th>
                            </tr>
                        </thead>
                        <tbody>
                    
                            @foreach ($orders as $order)
                                <tr class="@switch($order->oder_status) @case(1) {{ 'bg-info' }}  @break @case(3) {{ 'bg-danger' }}  @break @case(2) {{ 'bg-success' }} @default {{ 'bg-faded' }} @endswitch">
                                    <td data-checkbox="true">JUNO {{ $order->oder_id }}</td>
                                    <td data-checkbox="true">{{ $order->oder_name }}</td>
                                    <td data-checkbox="true">{{ $order->oder_email }}</td>
                                    <td data-checkbox="true">{{ $order->oder_phone }}</td>
                                    <td data-checkbox="true">{{ $order->oder_address }}</td>
                                    <td data-checkbox="true">{{ $order->created_at}}</td>
                                    <td>
                                        <a style="border: 1px,solid,#000;" href="{{ asset('admin/order/edit/'.$order->oder_id) }}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span></a>
                                        <a style="background-color: " onclick="return xoaDonHang();" href="{{ asset('admin/order/delete/'.$order->oder_id) }}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                  {{--   {{ $order->links() }} --}}
                </div>
                </div>
            </div>
        </div>
    </div><!--/.row-->  



</div><!--/.main-->
@stop