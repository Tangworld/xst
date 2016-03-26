<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <!--手机不允许缩放-->
    <link rel="icon" href="/views/v3.6admin/images/favicon.ico">
    <!--找不到这个可能是网站站点的图标-->
    <link rel="shortcut icon" href="/views/v3.6admin/images/favicon.ico"/>

    <link rel="stylesheet" href="/views/v3.6admin/css/animation.css">
    <link rel="stylesheet" href="/views/v3.6admin/css/camera.css">
    <link rel="stylesheet" href="/views/v3.6admin/css/contact-form.css">
    <link rel="stylesheet" href="/views/v3.6admin/css/touchTouch.css">
    <link rel="stylesheet" href="/views/v3.6admin/css/style.css">

    <script src="/views/v3.6admin/js/jquery.js"></script>
    <script src="/views/v3.6admin/js/jquery-migrate-1.1.1.js"></script>
    <!--让你在原来代码上升级jquery 不用修改代码用的-->
    <script src="/views/v3.6admin/js/jquery.easing.1.3.js"></script>
    <script src="/views/v3.6admin/js/script.js"></script>
    <script src="/views/v3.6admin/js/jquery.ui.totop.js"></script>
    <!--回到顶部的插件-->
    <script src="/views/v3.6admin/js/touchTouch.jquery.js"></script>
    <script src="/views/v3.6admin/js/isotope.pkgd.js"></script>
    <script src="/views/v3.6admin/js/TMForm.js"></script>
    <script src="/views/v3.6admin/js/modal.js"></script>
    <script src="/views/v3.6admin/js/camera.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <script src="/views/v3.6admin/js/jquery.mobile.customized.min.js"></script>
    <!--？？手机相关吧-->

    <!--bootstrap与登录框部分部分-->
    <link rel="stylesheet" href="/views/v3.6admin/css/bootstrap.css"/>
    <!--这里有些奇怪？min与大的区别只有数据量的区别-->
    <link rel="stylesheet" href="/views/v3.6admin/css/loging.css"/>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- bootstrap end-->


    <!-- <link rel="stylesheet" href="./css/reset.css" type="text/css" /> -->
    <!--<![endif]-->
    <!--搜索框结束-->

    <!--city城市控件-->
    <!-- -->
    <link rel="stylesheet" href="/views/v3.6admin/css/city/cityStyle.css"/>
    <script type="text/javascript" src="/views/v3.6admin/js/city/cityScript.js"></script>
    <script type="text/javascript" src="/views/v3.6admin/js/city/lazyload-min.js"></script>
    <!-- -->
    <!--city   控件end-->

    <link rel="stylesheet" href="/views/v3.6admin/css/myqd/index.css"/>

    <!--特殊result.css-------->
    <link rel="stylesheet" href="/views/v3.6admin/css/myqd/result.css"/>
    <!--特殊result.css    end-->

    <!--图标库         -------->
    <link rel="stylesheet" href="/views/v3.6admin/css/myqd/font-awesome.css"/>
    <!--图标库             end-->


    <script>
        $(window).load(function () {
            $().UItoTop({easingType: 'easeOutQuart'});
            $('.gallery .gall_item').touchTouch();
        });
        $(document).ready(function () {
            jQuery('#camera_wrap').camera({
                loader: false,
                pagination: true,
                minHeight: '500',
                thumbnails: false,
                height: '44.42708333333333%',
                caption: true,
                navigation: false,
                fx: 'mosaic'
            });
            $('.gallery .gall-item').touchTouch();
        });
    </script>
    <style type="text/css">
    </style>

</head>
<body>

