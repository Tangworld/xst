<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>MagicCloud</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" href="/views/v3.6admin/images/favicon.ico">

    <link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/views/v3.6admin/admin/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/views/v3.6admin/admin/lib/font-awesome/css/font-awesome.css">

    <script src="/views/v3.6admin/admin/lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    <script src="/views/v3.6admin/admin/lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $(".knob").knob();
        });
    </script>


    <link rel="stylesheet" type="text/css" href="/views/v3.6admin/admin/stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="/views/v3.6admin/admin/stylesheets/premium.css">
    <link rel="stylesheet" href="/views/v3.6admin/admin/css/index.css"/>

</head>
<body class=" theme-blue">

<!-- Demo page code -->

<script type="text/javascript">
    $(function () {
        var match = document.cookie.match(new RegExp('color=([^;]+)'));
        if (match) var color = match[1];
        if (color) {
            $('body').removeClass(function (index, css) {
                return (css.match(/\btheme-\S+/g) || []).join(' ')
            })
            $('body').addClass('theme-' + color);
        }

        $('[data-popover="true"]').popover({html: true});

    });
</script>
<style type="text/css">
    #line-chart {
        height: 300px;
        width: 800px;
        margin: 0px auto;
        margin-top: 1em;
    }

    .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover {
        color: #fff;
    }
</style>

<script type="text/javascript">
    $(function () {
        var uls = $('.sidebar-nav > ul > *').clone();
        uls.addClass('visible-xs');
        $('#main-menu').append(uls.clone());
    });
</script>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Le fav and touch icons -->
<%--<link rel="shortcut icon" href="../assets/ico/favicon.ico">--%>
<%--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">--%>
<%--<link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">--%>
<%--<link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">--%>
<%--<link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">--%>

<!--<![endif]-->
<!--------------------
        header
--------------------->
<div class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="" href="/views/v3.6admin/admin/index.jsp"><span class="navbar-brand"><span class="fa fa-cloud"></span> MagicCloud</span></a>
    </div>

    <div class="navbar-collapse collapse" style="height: 1px;">
        <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li><a id="returnhome" href="javascript:void(0)" onclick="openLogin()">主页</a></li>
            <script>
                $("#returnhome").attr("onclick","window.location.href='/views/v3.6admin/index.jsp'");
            </script>
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small"
                          style="position:relative;top: 3px;"></span> ${user}
                    <i class="fa fa-caret-down"></i>
                </a>

                <ul class="dropdown-menu">
                    <li><a href="./">My Account</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Admin Panel</li>
                    <li><a href="./">Users</a></li>
                    <li><a href="./">Security</a></li>
                    <li><a tabindex="-1" href="./">Payments</a></li>
                    <li class="divider"></li>
                    <li><a tabindex="-1" href="sign-in.html">Logout</a></li>
                </ul>
            </li>
        </ul>

    </div>
</div>

<!--------------------
       nav
--------------------->
<div class="sidebar-nav">
    <ul>
        <li><a href="/views/v3.6admin/admin/index.jsp" class="nav-header"><i
                class="fa fa-desktop"></i> 集群监控</a></li>
        <ul><li></li></ul>

        <li><a href="#" data-target=".dashboard-menu2" class="nav-header" data-toggle="collapse"><i
                class="fa fa-bug"></i> 网站管理<i class="fa fa-collapse"></i></a></li>

        <li>
            <ul class="dashboard-menu2 nav nav-list collapse">
                <li><a href="/views/v3.6admin/admin/web-latest.jsp"><span class="fa fa-caret-right"></span> 最近一次运行</a></li>
                <li><a href="/views/v3.6admin/admin/web-parameter.jsp"><span class="fa fa-caret-right"></span> 爬取参数设置</a></li>
                <li><a href="/views/v3.6admin/admin/web-bug.jsp"><span class="fa fa-caret-right"></span> 爬取站点设置</a></li>
            </ul>
        </li>

        <li><a href="#" data-target=".dashboard-menu3" class="nav-header" data-toggle="collapse"><i
                class="fa fa-fw fa-group"></i> 用户管理<i class="fa fa-collapse"></i></a></li>
        <li>
            <ul class="dashboard-menu3 nav nav-list collapse">
                <li><a href="/views/v3.6admin/admin/users-change.jsp"><span class="fa fa-caret-right"></span>用户基本信息</a></li>
            </ul>
        </li>


    </ul>
