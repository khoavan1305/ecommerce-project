<section style="height:100%!important">
    <div
        style="
            width: 70%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
            min-width: 992px 
            padding-top: 3rem 
        ">
        <div
            style="
                display: -ms-flexbox;
                display: flex;
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
                margin-right: -15px;
                margin-left: -15px;
                display: -ms-flexbox 
                display: flex 
                -ms-flex-pack: center 
                justify-content: center 
                -ms-flex-align: center 
                align-items: center 
                height: 100% 
            ">
            <div
                style="
                    -ms-flex: 0 0 83.333333%;
                    flex: 0 0 83.333333%;
                    max-width: 83.333333%;
                    -ms-flex: 0 0 66.666667%;
                    flex: 0 0 66.666667%;
                    max-width: 66.666667%;
                ">
                <div
                    style="
                        position: relative;
                        display: -ms-flexbox;
                        display: flex;
                        -ms-flex-direction: column;
                        flex-direction: column;
                        min-width: 0;
                        word-wrap: break-word;
                        background-color: #fff;
                        background-clip: border-box;
                        border: 1px solid rgba(0, 0, 0, 0.125);
                        border-radius: 0.25rem;
                        border-radius: 10px;
                    ">
                    <div
                        style="
                            padding: 0.75rem 1.25rem;
                            margin-bottom: 0;
                            background-color: rgba(0, 0, 0, 0.03);
                            border-bottom: 1px solid rgba(0, 0, 0, 0.125);
                            padding-right: 1.5rem 
                            padding-top: 3rem 
                        ">
                        <h5>
                            Cảm ơn bạn đã đặt hàng,
                            <span style="color: #a8729a">{{ $order->last_name }}</span>!
                        </h5>
                    </div>
                    <div
                        style="
                        padding:1.5rem!important;
                        flex:1 1 auto;padding:var(--bs-card-spacer-y) var(--bs-card-spacer-x);color:var(--bs-card-color)
                    ">
                        <div
                            style="
                                display:flex!important;
                                justify-content:space-between!important;
                                align-items:center!important;
                                margin-bottom:1.5rem!important;
                            ">
                            <div style="-ms-flex:1 1 auto;flex:1 1 auto;padding:1.25rem">
                                @php
                                    $total = 0;
                                    
                                @endphp
                                @foreach ($orderdetaill as $ordetaill)
                                    <div
                                        style="
                                        display: -ms-flexbox;
                                        display: flex;
                                        -ms-flex-wrap: wrap;
                                        flex-wrap: wrap;
                                        margin-right: -15px;
                                        margin-left: -15px;
                                    ">
                                        <div
                                            style="
                                            -ms-flex: 0 0 16.666667%;
                                            flex: 0 0 16.666667%;
                                            max-width: 16.666667%;
                                        ">
                                            <img src=""
                                                style="
                                                max-width: 100%;
                                                height: auto;
                                            " />
                                        </div>
                                        <div
                                            style="
                                            -ms-flex: 0 0 16.666667%;
                                            flex: 0 0 16.666667%;
                                            -ms-flex-pack: center 
                                            justify-content: center 
                                            max-width: 16.666667%;
                                            text-align: center 
                                            display: -ms-flexbox 
                                            display: flex 
                                            -ms-flex-align: center 
                                            align-items: center 
                                        ">
                                            <p>{{ $ordetaill['name'] }}</p>
                                        </div>
                                        <div
                                            style="
                                            -ms-flex: 0 0 16.666667%;
                                            flex: 0 0 16.666667%;
                                            -ms-flex-pack: center 
                                            justify-content: center 
                                            max-width: 16.666667%;
                                            text-align: center 
                                            display: -ms-flexbox 
                                            display: flex 
                                            -ms-flex-align: center 
                                            align-items: center 
                                        ">
                                            <p>{{ $ordetaill['color'] }}</p>
                                        </div>
                                        <div
                                            style="
                                            -ms-flex: 0 0 16.666667%;
                                            flex: 0 0 16.666667%;
                                            -ms-flex-pack: center 
                                            justify-content: center 
                                            max-width: 16.666667%;
                                            text-align: center 
                                            display: -ms-flexbox 
                                            display: flex 
                                            -ms-flex-align: center 
                                            align-items: center 
                                        ">
                                            <p>{{ $ordetaill['size'] }}</p>
                                        </div>
                                        <div
                                            style="
                                            -ms-flex: 0 0 16.666667%;
                                            flex: 0 0 16.666667%;
                                            -ms-flex-pack: center 
                                            justify-content: center 
                                            max-width: 16.666667%;
                                            text-align: center 
                                            display: -ms-flexbox 
                                            display: flex 
                                            -ms-flex-align: center 
                                            align-items: center 
                                        ">
                                            <p>{{ $ordetaill['quantity'] }}</p>
                                        </div>
                                        <div
                                            style="
                                            -ms-flex: 0 0 16.666667%;
                                            flex: 0 0 16.666667%;
                                            -ms-flex-pack: center 
                                            justify-content: center 
                                            max-width: 16.666667%;
                                            text-align: center 
                                            display: -ms-flexbox 
                                            display: flex 
                                            -ms-flex-align: center 
                                            align-items: center 
                                        ">
                                            <p>{{ $ordetaill['price'] }}</p>
                                        </div>
                                    </div>
                                    @php
                                        $total += $ordetaill['price'];
                                        
                                    @endphp
                                @endforeach
                                <hr
                                    style="
                                        background-color: #e0e0e0;
                                        opacity: 1;
                                    " />
                            </div>
                        </div>
                        <div>
                            <p>Hóa Đơn Chi Tiết</p>
                            <p><span>Tổng thanh toán</span> @php
                                echo $total;
                                
                            @endphp</p>
                        </div>

                        <div>
                            <p>Mã hóa đơn: {{ $order->id }}</p>
                        </div>

                        <div>
                            <p>Ngày tạo hóa đơn : {{ $order->created_at }}</p>
                        </div>
                    </div>
                    <div
                        style="
                            padding: 0.75rem 1.25rem;
                            background-color: rgba(0, 0, 0, 0.03);
                            border-top: 1px solid rgba(0, 0, 0, 0.125);
                            background-color: #a8729a;
                            border-bottom-left-radius: 10px;
                            border-bottom-right-radius: 10px;
                        ">
                        <h5
                            style="
                                -ms-flex: 0 0 16.666667%;
                                flex: 0 0 16.666667%;
                                -ms-flex-pack: center 
                                justify-content: center 
                                display: -ms-flexbox 
                                display: flex 
                                -ms-flex-align: center 
                                align-items: center 
                                color: #fff 
                            ">
                            Tổng: <span>@php
                                echo $total;
                                
                            @endphp</span>
                        </h5>
                    </div>
                </div>
                <a href="{{ route('check.order', ['order' => $order->id, 'token' => $order->token]) }}">Xác nhận đơn
                    hàng</a>
            </div>
        </div>
    </div>
</section>
