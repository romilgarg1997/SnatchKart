<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<style>
.d-none {
	display: none
}
</style>
<link href="<%=request.getContextPath()%>/css/hell.css" rel="stylesheet">
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<div class="">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="checkout_details_area mt-50 clearfix">
						<h3>Billing & Shipping Details</h3>
						<%
							project_Doa pd = new project_Doa();
							try {
								String email = session.getAttribute("loginemail").toString();
								if (email != null) {
									try {
										ResultSet rs = pd.userlogin();
										int id = 0;
										while (rs.next()) {
											if (rs.getString("email").equals(email)) {
												id = rs.getInt("uid");
											}
										}
										ResultSet rr = pd.getAddress(id);
										if (rr.next()) {
											rr.previous();
						%>
						<table class="table table-bordered text-center">
							<thead>
								<tr>
									<th>Select</th>
									<th>Name</th>
									<th>Mobile</th>
									<th>Address</th>
									<th>District</th>
									<th>State</th>
									<th>Pincode</th>
								</tr>
							</thead>
							<tbody>
								<%
									while (rr.next()) {
								%>
								<tr>
									<td><input type="radio" id="check<%=rr.getString("aid")%>"
										onclick="demo1(<%=rr.getString("aid")%>);" /></td>
									<td id="name<%=rr.getString("aid")%>"><%=rr.getString("name")%></td>
									<td id="mobile<%=rr.getString("aid")%>"><%=rr.getString("mobile")%></td>
									<td id="address<%=rr.getString("aid")%>"><%=rr.getString("Address")%></td>
									<td id="district<%=rr.getString("aid")%>"><%=rr.getString("district")%></td>
									<td id="state<%=rr.getString("aid")%>"><%=rr.getString("state")%></td>
									<td id="pincode<%=rr.getString("aid")%>"><%=rr.getString("pincode")%></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
						<%
							}
									} catch (Exception e) {
									}
								}
							} catch (Exception e) {
							}
						%>
						<form action="checkout_2" method="post">
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="first_name">First Name</label> <input type="text"
										class="form-control" id="first_name" placeholder="First Name"
										value="" required="" name=name>
								</div>
								<div class="col-md-6 mb-3">
									<label for="last_name">Last Name</label> <input type="text"
										class="form-control" id="last_name" placeholder="Last Name"
										value="" required="" name=lastname>
								</div>
								<div class="col-md-6 mb-3">
									<label for="mobile">Mobile Number</label> <input type="text"
										class="form-control" id="mobile" placeholder="Mobile Number"
										value="" name=mobile>
								</div>
								<div class="col-md-6 mb-3">
									<label for="email_address">Email Address</label> <input
										type="email" class="form-control" id="email_address"
										placeholder="Email Address" value="" name=email>
								</div>
								<div class="col-md-6 mb-3">
									<label for="street_address">Address</label> <input type="text"
										class="form-control" id="address" placeholder="Street Address"
										value="" name=address>
								</div>
								<div class="col-md-6 mb-3">
									<label for="postcode">Postcode/Zip</label> <input type="text"
										class="form-control" id="postcode"
										placeholder="Postcode / Zip" value="" name=pin>
								</div>
								<div class="col-md-6 mb-3">
									<label for="city">Town/City</label> <input type="text"
										class="form-control" id="city" placeholder="Town/City"
										value="" name=district>
								</div>
								<div class="col-md-6 mb-3">
									<label for="state">State</label> <input type="text"
										class="form-control" id="state" placeholder="State" value=""
										name=state>
								</div>
								<div class="checkout_pagination mt-50 text-right">
									<input type="submit" class="btn bigshop-btn" value="Continue"
										style="margin-top: 1rem" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script>
   function demo1(id)
   {
	   <%try {
				String email = session.getAttribute("loginemail").toString();%>
	   var name=document.getElementById("name"+id).innerHTML;
	   var stringArray = name.split(" ",2);
	   var field1=document.getElementById("first_name").value=stringArray[0];
	   var field2=document.getElementById("last_name").value=stringArray[1];
	   var field3=document.getElementById("mobile").value=document.getElementById("mobile"+id).innerHTML;
	   var field4=document.getElementById("email_address").value="<%=email%>"
	   var field5=document.getElementById("address").value=document.getElementById("address"+id).innerHTML;
	   var field6=document.getElementById("postcode").value=document.getElementById("pincode"+id).innerHTML;
	   var field6=document.getElementById("city").value=document.getElementById("district"+id).innerHTML;
	   var field6=document.getElementById("state").value=document.getElementById("state"+id).innerHTML;
	   <%} catch (Exception e) {
			}%>
   }
   </script>
	<%@include file="js.jsp"%>
</body>
</html>