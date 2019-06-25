<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
		
		<title>Comment Management</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/cmstyle.css" rel="stylesheet" type="text/css">

		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>
	</head>
	<body>
		<header>
			<article>
				<div class="mt-logo">
					<div class="am-container header">
						<ul class="message-l">
							<div class="topMessage">
								<div class="menu-hd">
									<a href="login" target="_top" class="h">Login</a>&emsp;
									<a href="register" target="_top">Register</a>
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
								<div class="menu-hd"><a href="wish-list.html" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>Wish List</span></a></div>
						</ul>
						</div>
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
					<div class="user-comment">
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">Comment</strong> / <small>Manage&nbsp;Comment</small></div>
						</div>
						<hr/>
						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>
							<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">All</a></li>
								<li><a href="#tab2">With Photo</a></li>
							</ul>
							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<div class="comment-main">
										<div class="comment-list">
											<ul class="item-list">
												<div class="comment-top">
													<div class="th th-price">
														<td class="td-inner">comment</td>
													</div>
													<div class="th th-item">
														<td class="td-inner">product</td>
													</div>													
												</div>
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="images/product/01.jpg" class="itempic">
														</a>
													</div>
												</li>
												<li class="td td-comment">
													<div class="item-title">
														<div class="item-opinion">Satisfied</div>
														<div class="item-name">
															<a href="#">
																<p class="item-basic-info">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Salad</p>
															</a>
														</div>
													</div>
													<div class="item-comment">
														The delivery's very fast. I'll buy it again.
														</div>
													<div class="item-info">
														<div>
															<p class="info-little"></p>
															<p class="info-time">2017-12-24</p>
														</div>
													</div>
												</li>
												<div class="comment-top">											
												</div>
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="images/product/010.jpg" class="itempic">
														</a>
													</div>
												</li>
												<li class="td td-comment">
													<div class="item-title">
														<div class="item-opinion">Satisfied</div>
														<div class="item-name">
															<a href="#">
																<p class="item-basic-info">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Tomato</p>
															</a>
														</div>
													</div>
													<div class="item-comment">
													It's very fresh! But the delivery's a little slow. It would have been better if it had been faster. I'll buy it again.
													</div>
													<div class="item-info">
														<div>
															<p class="info-little"></p>
															<p class="info-time">2018-01-01</p>
														</div>
													</div>
												</li>
												<div class="comment-top">											
												</div>
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="images/product/06.jpg" class="itempic">
														</a>
													</div>
												</li>
												<li class="td td-comment">
													<div class="item-title">
														<div class="item-opinion">Satisfied</div>
														<div class="item-name">
															<a href="#">
																<p class="item-basic-info">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Apple</p>
															</a>
														</div>
													</div>
													<div class="item-comment">
														It's very sweet! I love it very much!
													</div>
													<div class="item-info">
														<div>
															<p class="info-little"></p>
															<p class="info-time">2018-02-03</p>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
    			   <em>� 2015-2025 fightduck.com none rights reserved</em>
    				</p >
				</div>
				</div>
			</div>
			<aside class="menu">
				<ul>
					<li class="person">
						<a href="per_index">Center</a>
					</li>
					<li class="person">
						<a href="#">Personal Data</a>
						<ul>
							<li> <a href="information">Information</a></li>
							<li> <a href="safety">Safety</a></li>
							<li> <a href="address">Address</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">My Deal</a>
						<ul>
							<li><a href="order">Order</a></li>
							<li class="active"> <a href="comment">Comment</a></li>
						</ul>
					</li>
				</ul>
			</aside>
		</div>
	</body>
</html>