<div id="content-full">
        <!--==============================
                      header
        =================================-->
        <header id="home" class="page">
            <div class="navigation single-page-nav">              <!-- 最上方导航条-->


                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-2">
                            <h1 class="logo_head">
                                <!--<a href="index.jsp">Make Each Day Count</a>-->
                                <a href="index.jsp">MagicCloud</a>
                                <!--<p>Magic Cloud</p>-->
                            </h1>
                        </div>
                        <div class="col-md-6" style="padding-top: 20px">
                        </div>
                        <div class="col-md-4" style="padding-top: 10px">
                            <nav>
                                <ul>
                                    <li><a href="index.jsp" >主页</a></li>
                                    <li><a href="javascript:void(0)" onclick="openLogin()">登录</a></li>
                                    <!--<li><a href="#" onclick="window.location.href='regist.jsp'">注册</a></li>-->
                                    <li><a href="javascript:void(0)" onclick="openRegister()">注册</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>

            </div>

            <!--弹出式登录框-->
            <div class="modal-dialog" id="login">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" onclick="closeLogin()">x</button>
                        <h1 class="text-center text-primary">登录</h1>
                    </div>
                    <div class="modal-body center-block">
                        <form action="" class="form center-block">
                            <div class="input-group">
                                <!--<label for="examInputEmail1">邮箱:</label>-->
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                <input type="email" class="form-control input-lg" id="examInputEmail1"
                                       placeholder="请输入您的用户名"/>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" class="form-control input-lg" id="examInputPassword1"
                                       placeholder="请输入您的密码"/>
                            </div>

                            <div class="form-group">
                                <button class="btn btn-primary btn-lg btn-block">立刻登录</button>
                                <span><a href="javascript:void(0)" style="text-align: left">找回密码</a></span>
                                <span><a href="javascript:void(0)" class="pull-right re-register">注册</a></span>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>

            <!--注册框-->
            <div class="modal-dialog" id="register">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" onclick="closeRegister()">x</button>
                        <h1 class="text-center text-primary">注册</h1>
                    </div>
                    <div class="modal-body center-block">
                        <form action="" class="form center-block">
                            <div class="input-group">
                                <!--<label for="examInputEmail1">邮箱:</label>-->
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                <input type="email" class="form-control input-lg" id="username"
                                       placeholder="请输入您的用户名"/>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" class="form-control input-lg" id="password1"
                                       placeholder="请输入您的密码"/>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" class="form-control input-lg" id="password3"
                                       placeholder="确认密码"/>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                <input type="password" class="form-control input-lg" id="password4"
                                       placeholder="邮箱"/>
                            </div>

                            <div class="form-group">
                                <button class="btn btn-primary btn-lg btn-block">注册</button>
                                <span><a href="javascript:void(0)" style="text-align: left">找回密码</a></span>
                                <span><a href="javascript:void(0)" class="pull-right re-login">登录 </a></span>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>

            <div class="modal-dialog-mask"></div>

            <script>
                function openLogin() {
                    $('.modal-dialog-mask').fadeIn(100);
                    $("#login").slideDown(400);
                }
                function closeLogin() {
                    $('.modal-dialog-mask').fadeOut(100);
                    $("#login").slideUp(400);
                }

                function openRegister() {
                    $('.modal-dialog-mask').fadeIn(100);
                    $("#register").slideDown(400);
                }
                function closeRegister() {
                    $('.modal-dialog-mask').fadeOut(100);
                    $("#register").slideUp(400);
                }

                $("#login .re-register").click(function () {
                    $("#login").css("display","none");
                    $("#register").css("display","block");
                });
                $("#register .re-login").click(function () {
                    $("#login").css("display","block");
                    $("#register").css("display","none");
                });
            </script>

            <div id="range">
                <div class="price-range">
                    <form class="choose-city" action="${pageContext.request.contextPath}/resources/query" method="post">
                        <div class="container-fluid">
                            <div class="row">
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="inputTest3" name="start" value="${startcity}" placeholder="出发地">
                                    </div>
                                    <span class="col-md-1"><strong class="fa fa-long-arrow-right fa-3x"></strong></span>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="inputTest4" name="end" value="${endcity}" placeholder="目的地">
                                    </div>
                                    <input type="submit" class="btn btn-warning btn-lg col-md-2" value="查询">
                            </div>
                        </div>


                    <div class="line"></div>
                    <div class="addon"><span><i class="fa fa-check-square-o"></i>非必选</span></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-4">
                                    <input type="text" class="form-control" id="price-min" name="min" placeholder="最低价">
                                </div>
                                <span class="col-md-1"><strong class="fa fa-long-arrow-right fa-3x"></strong></span>
                                <div class="col-md-4">
                                    <input type="email" class="form-control" id="price-max" name="max" placeholder="最高价">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="day-range">
                    <span>出行天数</span>
                    <ul>
                        <li class="tree-begin">默认</li>
                        <ul class="tree">
                            <li>1天</li>
                            <li>2天</li>
                            <li>3天</li>
                            <li>4天</li>
                            <li>5天</li>
                            <li>6天</li>
                            <li>7天</li>
                        </ul>
                    </ul>
                    <div class="clearfix"></div>
                </div>

                <script type="text/javascript">
                    $(function(){
                        $(".tree-begin").click(function(){
                            $(this).next(".tree").toggle();
                        })
                        $(".tree>li").click(function(){
                            $(this).parent().css("display","none");
                            var val=$(this).text();
                            $(".tree-begin").text(val);
                        })
                    })
                </script>

            </div>
        </header>
        <!--=====================
                  Content
        ======================-->
        <div id="result-search">
            <div class="search">
                <!--<div class="search-left">-->

                <!--</div>-->
                <div class="search-right">
                    <div class="search-right-up">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="btn-group">
                                    <button class="btn btn-default btn-md" type="button">
                                        <em class="glyphicon glyphicon-align-left"></em> 价格 ↓
                                    </button>
                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-center"></em> 销量 ↓
                                    </button>
                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-right"></em> 天数 ↓
                                    </button>
                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-justify"></em> 好评数 ↓
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="search-right-down floor-all">
                        <c:forEach  items="${list}" var="m">
                        <div class="floor">
                            <div class="flex-row">
                                <div class="flex-3">
                                    <!-- <img src="./images/travel/xc-1-01.jpg" alt=""/> -->
                                    <img src="/views/v3.6admin/images/result/${m.picture}" alt=""/>
                                </div>
                                <div class="flex-6 flex-col second">
                                    <div class="flex-6">
                                        <strong class="message"><a
                                                href="${m.url}">${m.name}</a></strong>
                                    </div>
                                    <div class="flex-6 flex-row">
                                        <span class="url flex-4">来自:${m.sourceWeb}</span>
                                        <span class="day flex-8">行程:${m.days}天</span>
                                    </div>

                                </div>
                                <div class="flex-3 flex-col">
                                    <div class="price flex-6">￥${m.price}<span class="price-1">起</span></div>
                                    <div class="flex-6">
                                        <a  href="${m.url}" type="button" class="btn btn-warning">前往</a>
                                    </div>
                                    <div class="flex-6 flex-col">
                                        <div class="flex-6 good">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-empty"></i>
                                            <span>${m.grade}分</span>
                                        </div>
                                        <div class="flex-6 buyed">300人已点评</div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        </c:forEach>

                        <%--<div class="floor">--%>
                            <%--<div class="flex-row">--%>
                                <%--<div class="flex-3">--%>
                                    <%--<!--<img src="./images/travel/xc-1-02.jpg" alt=""/>-->--%>
                                    <%--<img src="./images/travel/result/2.jpg" alt=""/>--%>
                                <%--</div>--%>
                                <%--<div class="flex-6 flex-col second">--%>
                                    <%--<div class="flex-6">--%>
                                        <%--<strong class="message"><a--%>
                                                <%--href="http://gny.ly.com/line/t1j4p25094c226.html">厦门鼓浪屿半自助双动4日跟团游<动车车次自选 跟团与自由行完美搭配 经典景点全部覆盖></a></strong>--%>
                                    <%--</div>--%>
                                    <%--<div class="flex-6 flex-row">--%>
                                        <%--<span class="url flex-4">来自:同程网</span>--%>
                                        <%--<span class="day flex-8">行程:4天</span>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                                <%--<div class="flex-3 flex-col">--%>
                                    <%--<div class="price flex-6">￥1183<span class="price-1">起</span></div>--%>
                                    <%--<div class="flex-6">--%>
                                        <%--<button type="button" class="btn btn-warning">前往</button>--%>
                                    <%--</div>--%>
                                    <%--<div class="flex-6 flex-col">--%>
                                        <%--<div class="flex-6 good">--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star-half-empty"></i>--%>
                                            <%--<span>5.0分</span>--%>
                                        <%--</div>--%>
                                        <%--<div class="flex-6 buyed">487人已点评</div>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <%--<div class="floor">--%>
                            <%--<div class="flex-row">--%>
                                <%--<div class="flex-3">--%>
                                    <%--<!--<img src="./images/travel/xc-1-03.jpg" alt=""/>-->--%>
                                    <%--<img src="./images/travel/result/3.jpg" alt=""/>--%>
                                <%--</div>--%>
                                <%--<div class="flex-6 flex-col second">--%>
                                    <%--<div class="flex-6">--%>
                                        <%--<strong class="message"><a--%>
                                                <%--href="http://vacations.ctrip.com/morelinetravel/p2465987s12.html">厦门+鼓浪屿+福建土楼4日3晚跟团游(3钻)·销冠特卖汇 1晚可升超5星 精华全含 超值赠</a></strong>--%>
                                    <%--</div>--%>
                                    <%--<div class="flex-6 flex-row">--%>
                                        <%--<span class="url flex-4">来自:携程网</span>--%>
                                        <%--<span class="day flex-8">行程:4天</span>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                                <%--<div class="flex-3 flex-col">--%>
                                    <%--<div class="price flex-6">￥1460<span class="price-1">起</span></div>--%>
                                    <%--<div class="flex-6">--%>
                                        <%--<button type="button" class="btn btn-warning">前往</button>--%>
                                    <%--</div>--%>
                                    <%--<div class="flex-6 flex-col">--%>
                                        <%--<div class="flex-6 good">--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star-half-empty"></i>--%>
                                            <%--<span>4.6分</span>--%>
                                        <%--</div>--%>
                                        <%--<div class="flex-6 buyed">520人已点评</div>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <%--<div class="floor">--%>
                            <%--<div class="flex-row">--%>
                                <%--<div class="flex-3">--%>
                                    <%--<!--<img src="./images/travel/xc-1-04.jpg" alt=""/>-->--%>
                                    <%--<img src="./images/travel/result/4.jpg" alt=""/>--%>
                                <%--</div>--%>
                                <%--<div class="flex-6 flex-col second">--%>
                                    <%--<div class="flex-6">--%>
                                        <%--<strong class="message"><a--%>
                                                <%--href="http://dujia.lvmama.com/group/644216-D56">东游记冬季特惠厦门鼓浪屿、土楼云水谣双飞4日跟团游--%>
                                        <%--</a></strong>--%>
                                    <%--</div>--%>
                                    <%--<div class="flex-6 flex-row">--%>
                                        <%--<span class="url flex-4">来自:驴妈妈网</span>--%>
                                        <%--<span class="day flex-8">行程:4天</span>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                                <%--<div class="flex-3 flex-col">--%>
                                    <%--<div class="price flex-6">￥1468<span class="price-1">起</span></div>--%>
                                    <%--<div class="flex-6">--%>
                                        <%--<button type="button" class="btn btn-warning">前往</button>--%>
                                    <%--</div>--%>
                                    <%--<div class="flex-6 flex-col">--%>
                                        <%--<div class="flex-6 good">--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star-half-empty"></i>--%>
                                            <%--<span>5.0分</span>--%>
                                        <%--</div>--%>
                                        <%--<div class="flex-6 buyed">799人已点评</div>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <%--<div class="floor">--%>
                            <%--<div class="flex-row">--%>
                                <%--<div class="flex-3">--%>
                                    <%--<!--<img src="./images/travel/xc-1-05.jpg" alt=""/>-->--%>
                                    <%--<img src="./images/travel/result/5.jpg" alt=""/>--%>
                                <%--</div>--%>
                                <%--<div class="flex-6 flex-col second">--%>
                                    <%--<div class="flex-6">--%>
                                        <%--<strong class="message"><a--%>
                                                <%--href="http://vacations.ctrip.com/grouptravel/p1711738s2.html">武夷山+厦门+鼓浪屿4日3晚半自助游(4钻)·厦进武出 山水连线 自由度高 赠贝壳世界</a></strong>--%>
                                    <%--</div>--%>
                                    <%--<div class="flex-6 flex-row">--%>
                                        <%--<span class="url flex-4">来自:携程网</span>--%>
                                        <%--<span class="day flex-8">行程:4天</span>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                                <%--<div class="flex-3 flex-col">--%>
                                    <%--<div class="price flex-6">￥1540<span class="price-1">起</span></div>--%>
                                    <%--<div class="flex-6">--%>
                                        <%--<button type="button" class="btn btn-warning">前往</button>--%>
                                    <%--</div>--%>
                                    <%--<div class="flex-6 flex-col">--%>
                                        <%--<div class="flex-6 good">--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star"></i>--%>
                                            <%--<i class="fa fa-star-half-empty"></i>--%>
                                            <%--<span>5.0分</span>--%>
                                        <%--</div>--%>
                                        <%--<div class="flex-6 buyed">654人已点评</div>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <nav>
                            <ul class="pagination pull-right">
                                <li><a href="#">上一页</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/resources/list?page=1" >1</a></li>
                                <li><a href="${pageContext.request.contextPath}/resources/list?page=2" >2</a></li>
                                <li><a href="${pageContext.request.contextPath}/resources/list?page=3" >3</a></li>
                                <li><a href="${pageContext.request.contextPath}/resources/list?page=4" >4</a></li>
                                <li><a href="${pageContext.request.contextPath}/resources/list?page=5" >5</a></li>
                                <li><a href="#">...</a></li>
                                <li>
                                    <a href="#">下一页</a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </nav>

                        <script>
                            $(".pagination>li").click(function(){
                                alert("kjf");
                                $(this).addClass("active");
                                $(this).siblings(".active").removeClass("active");
                            })
                        </script>

                        <!--<nav id="page">-->
                            <!--<ul class="pagination">-->
                                <!--<li>-->
                                    <!--<a href="#" aria-label="Previous">-->
                                        <!--<span aria-hidden="true">&laquo;</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class="active"><a href="#">1</a></li>-->
                                <!--<li><a href="#">2</a></li>-->
                                <!--<li><a href="#">3</a></li>-->
                                <!--<li><a href="#">4</a></li>-->
                                <!--<li><a href="#">5</a></li>-->
                                <!--<li><a href="#">...</a></li>-->
                                <!--<li>-->
                                    <!--<a href="#" aria-label="Next">-->
                                        <!--<span aria-hidden="true">&raquo;</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                            <!--</ul>-->
                        <!--</nav>-->

                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>

    <!--==============================
                      footer
        =================================-->
        <div id="footer">
            <div class="container_12">
                <div class="grid_12">
                    <div class="copyright">Copyright &copy; 2015.Company name All rights reserved.<!--<a target="_blank"
                                                                                             href="http://sc.chinaz.com/moban/">
                &#x7F51;&#x9875;&#x6A21;&#x677F;</a>--></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
