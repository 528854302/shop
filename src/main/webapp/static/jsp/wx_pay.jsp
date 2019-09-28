<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8" />
    <title>微信支付 - 中国领先的第三方支付平台 ｜ 微信支付提供安全快捷的支付方式</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 引入自定义css文件 style.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css" type="text/css" />

</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <img alt="Brand" width="50px" height="50px" src="http://www.reallya.com/uploads/allimg/161028/1-16102PZ344633.jpg">
            </a>
        </div>
    </div>
</nav>

    <div class="container">
        <div class="row">
            <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/paying">
                <div class="form-group">
                    <label class="col-sm-2 control-label">订单号:</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${oid }</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">支付金额:</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${money}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">支付密码</label>
                    <div class="col-sm-10">
                        <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">支付密码</label>
                    <div class="col-sm-10">
                        <input type="submit" value="确认支付">
                    </div>
                </div>
            </form>
        </div>
    </div>

</body>
</html>
