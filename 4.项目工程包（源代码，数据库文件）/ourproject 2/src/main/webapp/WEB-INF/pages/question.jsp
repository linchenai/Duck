<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>Question</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/stepstyle.css" rel="stylesheet" type="text/css">

		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.js" type="text/javascript"></script>

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

					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">Set&nbsp;Safety&nbsp;Question</strong> /</div>
					</div>
					<hr/>
					<!--进度条-->
					<div class="m-progress">
						<div class="m-progress-list">
							<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">Set safety question</p>
                            </span>
							<span class="step-2 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                <p class="stage-name">Complete Change</p>
                            </span>
							<span class="u-progress-placeholder"></span>
						</div>
						<div class="u-progress-bar total-steps-2">
							<div class="u-progress-bar-inner"></div>
						</div>
					</div>
					<form:form class="am-form am-form-horizontal" modelAttribute="user" action="setQuestion" method="post" enctype="multipart/form-data">
						<div class="am-form-group select">
							<label for="user-question1" class="am-form-label">Question1</label>
							<div class="am-form-content">
								<form:select path="question1" >
									<form:option value="NULL" />Please Choose Questions
									<form:option value="What is your favorite color?"/>What is your favorite color?
									<form:option value="Where is your home?"/>Where is your home?
								</form:select>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-answer1" class="am-form-label">Answer</label>
							<div class="am-form-content">
								<form:input type="text" path="answer1" placeholder="Please enter the answer of question"/>
							</div>
						</div>
						<div class="am-form-group select">
							<label for="user-question2" class="am-form-label">Question2</label>
							<div class="am-form-content">
								<form:select path="question2" >
									<option value="NULL" >Please Choose Questions</option>
									<option value="What is your favorite color?">What is your favorite color?</option>
									<option value="Where is your home?">Where is your home? </option>
								</form:select>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-answer2" class="am-form-label">Answer</label>
							<div class="am-form-content">
								<form:input type="text" path="answer2" placeholder="Please enter the answer of question"/>
							</div>
						</div>
						<div class="info-btn">
							<input type="submit" name="" value="Save" class="am-btn am-btn-primary am-btn-sm">
						</div>

					</form:form >

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