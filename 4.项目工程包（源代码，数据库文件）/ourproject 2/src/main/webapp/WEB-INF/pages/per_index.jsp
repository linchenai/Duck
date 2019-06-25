<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>Home</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">
		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/systyle.css" rel="stylesheet" type="text/css">

	</head>
	<body>
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<!--顶部导航条 -->
					<div class="am-container header">
						<ul class="message-l">
							<div class="topMessage">
								<div class="menu-hd">
									<a href="login" target="_top" class="h">Login</a>
									<a href="register" target="_top">Register</a>
           						 		${requestScope.user.account} Welcome!
								</div>
							</div>
						</ul>
						<ul class="message-r">
							<div class="topMessage home">
								<div class="menu-hd"><a href="index" target="_top" class="h">HOME</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="To_per_index" target="_top"><i class="am-icon-user am-icon-fw"></i>Center</a></div>
							</div>
							<div class="topMessage mini-cart">
								<div class="menu-hd"><a id="mc-menu-hd" href="shop-cart" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>Shop Cart</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
							</div>
							<div class="topMessage favorite">
								<div class="menu-hd"><a href="wish-list" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>Wish List</span></a></div>
						</ul>
						</div>

						<!--悬浮搜索框-->

						<div class="nav white">
							<div class="logoBig">
								<li><a href="index"><img src="images/logo-web.png"/></a></li>
							</div>

							<div class="search-bar pr">
								<form>
									<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="Search" autocomplete="off">
									<input id="ai-topsearch" class="submit am-btn" value="Search" index="1" type="submit">
								</form>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
			</article>
		</header>
		
		<div class="nav-table">
			<div class="long-title"><span class="all-goods">Functions</span></div>
		</div>
		<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
					<div class="wrap-left">
						<div class="wrap-list">
							<div class="m-user" style="background-image: url(images/769/header-bg.png);">
								<!--个人信息 -->
								<div class="m-bg"></div>
								<div class="m-userinfo">
									<div class="m-baseinfo">
										<a href="information">
											<img src="images/769/getAvatar.do.jpg">
										</a>
										<em class="s-name">${requestScope.username}<span class="vip1"></em>
									</div>
								</div>
							</div>
							<div class="box-container-bottom"></div>

							<!--订单 -->
							<div class="m-order">
								<div class="s-bar">
									<i class="s-icon"></i>Order
									<a class="i-load-more-item-shadow" href="order">All</a>
								</div>
								<ul>
									<li><a href="order"><i><img src="images/769/pay.png"/></i><span>Payment</span></a></li>
									<li><a href="order"><i><img src="images/769/send.png"/></i><span>Delivery<em class="m-num">1</em></span></a></li>
									<li><a href="order"><i><img src="images/769/receive.png"/></i><span>Pick up</span></a></li>
									<li><a href="order"><i><img src="images/769/comment.png"/></i><span>Comment<em class="m-num">3</em></span></a></li>
									<li><a href="change"><i><img src="images/769/refund.png"/></i><span>Change</span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
 					<p>
    			   <em>DuckScience</em> 
    			   <b>|</b>
    			   <a href=" " >ShopHome</a >
    			   <b>|</b>
    			   <a href="https://www.alipay.com/" >Alipay</a >
    			   <b>|</b>
    				</p >
 				</div>
				<div class="footer-bd">
					<p>
      			   <em>About duck </em>
    			   <em>Cooperation:TDuck/DuckDong/Yaduoduo</em>
    			   <em>Contact us:TEL-18034567890 MAIL-duckscience@gmail.com</em>
    			   <em>© 2015-2025 fightduck.com none rights reserved</em>
    				</p >
				</div>
				</div>
			</div>
			<aside class="menu">
				<ul>
					<li class="person">
						<a href="To_per_index">Center</a>
					</li>
					<li class="person">
						<a href="#">Personal Data</a>
						<ul>
							<li> 				<a href="To_information">Information</a></li>
							<li class="active"> <a href="To_safety">Safety</a></li>
							<li> 				<a href="To_address">Address</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">My Deal</a>
						<ul>
							<li><a href="order">Order</a></li>
							
						</ul>
					</li>
					<li class="person">
						<a href="#">My Home</a>
						<ul>
							
							<li> <a href="comment">Comment</a></li>
						</ul>
					</li>

				</ul>

			</aside>
	</body>

</html>