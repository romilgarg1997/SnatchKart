<%@ page import="Database.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Base64"%>
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
						ResultSet rs = db.getCategory();
						while (rs.next()) {
							cid[i] = rs.getInt("cid");
							i++;
				%>
				<li class="col-md-6"><%=rs.getString("category")%></li>
				<%
					}
					} catch (Exception e) {
					}
				%>
			</ul>
			<div class="resp-tabs-container ">
				<%i=0;
			while(cid[i]>0)
			{
			%>
				<div class="tab<%=i+1%>">
					<%
						try {
							int r=1;
							ResultSet rs = db.getProductbycid(cid[i]);
							while (rs.next() && r<9) {
								r++;
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
									<form action="checkout.jsp" method="post">
										<fieldset>
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="<%=rs.getString("pid") %>" /> 
											<input type="hidden" name="business" value="" /> 
											<input type="hidden" name="item_name" value="<%=rs.getString("proname") %>" /> 
											<input type="hidden" name="my" value="<%=rs.getString("pid") %>" /> 
											<input type="hidden" name="amount" value="<%=rs.getInt("regprice")%>" /> 
											<input type="hidden" name="shipping" value="<%=rs.getInt("regprice")%>" /> 
											<input type="hidden" name="discount_amount" value="<%=rs.getInt("regprice") - rs.getInt("saleprice")%>" />
											<input type="hidden" name="currency_code" value="INR" /> 
											<input type="hidden" name="return" value="" /> 
											<input type="hidden" name="cancel_return" value=" " /> 
											<input type="submit" name="submit" value="Add to cart" class="button" />
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>
					<%
						}
						} catch (Exception e) {
						}
					%>
					<div class="clearfix"></div>
				</div>
				<%i++;
}%>
			</div>
		</div>
	</div>
</div>
<!-- //new_arrivals -->
