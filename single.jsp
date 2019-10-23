<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<%
		Admin_Doa db = new Admin_Doa();
		try {
			ResultSet rr = db.getProductbypid(request.getParameter("pid"));
			rr.next();
	%>
	<div class="page-head_agile_info_w3l"
		style="background: url(images/inner2.jpg) no-repeat center;">
		<div class="container">
			<h3>
				<%=rr.getString("category")%>
				<%=rr.getString("sub_category")%>
			</h3>
			<!--/w3_short-->
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
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">
						<div class="clearfix"></div>
						<div class="flex-viewport"
							style="overflow: hidden; position: relative;">
							<ul class="slides"
								style="width: 1000%; transition-duration: 0s; transform: translate3d(-340px, 0px, 0px);">
								<%
									Blob blob = rr.getBlob("img");
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
								<li data-thumb="data:image/jpg;base64,<%=base64Image%>"
									class="clone" aria-hidden="true"
									style="width: 340px; float: left; display: block;">
									<div class="thumb-image">
										<img src="data:image/jpg;base64,<%=base64Image%>"
											data-imagezoom="true" class="img-responsive"
											draggable="false">
									</div>
								</li>
								<li data-thumb="data:image/jpg;base64,<%=base64Image%>"
									style="width: 340px; float: left; display: block;"
									class="flex-active-slide">
									<div class="thumb-image">
										<img src="data:image/jpg;base64,<%=base64Image%>"
											data-imagezoom="true" class="img-responsive"
											draggable="false">
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3><%=rr.getString("proname")%></h3>
				<p>
					<span class="item_price">&#8377;<%=rr.getInt("saleprice")%></span>
					<del>
						&#8377;<%=rr.getInt("regprice")%></del>
				</p>
				<div class="description">
					<h5>Check delivery, payment options and charges at your
						location</h5>
					<input type="text" id=field value="Enter pincode"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter pincode';}"
						required=""> <input type="submit" value="Check"
						id="search">
					<p id="dis"></p>
				</div>
				<div class="color-quality">
					<div class="color-quality-right">
						<h5>Size :</h5>
						<select id="country1" onchange="change_country(this.value)"
							class="frm-field required sect">
							<option value="null">S</option>
							<option value="null">M</option>
							<option value="null">L</option>
							<option value="null">X-L</option>
						</select>
					</div>
				</div>
				<div class="occasion-cart">
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="business" value=" "> <input
									type="hidden" name="item_name"
									value="<%=rr.getString("proname")%>"> <input
									type="hidden" name="amount" value="<%=rr.getInt("regprice")%>">
								<input type="hidden" name="discount_amount"
									value="<%=rr.getInt("regprice") - rr.getInt("saleprice")%>">
								<input type="hidden" name="currency_code" value="INR"> <input
									type="hidden" name="return" value=" "> <input
									type="hidden" name="cancel_return" value=" "> <input
									type="submit" name="submit" value="Add to cart" class="button">
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<!-- /new_arrivals -->
			<div class="responsive_tabs_agileits">
				<div id="horizontalTab"
					style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item resp-tab-active"
							aria-controls="tab_item-0" role="tab">Description</li>
					</ul>
					<div class="resp-tabs-container">
						<!--/tab_one-->
						<h2 class="resp-accordion resp-tab-active" role="tab"
							aria-controls="tab_item-0">
							<span class="resp-arrow"></span>Description
						</h2>
						<div class="tab1 resp-tab-content resp-tab-content-active"
							style="display: block" aria-labelledby="tab_item-0">
							<div class="single_page_agile_its_w3ls">
								<h6><%=rr.getString("proname")%></h6>
								<p><%=rr.getString("prodiscription")%></p>
							</div>
						</div>
						<!--//tab_one-->
					</div>
				</div>
			</div>
			<!-- //new_arrivals -->
			<!--/slider_owl-->
			<%
				} catch (Exception e) {
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					request.setAttribute("msg", "productnoid");
					rd.forward(request, response);
				}
			%>
		</div>
	</div>
	<%@include file="stillimagebg.jsp"%>
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
				$('#search').click(function() {
												var input = document
														.getElementById("field");
												var p = document
														.getElementById("dis");
												var inr = Number(input.value);
												$
														.ajax({
															type : "GET",
															url : "http://postalpincode.in/api/pincode/"
																	+ inr,
															success : function(
																	msg) {
																var post = msg["PostOffice"];
																if (post != null) {
																	var columnsin = post[0];
																	var dis = columnsin.District;
																	var state = columnsin.State;
																	p.innerHTML = "Free delivery is avilable at <b>"
																			+ dis
																			+ " ,"
																			+ state
																			+ "</b> in 4-5 days<br>Cash on Delivery";
																} else {
																	p.innerHTML = "";
																	Swal
																			.fire({
																				type : 'error',
																				title : 'OOps',
																				text : 'Please enter correct Pincode',
																			});
																}
															},
															failure : function(
																	msg) {
																Swal
																		.fire({
																			type : 'error',
																			title : 'OOps',
																			text : 'Please enter correct Pincode',
																		});
															}
														}); // Ajax Call
											}); //event handler
						}); //document.ready
	</script>
	<%@include file="js.jsp"%>
</body>