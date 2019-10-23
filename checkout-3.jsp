<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<%@ page import="java.util.*"%>
<link href="<%=request.getContextPath()%>/css/hell.css" rel="stylesheet">
<body>
	<%
		List<Integer> quan = (ArrayList<Integer>) session.getAttribute("quantity");
		int[] quantity = new int[quan.size()];
		List<Integer> pid = (ArrayList<Integer>) session.getAttribute("pid");
		int[] p = new int[pid.size()];
		List<Integer> q = new ArrayList<Integer>(p.length);
		for (int i = 0; i < p.length; i++) {
			quantity[i] = quan.get(i);
			p[i] = pid.get(i);
		}
	%>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<div class="checkout_area section_padding_100" style="padding-top: 0px">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="checkout_details_area mt-50 clearfix">
						<h2>Review</h2>
						<div class="cart-table clearfix">
							<table class="table table-responsive">
								<thead>
									<tr>
										<th>S.No</th>
										<th>Image</th>
										<th>Product</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Total</th>
									</tr>
								</thead>
								<tbody>
									<%
										Admin_Doa ad = new Admin_Doa();
										for (int i = 0; i < p.length; i++) {
											ResultSet rs = ad.getProductbypid(String.valueOf(p[i]));
											rs.next();
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
									<tr>
										<td><%=i + 1%></td>
										<td class="cart_product_img"><img
											src="data:image/jpg;base64,<%=base64Image%>" alt="Product"
											width=100px height=100px></td>
										<td class="cart_product_desc">
											<h5><%=rs.getString("proname")%></h5>
										</td>
										<td class="price">&#8377;<span id="cost"><%=rs.getString("saleprice")%></span></td>
										<td class="qty">
											<div class="quantity">
												<input type="number" style="border: 1px red solid"
													title="Maximum Quantity:<%=rs.getString("quantity")%>"
													disabled class="qty-text" id="qty<%=p[i]%>" step="1"
													min="1" max="<%=rs.getString("quantity")%>"
													name="quantity" value="<%=quantity[i]%>">
											</div>
										</td>
										<td class="total_price">&#8377;<span id="total<%=i%>"><%=rs.getInt("saleprice") * quantity[i]%></span></td>
									</tr>
									<%
										}
									%>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="3"><strong>Total</strong></td>
										<td colspan="2">&#8377;<strong id="tcost"></strong></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
				<div class="col-12">
					<div class="row text-right">
						<form action="#" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart"> <input
								type="hidden" name="display" value="1">
							<button class=" btn bigshop-btn" name="submit" value="Edit">
								EDIT</button>
						</form>
						<a onclick="window.location.href = 'checkout_3'"
							class="btn bigshop-btn" style="margin-top: 10px">Confirm</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script>
		var totalindex =
	<%=p.length%>
		
	<%int totalcost = 0;
			for (int i = 0; i < p.length; i++) {
				ResultSet rr = ad.getProductbypid(String.valueOf(p[i]));
				rr.next();
				totalcost = totalcost + rr.getInt("saleprice") * quantity[i];
			}%>
		document.getElementById("tcost").innerHTML =<%=totalcost%>;
	</script>
	<%@include file="js.jsp"%>
</body>
</html>