</div>


<!--于此分左右层次-->
<div class="content">
    <div class="header">
        <h1 class="page-title">集群</h1>
        <ul class="breadcrumb">
            <li><a href="/views/v3.6admin/admin/index.jsp">Home</a> </li>
            <li class="active">Operator</li>
            <li class="pull-right active showAll" style="font-size: 12px"><a href="#">显示全部</a></li>
            <div class="clearfix"></div>
        </ul>

    </div>
    <div class="main-content">

        <div class="container-fluid">
            <div class="row access">
                <div class="col-md-12">
                    <div class="header-map">
                        <div class="title pull-left">访问量</div>
                        <div class="icon"><button type="button" class="close">×</button></div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="main">
                        <canvas id="access" width="1000" height="250"></canvas>
                    </div>
                </div>
            </div>
            <div class="row node">
                <div class="col-md-12">
                    <div class="header-map">
                        <div class="title pull-left">结点状态</div>
                        <div class="icon"><button type="button" class="close">×</button></div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="main">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>
                                    Name
                                </th>
                                <th>
                                    Rest
                                </th>
                                <th>
                                    LastContact
                                </th>
                                <th>
                                    Admin State
                                </th>
                                <th>
                                    Capacity
                                </th>
                                <th>
                                    Used
                                </th>
                                <%--<th>--%>
                                    <%--Remaining--%>
                                <%--</th>--%>
                                <th>
                                    Block pool used
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="active">
                                <td>
                                    1
                                </td>
                                <td>
                                    server(115.28.4.149)
                                </td>
                                <td>
                                    1
                                </td>
                                <td>
                                    in Service
                                </td>
                                <td>
                                    84.51GB
                                </td>
                                <td>
                                    142.15MB
                                </td>
                                <%--<td>--%>
                                    <%--75.51GB--%>
                                <%--</td>--%>
                                <td>
                                    0.16%
                                </td>

                            </tr>
                            <tr class="active">
                                <td>
                                    2
                                </td>
                                <td>
                                    master(114.215.141.114)
                                </td>
                                <td>
                                    1
                                </td>
                                <td>
                                    in Service
                                </td>
                                <td>
                                    80.62GB
                                </td>
                                <td>
                                    132.33MB
                                </td>
                                <%--<td>--%>
                                    <%--66.93GB--%>
                                <%--</td>--%>
                                <td>
                                    0.15%
                                </td>

                            </tr>
                            <tr class="active">
                                <td>
                                    3
                                </td>
                                <td>
                                    worker1(120.27.105.87)
                                </td>
                                <td>
                                    1
                                </td>
                                <td>
                                    in Service
                                </td>
                                <td>
                                    76.77GB
                                </td>
                                <td>
                                    124.54MB
                                </td>
                                <%--<td>--%>
                                    <%--59.49GB--%>
                                <%--</td>--%>
                                <td>
                                    0.14%
                                </td>

                            </tr>
                            <tr class="active">
                                <td>
                                    4
                                </td>
                                <td>
                                    worker2(121.42.136.193)
                                </td>
                                <td>
                                    1
                                </td>
                                <td>
                                    in Service
                                </td>
                                <td>
                                    84.51GB
                                </td>
                                <td>
                                    142.15MB
                                </td>
                                <%--<td>--%>
                                    <%--75.51GB--%>
                                <%--</td>--%>
                                <td>
                                    0.16%
                                </td>

                            </tr>
                            <%--<tr class="active">--%>
                                <%--<td>--%>
                                    <%--1--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--sun(192.168.1.102)--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--1--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--in Service--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--84.51GB--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--142.15MB--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--75.51GB--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--0.16%--%>
                                <%--</td>--%>

                            <%--</tr>--%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <%--<div class="row memory">--%>
                <%--<div class="col-md-6 memory-word">--%>
                    <%--<div class="header-map">--%>
                        <%--<div class="title pull-left">存储状态</div>--%>
                        <%--<div class="icon"><button type="button" class="close">×</button></div>--%>
                        <%--<div class="clearfix"></div>--%>
                    <%--</div>--%>
                    <%--<div class="main">--%>
                        <%--<table class="table">--%>
                            <%--<thead>--%>
                            <%--<tr>--%>
                                <%--<th>--%>
                                    <%--Name--%>
                                <%--</th>--%>
                                <%--<th>--%>
                                    <%--Rest--%>
                                <%--</th>--%>
                            <%--</tr>--%>
                            <%--</thead>--%>
                            <%--<tbody>--%>
                            <%--<tr class="active">--%>
                                <%--<td>--%>
                                    <%--server--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--51.5GB--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                            <%--<tr class="active">--%>
                                <%--<td>--%>
                                    <%--sl--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--49.9GB--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                            <%--<tr class="active">--%>
                                <%--<td>--%>
                                    <%--Tangworld--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--55.6GB--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                            <%--<tr class="active">--%>
                                <%--<td>--%>
                                    <%--ding--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--51.1GB--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                            <%--<tr class="active">--%>
                                <%--<td>--%>
                                    <%--MR.Z--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--51.5GB--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="col-md-5 memory-map">
                    <div class="header-map">
                        <div class="title pull-left">存储状态</div>
                        <div class="icon"><button type="button" class="close">×</button></div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="main">
                            <canvas id="cluster-use" width="250" height="250"/>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <script>
            $(".close").click(function () {
                $(this).parent().parent().parent().parent().not(".memory").slideToggle('slow');
            })
            $(".memory-word .close").click(function () {
                $(this).parent().parent().parent().slideToggle('slow');
            })
            $(".memory-map .close").click(function () {
                $(this).parent().parent().parent().slideToggle('slow');
            })
            $(".showAll").click(function(){
                $(".access").slideDown();
                $(".node").slideDown();
                $(".memory-word").slideDown();
                $(".memory-map").slideDown();

            })
        </script>

        <footer>
            <hr>
            <p class="pull-right">By <a href="#"  target="_blank">MagicCloud</a></p>
        </footer>
    </div>
