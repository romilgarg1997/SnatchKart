<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<link href="<%=request.getContextPath()%>/css/hell.css" rel="stylesheet">
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<div class=container>
	<div class=row>
			<div class="modal-body modal-body-sub_agile">
				<div class="col-md-7 modal_body_left modal_body_left1" style="float:none; margin-left:auto;margin-right:auto">
					<h1 class="agileinfo_sign text-center">
						Sign Up
					</h1>
					<form action="signup" method="post">
						<div class="styled-input agile-styled-input-top">
							<input type="text" name="Name" required placeholder="Name">
							<span></span>
						</div>
						<div class="styled-input">
							<input type="email" name="Email" required placeholder="Email">
							<span></span>
						</div>
						<div class="styled-input">
							<input type="text" name="mobile" required placeholder="Mobile">
							<span></span>
						</div>
						<div class='input-group date ' id='datetimepicker1'>
							<input type='text' placeholder="Date of Birth" name=" dob"
								required /> <span class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
						<div class="styled-input">
							<input type="password" name="password" required
								placeholder="Password"> <span></span>
						</div>
						<div class="styled-input">
							<input type="password" name="Confirm" required
								placeholder="Confirm Password"> <span></span>
						</div>
						<input type="submit" value="Sign Up" style="margin-bottom:1.25rem"/>
					</form>
					<div class="clearfix"></div>
					<p>
						<a href="terms.jsp" target="_blank">By clicking register, I
							agree to your terms</a>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</div>
		<!-- //Modal content-->
		<%@include file="footer.jsp"%>
	<%@include file="js.jsp"%>
</body>
</html>