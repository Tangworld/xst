<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/views/v3.6admin/admin/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/views/v3.6admin/admin/lib/font-awesome/css/font-awesome.css">

    <script src="/views/v3.6admin/admin/lib/jquery-1.11.1.min.js" type="text/javascript"></script>



    <link rel="stylesheet" type="text/css" href="/views/v3.6admin/admin/stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="/views/v3.6admin/admin/stylesheets/premium.css">

    <link rel="stylesheet" href="/views/v3.6admin/admin/css/web-bug.css"/>

</head>
<body class=" theme-blue">

<!-- Demo page code -->

<script type="text/javascript">
    $(function() {
        var match = document.cookie.match(new RegExp('color=([^;]+)'));
        if(match) var color = match[1];
        if(color) {
            $('body').removeClass(function (index, css) {
                return (css.match (/\btheme-\S+/g) || []).join(' ')
            })
            $('body').addClass('theme-' + color);
        }

        $('[data-popover="true"]').popover({html: true});

    });
</script>
<style type="text/css">
    #line-chart {
        height:300px;
        width:800px;
        margin: 0px auto;
        margin-top: 1em;
    }
    .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover {
        color: #fff;
    }
</style>

<script type="text/javascript">
    $(function() {
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


<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

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
        <a class="" href="index.jsp"><span class="navbar-brand"><span class="fa fa-cloud"></span> MagicCloud</span></a>
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
                    <li><a tabindex="-1" href="/views/v3.6admin/admin/sign-in.jsp">Logout</a></li>
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
            <ul class="dashboard-menu2 nav nav-list collapse in">
                <li><a href="/views/v3.6admin/admin/web-latest.jsp"><span class="fa fa-caret-right"></span> 最近一次运行</a></li>
                <li><a href="/views/v3.6admin/admin/web-parameter.jsp"><span class="fa fa-caret-right"></span> 爬取参数设置</a></li>
                <li class="active"><a href="/views/v3.6admin/admin/web-bug.jsp"><span class="fa fa-caret-right"></span> 爬取站点设置</a></li>
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


<!--------------------
       content
--------------------->
<div class="content">
    <div class="header">

        <h1 class="page-title">站点设置</h1>
        <ul class="breadcrumb">
            <li><a href="index.jsp">Home</a> </li>
            <li class="active">Operator</li>
        </ul>

    </div>
    <div class="main-content">

        <div class="btn-toolbar list-toolbar">
            <form action="${pageContext.request.contextPath}/admin/queryall"  method="post" style="display: inline-block"><input class="btn btn-primary" type="submit" value="更新"></form>
            <button class="btn btn-primary" href="#newWeb-Modal"  role="button" data-toggle="modal"><i class="fa fa-plus"></i>  添加新站点</button>
            <button class="btn btn-default">导入</button>
            <button class="btn btn-default">导出</button>
            <div class="btn-group">
            </div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th>#</th>
                <th>站点名称</th>
                <th>URL</th>
                <th style="width: 6em;"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${webs}" var="w">
            <tr>
                <td>${w.wid}</td>
                <td>${w.webname}</td>
                <td><a href="${w.url}" >${w.url}</a></td>
                <td>
                    <form action="${pageContext.request.contextPath}/admin/delete" method="post" >
                        <input type="hidden" name="deletename" value="${w.webname}">
                        <input type="hidden" name="deleteurl" value="${w.url}">
                        <input type="submit" class="btn btn-primary" value="删除">
                    </form>
                    <%--<a href="#webChange-Modal" role="button" data-toggle="modal" class="change">修改</a><a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>--%>
                </td>
            </tr>
            </c:forEach>
            <%--<tr>--%>
                <%--<td>1</td>--%>
                <%--<td>途牛</td>--%>
                <%--<td>www.tuniu.com</td>--%>
                <%--<td>--%>
                    <%--<a href="#webChange-Modal" role="button" data-toggle="modal" class="change">修改</a><a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>1</td>--%>
                <%--<td>途牛</td>--%>
                <%--<td>www.tuniu.com</td>--%>
                <%--<td>--%>
                    <%--<a href="#webChange-Modal" role="button" data-toggle="modal" class="change">修改</a><a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>1</td>--%>
                <%--<td>途牛</td>--%>
                <%--<td>www.tuniu.com</td>--%>
                <%--<td>--%>
                    <%--<a href="#webChange-Modal" role="button" data-toggle="modal" class="change">修改</a><a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>1</td>--%>
                <%--<td>途牛</td>--%>
                <%--<td>www.tuniu.com</td>--%>
                <%--<td>--%>
                    <%--<a href="#webChange-Modal" role="button" data-toggle="modal" class="change">修改</a><a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>--%>
                <%--</td>--%>
            <%--</tr>--%>



            </tbody>
        </table>

        <ul class="pagination pull-right">
            <li><a href="#">&laquo;</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">&raquo;</a></li>
        </ul>

        <!--添加新站点模态-->
        <div class="modal small fade" id="newWeb-Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h2 class="myModalLabel">添加</h2>
                    </div>
                    <form action="${pageContext.request.contextPath}/admin/add" method="post">
                    <div class="modal-body">
                        <div class="input-group-lg">
                            <input type="text" class="form-control" name="webname" placeholder="输入站点名称..." />
                            <input type="text" class="form-control" name="url" placeholder="输入URL..." />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
                        <input type="submit" class="btn btn-default" data-dismiss="modal" value="确定">
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <!--改变站点模态-->
        <div class="modal small fade" id="webChange-Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h2 class="myModalLabel">消息</h2>
                    </div>
                    <form action="" method="post">
                    <div class="modal-body">
                        <div class="input-group-lg">
                            <input type="text" class="form-control" name="webname" placeholder="输入站点名称..." />
                            <input type="text" class="form-control" name="url" placeholder="输入URL..." />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
                        <input type="submit" class="btn btn-default" data-dismiss="modal" value="确定">
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <!--删除模态-->
        <div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h3 id="myModalLabel">消息</h3>
                    </div>
                    <div class="modal-body">
                        <p class="error-text"><i class="fa fa-warning modal-icon"></i>确定删除?<br>操作不可返回</p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
                        <button class="btn btn-danger" data-dismiss="modal">删除</button>
                    </div>
                </div>
            </div>
        </div>


        <footer>
            <hr>
            <p class="pull-right">By <a href="#"  target="_blank">MagicCloud</a></p>
        </footer>
    </div>
</div>


<script src="/views/v3.6admin/admin/lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function() {
        $('.demo-cancel-click').click(function(){return false;});
    });
</script>


</body></html>
