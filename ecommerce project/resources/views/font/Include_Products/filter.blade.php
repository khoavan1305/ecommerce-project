<div class="flex-w flex-c-m m-tb-10">
    <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
        <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
        <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
        Bộ lọc
    </div>

    <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
        <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
        <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
        Tìm Kiếm
    </div>
</div>

<!-- Search product -->
<div class="dis-none panel-search w-full p-t-10 p-b-15">
    <form action="" method="GET">
        <div class="bor8 dis-flex p-l-15">
            <button type="submit" class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                <i class="zmdi zmdi-search"></i>
            </button>

            <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="key" placeholder="Search">
        </div>
    </form>
</div>

<!-- Filter -->
<div class="dis-none panel-filter w-full p-t-10 ">
    <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm ">
        <div class="filter-col1 p-r-15 p-b-27 container">
            <div class="mtext-102 cl2 p-b-15">
                Sort By
            </div>

            <ul>
                <li class="p-b-6">
                    <a href="{{ url('/product?keyss=asc') }}" class="filter-link stext-106 trans-04">
                        Mặc định
                    </a>
                </li>

                <li class="p-b-6">
                    <a href="{{ url('/product?featured=1') }}" class="filter-link stext-106 trans-04">
                        Phổ biến
                    </a>
                </li>


                <li class="p-b-6">
                    <a href="{{ url('/product?keyss=desc') }}" class="filter-link stext-106 trans-04 ">
                        mới
                    </a>
                </li>

                <li class="p-b-6">
                    <a href="{{ url('/product?lowtohight=asc') }}" class="filter-link stext-106 trans-04">
                        Giá: Thấp đến Cao
                    </a>
                </li>

                <li class="p-b-6">
                    <a href="{{ url('/product?lowtohight=desc') }}" class="filter-link stext-106 trans-04">
                        Giá từ cao đến thấp
                    </a>
                </li>
            </ul>
        </div>

        <div class="filter-col2 p-r-15 p-b-27">
            <div class="mtext-102 cl2 p-b-15">
                Giá
            </div>

            <ul>
                <li class="p-b-6">
                    <a href="{{ url('/product') }}" class="filter-link stext-106 trans-04 ">
                        Tất Cả
                    </a>
                </li>
                <li class="p-b-6">
                    <a href="{{ url('/product?price1=50') }}" class="filter-link stext-106 trans-04">
                        $0.00 - $50.00
                    </a>
                </li>

                <li class="p-b-6">
                    <a href="{{ url('/product?price2=100') }}" class="filter-link stext-106 trans-04">
                        $50.00 - $100.00
                    </a>
                </li>

                <li class="p-b-6">
                    <a href="{{ url('/product?price3=150') }}" class="filter-link stext-106 trans-04">
                        $100.00 - $150.00
                    </a>
                </li>

                <li class="p-b-6">
                    <a href="{{ url('/product?price4=200') }}" class="filter-link stext-106 trans-04">
                        $150.00 - $200.00
                    </a>
                </li>

                <li class="p-b-6">
                    <a href="{{ url('/product?price5=1000') }}" class="filter-link stext-106 trans-04">
                        $200.00+
                    </a>
                </li>
            </ul>
        </div>

        <div class="filter-col3 p-r-15 p-b-27">
            <div class="mtext-102 cl2 p-b-15">
                Màu sắc
            </div>

            <ul>
                <li class="p-b-6">
                    <span class="fs-15 lh-12 m-r-6" style="color: #222;">
                        <i class="zmdi zmdi-circle"></i>
                    </span>

                    <a href="#" class="filter-link stext-106 trans-04">
                        Black
                    </a>
                </li>

                <li class="p-b-6">
                    <span class="fs-15 lh-12 m-r-6" style="color: #4272d7;">
                        <i class="zmdi zmdi-circle"></i>
                    </span>

                    <a href="#" class="filter-link stext-106 trans-04 ">
                        Blue
                    </a>
                </li>

                <li class="p-b-6">
                    <span class="fs-15 lh-12 m-r-6" style="color: #b3b3b3;">
                        <i class="zmdi zmdi-circle"></i>
                    </span>

                    <a href="#" class="filter-link stext-106 trans-04">
                        Grey
                    </a>
                </li>

                <li class="p-b-6">
                    <span class="fs-15 lh-12 m-r-6" style="color: #00ad5f;">
                        <i class="zmdi zmdi-circle"></i>
                    </span>

                    <a href="#" class="filter-link stext-106 trans-04">
                        Green
                    </a>
                </li>

                <li class="p-b-6">
                    <span class="fs-15 lh-12 m-r-6" style="color: #fa4251;">
                        <i class="zmdi zmdi-circle"></i>
                    </span>

                    <a href="#" class="filter-link stext-106 trans-04">
                        Red
                    </a>
                </li>

                <li class="p-b-6">
                    <span class="fs-15 lh-12 m-r-6" style="color: #aaa;">
                        <i class="zmdi zmdi-circle-o"></i>
                    </span>

                    <a href="#" class="filter-link stext-106 trans-04">
                        White
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>
