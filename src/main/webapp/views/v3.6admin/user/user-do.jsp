<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>个人中心</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    <script src="lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $(".knob").knob();
        });
    </script>


    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
    <link rel="stylesheet" href="css/index.css"/>

    <!--bootstrap选框插件增强-->
    <link rel="stylesheet" href="css/square/blue.css"/>
    <script src="js/icheck.js"></script>
    <!--end-->

    <link rel="stylesheet" href="css/user-info.css"/>
    <link rel="stylesheet" href="css/user-do.css"/>

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

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="../assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">

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
        <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-cloud"></span> MagicCloud</span></a>
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

        <li><a href="#" data-target=".dashboard-menu2" class="nav-header" data-toggle="collapse"><i
                class="fa fa-bug"></i> 个人信息管理<i class="fa fa-collapse"></i></a></li>

        <li>
            <ul class="dashboard-menu2 nav nav-list collapse">
                <li class="active"><a href="user-info.jsp"><span class="fa fa-caret-right"></span> 查看个人信息</a></li>
                <li><a href="user-change.jsp"><span class="fa fa-caret-right"></span> 修改个人信息</a></li>
                <li><a href="user-password.jsp"><span class="fa fa-caret-right"></span> 修改密码</a></li>
            </ul>
        </li>

        <li><a href="user-do.jsp" data-target=".dashboard-menu3" class="nav-header" data-toggle="collapse"><i
                class="fa fa-bug"></i> 浏览记录</a></li>

        <li><a href="user-collection.jsp" data-target=".dashboard-menu4" class="nav-header" data-toggle="collapse"><i
                class="fa fa-bug"></i> 收藏</a></li>
    </ul>
</div>


<!--于此分左右层次-->
<div class="content">
    <div class="header">
        <h1 class="page-title">操作日志</h1>
    </div>
    <div class="main-content">
        <div class="row">
            <div class="user-img col-md-4">
                <div><img src="images/cloud.ico" alt=""/></div>
            </div>

            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>时间</th>
                    <th>访问站点</th>
                    <th>起点-终点</th>
                    <th style="width: 40em">产品信息</th>
                </tr>
                </thead>
                <tbody>

                <tr>
                    <td>2</td>
                    <td>2016-03-30</td>
                    <td>携程网</td>
                    <td>南京-厦门</td>
                    <td>
                        <a href="">厦门+鼓浪屿+福建土楼4日3晚跟团游(3钻)·销冠特卖汇 1晚可升超5星 精华全含 超值赠</a>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>2016-03-30</td>
                    <td>携程网</td>
                    <td>南京-厦门</td>
                    <td>
                        <a href="">武夷山+厦门+鼓浪屿4日3晚半自助游(4钻)·厦进武出 山水连线 自由度高 赠贝壳世界</a>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>2016-03-30</td>
                    <td>驴妈妈网</td>
                    <td>北京-西安</td>
                    <td>
                        <a href="">【梦回盛唐】西安兵马俑、华清池、大雁塔广场、永兴坊特产美食街卧高2晚3日游—纯玩无购物，畅心出游</a>
                    </td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>2016-03-30</td>
                    <td>携程网</td>
                    <td>北京-西安</td>
                    <td>
                        <a href="">西安兵马俑+华清池3日2晚跟团游(2钻)·双高 酒店可升级.大唐盛世.精华之旅</a>
                    </td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>2016-03-30</td>
                    <td>途牛网</td>
                    <td>南京-昆明</td>
                    <td>
                        <a href=""><云南-昆明-普洱-西双版纳三飞6日游游>立减520 享独栋木屋 升级1晚喜来登 赠送一盒价值298元普洱茶</a>
                    </td>
                </tr>

                </tbody>
            </table>

        </div>
        <ul class="pagination pull-right">
            <li><a href="#">&laquo;</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">&raquo;</a></li>
        </ul>

        <footer>
            <hr>
            <p class="pull-right">By <a href="#"  target="_blank">MagicCloud</a></p>
        </footer>
    </div>
</div>


<script src="lib/bootstrap/js/bootstrap.js"></script>
<script src="./js/Chart.js"></script>
<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function () {
        $('.demo-cancel-click').click(function () {
            return false;
        });
    });
</script>
<!--icheck-->
<script>
    $(document).ready(function(){
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>


</body>
</html>
