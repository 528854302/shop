<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>店家首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">中国大陆<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
                <li><a href="#">${user.name}</a></li>
                <li><a href="${pageContext.request.contextPath }/static/jsp/register.jsp">卖家主页</a></li>
                <li><a href="#">我的商品</a></li>



            </ul>


            <ul class="nav navbar-nav navbar-right">
                <li><a href="http://localhost:8080/store/index">商城首页</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <span id="icon" class="glyphicon glyphicon-hand-right" aria-hidden="true"></span> 我的淘宝<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <span id="icon" class="glyphicon glyphicon-star" aria-hidden="true"></span>卖家中心<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">上传商品</a></li>
                        <li><a href="#">我的商品</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
                <li><a href="#">商品分类</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <span id="icon" class="glyphicon glyphicon-align-center" aria-hidden="true"> 网站导航 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>




<div class="container">
    <div class="row">
        <div class="col-md-6"><h1>上传商品</h1></div>
        <div class="col-md-6"><h3 style="color: green"><c:if test="${not empty msg}">${msg}</c:if></h3></div>
    </div>
    <div class="row">
        <form action="${pageContext.request.contextPath }/loadProduct" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <h5>商品名称</h5>
                <input type="text" class="form-control" name="pname">
            </div>
            <div class="form-group">
                <h5>市场价</h5>
                <input type="text" class="form-control" name="marketPrice">
            </div>
            <div class="form-group">
                <h5>商城价</h5>
                <input type="text" class="form-control" name="shopPrice">
            </div>
            <div class="form-group">
                <h5>商品描述</h5>
                <input type="text" class="form-control" name="desc">
            </div>
            <div class="form-group">
                <h5>商品分类</h5>
                <select name="cid" >
                    <option value="1">手机数码</option>
                    <option value="2">电脑办公</option>
                    <option value="3">蔬菜水果</option>
                    <option value="4">鞋靴箱包</option>
                    <option value="5">图书音像</option>
                    <option value="6">母婴孕婴</option>
                </select>
            </div>


            <div class="form-group">
                <label for="exampleInputFile">商品主图</label>
                <input type="file" id="exampleInputFile" name="img">
                <p class="help-block">Example block-level help text here.</p>
            </div>

            <button type="submit" class="btn btn-default">Submit</button>
        </form>
    </div>
</div>






<div class="container-fluid">
    <div style="margin-top:50px;">
        <img src="${pageContext.request.contextPath}/static/img/footer.jpg" width="100%" height="78" alt="我们的优势" title="我们的优势" />
    </div>

    <div style="text-align: center;margin-top: 5px;">
        <ul class="list-inline">
            <li><a href="info.html">关于我们</a></li>
            <li><a>联系我们</a></li>
            <li><a>招贤纳士</a></li>
            <li><a>法律声明</a></li>
            <li><a>友情链接</a></li>
            <li><a>支付方式</a></li>
            <li><a>配送方式</a></li>
            <li><a>服务声明</a></li>
            <li><a>广告声明</a></li>
        </ul>
    </div>
    <div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
        Copyright &copy; 2005-2016 传智商城 版权所有
    </div>
</div>
</div>


</body>
</html>
