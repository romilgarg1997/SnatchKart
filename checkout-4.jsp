<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link href="<%=request.getContextPath()%>/css/hell.css" rel="stylesheet">
<%@include file="header.jsp"%>
<%@ page import="java.util.*"%>
<script
	src="https://www.paypal.com/sdk/js?client-id=Adx8zcKmvfHbS2d9PcuaBit0OWsozWQW07mrwSqi3JPws4_zgCJtfqH7iG9-xAe8iJ7raeqiRI-KIQER&currency=INR"></script>
<style>
.codbutton {
	min-width: 25vw;
	max-width: 35vw;
	padding: 10px 10px;
	float: none;
	margin: auto
}

.codlink {
	width: 100%;
	height: 55px;
	font-weight: 400;
	font-size: 1.5rem;
}

.codlink:hover {
	cursor: pointer
}
</style>
<body>
	<%
		List<String> addr = (ArrayList<String>) session.getAttribute("tempadd");
		List<Integer> quan = (ArrayList<Integer>) session.getAttribute("quantity");
		List<Integer> pid = (ArrayList<Integer>) session.getAttribute("pid");
		int totalCost = 0;
		Admin_Doa ad = new Admin_Doa();
		for (int i = 0; i < pid.size(); i++) {
			ResultSet rs = ad.getProductbypid(String.valueOf(pid.get(i)));
			rs.next();
			totalCost = totalCost + quan.get(i) * rs.getInt("saleprice");
		}
		session.setAttribute("checkcost", totalCost);
	%>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<div class="checkout_area section_padding_100" style="padding: 0px">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="checkout_details_area mt-50 clearfix">
						<div class="payment_method">
							<div class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<h3 style="margin-bottom: 10px">Complete the purchase</h3>
								<!-- Single payment method -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="one">
										<h6 class="panel-title">Your Contact Details:</h6>
									</div>
									<div id="collapse_one" class="panel-collapse collapse show"
										role="tabpanel" aria-labelledby="one">
										<div class="panel-body">
											<div class="row">
												<div class="col-md-4 mb-3">
													<label for="Name">Name</label> <input type="text"
														class="form-control" id="name"
														value="<%=addr.get(0)%> <%=addr.get(1)%>" disabled>
												</div>
												<div class=" col-md-4 mb-3">
													<label for="Email">Email-Id</label> <input type="text"
														class="form-control" id="Email" value="<%=addr.get(3)%>"
														disabled>
												</div>
												<div class="col-md-4 mb-3">
													<label for="Mobile">Mobile Number</label> <input
														type="text" class="form-control" id="mobile"
														value="<%=addr.get(2)%>" disabled>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Single payment method -->
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="two">
										<h6 class="panel-title">Billing & Shipping Address</h6>
									</div>
									<div class="panel-collapse" role="tabpanel"
										aria-labelledby="two">
										<div class="panel-body">
											<div class="row">
												<div class=" col-md-6 mb-3">
													<label for="Name">Name</label> <input type="text"
														class="form-control" id="name"
														value="<%=addr.get(0)%> <%=addr.get(1)%>" required
														disabled>
												</div>
												<div class="col-md-6 mb-3">
													<label for="Mobile">Mobile Number</label> <input
														type="text" class="form-control" id="mobile"
														value="<%=addr.get(2)%>" required disabled>
												</div>
												<div class=" col-md-6 mb-3">
													<label for="Address">Address</label> <input type="text"
														class="form-control" id="address"
														value="<%=addr.get(4)%>" required disabled>
												</div>
												<div class="col-md-6 mb-3">
													<label for="District">District</label> <input type="text"
														class="form-control" id="district"
														value="<%=addr.get(6)%>" required disabled>
												</div>
												<div class=" col-md-6 mb-3">
													<label for="state">State</label> <input type="text"
														class="form-control" id="state" value="<%=addr.get(7)%>"
														required disabled>
												</div>
												<div class="col-md-6 mb-3">
													<label for="Pin Code">Pin Code</label> <input type="text"
														class="form-control" id="pin" value="<%=addr.get(5)%>"
														required disabled>
												</div>
											</div>
										</div>
									</div>
									<!-- Single payment method -->
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="three">
											<div style="padding-bottom: 10px">
												<h6 class="panel-title" style="float: left">Order
													Details</h6>
												<h6 class="panel-title" style="float: right">
													Total Cost:
													<%=totalCost%>
												</h6>
												<div style="clear: both"></div>
											</div>
											<div class="panel-collapse" role="tabpanel"
												aria-labelledby="three">
												<div class="panel-body">
													<div class="row">
														<%
															for (int i = 0; i < pid.size(); i++) {
																ResultSet r = ad.getProductbypid(String.valueOf(pid.get(i)));
																r.next();
														%>
														<div class="col-md-3 mb-3">
															<label for="Name">Item Name</label> <input type="text"
																class="form-control" id="proname"
																value="<%=r.getString("proname")%>" disabled>
														</div>
														<div class=" col-md-3 mb-3">
															<label for="Email">Quantity</label> <input type="text"
																class="form-control" id="quan" value="<%=quan.get(i)%>"
																disabled>
														</div>
														<div class="col-md-3 mb-3">
															<label for="Mobile">Item Cost</label> <input type="text"
																class="form-control" id="itemcost"
																value="<%=r.getInt("saleprice")%>" disabled>
														</div>
														<div class="col-md-3 mb-3">
															<label for="Mobile">Item Total Cost</label> <input
																type="text" class="form-control" id="totalcost"
																value="<%=quan.get(i) * r.getInt("saleprice")%>" disabled>
														</div>
														<%
															}
														%>
													</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="four">
												<h6 class="panel-title">Payment Options</h6>
											</div>
											<div class="panel-collapse " role="tabpanel"
												aria-labelledby="four">
												<div class="panel-body">
													<div id="paypal-button-container" class="text-center"></div>
													<div class="codbutton col-md-7 text-center">
														<a href="finalcheckout?msg=cash"
															class="rounded btn btn-success codlink">Cash on
															Delivery</a>
													</div>
													<script>
														  paypal.Buttons({
														    createOrder: function(data, actions) {
														      return actions.order.create({
														        purchase_units: [{
														          amount: {
														            value: '<%=totalCost%>'
														          }
														        }]
														      });
														    },
														    onApprove: function(data, actions) {
														      return actions.order.capture().then(function(details) {
														        alert('Transaction completed by ' + details.payer.name.given_name);
														        // Call your server to save the transaction
														        return fetch('/paypal-transaction-complete', {
														          method: 'post',
														          headers: {
														            'content-type': 'application/json'
														          },
														          body: JSON.stringify({
														            orderID: data.orderID
														          })
														        });
														      });
														    }
														  }).render('#paypal-button-container');
													</script>
												</div>
											</div>
										</div>
										<!-- Single payment method -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<%@include file="js.jsp"%>
</body>
</html>