<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head lang="en">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="AmazeUI-2.4.2/assets/css/amazeui.css" />
		<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
	</head>

	<body>

		<div class="login-boxtitle">
			<a href="home"><img alt="logo" src="images/logo-web.png" /></a>
		</div>

		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img class="banner" src="images/769/big.jpg"></div>
				<div class="login-box">

							<h3 class="title">Login Shop</h3>

							<div class="clear"></div>
							
							
							<form:form modelAttribute="user" action="login" method="post" enctype="multipart/form-data" >
						
							<div class="login-form">
						  
						  		
							  
							   	<div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <form:input  path="account" placeholder="mail/phone/ID" />
								    <form:errors path="account"  cssStyle="color:red" />
                 			  	</div>
                 				
                 				<div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
									<form:password path="password" placeholder="Please enter the key" />
								    <form:errors path="password"  cssStyle="color:red"/>				    
                 				</div>
                 				
                 			</div>
								    
                 
            
           					 <div class="login-links">
                				
								<a href="register" class="zcnext am-fr am-btn-default">Register</a>
								<br />
            				 </div>
								
					
					 				<div class="am-cf">
									<input type="submit" name="" value="Login" class="am-btn am-btn-primary am-btn-sm">
									</div>
								
								</form:form>
					
					
					
						<div class="partner">		
								<h3>Cooperative account</h3>
							<div class="am-btn-group">
								<li><a href="#"><i class="am-icon-qq am-icon-sm"></i><span>QQ</span></a></li>
								<li><a href="#"><i class="am-icon-weibo am-icon-sm"></i><span>Weibo</span> </a></li>
								<li><a href="#"><i class="am-icon-weixin am-icon-sm"></i><span>Wechat</span> </a></li>
							</div>
						</div>	
						
						       
						
						
					</div>

				</div>
			</div>
		</div>


					<div class="footer" >
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
	</body>

</html>