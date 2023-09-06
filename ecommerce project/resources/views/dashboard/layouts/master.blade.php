@if (Auth::check())
    @if (Auth::user()->level == 0)
        <!doctype html>
        <!--[if gt IE 8]><!-->
        <html class="no-js" lang="">
        <!--<![endif]-->
        <?php
        $menus = Config('menu');
        ?>

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>@yield('title') | DASHBOARH</title>
            <meta name="description" content="Ela Admin - HTML5 Admin Template">
            <meta name="viewport" content="width=device-width, initial-scale=1">


            <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
            <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet"
                href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
            <link rel="stylesheet"
                href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
            <link rel="stylesheet"
                href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
            <link rel="stylesheet" href="{{ asset('dashboard/assets/css/cs-skin-elastic.css') }}">
            <link rel="stylesheet" href="{{ asset('dashboard/assets/css/style.css') }}">
            <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
            <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
            <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">
            @yield('css')
            <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
            <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

            <style>
                #weatherWidget .currentDesc {
                    color: #ffffff !important;
                }

                .traffic-chart {
                    min-height: 335px;
                }

                #flotPie1 {
                    height: 150px;
                }

                #flotPie1 td {
                    padding: 3px;
                }

                #flotPie1 table {
                    top: 20px !important;
                    right: -10px !important;
                }

                .chart-container {
                    display: table;
                    min-width: 270px;
                    text-align: left;
                    padding-top: 10px;
                    padding-bottom: 10px;
                }

                #flotLine5 {
                    height: 105px;
                }

                #flotBarChart {
                    height: 150px;
                }

                #cellPaiChart {
                    height: 160px;
                }
            </style>
        </head>

        <body>
            <!-- Left Panel -->
            <aside id="left-panel" class="left-panel">
                <nav class="navbar navbar-expand-sm navbar-default">
                    <div id="main-menu" class="main-menu collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="{{ route('admin.dashboard') }}"> <i class="fa fa-home"></i> Dashboard
                                </a>
                            </li>
                            <li class="menu-title"> <i class="fa fa-gears "></i> Quản lý dữ liệu
                            </li><!-- /.menu-title -->
                            @foreach ($menus as $m)
                                <li class="menu-item-has-children dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false"> <i
                                            class="menu-icon fa {{ $m['icon'] }}"></i>{{ $m['label'] }}</a>

                                    <ul class="sub-menu children dropdown-menu">
                                        @foreach ($m['item'] as $mit)
                                            <li><i class="fa fa-circle"></i><a
                                                    href="{{ route($mit['route']) }}">{{ $mit['label'] }}
                                                </a>
                                            </li>
                                        @endforeach
                                        {{-- <li><i class="fa fa-table"></i><a href="{{ route('product.index') }}">Products
                                                Table</a></li>
                                        <li><i class="fa fa-table"></i><a href="{{ route('comment.index') }}">Comment
                                                Table</a>
                                        <li><i class="fa fa-table"></i><a href="{{ route('blog.index') }}">Blogs
                                                Table</a></li>
                                        <li><i class="fa fa-table"></i><a href="{{ route('brand.index') }}">Brands
                                                Table</a>
                                        </li> --}}
                                    </ul>


                                </li>
                            @endforeach

                        </ul>
                    </div><!-- /.navbar-collapse -->
                </nav>
            </aside>
            <!-- /#left-panel -->
            <!-- Right Panel -->
            <div id="right-panel" class="right-panel">
                <!-- Header-->
                <header id="header" class="header">
                    <div class="top-left">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="{{ route('index') }}"><img
                                    src="{{ asset('fonts/images/icons/logo-01.png') }}" alt="Logo"></a>
                            <a class="navbar-brand hidden" href="./"><img
                                    src="{{ asset('fonts/images/icons/logo-01.png') }}" alt="Logo"></a>
                            <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                        </div>
                    </div>
                    <div class="top-right">
                        <div class="header-menu">
                            <div class="user-area dropdown float-right">
                                <a href="#" class="dropdown-toggle active" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <img class="user-avatar rounded-circle"
                                        src="{{ asset('dashboard/images/admin.jpg') }}" alt="User Avatar">
                                </a>

                                <div class="user-menu dropdown-menu">
                                    <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                                    <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications
                                        <span class="count">13</span></a>

                                    <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                                    <a class="nav-link" href="{{ route('logout') }}"><i
                                            class="fa fa-power -off"></i>Logout</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </header>
                <!-- /#header -->
                <!-- Content -->
                @yield('body')
                <!-- /.content -->
                <div class="clearfix"></div>
                <!-- Footer -->
                <footer class="site-footer">
                    <div class="footer-inner bg-white">
                        <div class="row">
                            <div class="col-sm-6">
                                Copyright &copy; 2023 COZA STORE
                            </div>
                            <div class="col-sm-6 text-right">
                                Designed by PS20220
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- /.site-footer -->
            </div>
            <!-- /#right-panel -->
            <!-- Scripts -->
            <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
            <script src="{{ asset('dashboard/assets/js/main.js') }}"></script>

            <!--  Chart js -->
            <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

            <!--Chartist Chart-->
            <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

            <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

            <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
            <script src="{{ asset('dashboard/assets/js/init/weather-init.js') }}"></script>

            <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
            <script src="{{ asset('dashboard/assets/js/init/fullcalendar-init.js') }}"></script>

            <!--Local Stuff-->
            @yield('js')

            <script>
                jQuery(document).ready(function($) {
                    "use strict";

                    // Pie chart flotPie1
                    var piedata = [{
                            label: "Desktop visits",
                            data: [
                                [1, 32]
                            ],
                            color: '#5c6bc0'
                        },
                        {
                            label: "Tab visits",
                            data: [
                                [1, 33]
                            ],
                            color: '#ef5350'
                        },
                        {
                            label: "Mobile visits",
                            data: [
                                [1, 35]
                            ],
                            color: '#66bb6a'
                        }
                    ];

                    $.plot('#flotPie1', piedata, {
                        series: {
                            pie: {
                                show: true,
                                radius: 1,
                                innerRadius: 0.65,
                                label: {
                                    show: true,
                                    radius: 2 / 3,
                                    threshold: 1
                                },
                                stroke: {
                                    width: 0
                                }
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true
                        }
                    });
                    // Pie chart flotPie1  End
                    // cellPaiChart
                    var cellPaiChart = [{
                            label: "Direct Sell",
                            data: [
                                [1, 65]
                            ],
                            color: '#5b83de'
                        },
                        {
                            label: "Channel Sell",
                            data: [
                                [1, 35]
                            ],
                            color: '#00bfa5'
                        }
                    ];
                    $.plot('#cellPaiChart', cellPaiChart, {
                        series: {
                            pie: {
                                show: true,
                                stroke: {
                                    width: 0
                                }
                            }
                        },
                        legend: {
                            show: false
                        },
                        grid: {
                            hoverable: true,
                            clickable: true
                        }

                    });
                    // cellPaiChart End
                    // Line Chart  #flotLine5
                    var newCust = [
                        [0, 3],
                        [1, 5],
                        [2, 4],
                        [3, 7],
                        [4, 9],
                        [5, 3],
                        [6, 6],
                        [7, 4],
                        [8, 10]
                    ];

                    var plot = $.plot($('#flotLine5'), [{
                        data: newCust,
                        label: 'New Data Flow',
                        color: '#fff'
                    }], {
                        series: {
                            lines: {
                                show: true,
                                lineColor: '#fff',
                                lineWidth: 2
                            },
                            points: {
                                show: true,
                                fill: true,
                                fillColor: "#ffffff",
                                symbol: "circle",
                                radius: 3
                            },
                            shadowSize: 0
                        },
                        points: {
                            show: true,
                        },
                        legend: {
                            show: false
                        },
                        grid: {
                            show: false
                        }
                    });
                    // Line Chart  #flotLine5 End
                    // Traffic Chart using chartist
                    if ($('#traffic-chart').length) {
                        var chart = new Chartist.Line('#traffic-chart', {
                            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                            series: [
                                [0, 18000, 35000, 25000, 22000, 0],
                                [0, 33000, 15000, 20000, 15000, 300],
                                [0, 15000, 28000, 15000, 30000, 5000]
                            ]
                        }, {
                            low: 0,
                            showArea: true,
                            showLine: false,
                            showPoint: false,
                            fullWidth: true,
                            axisX: {
                                showGrid: true
                            }
                        });

                        chart.on('draw', function(data) {
                            if (data.type === 'line' || data.type === 'area') {
                                data.element.animate({
                                    d: {
                                        begin: 2000 * data.index,
                                        dur: 2000,
                                        from: data.path.clone().scale(1, 0).translate(0, data.chartRect
                                            .height()).stringify(),
                                        to: data.path.clone().stringify(),
                                        easing: Chartist.Svg.Easing.easeOutQuint
                                    }
                                });
                            }
                        });
                    }
                    // Traffic Chart using chartist End
                    //Traffic chart chart-js
                    if ($('#TrafficChart').length) {
                        var ctx = document.getElementById("TrafficChart");
                        ctx.height = 150;
                        var myChart = new Chart(ctx, {
                            type: 'line',
                            data: {
                                labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"],
                                datasets: [{
                                        label: "Visit",
                                        borderColor: "rgba(4, 73, 203,.09)",
                                        borderWidth: "1",
                                        backgroundColor: "rgba(4, 73, 203,.5)",
                                        data: [0, 2900, 5000, 3300, 6000, 3250, 0]
                                    },
                                    {
                                        label: "Bounce",
                                        borderColor: "rgba(245, 23, 66, 0.9)",
                                        borderWidth: "1",
                                        backgroundColor: "rgba(245, 23, 66,.5)",
                                        pointHighlightStroke: "rgba(245, 23, 66,.5)",
                                        data: [0, 4200, 4500, 1600, 4200, 1500, 4000]
                                    },
                                    {
                                        label: "Targeted",
                                        borderColor: "rgba(40, 169, 46, 0.9)",
                                        borderWidth: "1",
                                        backgroundColor: "rgba(40, 169, 46, .5)",
                                        pointHighlightStroke: "rgba(40, 169, 46,.5)",
                                        data: [1000, 5200, 3600, 2600, 4200, 5300, 0]
                                    }
                                ]
                            },
                            options: {
                                responsive: true,
                                tooltips: {
                                    mode: 'index',
                                    intersect: false
                                },
                                hover: {
                                    mode: 'nearest',
                                    intersect: true
                                }

                            }
                        });
                    }
                    //Traffic chart chart-js  End
                    // Bar Chart #flotBarChart
                    $.plot("#flotBarChart", [{
                        data: [
                            [0, 18],
                            [2, 8],
                            [4, 5],
                            [6, 13],
                            [8, 5],
                            [10, 7],
                            [12, 4],
                            [14, 6],
                            [16, 15],
                            [18, 9],
                            [20, 17],
                            [22, 7],
                            [24, 4],
                            [26, 9],
                            [28, 11]
                        ],
                        bars: {
                            show: true,
                            lineWidth: 0,
                            fillColor: '#ffffff8a'
                        }
                    }], {
                        grid: {
                            show: false
                        }
                    });
                    // Bar Chart #flotBarChart End
                });
            </script>
        </body>

        </html>
    @else
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <title>Not Found</title>

            <style>
                /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */
                html {
                    line-height: 1.15;
                    -webkit-text-size-adjust: 100%
                }

                body {
                    margin: 0
                }

                a {
                    background-color: transparent
                }

                code {
                    font-family: monospace, monospace;
                    font-size: 1em
                }

                [hidden] {
                    display: none
                }

                html {
                    font-family: system-ui, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;
                    line-height: 1.5
                }

                *,
                :after,
                :before {
                    box-sizing: border-box;
                    border: 0 solid #e2e8f0
                }

                a {
                    color: inherit;
                    text-decoration: inherit
                }

                code {
                    font-family: Menlo, Monaco, Consolas, Liberation Mono, Courier New, monospace
                }

                svg,
                video {
                    display: block;
                    vertical-align: middle
                }

                video {
                    max-width: 100%;
                    height: auto
                }

                .bg-white {
                    --bg-opacity: 1;
                    background-color: #fff;
                    background-color: rgba(255, 255, 255, var(--bg-opacity))
                }

                .bg-gray-100 {
                    --bg-opacity: 1;
                    background-color: #f7fafc;
                    background-color: rgba(247, 250, 252, var(--bg-opacity))
                }

                .border-gray-200 {
                    --border-opacity: 1;
                    border-color: #edf2f7;
                    border-color: rgba(237, 242, 247, var(--border-opacity))
                }

                .border-gray-400 {
                    --border-opacity: 1;
                    border-color: #cbd5e0;
                    border-color: rgba(203, 213, 224, var(--border-opacity))
                }

                .border-t {
                    border-top-width: 1px
                }

                .border-r {
                    border-right-width: 1px
                }

                .flex {
                    display: flex
                }

                .grid {
                    display: grid
                }

                .hidden {
                    display: none
                }

                .items-center {
                    align-items: center
                }

                .justify-center {
                    justify-content: center
                }

                .font-semibold {
                    font-weight: 600
                }

                .h-5 {
                    height: 1.25rem
                }

                .h-8 {
                    height: 2rem
                }

                .h-16 {
                    height: 4rem
                }

                .text-sm {
                    font-size: .875rem
                }

                .text-lg {
                    font-size: 1.125rem
                }

                .leading-7 {
                    line-height: 1.75rem
                }

                .mx-auto {
                    margin-left: auto;
                    margin-right: auto
                }

                .ml-1 {
                    margin-left: .25rem
                }

                .mt-2 {
                    margin-top: .5rem
                }

                .mr-2 {
                    margin-right: .5rem
                }

                .ml-2 {
                    margin-left: .5rem
                }

                .mt-4 {
                    margin-top: 1rem
                }

                .ml-4 {
                    margin-left: 1rem
                }

                .mt-8 {
                    margin-top: 2rem
                }

                .ml-12 {
                    margin-left: 3rem
                }

                .-mt-px {
                    margin-top: -1px
                }

                .max-w-xl {
                    max-width: 36rem
                }

                .max-w-6xl {
                    max-width: 72rem
                }

                .min-h-screen {
                    min-height: 100vh
                }

                .overflow-hidden {
                    overflow: hidden
                }

                .p-6 {
                    padding: 1.5rem
                }

                .py-4 {
                    padding-top: 1rem;
                    padding-bottom: 1rem
                }

                .px-4 {
                    padding-left: 1rem;
                    padding-right: 1rem
                }

                .px-6 {
                    padding-left: 1.5rem;
                    padding-right: 1.5rem
                }

                .pt-8 {
                    padding-top: 2rem
                }

                .fixed {
                    position: fixed
                }

                .relative {
                    position: relative
                }

                .top-0 {
                    top: 0
                }

                .right-0 {
                    right: 0
                }

                .shadow {
                    box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06)
                }

                .text-center {
                    text-align: center
                }

                .text-gray-200 {
                    --text-opacity: 1;
                    color: #edf2f7;
                    color: rgba(237, 242, 247, var(--text-opacity))
                }

                .text-gray-300 {
                    --text-opacity: 1;
                    color: #e2e8f0;
                    color: rgba(226, 232, 240, var(--text-opacity))
                }

                .text-gray-400 {
                    --text-opacity: 1;
                    color: #cbd5e0;
                    color: rgba(203, 213, 224, var(--text-opacity))
                }

                .text-gray-500 {
                    --text-opacity: 1;
                    color: #a0aec0;
                    color: rgba(160, 174, 192, var(--text-opacity))
                }

                .text-gray-600 {
                    --text-opacity: 1;
                    color: #718096;
                    color: rgba(113, 128, 150, var(--text-opacity))
                }

                .text-gray-700 {
                    --text-opacity: 1;
                    color: #4a5568;
                    color: rgba(74, 85, 104, var(--text-opacity))
                }

                .text-gray-900 {
                    --text-opacity: 1;
                    color: #1a202c;
                    color: rgba(26, 32, 44, var(--text-opacity))
                }

                .uppercase {
                    text-transform: uppercase
                }

                .underline {
                    text-decoration: underline
                }

                .antialiased {
                    -webkit-font-smoothing: antialiased;
                    -moz-osx-font-smoothing: grayscale
                }

                .tracking-wider {
                    letter-spacing: .05em
                }

                .w-5 {
                    width: 1.25rem
                }

                .w-8 {
                    width: 2rem
                }

                .w-auto {
                    width: auto
                }

                .grid-cols-1 {
                    grid-template-columns: repeat(1, minmax(0, 1fr))
                }

                @-webkit-keyframes spin {
                    0% {
                        transform: rotate(0deg)
                    }

                    to {
                        transform: rotate(1turn)
                    }
                }

                @keyframes spin {
                    0% {
                        transform: rotate(0deg)
                    }

                    to {
                        transform: rotate(1turn)
                    }
                }

                @-webkit-keyframes ping {
                    0% {
                        transform: scale(1);
                        opacity: 1
                    }

                    75%,
                    to {
                        transform: scale(2);
                        opacity: 0
                    }
                }

                @keyframes ping {
                    0% {
                        transform: scale(1);
                        opacity: 1
                    }

                    75%,
                    to {
                        transform: scale(2);
                        opacity: 0
                    }
                }

                @-webkit-keyframes pulse {

                    0%,
                    to {
                        opacity: 1
                    }

                    50% {
                        opacity: .5
                    }
                }

                @keyframes pulse {

                    0%,
                    to {
                        opacity: 1
                    }

                    50% {
                        opacity: .5
                    }
                }

                @-webkit-keyframes bounce {

                    0%,
                    to {
                        transform: translateY(-25%);
                        -webkit-animation-timing-function: cubic-bezier(.8, 0, 1, 1);
                        animation-timing-function: cubic-bezier(.8, 0, 1, 1)
                    }

                    50% {
                        transform: translateY(0);
                        -webkit-animation-timing-function: cubic-bezier(0, 0, .2, 1);
                        animation-timing-function: cubic-bezier(0, 0, .2, 1)
                    }
                }

                @keyframes bounce {

                    0%,
                    to {
                        transform: translateY(-25%);
                        -webkit-animation-timing-function: cubic-bezier(.8, 0, 1, 1);
                        animation-timing-function: cubic-bezier(.8, 0, 1, 1)
                    }

                    50% {
                        transform: translateY(0);
                        -webkit-animation-timing-function: cubic-bezier(0, 0, .2, 1);
                        animation-timing-function: cubic-bezier(0, 0, .2, 1)
                    }
                }

                @media (min-width:640px) {
                    .sm\:rounded-lg {
                        border-radius: .5rem
                    }

                    .sm\:block {
                        display: block
                    }

                    .sm\:items-center {
                        align-items: center
                    }

                    .sm\:justify-start {
                        justify-content: flex-start
                    }

                    .sm\:justify-between {
                        justify-content: space-between
                    }

                    .sm\:h-20 {
                        height: 5rem
                    }

                    .sm\:ml-0 {
                        margin-left: 0
                    }

                    .sm\:px-6 {
                        padding-left: 1.5rem;
                        padding-right: 1.5rem
                    }

                    .sm\:pt-0 {
                        padding-top: 0
                    }

                    .sm\:text-left {
                        text-align: left
                    }

                    .sm\:text-right {
                        text-align: right
                    }
                }

                @media (min-width:768px) {
                    .md\:border-t-0 {
                        border-top-width: 0
                    }

                    .md\:border-l {
                        border-left-width: 1px
                    }

                    .md\:grid-cols-2 {
                        grid-template-columns: repeat(2, minmax(0, 1fr))
                    }
                }

                @media (min-width:1024px) {
                    .lg\:px-8 {
                        padding-left: 2rem;
                        padding-right: 2rem
                    }
                }

                @media (prefers-color-scheme:dark) {
                    .dark\:bg-gray-800 {
                        --bg-opacity: 1;
                        background-color: #2d3748;
                        background-color: rgba(45, 55, 72, var(--bg-opacity))
                    }

                    .dark\:bg-gray-900 {
                        --bg-opacity: 1;
                        background-color: #1a202c;
                        background-color: rgba(26, 32, 44, var(--bg-opacity))
                    }

                    .dark\:border-gray-700 {
                        --border-opacity: 1;
                        border-color: #4a5568;
                        border-color: rgba(74, 85, 104, var(--border-opacity))
                    }

                    .dark\:text-white {
                        --text-opacity: 1;
                        color: #fff;
                        color: rgba(255, 255, 255, var(--text-opacity))
                    }

                    .dark\:text-gray-400 {
                        --text-opacity: 1;
                        color: #cbd5e0;
                        color: rgba(203, 213, 224, var(--text-opacity))
                    }
                }
            </style>

            <style>
                body {
                    font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
                }
            </style>
        </head>

        <body class="antialiased">
            <div
                class="relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center sm:pt-0">
                <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
                    <div class="flex items-center pt-8 sm:justify-start sm:pt-0">
                        <div class="px-4 text-lg text-gray-500 border-r border-gray-400 tracking-wider">
                            Trang quản trị viên</div>

                        <div class="ml-4 text-lg text-gray-500 uppercase tracking-wider">
                            Cần đăng nhập tài khoản quản trị </div>
                    </div>
                </div>
            </div>
        </body>

        </html>
    @endif
@endif