</div>


<a href="#" id="toTop" class="fa fa-chevron-up"></a>
<script src="/views/v3.6admin/js/jquery.singlePageNav.min.js"></script>
<script>
    // Prevent console.log from generating errors in IE for the purposes of the demo
    if (!window.console) console = {
        log: function () {
        }
    };
    // The actual plugin
    $('.single-page-nav').singlePageNav({
        offset: $('.single-page-nav').outerHeight(),
        filter: ':not(.external)',
        updateHash: true,
        beforeStart: function () {
            console.log('begin scrolling');
        },
        onComplete: function () {
            console.log('done scrolling');
        }
    });
</script>
<script type="text/javascript">
    google_api_map_init();
    function google_api_map_init() {
        var map;
        var coordData = new google.maps.LatLng(parseFloat(40.646197), parseFloat(-73.9724068, 14));
        var styleArray = [
            {
                "featureType": "water",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#193341"
                    }
                ]
            },
            {
                "featureType": "landscape",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#2c5a71"
                    }
                ]
            },
            {
                "featureType": "road",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#29768a"
                    },
                    {
                        "lightness": -37
                    }
                ]
            },
            {
                "featureType": "poi",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#406d80"
                    }
                ]
            },
            {
                "featureType": "transit",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#406d80"
                    }
                ]
            },
            {
                "elementType": "labels.text.stroke",
                "stylers": [
                    {
                        "visibility": "on"
                    },
                    {
                        "color": "#3e606f"
                    },
                    {
                        "weight": 2
                    },
                    {
                        "gamma": 0.84
                    }
                ]
            },
            {
                "elementType": "labels.text.fill",
                "stylers": [
                    {
                        "color": "#ffffff"
                    }
                ]
            },
            {
                "featureType": "administrative",
                "elementType": "geometry",
                "stylers": [
                    {
                        "weight": 0.6
                    },
                    {
                        "color": "#1a3541"
                    }
                ]
            },
            {
                "elementType": "labels.icon",
                "stylers": [
                    {
                        "visibility": "off"
                    }
                ]
            },
            {
                "featureType": "poi.park",
                "elementType": "geometry",
                "stylers": [
                    {
                        "color": "#2c5a71"
                    }
                ]
            }
        ]

        function initialize() {
            var mapOptions = {
                zoom: 13,
                center: coordData,
                scrollwheel: false,
                styles: styleArray
            }
            var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
            google.maps.event.addDomListener(window, 'resize', function () {
                map.setCenter(coordData);
                var center = map.getCenter();
            });
        }

        google.maps.event.addDomListener(window, "load", initialize);
    }
