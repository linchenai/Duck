<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>Safety</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/infstyle.css" rel="stylesheet" type="text/css">
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
								<div class="menu-hd MyShangcheng"><a href="index" target="_top"><i class="am-icon-user am-icon-fw"></i>Center</a></div>
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

					<!--标题 -->
					<div class="user-safety">
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">Set&nbsp;up&nbsp;Safety</strong> /</div>
						</div>
						<hr/>

						<!--头像 -->
						<div class="user-infoPic">

							<div class="filePic">
								<img class="am-circle am-img-thumbnail" src="${requestScope.user.url} " alt="" />
							</div>

							<p class="am-form-help">Icon</p>

							<div class="info-m">
								<div><b>account:<i>${requestScope.user.account}</i></b></div>
								<div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">VIP</a>
						            </span>
								</div>
								<div class="u-safety">
									<a href="safety">
									 Safety Point:
									<span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">60</i></span>
									</a>
								</div>
							</div>
						</div>

						<div class="check">
							<ul>
								<li>
									<i class="i-safety-lock"></i>
									<div class="m-left">
										<div class="fore1">Login&nbsp;Password</div>
										<div class="fore2"><small>We recommend you change your password periodically to protect your account.</small></div>
									</div>
									<div class="fore3">
										<a href="To_password">
											<div class="am-btn am-btn-secondary">Change</div>
										</a>
									</div>
								</li>
								<li>
									<i class="i-safety-security"></i>
									<div class="m-left">
										<div class="fore1">Safety&nbsp;Questions</div>
										<div class="fore2"><small>One of the tools to protect your account and verify your identity.</small></div>
									</div>
									<div class="fore3">
										<a href="To_question">
											<div class="am-btn am-btn-secondary">Confirm</div>
										</a>
									</div>
								</li>
							</ul>
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
						<a href="index">Center</a>
					</li>
					<li class="person">
						<a href="#">Personal Data</a>
						<ul>
							<li> <a href="information">Information</a></li>
							<li class="active"> <a href="safety">Safety</a></li>
							<li> <a href="address">Address</a></li>
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
		</div>

	</body>

</html>