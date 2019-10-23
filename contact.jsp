<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<body>
	<%
		if (request.getAttribute("msg") == "contactsuc") {
	%>
	<script>
		Swal
				.fire({
					type : 'success',
					title : 'Success',
					text : 'Your query is registered and a verification email is sent to you please check it.',
				});
	</script>
	<%
		}
	%>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<!--/contact-->
	<div class="banner_bottom_agile_info">
		<div class="container">
			<div class="contact-grid-agile-w3s">
				<div class="col-md-4 contact-grid-agile-w3">
					<div class="contact-grid-agile-w31">
						<i class="fa fa-map-marker" aria-hidden="true"></i>
						<h4>Address</h4>
						<p>
							<br> <span>Karnal, Haryana</span>
						</p>
					</div>
				</div>
				<div class="col-md-4 contact-grid-agile-w3">
					<div class="contact-grid-agile-w32">
						<i class="fa fa-phone" aria-hidden="true"></i>
						<h4>Call Us</h4>
						<p>
							+91 8685 921111<span>+91 7015 028276</span>
						</p>
					</div>
				</div>
				<div class="col-md-4 contact-grid-agile-w3">
					<div class="contact-grid-agile-w33">
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
						<h4>Email</h4>
						<p>
							<a href="mailto:infosnatchkart@gmail.com">infosnatchkart@gmail.com</a><span><a
								href="mailto:contactsnatchkart@gmail.com">contactsnatchkart@gmail.com</a></span>
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="banner_bottom_agile_info">
		<div class="container">
			<div class="agile-contact-grids">
				<div class="agile-contact-left">
					<div class="col-md-6 address-grid">
						<h4>
							For More <span>Information</span>
						</h4>
						<div class="mail-agileits-w3layouts">
							<i class="fa fa-volume-control-phone" aria-hidden="true"></i>
							<div class="contact-right">
								<p>Telephone</p>
								<span>+91 8685 921111</span>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="mail-agileits-w3layouts">
							<i class="fa fa-envelope-o" aria-hidden="true"></i>
							<div class="contact-right">
								<p>Mail</p>
								<a href="mailto:infosnatchkart@gmail.com">infosnatchkart@gmail.com</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="mail-agileits-w3layouts">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
							<div class="contact-right">
								<p>Location</p>
								<span>Karnal, Haryana</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="col-md-6 contact-form">
						<h4 class="white-w3ls">
							Contact <span>Form</span>
						</h4>
						<form action="contactdata?msg=add" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required> <label>Name</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required> <label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="text" name="Subject" required> <label>Subject</label>
								<span></span>
							</div>
							<div class="styled-input">
								<textarea name="Message" required></textarea>
								<label>Message</label> <span></span>
							</div>
							<input type="submit" value="SEND">
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//contact-->
	<%@include file="footer.jsp"%>
	<%@include file="js.jsp"%>
</body>
</html>