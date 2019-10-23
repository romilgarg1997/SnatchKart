<%@ page import="Database.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Base64"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<div class="header" id="home">
	<div class="container">
		<ul>
			<li><i class="fa fa-phone" aria-hidden="true"></i> Call : +91
				8685 921111</li>
			<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a
				href="mailto:infosnatchkart@gmail.com">infosnatchkart@gmail.com</a></li>
			<%
				if (session.getAttribute("loginuser") == null) {
			%>
			<li><a href="#" data-toggle="modal" data-target="#myModal2"><i
					class="fa fa-pencil-square-o" aria-hidden="true"></i> Sign Up </a></li>
			<li><a href="#" data-toggle="modal" data-target="#myModal"><i
					class="fa fa-unlock-alt" aria-hidden="true"></i> Sign In </a></li>
			<%
				} else {session.setAttribute("loginuser", session.getAttribute("loginuser"));
				session.setAttribute("loginemail", session.getAttribute("loginemail"));
			%>
			<li style="border: none;"><a href="#"></a></li>
			<li class="dropdown menu__item"><a href="#"
				class="dropdown-toggle menu__link" data-toggle="dropdown"
				role="button" aria-haspopup="true" aria-expanded="false"> <i
					class="fa fa-pencil-square-o" aria-hidden="true"></i> <%=session.getAttribute("loginuser")%>
					<span class="caret"></span>
			</a>
				<ul class="dropdown-menu multi-column columns-3">
					<div class="agile_inner_drop_nav_info">
						<div class="col-sm-12 multi-gd-img">
							<ul style="display: grid;" class="multi-column-dropdown">
								<li style="border: 0px;"><a href="profile.jsp">Profile</a></li>
								<li style="border: 0px; width: 100%;"><a href="address.jsp">Manage Adresses</a></li>
								<li style="border: 0px; width: 100%;"><a href="orders.jsp">View All Orders</a></li>
								<li style="border: 0px; width: 100%;"><a href="changepassword.jsp">Change
										Password</a></li>
								<li style="border: 0px"><a href="signout">Logout</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
				</ul></li>
			<%
				}
			%>
		</ul>
	</div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
	<div class="header-bot_inner_wthreeinfo_header_mid">
		<div class="col-md-4 header-middle">
		</div>
		<!-- header-bot -->
		<div class="col-md-4 logo_agile">
			<h1>
				<a href="index.jsp"><img width=100% height=70%
					src="images/logo.jpg" /></a>
			</h1>
		</div>
		<!-- header-bot -->
		<div class="col-md-4 agileits-social top_content">
			<ul class="social-nav model-3d-0 footer-social w3_agile_social">
				<li class="share">Share On :</li>
				<li><a href="#" class="facebook">
						<div class="front">
							<i class="fa fa-facebook" aria-hidden="true"></i>
						</div>
						<div class="back">
							<i class="fa fa-facebook" aria-hidden="true"></i>
						</div>
				</a></li>
				<li><a href="#" class="twitter">
						<div class="front">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</div>
						<div class="back">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</div>
				</a></li>
				<li><a href="#" class="instagram">
						<div class="front">
							<i class="fa fa-instagram" aria-hidden="true"></i>
						</div>
						<div class="back">
							<i class="fa fa-instagram" aria-hidden="true"></i>
						</div>
				</a></li>
				<li><a href="#" class="pinterest">
						<div class="front">
							<i class="fa fa-linkedin" aria-hidden="true"></i>
						</div>
						<div class="back">
							<i class="fa fa-linkedin" aria-hidden="true"></i>
						</div>
				</a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header-bot -->