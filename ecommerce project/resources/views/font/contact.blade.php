@extends('font.layouts.master')
@section('title', 'Product')
@section('body')
    <!-- Title page -->
    <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('fonts/images/bg-01.jpg');">
        <h2 class="ltext-105 cl0 txt-center">
            Liên Hệ
        </h2>
    </section>


    <!-- Content page -->
    <section class="bg0 p-t-104 p-b-116">
        <div class="container">
            <div class="flex-w flex-tr">
                <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                    <form>
                        <h4 class="mtext-105 cl2 txt-center p-b-30">
                            Gửi Phản Hồi Của Bạn
                        </h4>

                        <div class="bor8 m-b-20 how-pos4-parent">
                            <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="email"
                                placeholder="Địa chỉ E-Mail">
                            <img class="how-pos4 pointer-none" src="fonts/images/icons/icon-email.png" alt="ICON">
                        </div>

                        <div class="bor8 m-b-30">
                            <textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg" placeholder="Bạn cần giúp gì?"></textarea>
                        </div>

                        <button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                            Gửi phản hồi
                        </button>
                    </form>
                </div>

                <div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
                    <div class="flex-w w-full p-b-42">
                        <span class="fs-18 cl5 txt-center size-211">
                            <span class="lnr lnr-map-marker"></span>
                        </span>

                        <div class="size-212 p-t-2">
                            <span class="mtext-110 cl2">
                                Địa chỉ
                            </span>

                            <p class="stext-115 cl6 size-213 p-t-18">
                                Tầng 3-QSTC 9,Công Viên Phần Mềm Quang Trung,Quận 12,TP.Hồ Chí Minh
                            </p>
                        </div>
                    </div>

                    <div class="flex-w w-full p-b-42">
                        <span class="fs-18 cl5 txt-center size-211">
                            <span class="lnr lnr-phone-handset"></span>
                        </span>

                        <div class="size-212 p-t-2">
                            <span class="mtext-110 cl2">
                                Liên Hệ
                            </span>

                            <p class="stext-115 cl1 size-213 p-t-18">
                                (+084) 933 418 277 </p>
                        </div>
                    </div>

                    <div class="flex-w w-full">
                        <span class="fs-18 cl5 txt-center size-211">
                            <span class="lnr lnr-envelope"></span>
                        </span>

                        <div class="size-212 p-t-2">
                            <span class="mtext-110 cl2">
                                Hỗ Trợ
                            </span>

                            <p class="stext-115 cl1 size-213 p-t-18">
                                khoavan1305@gmail.com
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="mapouter">
        <div class="gmap_canvas"><iframe width="100%" height="100%" id="gmap_canvas"
                src="https://maps.google.com/maps?q=QTSC 9 Building, Đường Số 3, Tân Chánh Hiệp, Quận 12, Thành phố Hồ Chí Minh&t=&z=10&ie=UTF8&iwloc=&output=embed"
                frameborder="0" scrolling="no" marginheight="" marginwidth="0"></iframe><br>
            <style>
                .mapouter {
                    position: relative;
                    text-align: right;
                    height: 100%;
                    width: 70%;
                    margin-left: 250px
                }
            </style>
            <style>
                .gmap_canvas {
                    overflow: hidden;
                    background: none !important;
                    height: 100%;
                    width: 100%;


                }
            </style>
        </div>
    </div>
    <br>

    {{-- <iframe
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4440496239267!2d106.62348331171118!3d10.853791489255102!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752a20d8555e69%3A0x743b1e9558fb89e0!2sQTSC%209%20Building!5e0!3m2!1svi!2s!4v1689668977770!5m2!1svi!2s"
        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"></iframe> --}}

@endsection
