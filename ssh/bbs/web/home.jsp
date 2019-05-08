<%--
Created by IntelliJ IDEA.
User: cuiwenbin
Date: 19-4-16
Time: 下午9:32
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN" style="height: 100%;padding: 0; margin: 0;">
<head>
    <title>梦想科大</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <script type="text/javascript" src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
</head>
<body style="background: rgb(236, 244, 253);overflow-y: scroll;height: 100%;padding: 0; margin: 0;">
<!--head bar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light " style="position:fixed;width:100%;z-index:99;">
    <a class="navbar-brand" href="#" style="margin-right: 10%">梦想科大</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
<!--left bar-->
<div class="float-left" style="top: 6%;background: #293134;width: 12%;color: white; position:fixed;height: 100%;">
    <div class="card-img text-center" style="margin-bottom: 5%">
        <img src="images/头像/none.png" style="margin-top:16%;border-radius: 100px; width: 100px;">
    </div>
    <div class="text-center">
        <p>当前为游客状态<br/>无法进行发/回帖操作</p>
        <p>请<a href="/login">登录</a></p>
    </div>
</div>


<!-- hot post bar-->
<div class="float-right" style="margin-top: 4%;margin-left: .5%;
width:87.5%;height:auto;color: white; overflow-y: auto;border: black solid 2px;">
    <div style="background: white;width: 80%;height:auto;margin: 2% auto;">
        <div id="carouselExampleControls" class="carousel slide "
             data-ride="carousel" style="width: 40%;">
            <div class="carousel-inner">
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/imgs/p1.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/imgs/p3.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/imgs/p4.jpg" alt="Third slide">
                </div>
                <div class="carousel-item active">
                    <img class="d-block w-100" src="images/imgs/p5.jpg" alt="First slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div style="width: 35%;height: 28%;color: black;position: absolute;
        margin-left: 31%;top: 14%;border: #9fcdff solid 1px;padding: .5%;border-radius: 5px;">
            <small style="margin: 2%;padding: 0;">热门帖子:</small>
            <hr style="margin: 1%;padding: 0;">
            <p style="margin-left: 5%;font-size: 13px">
                <a href="#" style="color: #1d2124;" class="board">【板块】</a><u><a href="#"
                                                                                style="color: #1d2124">周六补课压力很大啊啊啊~~~【点击量:取5个】</a></u>
            </p>
        </div>
    </div>
</div>

<!--board bar-->
<div class="float-right" style="margin-top: 1%;margin-left: .5%;
width:87.5%;height:100%;color: black; overflow-y: auto;border: #1e88e5 solid 2px;">
    <s:iterator value="boards" var="board">
        <div class="alert alert-info" role="alert" style="margin-bottom: 0;margin-top: 1%;border-radius: 5px 5px 0 0 ">
           <s:property value="#board.getName()"></s:property>
        </div>
        <div class="row" style="max-width: 96%;padding-left: 2%">
            <s:property value="#board.">
                <div style="width: 11%;padding: 2%;margin-left: 10%;float: left;margin-right: 0;">
                    <img src="images/头像/none2.png" width="90" height="90" style="margin: 1% 0 1% 1%">
                    <a href="#" style="position: absolute">子板块名</a>
                    <small style="position: absolute;margin-top: 1%;width:15%;max-width:15%;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">
                        Jacarat 是 Apache旗下一个开源项目
                    </small>
                </div>
            </s:property>
        </div>
    </s:iterator>
</div>
</div>
</div>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>

