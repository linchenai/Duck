<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>Address Management</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/addstyle.css" rel="stylesheet" type="text/css">
		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>


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

					<div class="user-address">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">Address Management</strong> / <small>Address&nbsp;list</small></div>
						</div>
						<hr/>
						<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">

							<li class="user-addresslist defaultAddr">
								<span class="new-option-r"><i class="am-icon-check-circle"></i>Default Address</span>
								<p class="new-tit new-p-re">
									<span class="new-txt">${requestScope.user.add_name}</span>
									<span class="new-txt-rd2">${requestScope.user.add_phone}</span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<%-- <span class="title">${requestScope.user.account}�</span> --%>
										<%-- <span class="province">${requestScope.user.add_P}</span>
										<span class="city">${requestScope.user.add_C}</span>
										<span class="dist">${requestScope.user.add_Z}</span> --%>
										<span class="street">${requestScope.user.add_Com}</span></p>
								</div>
								<!-- <div class="new-addr-btn">
									<a href="#"><i class="am-icon-edit"></i>Editor</a>
									<span class="new-addr-bar">|</span>
									<a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>delete</a>
								</div> -->
							</li>

							<!-- <li class="user-addresslist">
								<span class="new-option-r"><i class="am-icon-check-circle"></i>Set to Default</span>
								<p class="new-tit new-p-re">
									<span class="new-txt">DingDang</span>
									<span class="new-txt-rd2">159****1622</span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">Address：</span>
										<span class="province">Tianjin</span>
										<span class="city">Tianjin</span>
										<span class="dist">BinHai</span>
										<span class="street">HongDaStreet_No.23</span></p>
								</div>
								<div class="new-addr-btn">
									<a href="#"><i class="am-icon-edit"></i>Editor</a>
									<span class="new-addr-bar">|</span>
									<a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>delete</a>
								</div>
							</li> -->
							
							
						</ul>
						<div class="clear"></div>
						<a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">Add/SET Address</a>
						<!--例子-->
						<div class="am-modal am-modal-no-btn" id="doc-modal-1">

							<div class="add-dress">

								<!--标题 -->
								<div class="am-cf am-padding">
									<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">Add/SET Address</strong> / <small>Add/SET&nbsp;address</small></div>
								</div>
								<hr/>

								<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
									<form:form class="am-form am-form-horizontal" modelAttribute="user" action="setAddress" method="post" enctype="multipart/form-data">

										<div class="am-form-group">
											<label for="user-name" class="am-form-label">Name</label>
											<div class="am-form-content">
												<form:input type="text" path="add_name" placeholder="Enter your name"/>
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-phone" class="am-form-label">Phone Number</label>
											<div class="am-form-content">
												<form:input type="text" path="add_phone" placeholder="Enter your phone"/>
										</div>
										<div class="am-form-group">
											<label for="user-address" class="am-form-label">Address</label>
											<div class="am-form-content address">
												<form:select path="add_P" >
													<form:option value="TianJin"/>TianJin
													<form:option value="BeiJing"/>BeiJing
												</form:select>
												<form:select path="add_C" >
													<form:option value="TianJin"/>TianJin
													<form:option value="BeiJing"/>BeiJing
												</form:select>												
												<form:select path="add_Z" >
													<form:option value="NanKai"/>NanKai
													<form:option value="HePing" />HePing
												</form:select>
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-intro" class="am-form-label">Detailed Address</label>
											<div class="am-form-content">
												<form:input type="text" path="ass_detail" placeholder="Enter a detailed address"/>
												<small>Write your street detail address ...</small>
											</div>
										</div>

										<div class="am-form-group">
											<div class="am-u-sm-9 am-u-sm-push-3">
												<input type="submit" name="" value="Save" class="am-btn am-btn-primary am-btn-sm">
												
											</div>
										</div>
									</form:form>
								</div>

							</div>

						</div>

					</div>

					 <script type="text/javascript">
						$(document).ready(function() {							
							$(".new-option-r").click(function() {
								$(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
							});
							
							var $ww = $(window).width();
							if($ww>640) {
								$("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
							}
							
						})
					</script> 

					<div class="clear"></div>

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
							<li> <a href="safety">Safety</a></li>
							<li class="active"> <a href="address">Address</a></li>
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