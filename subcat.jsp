<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<%
		Admin_Doa db = new Admin_Doa();
		ResultSet rr = db.getSubCategoryBysid(request.getParameter("sid"));
		rr.next();
	%>
	<%
		if (rr.getString("category").equals("Men's")) {
	%>
		<div class="page-head_agile_info_w3l"
		style="background: url(images/inner2.jpg) no-repeat center;">
		<%
			} else {
		%>
		<div class="page-head_agile_info_w3l"
		style="background: url(images/inner1.jpg) no-repeat center;">
			<%
				}
			%>
			<div class="container">
				<h3>
					<%=rr.getString("category")%>
					<span><%=rr.getString("sub_category")%> </span>
				</h3>
				<div class="services-breadcrumb">
					<div class="agile_inner_breadcrumb">
						<ul class="w3_short">
							<li><a href="index.jsp">Home</a><i>|</i></li>
							<li><%=rr.getString("category")%> <%=rr.getString("sub_category")%></li>
						</ul>
					</div>
				</div>
				<!--//w3_short-->
			</div>
		</div>
		<div class="banner-bootom-w3-agileits">
			<div class="container">
				<!-- mens -->
				<div class="col-md-12 products-right">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<%
								if (rr.getString("category").equals("Men's")) {
							%><li data-target="#myCarousel" data-slide-to="0" class=""></li>
							<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="4" class=""></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="item">
								<div class="container">
									<div class="carousel-caption"></div>
								</div>
							</div>
							<div class="item item2 active">
								<div class="container">
									<div class="carousel-caption"></div>
								</div>
							</div>
							<div class="item item5">
								<div class="container">
									<div class="carousel-caption"></div>
								</div>
							</div>
						</div>
						<%
							} else {
						%>
						<li data-target="#myCarousel" data-slide-to="0" class=""></li>
						<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="3" class=""></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="item">
								<div class="container">
									<div class="carousel-caption"></div>
								</div>
							</div>
							<div class="item item3 active">
								<div class="container">
									<div class="carousel-caption"></div>
								</div>
							</div>
							<div class="item item4">
								<div class="container">
									<div class="carousel-caption"></div>
								</div>
							</div>
						</div>
						<%
							}
						%>
						<a class="left carousel-control" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
						<!-- The Modal -->
					</div>
				</div>
			</div>
		</div>
		<div class=container>
			<div class=col-md-12>
				<div class="single-pro">
					<h3 class="wthree_text_info">
						Exclusive
						<%=rr.getString("category")%>
						<span><%=rr.getString("sub_category")%> Collection</span>
					</h3>
					<%
						if (request.getParameter("sid") != null) {
							try {
								ResultSet rs = db.getProductBySid(request.getParameter("sid"));
								int r = 1;
								if (rs.next()) {
									rs.previous();
									while (rs.next()) {
										if(rs.getInt("quantity")>0)
										{
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
					<div class="col-md-3 product-men col-sm-6 col-xs-12">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="data:image/jpg;base64,<%=base64Image%>" alt=""
									class="pro-image-front"> <img
									src="data:image/jpg;base64,<%=base64Image%>" alt=""
									class="pro-image-back">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.jsp?pid=<%=rs.getString("pid")%>"
											class="link-product-add-cart">Quick View</a>
									</div>
								</div>
							</div>
							<div class="item-info-product ">
								<h4>
									<a href="single.jsp"><%=rs.getString("proname")%></a>
								</h4>
								<div class="info-product-price">
									<span class="item_price">&#8377;<%=rs.getString("saleprice")%></span>
									<del>
										&#8377;<%=rs.getString("regprice")%></del>
								</div>
								<div
									class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
									<form action="#" method="post">
										<fieldset>
											<input type="hidden" name="cmd" value="_cart"> <input
												type="hidden" name="add" value="1"> <input
												type="hidden" name="business" value=" "> <input
												type="hidden" name="item_name"
												value="<%=rs.getString("proname")%>"> <input
												type="hidden" name="my" value="<%=rs.getString("pid")%>" />
											<input type="hidden" name="amount"
												value="<%=rs.getString("regprice")%>"> <input
												type="hidden" name="discount_amount"
												value="<%=rs.getInt("regprice") - rs.getInt("saleprice")%>">
											<input type="hidden" name="currency_code" value="INR">
											<input type="hidden" name="return" value=" "> <input
												type="hidden" name="cancel_return" value=" "> <input
												type="submit" name="submit" value="Add to cart"
												class="button">
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>
					<%
						}}
								} else {
					%>
					<h1 style="text-align: center">No Product Available | Try
						again later.</h1>
					<%
						}
							} catch (Exception ee) {
							}
						}
					%>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<%@include file="stillimagebg.jsp"%>
		<%@include file="footer.jsp"%>
		<%@include file="js.jsp"%>