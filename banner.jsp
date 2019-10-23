<%@ page import="Database.*"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="requests.jsp" %>
<%@include file="sigin.jsp"%>
	<%@include file="signup.jsp"%>
	<%@include file="forgotpassword.jsp"%>
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse menu--shylock"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav menu__list">
							<li class="active menu__item menu__item--current"><a
								class="menu__link" href="index.jsp">Home <span
									class="sr-only">(current)</span></a></li>
							<li class=" menu__item"><a class="menu__link"
								href="about.jsp">About</a></li>
							<%
							try {
								Admin_Doa db = new Admin_Doa();
								ResultSet rs = db.getCategory();
								while (rs.next()) {
						%>
							<li class="dropdown menu__item"><a href="#"
								class="dropdown-toggle menu__link" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false"><%=rs.getString("category")%>
									<span class="caret"></span> </a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="agile_inner_drop_nav_info">
										<div class="col-sm-12 multi-gd-img">
											<ul class="multi-column-dropdown">
												<%
												try {
												ResultSet rr = db. getSubCategoryBycid(rs.getString("cid"));
												while (rr.next()) {
												%>
												<i></i>
												<li><a href="subcat.jsp?sid=<%=rr.getString("sid")%>"><%=rr.getString("sub_category")%></a></li>
												<%
													}
													} catch (Exception ee) {
													}			
													%>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<%
							}
							} catch (Exception ee) {
							}
						%>
							<li class=" menu__item"><a class="menu__link"
								href="contact.jsp">Contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="top_nav_right">
			<div class="wthreecartaits wthreecartaits2 cart cart box_1">
				<form action="#" method="post" class="last">
					<input type="hidden" name="cmd" value="_cart"> <input
						type="hidden" name="display" value="1">
					<button class="w3view-cart" name="submit" value="">
						<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //banner-top -->