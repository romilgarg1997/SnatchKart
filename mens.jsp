<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<div class="page-head_agile_info_w3l" style="background: url(images/inner2.jpg) no-repeat center;">
		<div class="container">
			<h3>
				Men's <span>Wear </span>
			</h3>
			<!--/w3_short-->
			<div class="services-breadcrumb">
				<div class="agile_inner_breadcrumb" >
					<ul class="w3_short">
						<li><a href="index.jsp">Home</a><i>|</i></li>
						<li>Men's Wear</li>
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
						<li data-target="#myCarousel" data-slide-to="0" class=""></li>
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
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
					<!-- The Modal -->
				</div>
				<div class="men-wear-bottom">
					<div class="col-sm-4 men-wear-left">
						<img class="img-responsive" src="images/bb2.jpg" alt=" ">
					</div>
					<div class="col-sm-8 men-wear-right">
						<h4>
							Exclusive Men's <span>Collections</span>
						</h4>
						<p class="text-justify">There are unlimited options if you
							wish to buy mens clothes online india, as there are a large
							number of clothing stores for men online. But men clothes website
							SnatchKart.com is the best among them all. Here, you can buy mens
							clothes and mens fashion clothing. So, by visiting online fashion
							store india, you can do mens fashion online shopping and flaunt a
							different wardrobe style, every single day. When doing formal
							dress online shopping for men, remember that clothing online
							shopping is the most ideal way to shop.</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="new_arrivals_agile_w3ls_info">
			<div class="container">
				<h3 class="wthree_text_info">
					New <span>Arrivals</span>
				</h3>
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<%
							int cid[], i = 0;
							cid = new int[5];
							Admin_Doa db = new Admin_Doa();
							try {
								ResultSet rs = db.getSubCategoryBycid("39");
								while (rs.next()) {
									cid[i] = rs.getInt("sid");
									i++;
						%>
						<li class="col-md-4"><%=rs.getString("sub_category")%></li>
						<%
							}
							} catch (Exception e) {
							}
						%>
					</ul>
					<%
						i = 0;
						while (cid[i] > 0) {
					%>
					<div class="resp-tabs-container ">
						<div class="tab<%=i + 1%>">
							<%
								try {
										ResultSet rs = db.getProductBySid(String.valueOf(cid[i]));
										while (rs.next()) {
											if(rs.getInt("quantity")>0){
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
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="data:image/jpg;base64,<%=base64Image%>" alt=""
											class="pro-image-front"> <img
											src="data:image/jpg;base64,<%=base64Image%>" alt=""
											class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp?pid=<%=rs.getInt("pid")%>" class="link-product-add-cart">Quick
													View</a>
											</div>
										</div>
									</div>
									<div class="item-info-product ">
										<h4>
											<a href="single.jsp?pid=<%=rs.getInt("pid")%>"><%=rs.getString("proname")%></a>
										</h4>
										<div class="info-product-price">
											<span class="item_price">&#8377;<%=rs.getInt("saleprice")%></span>
											<del>
												&#8377;<%=rs.getInt("regprice")%></del>
										</div>
										<div
											class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="business" value=" " /> <input
														type="hidden" name="item_name" value="Formal Blue Shirt" />
													<input type="hidden" name="amount"
														value="<%=rs.getInt("regprice")%>" /> 
														<input type="hidden" name="my" value="<%=rs.getString("pid") %>" /> 
														<input
														type="hidden" name="discount_amount"
														value="<%=rs.getInt("regprice") - rs.getInt("saleprice")%>" />
													<input type="hidden" name="currency_code" value="INR" /> <input
														type="hidden" name="return" value=" " /> <input
														type="hidden" name="cancel_return" value=" " /> <input
														type="submit" name="submit" value="Add to cart"
														class="button" />
												</fieldset>
											</form>
										</div>
									</div>
								</div>
							</div>
							<%
											}}
									} catch (Exception e) {
									}
							%>
							<div class="clearfix"></div>
						</div>
					</div>
					<%
						i++;
						}
					%>
				</div>
			</div>
		</div>
	</div>
	<!-- //new_arrivals -->
	<%@include file="stillimagebg.jsp"%>
	<%@include file="footer.jsp"%>
	<%@include file="js.jsp"%>
</body>
</html>