<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Base64"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style1.css">
<style>
.button-border-0 {
	background: none;
	border: none;
}

.resp-tab-active {
	background: black;
	color: white !important;
	border: 1px #ddd solid;
	border-bottom-color: transparent;
}

.imagePreview {
	width: 100%;
	height: 180px;
	background-position: center center;
	background:
		url(http://cliquecities.com/assets/no-image-e3699ae23f866f6cbdf8ba2443ee5c4e.jpg);
	background-color: #fff;
	background-size: cover;
	background-repeat: no-repeat;
	display: inline-block;
	box-shadow: 0px -3px 6px 2px rgba(0, 0, 0, 0.2);
}

.btn-primary {
	display: block;
	border-radius: 0px;
	box-shadow: 0px 4px 6px 2px rgba(0, 0, 0, 0.2);
	margin-top: -5px;
}

.imgUp {
	margin-bottom: 15px;
}

.del {
	position: absolute;
	top: 0px;
	right: 15px;
	width: 30px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	background-color: rgba(255, 255, 255, 0.6);
	cursor: pointer;
}

.imgAdd {
	width: 30px;
	height: 30px;
	border-radius: 50%;
	background-color: #4bd7ef;
	color: #fff;
	box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.2);
	text-align: center;
	line-height: 30px;
	margin-top: 0px;
	cursor: pointer;
	font-size: 15px;
}

.m15 {
	margin: 1.5rem 0 0 0;
	padding: 0 !important;
}

.p0 {
	padding: 0 !important;
}

.mb-3 {
	margin-bottom: 1rem !important;
}

.input {
	outline: none;
	padding: 10px 0;
	font-size: 1em;
	color: #fff;
	border: none;
	width: 50%;
	background: black;
	cursor: pointer;
	margin: 1.5em 0 0;
}

.d-none {
	display: none;
}
</style>
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<%@include file="sigin.jsp"%>
	<%@include file="signup.jsp"%>
	<div class=container style="padding-top: 1rem">
		<div class="col-md-10 col-sm-12 col-xs-12 form-horizontal"
			style="float: none; margin: auto">
			<div class="col-md-12">
				<div class="w3l_main_grid1_w3ls_grid agileinfo_account_reset">
					<div class="w3_agile_main_left_grid_w3_agileits">
						<div class=container-fluid>
							<div class=row>
								<div class=col-md-12>
									<h3>My Orders</h3>
									<div class="m15">
										<table class="table table-bordered text-center">
											<thead>
												<tr>
													<th>S.No</th>
													<th>Orders</th>
													<th>Total Amount</th>
													
												</tr>
											</thead>
											<tbody>
												<%
													try {
														Admin_Doa db = new Admin_Doa();
														ResultSet rs = db.getAllOrder();
														int r = 1;
														while (rs.next()) {
															if(rs.getString("email").equals(session.getAttribute("loginemail").toString())){
												%>
												<tr>
													<td><%=r++%></td>
													<td>
														<table class="table table-bordered text-center">
															<thead>
																<tr>
																	
																	<th>Product Name</th>
																	<th>Quantity</th>
																	<th>Item Price</th>
																</tr>
															</thead>
															<tbody>
																<%
																	Admin_Doa ad = new Admin_Doa();
																			String quanlist = rs.getString("quanlist");
																			String pidlist = rs.getString("pidlist");
																			int firstquan = quanlist.indexOf("[");
																			int lastquan = quanlist.indexOf("]");
																			int firstpid = pidlist.indexOf("[");
																			int lastpid = pidlist.indexOf("]");
																			String qnan = quanlist.substring(firstquan + 1, lastquan);
																			String pid = pidlist.substring(firstpid + 1, lastpid);
																			String[] quantity = qnan.split(",");
																			String[] product = pid.split(",");
																			for (int i = 0; i < quantity.length; i++) 
																			{
																				ResultSet rr = ad.getProductbypid(Integer.parseInt(product[i].trim()));
																				rr.next();
																%>
																<tr>
																	<td><%=rr.getString("proname")%></td>
																	<td><%=quantity[i]%></td>
																	<td><%=rr.getString("saleprice")%></td>
																</tr>
																<%
																	}
																%>
															</tbody>
														</table>
													</td>
													<td><%=rs.getString("amount")%></td>
													
												</tr>
												<%
													}
															else
															{
																%>
																<h2 class=text-center>No orders to show</h2>
																<%
															}
															}
													} catch (Exception ee) {
														System.out.print(ee);
													}
												%>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="js.jsp"%>
</body>
