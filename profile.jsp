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
</style>
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<%@include file="sigin.jsp"%>
	<%@include file="signup.jsp"%>
	<div class=container style="padding-top: 1rem">
		<div class="col-md-10 col-sm-12 col-xs-12 form-horizontal"
			style="float: none; margin: auto">
			<form action="profile" method="post" enctype="multipart/form-data">
				<div class="col-md-12"
					style="margin-left: auto; margin-right: auto; float: none;">
					<%
						project_Doa pd = new project_Doa();
						String email = session.getAttribute("loginemail").toString();
						session.setAttribute("loginemail", email);
						if (email != null) {
							try {
								ResultSet rs = pd.userlogin();
								while (rs.next()) {
									if (rs.getString("email").equals(email)) {
					%>
					<div class="w3l_main_grid1_w3ls_grid agileinfo_account_reset">
						<div class="w3_agile_main_left_grid_w3_agileits">
							<div class="row" style="padding: 2.5rem; border: 1px gray solid;">
								<!-- left column -->
								<div class="col-md-4" style="margin-top: 12.5%">
									<div class="col-md-12 imgUp">
										<div class="imagePreview">
											<%
												if (rs.getBlob("img") != null) {
													Blob blob = rs.getBlob("img");
													InputStream inputStream = blob.getBinaryStream();
													ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
													byte[] buffer = new byte[4096];
													int bytesRead = -1;
													while ((bytesRead = inputStream.read(buffer)) != -1) {
														outputStream.write(buffer, 0, bytesRead);
													}
													byte[] imageBytes = outputStream.toByteArray();
													String base64Image = Base64.getEncoder().encodeToString(imageBytes);
											%>
											<img src="data:image/jpg;base64,<%=base64Image%>" alt="" width=100%
												height=100% />
											<%
												}
											%>
										</div>
										<label class="btn btn-primary"> Upload<input
											type="file" class="uploadFile img" value="Upload Photo"
											style="width: 0px; height: 0px; overflow: hidden;"
											name="file" />
										</label>
									</div>
									<!-- col-2 -->
								</div>
								<div class="col-md-8 personal-info">
									<h3>Personal info</h3>
									<div class="form-group">
										<label class="col-lg-3 control-label">Name:</label>
										<div class="col-lg-8">
											<input type="text" name="uname" placeholder="Name" required
												class="m15" value="<%=rs.getString("name")%>">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Email:</label>
										<div class="col-lg-8">
											<input type="email" name="email" placeholder="Email Id"
												required class="m15" value=<%=rs.getString("email")%>>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Mobile:</label>
										<div class="col-lg-8">
											<input type="text" name="mobile" placeholder="Mobile No"
												required class="m15" value=<%=rs.getString("mobile")%>>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">DOB:</label>
										<div class="col-lg-8">
											<div class='input-group date ' id='datetimepicker1'>
												<input type='text' placeholder="Date of Birth" name="dob"
													class="m15" required value="<%=rs.getString("dob")%>">
												<span class="input-group-addon"> <span
													class="glyphicon glyphicon-calendar"></span>
												</span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<input type="submit" class="btn btn-default"
												value="Save Changes" id="submit">
										</div>
									</div>
								</div>
								<div class=clearfix></div>
							</div>
						</div>
					</div>
					<%
						}
								}
							} catch (Exception e) {
							}
						} else {
							RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
							request.setAttribute("msg", "profilenosession");
							rd.forward(request, response);
						}
					%>
				</div>
			</form>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<%@include file="js.jsp"%>
</body>
