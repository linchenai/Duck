<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>Information</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/infstyle.css" rel="stylesheet" type="text/css">
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
									<a href="login.jsp" target="_top" class="h">Login</a>
									<a href="register.jsp" target="_top">Register</a>
									${requestScope.user.account} Welcome!
								</div>
							</div>
						</ul>
						<ul class="message-r">
							<div class="topMessage home">
								<div class="menu-hd"><a href="index.jsp" target="_top" class="h">HOME</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="To_per_index" target="_top"><i class="am-icon-user am-icon-fw"></i>Center</a></div>
							</div>
							<div class="topMessage mini-cart">
								<div class="menu-hd"><a id="mc-menu-hd" href="shop-cart.jsp" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>Shop Cart</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
							</div>
							<div class="topMessage favorite">
								<div class="menu-hd"><a href="wish-list.jsp" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>Wish List</span></a></div>
						</ul>
						</div>

						

						<div class="nav white">
							<div class="logoBig">
								<li><a href="index.jsp"><img src="images/logo-web.png"/></a></li>
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

					<div class="user-info">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">Information</strong> / <small>Personal&nbsp;information</small></div>
						</div>
						<hr/>
						
						<form:form class="am-form am-form-horizontal" modelAttribute="user" action="info" method="post" enctype="multipart/form-data">
						
						<div class="user-infoPic">

							<div class="filePic">
								pho<input type="file" name="photo" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
								<!-- <img class="am-circle am-img-thumbnail" src=""  alt="" /> -->
							</div>

							<p class="am-form-help">Photo</p>

							<div class="info-m">
								<div><b>Name:<i>${requestScope.user.account}</i></b>
							</div>
								<div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">Vip1</a>
						            </span>
								</div>
								<div class="u-safety">
									<a href="To_safety">
									 Safety
									<span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">60%</i></span>
									</a>
								</div>
							</div>
						</div>

						<!--个人信息 -->
						<div class="info-main">
						

								<div class="am-form-group">
									<label for="user-name2" class="am-form-label">NickName</label>
									<div class="am-form-content">
										<form:input  type="txt" path="nickname" placeholder="nickname"/><br>
										<form:errors path="nickname"  cssStyle="color:red"/>
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-name" class="am-form-label">RealName</label>
									<div class="am-form-content">
										<form:input type="text" path="name" placeholder="name"/>

									</div>
								</div>

								<div class="am-form-group">
									<label class="am-form-label">Sex</label>
									<div class="am-form-content sex">
										<label class="am-radio-inline"/>
											<form:radiobutton path="gender" value="male"/>male
										</label>
										<label class="am-radio-inline">
											<form:radiobutton path="gender" value="female"/>female
										</label>
										<label class="am-radio-inline">
											<form:radiobutton path="gender" value="secret" />secret
										</label>
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-birth" class="am-form-label">Birthday</label>
									<div class="am-form-content birth">
										<div class="birth-select">
											<form:select path="birthday_Y" >
												<form:option value="1998">1998</form:option>
												<form:option value="1999">1999</form:option>
												<form:option value="2000">2000</form:option>
												<form:option value="2001">2001</form:option>
												<form:option value="2002">2002</form:option>
											 </form:select>
											<em>Y</em>
										</div>
										<div class="birth-select2">
											<form:select path="birthday_M" >
												<form:option value="1">1</form:option>
												<form:option value="2">2</form:option>
												<form:option value="3">3</form:option>
												<form:option value="4">4</form:option>
												<form:option value="5">5</form:option>
												<form:option value="6">6</form:option>
												<form:option value="7">7</form:option>
												<form:option value="8">8</form:option>
												<form:option value="9">9</form:option>
												<form:option value="10">10</form:option>
												<form:option value="11">11</form:option>
												<form:option value="12">12</form:option>
												
											 </form:select>
											<em>M</em></div>
										<div class="birth-select2">
											<form:select path="birthday_D" >
												<form:option value="1">1</form:option>
												<form:option value="2">2</form:option>
												<form:option value="3">3</form:option>
												<form:option value="4">4</form:option>
												<form:option value="5">5</form:option>
												<form:option value="6">6</form:option>
												<form:option value="7">7</form:option>
												<form:option value="8">8</form:option>
												<form:option value="9">9</form:option>
												<form:option value="10">10</form:option>
												<form:option value="11">11</form:option>
												<form:option value="12">12</form:option>
											 </form:select>
											<em>D</em></div>
									</div>
							
								</div>
								<div class="am-form-group">
									<label for="user-phone" class="am-form-label">Phone</label>
									<div class="am-form-content">
										<form:input path="phone" id="user_phone" placeholder="telephonenumber" type="tel"/>

									</div>
								</div>
								<div class="am-form-group">
									<label for="user-email" class="am-form-label">Email</label>
									<div class="am-form-content">
										<form:input path="email" placeholder="Email" type="email"/>

									</div>
								</div>
								
								<div class="info-btn">
									<div class="am-btn am-btn-danger">
									<input type="submit" name="" value="Save" class="am-btn am-btn-primary am-btn-sm">
									</div>
								</div>

							</form:form>
								
								
								<div class="am-form-group address">
									<label for="user-address" class="am-form-label">Address</label>
									<div class="am-form-content address">
										<a href="address.jsp">
											<p class="new-mu_l2cw">
												<span class="province">HuBei</span>
												<span class="city">WuHan</span>
												<span class="dist">HongShan</span>区
												<span class="street">XiongChuStreet_NO.666</span>
												<span class="am-icon-angle-right"></span>
											</p>
										</a>

									</div>
								</div>
								<div class="am-form-group safety">
									<label for="user-safety" class="am-form-label">Safety</label>
									<div class="am-form-content safety">
										<a href="safety.jsp">
											<span class="am-icon-angle-right"></span>
										</a>
									</div>
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
						<a href="index.jsp">Center</a>
					</li>
					<li class="person">
						<a href="#">Personal Data</a>
						<ul>
							<li class="active"> <a href="information.jsp">Information</a></li>
							<li> <a href="To_safety">Safety</a></li>
							<li> <a href="address.jsp">Address</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">My Deal</a>
						<ul>
							<li><a href="order.jsp">Order</a></li>
							
						</ul>
					</li>
					<li class="person">
						<a href="#">My Home</a>
						<ul>
							
							<li> <a href="comment.jsp">Comment</a></li>
						</ul>
					</li>

				</ul>

			</aside>
		</div>

	</body>

</html>