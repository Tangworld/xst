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
                          style="position:relative;top: 3px;"></span>${user}
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
            <ul class="dashboard-menu2 nav nav-list collapse in">
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
        <h1 class="page-title">个人信息</h1>
    </div>
    <div class="main-content">
        <div class="row">
            <div class="user-img col-md-4">
                <div><img src="images/cloud.ico" alt=""/></div>
            </div>
            <div class="user-info col-md-4">
                    <div><span>用户名:</span><span>zhangsan</span></div>
                    <div><span>昵&nbsp;&nbsp;&nbsp;&nbsp;称:</span><span>gaowu9595</span></div>
                    <div><span>性&nbsp;&nbsp;&nbsp;&nbsp;别:</span>
                        <span>男</span>
                    </div>
                    <div><span>邮&nbsp;&nbsp;&nbsp;&nbsp;箱:</span><span>zhangsan@163.com</span></div>
                    <div><span>手机号码:</span><span>18351967235</span></div>
                    <div class="clearfix"></div>
            </div>
        </div>
        
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
