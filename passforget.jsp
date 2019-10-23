<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style1.css">
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<%@include file="sigin.jsp"%>
	<%@include file="signup.jsp"%>
	<%
		if (request.getAttribute("msg") != null) {
			if (request.getAttribute("msg") == "forgotchangenotsame") {
	%>
	<script>
		Swal.fire({
			type : 'error',
			title : 'Oops...',
			text : 'Something went wrong!'
		})
	</script>
	<%
		}
		}
	%>
	<div class="col-md-6 sol-sm-8 col-xs-12"
		style="margin-left: auto; margin-right: auto; float: none;">
		<div class="w3l_main_grid1_w3ls_grid agileinfo_account_reset">
			<h3>Password Reset</h3>
			<div class="w3_agile_main_left_grid_w3_agileits">
				<form action="passforgetchange?id=<%=request.getParameter("id")%>&rc=<%=request.getParameter("rc")%>"
					method="post">
					<div class="agileits_w3layouts_user">
						<i class="fa fa-key" aria-hidden="true"></i> <input
							type="password" name="Password" placeholder="New Password"
							required>
					</div>
					<div class="agileits_w3layouts_user">
						<i class="fa fa-key" aria-hidden="true"></i> <input
							type="password" name="confirm" placeholder="Confirm Password"
							required>
					</div>
					<input type="submit" value="Change">
				</form>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<%@include file="js.jsp"%>
</body>
</html>