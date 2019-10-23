<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style1.css">
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<%@include file="sigin.jsp"%>
	<%@include file="signup.jsp"%>
	<div class="col-md-6 sol-sm-8 col-xs-12"
		style="margin-left: auto; margin-right: auto; float: none;">
		<div class="w3l_main_grid1_w3ls_grid agileinfo_account_reset">
			<h3>Change Password</h3>
			<div class="w3_agile_main_left_grid_w3_agileits">
			<%
			project_Doa pd=new project_Doa();	
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			int id=0;
			try
			{
				String email=session.getAttribute("loginemail").toString();
				ResultSet rs=pd.userlogin(session.getAttribute("loginemail").toString());
				while(rs.next())
				{
					id=rs.getInt("uid");
				}
				if(id==0)
				{
					request.setAttribute("msg","changenoemail");
					rd.forward(request, response);
				}
			%>
				<form action="changepassword?id=<%=id%>"
					method="post">
					<div class="agileits_w3layouts_user">
						<i class="fa fa-key" aria-hidden="true"></i> <input
							type="password" name="oldpassword" placeholder="Old Password"
							required>
					</div>
					<div class="agileits_w3layouts_user">
						<i class="fa fa-key" aria-hidden="true"></i> <input
							type="password" name="password" placeholder="New Password"
							required>
					</div>
					<div class="agileits_w3layouts_user">
						<i class="fa fa-key" aria-hidden="true"></i> <input
							type="password" name="confirm" placeholder="Confirm Password"
							required>
					</div>
					<input type="submit" value="Send">
				</form>
				<%}
			catch(Exception e)
			{
				request.setAttribute("msg", "changelogin");
				rd.forward(request, response);
			} %>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<%@include file="js.jsp"%>
</body>
</html>