</script>
<!--[if IE]>
<script type="text/javascript" src="js/excanvas.js"></script><![endif]-->
<script src="/views/v3.6admin/js/jquery.knob.js"></script>
<script>
    $(function ($) {
        $(".knob").knob({
            change: function (value) {
                //console.log("change : " + value);
            },
            release: function (value) {
                //console.log(this.$.attr('value'));
                console.log("release : " + value);
            },
            cancel: function () {
                console.log("cancel : ", this);
            },
            /*format : function (value) {
             return value + '%';
             },*/
            draw: function () {
                // "tron" case
                if (this.$.data('skin') == 'tron') {
                    this.cursorExt = 0.3;
                    var a = this.arc(this.cv)  // Arc
                            , pa                   // Previous arc
                            , r = 1;
                    this.g.lineWidth = this.lineWidth;
                    if (this.o.displayPrevious) {
                        pa = this.arc(this.v);
                        this.g.beginPath();
                        this.g.strokeStyle = this.pColor;
                        this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, pa.s, pa.e, pa.d);
                        this.g.stroke();
                    }
                    this.g.beginPath();
                    this.g.strokeStyle = r ? this.o.fgColor : this.fgColor;
                    this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, a.s, a.e, a.d);
                    this.g.stroke();
                    this.g.lineWidth = 2;
                    this.g.beginPath();
                    this.g.strokeStyle = this.o.fgColor;
                    this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false);
                    this.g.stroke();
                    return false;
                }
            }
        });
        // Example of infinite knob, iPod click wheel
        var v, up = 0, down = 0, i = 0
                , $idir = $("div.idir")
                , $ival = $("div.ival")
                , incr = function () {
                    i++;
                    $idir.show().html("+").fadeOut();
                    $ival.html(i);
                }
                , decr = function () {
                    i--;
                    $idir.show().html("-").fadeOut();
                    $ival.html(i);
                };
        $("input.infinite").knob(
                {
                    min: 0
                    , max: 20
                    , stopper: false
                    , change: function () {
                    if (v > this.cv) {
                        if (up) {
                            decr();
                            up = 0;
                        } else {
                            up = 1;
                            down = 0;
                        }
                    } else {
                        if (v < this.cv) {
                            if (down) {
                                incr();
                                down = 0;
                            } else {
                                down = 1;
                                up = 0;
                            }
                        }
                    }
                    v = this.cv;
                }
                });
    });
</script>

<script type="text/javascript">                      /*城市选择的js*/
LazyLoad.css(["css/city/cityStyle.css"], function () {
    LazyLoad.js(["js/city/cityScript.js"], function () {
//            var test = new citySelector.cityInit("inputTest");
        var test3 = new citySelector.cityInit("inputTest3");
        var test4 = new citySelector.cityInit("inputTest4");
    });
});
</script>
<script src="/views/v3.6admin/js/isotop_ini.js"></script>
</body>
</html>