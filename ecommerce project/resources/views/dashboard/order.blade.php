@extends('dashboard.layouts.master')
@section('title', 'Order')
@section('body')

    <!-- Orders -->
    <div class="orders container">
        <div class="row">
            <div class="">
                <div class="card">
                    <div class="card-body">
                        <h4 class="btn btn-warning">Orders </h4>
                    </div>
                    <div class="card-body--">
                        <div class="table-stats order-table ov-h">
                            <table class="table ">
                                <thead>
                                    <tr>
                                        <th class="serial">#</th>
                                        <th>ID</th>
                                        <th>Họ tên</th>
                                        <th>Email</th>
                                        <th>SĐT</th>
                                        <th>Địa chỉ 1</th>
                                        <th>Địa chỉ 2</th>
                                        <th>Ghi chú</th>
                                        <th>Ngày tạo đơn hàng</th>
                                        <th>PTTT</th>
                                        <th>Trạng Thái</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $i = 1;
                                    @endphp
                                    @foreach ($Orders as $Order)
                                        <tr>
                                            <td class="serial">@php
                                                echo $i++;
                                            @endphp.</td>

                                            <td> #{{ $Order->id }} </td>
                                            <td> #{{ $Order->first_name . ' ' . $Order->last_name }} </td>
                                            <td> <span> {{ $Order->email }}</span> </td>
                                            <td> <span>{{ $Order->phone }}</span> </td>
                                            <td> <span>{{ $Order->address1 }}</span> </td>
                                            <td> <span>{{ $Order->address2 }}</span> </td>
                                            <td> <span>{{ $Order->note }}</span></td>
                                            <td> <span>{{ $Order->created_at }}</span></td>
                                            <td> <span>{{ $Order->pttt }}</span></td>
                                            <td>
                                                @if ($Order->status == 1)
                                                    <span class="badge badge-complete">Đã xác nhận</span>
                                                @else
                                                    <span class="badge badge-danger">Chưa xác nhận</span>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div> <!-- /.table-stats -->
                    </div>
                </div> <!-- /.card -->
            </div> <!-- /.col-lg-8 -->
            <div class="float-right">
                {{ $Orders->appends(request()->all())->links() }}

            </div>

        </div>
    </div>


@endsection
