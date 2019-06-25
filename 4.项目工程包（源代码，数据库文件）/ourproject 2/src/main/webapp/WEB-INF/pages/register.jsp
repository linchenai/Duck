<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%--     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head lang="en">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Register</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="AmazeUI-2.4.2/assets/css/amazeui.min.css" />
		<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>

	<body>

		<div class="login-boxtitle">
			<a href="home/demo"><img alt="" src="images/logo-web.png" /></a>
		</div>

		<div class="res-banner">
			<div class="res-main">
				<div class="login-banner-bg"><span></span><img class="banner" src="images/769/big.jpg"></div>
				<div class="login-box">

						<div class="am-tabs" id="doc-my-tabs">
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="">Mail Register</a></li>
								<li><a href="">Phone Register</a></li>
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-active">
							
							<form  action="register" method="post" enctype="multipart/form-data" >
										
							  		<div class="user-email">
										<label for="email"><i class="am-icon-envelope-o"></i></label>
										<input type="email"   name="username"  placeholder="Please enter your email"/>
                					</div>										
                 					
                 					<div class="user-pass">
								    	<label for="password"><i class="am-icon-lock"></i></label>
								   		<input type="password" name="password"  placeholder="Set Password"/>
                 					</div>										
                 
                 					<div class="user-pass">
								    	<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    	<input type="password" name="passwordRepeat" id="passwordRepeat" placeholder="Confirm Password">
                  					</div>	
                 						
                 					
                 
								 	<!-- <div class="login-links">
										<label for="reader-me">
											<input id="reader-me" type="checkbox">Click to indicate that you agree to the Mall "Service Agreement"
										</label>
							  		</div> -->
							  		
							  		<div class="am-cf">
											<input type="submit" name="" value="Register" class="am-btn am-btn-primary am-btn-sm am-fl">
									</div>
                 
                 			</form>


								</div>
							</div>
							
							
								<%--  <div class="am-tab-panel">
								<form method="post">
                 					<div class="user-phone">
								   	 	<label for="phone"><i class="am-icon-mobile-phone am-icon-md"></i></label>
								   	 	<input type="tel" name="" id="phone" placeholder="Please enter your phone number">
               						</div>																			
										
										<div class="verification">
											<label for="code"><i class="am-icon-code-fork"></i></label>
											<input type="tel" name="" id="code" placeholder="Please enter the verification code">
											<a class="btn" href="javascript:void(0);" onclick="sendMobileCode();" id="sendMobileCode">
												<span id="dyMobileButton">Send</span></a>
										</div>
                 					
                 					<div class="user-pass">
								    	<label for="password"><i class="am-icon-lock"></i></label>
								    	<input type="password" name="" id="password" placeholder="Set Password">
                	 				</div>										
                 					
                 					<div class="user-pass">
								    	<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    	<input type="password" name="" id="passwordRepeat" placeholder="Confirm Password">
                					</div>	
									
								</form>
								 		<div class="login-links">
											<label for="reader-me">
											<input id="reader-me" type="checkbox"> Click to indicate that you agree to the Mall "Service Agreement"
										</label>
							  			</div>
										<div class="am-cf">
											<input type="submit" name="" value="Register" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>
								
									<hr>
								</div>  --%>

								<script>
									$(function() {
									    $('#doc-my-tabs').tabs();
									  })
								</script>

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
       <em>� 2015-2025 fightduck.com none rights reserved</em>
      </p >
 </div>
</div>
	</body>

</html>