</div>


<script src="/views/v3.6admin/admin/lib/bootstrap/js/bootstrap.js"></script>
<script src="/views/v3.6admin/admin/js/Chart.js"></script>

<script>
//    曲线图
    var Linedata = {
        labels : ["Mar01","Mar04","March07","Mar10","Mar13","Mar16","Mar19","Mar22","Mar25","Mar28"],
        datasets : [
            {
                fillColor : "rgba(151,187,205,0.5)",
                strokeColor : "rgba(151,187,205,1)",
                pointColor : "rgba(151,187,205,1)",
                pointStrokeColor : "#fff",
                data: [65, 59, 90, 81, 56, 55, 40,55,70,45]
            }

//            },
//            {
//                fillColor : "rgba(151,187,205,0.5)",
//                strokeColor : "rgba(151,187,205,1)",
//                pointColor : "rgba(151,187,205,1)",
//                pointStrokeColor : "#fff",
//                data : [28,48,40,19,96,27,100]
//            }
        ]
    }

//    饼图
    var pieData = [
        {
            value: 5.9,
            color: "#FDB45C",
            highlight: "#FFC870",
            label: "集群已使用"
        },
        {
            value: 94.1,
            color: "#46BFBD",
            highlight: "#5AD3D1",
            label: "集群未使用"
        }

    ];

    window.onload = function(){
        var ctx = document.getElementById("cluster-use").getContext("2d");
        <%--Chart.defaults.global.tooltipTemplate="<%if (label){%><%=label%>: <%}%><%=value %>%";--%>
        window.myPie = new Chart(ctx).Pie(pieData);

        var ctxLine = document.getElementById("access").getContext("2d");
        window.myLine = new Chart(ctxLine).Line(Linedata);

    };
</script>
<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function () {
        $('.demo-cancel-click').click(function () {
            return false;
        });
    });
</script>


</body>
</html>
