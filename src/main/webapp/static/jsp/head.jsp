<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<c:if test="${empty user}">
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
					<li class="active"><a href="${pageContext.request.contextPath }/static/jsp/login.jsp">亲，请登录 <span class="sr-only">(current)</span></a></li>
					<li><a href="${pageContext.request.contextPath }/static/jsp/register.jsp">免费注册</a></li>
				</ul>


				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							<span id="icon" class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>我的淘宝<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/showAllLatest">商品按上架时间排序</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="${pageContext.request.contextPath }/static/jsp/cart.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							<span id="icon" class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> 购物车<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<c:if test="${empty cart}">
								<li><a href="${pageContext.request.contextPath }/static/jsp/cart.jsp">亲，购物车空空的哦！点击去购物车</a></li>
							</c:if>

                            <c:if test="${not empty cart}">
                                <c:forEach items="${cart.items}" var="item">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/static/jsp/cart.jsp"><img src="${pageContext.request.contextPath }/static/${item.product.pimage}" width="40px" height="40px" alt="">
                                                ${item.product.pname}</a>
                                    </li>
                                </c:forEach>
                            </c:if>

						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							<span id="icon" class="glyphicon glyphicon-star" aria-hidden="true"></span>收藏夹<span class="caret"></span></a>
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
</c:if>
<c:if test="${not empty user}">
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
					<li><a href="#">欢迎回来！亲爱的${user.name}</a></li>
					<li><a href="${pageContext.request.contextPath }/static/jsp/register.jsp">我的主页</a></li>
					<li><a href="#">我的订单</a></li>
					<li><a href="${pageContext.request.contextPath}/static/jsp/seller.jsp">我要开店</a></li>


				</ul>


				<ul class="nav navbar-nav navbar-right">
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
						<a href="${pageContext.request.contextPath }/static/jsp/cart.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							<span id="icon" class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> 购物车<span class="caret"></span></a>
						<ul class="dropdown-menu" >
							<c:if test="${empty cart}">
								<li><a href="${pageContext.request.contextPath }/static/jsp/cart.jsp">亲，购物车空空的哦！点击去购物车</a></li>
							</c:if>
                            <c:if test="${not empty cart}">
                                <c:forEach items="${cart.items}" var="item">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/static/jsp/cart.jsp"><img src="${pageContext.request.contextPath }/static/${item.product.pimage}" width="40px" height="40px" alt="">
                                                ${item.product.pname}</a>
                                    </li>
                                </c:forEach>
                            </c:if>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							<span id="icon" class="glyphicon glyphicon-star" aria-hidden="true"></span>收藏夹<span class="caret"></span></a>
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
</c:if>




















<%--         ----------------------------------------%>
<!--
            	时间：2015-12-30
            	描述：菜单栏
            -->
			<div class="container-fluid">
				<div class="col-md-3">
					<img src="${pageContext.request.contextPath}/static/img/logo.jpg" />
				</div>
				<div class="col-md-4">
					<img src="${pageContext.request.contextPath}/static/img/header.png" />
				</div>
				<div class="col-md-5" style="padding-top:20px">
					<ol class="list-inline">
						<c:if test="${empty user }">
							<li><a class="btn btn-warning" href="${pageContext.request.contextPath }/static/jsp/login.jsp">登录</a></li>
							<li><a class="btn btn-warning" href="${pageContext.request.contextPath }/static/jsp/register.jsp">注册</a></li>
						</c:if>
						<c:if test="${not empty user }">
							<img width="50px" height="60px" src="${pageContext.request.contextPath }/static/img/head1.PNG"  alt="">
							你好!&nbsp;${user.name }
							<li><a class="btn btn-warning" href="${pageContext.request.contextPath }/myOrder?pageNumber=1">我的订单</a></li>
							<li><a class="btn btn-warning" href="${pageContext.request.contextPath }/logout">退出</a></li>
						</c:if>
						<li><a class="btn btn-warning" href="${pageContext.request.contextPath }/static/jsp/cart.jsp">购物车</a></li>
					</ol>
				</div>
			</div>
			<!--
            	时间：2015-12-30
            	描述：导航条
            -->
			<div class="container-fluid" overflow:visible>
				<nav class="navbar navbar-inverse navbar-static-top">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="${pageContext.request.contextPath}">首页</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav" id="c_ul">
							</ul>
							<form action="${pageContext.request.contextPath}/search" class="navbar-form navbar-right" role="search">
								<div class="form-group">
									<input type="text" class="form-control" name="pname" placeholder="搜索商品" >
								</div>
								<button type="submit" class="btn btn-default">搜索</button>
							</form>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</div>
<script type="text/javascript">
	$(function(){

		//发送ajax 查询所有分类
		$.post("${pageContext.request.contextPath}/category",{},function(obj){
			//alert(obj);
			//遍历json列表,获取每一个分类,包装成li标签,插入到ul内部
			//$.each($(obj),function(){});
			$(obj).each(function(){
				//alert(this.cname);
				$("#c_ul").append("<li><a href='${pageContext.request.contextPath}/product?cid="+this.cid+"'>"+this.cname+"</a></li>");
			});
		},"json");
	})
</script>