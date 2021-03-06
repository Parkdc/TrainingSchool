<%@ page import="nju.wjw.vo.StudentCardVO" %><%--
  Created by IntelliJ IDEA.
  User: wangjiawei
  Date: 2017/3/12
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>我的成绩查看</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Learn Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <!-- Custom Theme files -->
    <link href="/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="/css/jquery.countdown.css" />
    <!----font-Awesome----->
    <link href="/css/font-awesome.css" rel="stylesheet">
    <!----font-Awesome----->
    <script>
        $(document).ready(function(){
            $(".dropdown").hover(
                    function() {
                        $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
                        $(this).toggleClass('open');
                    },
                    function() {
                        $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
                        $(this).toggleClass('open');
                    }
            );
        });
    </script>
</head>
<body>

<jsp:include page="header.jsp" />
<!-- banner -->

<div class="courses_banner">
    <div class="container">
        <h3>我的等级查看</h3>
        <p class="description">
            如下是您的会员积分与等级信息。
        </p>
        <div class="breadcrumb1">
            <ul>
                <li class="icon6"><a href="/">主页</a></li>
                <li class="icon6"><a href="/student/studentService">学员平台管理</a></li>
                <li class="current-page">积分等级查看</li>
            </ul>
        </div>
    </div>
</div>

<% StudentCardVO studentCardVO = (StudentCardVO)request.getAttribute("studentCardVO"); %>

<!-- //banner -->
<div class="courses_box1">
    <div class="container">
        <div class="col-md-6 about_left">
            <h1>积分等级详细信息</h1>
            <ul class="about_links">
                <li>学员卡等级：<%=studentCardVO.rank%></li>
                <li>距离升到下一等级还需要<%=studentCardVO.level%>元的金额充值</li>
                <li>学员积分：<%=studentCardVO.points%> EXP</li>
                <li>学员卡余额：<%=studentCardVO.balance%> 元</li>
                <li>会员卡是否激活：<%=studentCardVO.memberValidity==0?"否":"已激活"%></li>
            </ul>
            <form action="/student/points2money" method="post">
                <input type="text" autocomplete="new-password" class="required form-control" placeholder="兑换积分 *" name="points" value="">
                <input type="submit" class="btn btn-primary btn-lg1 btn-block" name="submit" value="积分兑换余额">
            </form>
        </div>
        <div class="col-md-6">
            <img src="/images/fc.jpg" class="img-responsive" alt=""/>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>


<!-- FlexSlider -->
<link href="/css/flexslider.css" rel='stylesheet' type='text/css' />
<script defer src="/js/jquery.flexslider.js"></script>
<script type="text/javascript">
    $(function(){
        SyntaxHighlighter.all();
    });
    $(window).load(function(){
        $('.flexslider').flexslider({
            animation: "slide",
            start: function(slider){
                $('body').removeClass('loading');
            }
        });
    });
</script>
<!-- FlexSlider -->
</body>
</html>