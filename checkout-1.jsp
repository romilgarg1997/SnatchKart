<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<link href="<%=request.getContextPath()%>/css/hell.css" rel="stylesheet">
<body>
<%
try{
String email=session.getAttribute("loginemail").toString();
if(!email.equals(null)){response.sendRedirect("checkout-2.jsp");}
}catch(Exception e){}
	%>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<div class="container">
		<div class=row>
			<div class="checkout_details_area checkout-1 mt-50 clearfix">
				<div class="row" style="margin: 20px">
					<div class="col-md-6">
						<h3>Checkout as a Guest or Register</h3>
						<p>Register with us for future convenience:</p>
						<div class="custom-control custom-radio">
							<input type="radio" id="customRadio1" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label" for="customRadio1">Checkout
								as Guest</label>
						</div>
						<div class="custom-control custom-radio">
							<input type="radio" id="customRadio2" name="customRadio"
								class="custom-control-input"> <label
								class="custom-control-label" for="customRadio2">Register</label>
						</div>
						<br>
						<h5>Register and save time!</h5>
						<p>Register with us for future convenience:</p>
						<p>
							<i class="fa fa-dot-circle-o" aria-hidden="true"></i> Fast and
							easy check out <br> <i class="fa fa-dot-circle-o"
								aria-hidden="true"></i> Easy access to your order history and
							status
						</p>
						<a onclick="click1();" class="btn bigshop-btn">Continue</a>
					</div>
					<div class="col-md-6">
						<h3>Login</h3>
						<p>Already registered? Please log in below:</p>
						<form action="signin" method="post">
							<div class="form-group">
								<label for="email">Email address</label> <input type="email"
									class="form-control" id="email" aria-describedby="emailHelp"
									placeholder="Enter email" name="email"> 
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" placeholder="Password" name="password">
							</div>
							<div class="form-check">
								<div class="custom-control custom-checkbox">
								</div>
							</div>
							<button type="submit" class="btn bigshop-btn">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
	function click1(){
		if(document.getElementById('customRadio1').checked) {window.location.href = "checkout-2.jsp";}
		else if(document.getElementById('customRadio2').checked) {window.location.href = "signupsep.jsp";}
	}
	</script>
	<%@include file="js.jsp"%>
</body>
</html>