<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<link href="<%=request.getContextPath()%>/css/hell.css" rel="stylesheet">
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<div class="new_arrivals_agile_w3ls_info">
		<div class="container">
			<div id="horizontalTab"
				style="display: block; width: 100%; margin: 0px; ">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item resp-tab-active col-md-3"
						aria-controls="tab_item-0" role="tab">Login</li>
					<li class="resp-tab-item col-md-3" aria-controls="tab_item-1" role="tab">
						Billing</li>
					<li class="resp-tab-item col-md-3" aria-controls="tab_item-2" role="tab">
						Review</li>
					<li class="resp-tab-item col-md-3" aria-controls="tab_item-3" role="tab">
						Payment</li>
				</ul>
				<div class="resp-tabs-container" >
					<!--/tab_one-->
					<div class="tab1 resp-tab-content resp-tab-content-active"
						style="display: block" aria-labelledby="tab_item-0">
						<div class="checkout_details_area checkout-1 mt-50 clearfix">
							<div class="row" style="margin:20px">
								<div class="col-md-6">
									<h3>Checkout as a Guest or Register</h3>
									<p>Register with us for future convenience:</p>
									<div class="custom-control custom-radio">
										<input type="radio" id="customRadio1" name="customRadio"
											class="custom-control-input"> <label
											class="custom-control-label" for="customRadio1">Checkout
											as Guest</label>
									</div>
									<div class="custom-control custom-radio">
										<input type="radio" id="customRadio2" name="customRadio"
											class="custom-control-input"> <label
											class="custom-control-label" for="customRadio2">Register</label>
									</div>
									<br>
									<h5>Register and save time!</h5>
									<p>Register with us for future convenience:</p>
									<p>
										<i class="fa fa-dot-circle-o" aria-hidden="true"></i> Fast and
										easy check out <br> <i class="fa fa-dot-circle-o"
											aria-hidden="true"></i> Easy access to your order history and
										status
									</p>
									<a href="register.html" class="btn bigshop-btn">Continue</a>
								</div>
								<div class="col-md-6">
									<h3>Login</h3>
									<p>Already registered? Please log in below:</p>
									<form>
										<div class="form-group">
											<label for="email">Email address</label> <input type="email"
												class="form-control" id="email" aria-describedby="emailHelp"
												placeholder="Enter email"> <small id="emailHelp"
												class="form-text text-muted">We'll never share your
												email with anyone else.</small>
										</div>
										<div class="form-group">
											<label for="password">Password</label> <input type="password"
												class="form-control" id="password" placeholder="Password">
										</div>
										<div class="form-check">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input"
													id="customCheck1"> <label
													class="custom-control-label" for="customCheck1">Remember
													Me</label>
											</div>
										</div>
										<button type="submit" class="btn bigshop-btn">Login</button>
										<a class="forget_password" href="#">Forget Password?</a>
									</form>
								</div>
							</div>
						</div>
					<div class="col-12">
						<div class="checkout_pagination mt-50">
							<a href="cart.html" class="btn bigshop-btn">Go to Cart</a> <a
								href="checkout-2.html" class="btn bigshop-btn">Continue</a>
						</div>
					</div>
					</div>
					<!--//tab_one-->
					<!--/tab_two-->
					<div class="tab2 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/w1.jpg" alt="" class="pro-image-front">
									<img src="images/w1.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">A-line Black Skirt</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1300</span>
										<del>₹1800 </del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="A-line Black Skirt">
												<input type="hidden" name="amount" value="1800"> <input
													type="hidden" name="discount_amount" value="500"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/w2.jpg" alt="" class="pro-image-front">
									<img src="images/w2.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Sleeveless Solid Blue Top</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1400</span>
										<del>₹1890 </del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name"
													value="Sleeveless Solid Blue Top"> <input
													type="hidden" name="amount" value="1890"> <input
													type="hidden" name="discount_amount" value="490"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/w3.jpg" alt="" class="pro-image-front">
									<img src="images/w3.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Skinny Jeans</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1500</span>
										<del>₹1890 </del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Skinny Jeans ">
												<input type="hidden" name="amount" value="1890"> <input
													type="hidden" name="discount_amount" value="490"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/w4.jpg" alt="" class="pro-image-front">
									<img src="images/w4.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Black Basic Shorts</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1200</span>
										<del>₹1600</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Black Basic Shorts">
												<input type="hidden" name="amount" value="1600"> <input
													type="hidden" name="discount_amount" value="400"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/w5.jpg" alt="" class="pro-image-front">
									<img src="images/w5.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Pink Track Pants</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹2200</span>
										<del>₹2450</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Pink Track Pants">
												<input type="hidden" name="amount" value="2450"> <input
													type="hidden" name="discount_amount" value="250"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/w6.jpg" alt="" class="pro-image-front">
									<img src="images/w6.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Analog Watch</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹2200</span>
										<del>₹2600</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Analog Watch">
												<input type="hidden" name="amount" value="2600"> <input
													type="hidden" name="discount_amount" value="400"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/w7.jpg" alt="" class="pro-image-front">
									<img src="images/w7.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Ankle Length Socks</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1000</span>
										<del>₹1500 </del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Ankle Length Socks">
												<input type="hidden" name="amount" value="1500"> <input
													type="hidden" name="discount_amount" value="500"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/w8.jpg" alt="" class="pro-image-front">
									<img src="images/w8.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Reebok Women's Tights</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1300</span>
										<del>₹1700</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name"
													value="Reebok Women's Tights"> <input type="hidden"
													name="amount" value="1700"> <input type="hidden"
													name="discount_amount" value="400"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<!--//tab_two-->
					<h2 class="resp-accordion" role="tab" aria-controls="tab_item-2">
						<span class="resp-arrow"></span> Bags
					</h2>
					<div class="tab3 resp-tab-content" aria-labelledby="tab_item-2">
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/b1.jpg" alt="" class="pro-image-front">
									<img src="images/b1.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Laptop Messenger Bag</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1400</span>
										<del>₹1600</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name"
													value=" Laptop Messenger Bag"> <input type="hidden"
													name="amount" value="1600"> <input type="hidden"
													name="discount_amount" value="200"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/b2.jpg" alt="" class="pro-image-front">
									<img src="images/b2.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Puma Backpack</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1300</span>
										<del>₹1600</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Puma Backpack">
												<input type="hidden" name="amount" value="1600"> <input
													type="hidden" name="discount_amount" value="300"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/b3.jpg" alt="" class="pro-image-front">
									<img src="images/b3.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html"> Laptop Backpack</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1200</span>
										<del>₹1450</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value=" Laptop Backpack">
												<input type="hidden" name="amount" value="1450"> <input
													type="hidden" name="discount_amount" value="250"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/b4.jpg" alt="" class="pro-image-front">
									<img src="images/b4.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Travel Duffel Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1900</span>
										<del>₹2400</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Travel Duffel Bag ">
												<input type="hidden" name="amount" value="2400"> <input
													type="hidden" name="discount_amount" value="500"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/b5.jpg" alt="" class="pro-image-front">
									<img src="images/b5.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html"> Hand-held Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1900</span>
										<del>₹2500 </del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value=" Hand-held Bag ">
												<input type="hidden" name="amount" value="2500"> <input
													type="hidden" name="discount_amount" value="600"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/b6.jpg" alt="" class="pro-image-front">
									<img src="images/b6.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Butterflies Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1800</span>
										<del>₹2400 </del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Butterflies Bag">
												<input type="hidden" name="amount" value="2400"> <input
													type="hidden" name="discount_amount" value="600"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/b7.jpg" alt="" class="pro-image-front">
									<img src="images/b7.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Costa Swiss Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹3000</span>
										<del>₹3500</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Costa Swiss Bag">
												<input type="hidden" name="amount" value="3500"> <input
													type="hidden" name="discount_amount" value="500"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/b8.jpg" alt="" class="pro-image-front">
									<img src="images/b8.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Noble Designs Bag </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1200</span>
										<del>₹1600</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Noble Designs Bag ">
												<input type="hidden" name="amount" value="1600"> <input
													type="hidden" name="discount_amount" value="400"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<h2 class="resp-accordion" role="tab" aria-controls="tab_item-3">
						<span class="resp-arrow"></span> Footwear
					</h2>
					<div class="tab4 resp-tab-content" aria-labelledby="tab_item-3">
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/s1.jpg" alt="" class="pro-image-front">
									<img src="images/s1.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Running Shoes</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹800</span>
										<del>₹1000</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Running Shoes">
												<input type="hidden" name="amount" value="1000"> <input
													type="hidden" name="discount_amount" value="200"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/s2.jpg" alt="" class="pro-image-front">
									<img src="images/s2.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Shoetopia Lace Up</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹900</span>
										<del>₹1200</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Shoetopia Lace Up">
												<input type="hidden" name="amount" value="1200"> <input
													type="hidden" name="discount_amount" value="300"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/s3.jpg" alt="" class="pro-image-front">
									<img src="images/s3.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Steemo Casuals(Black)</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹900</span>
										<del>₹1200</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name"
													value="Steemo Casuals (Black)"> <input
													type="hidden" name="amount" value="1200"> <input
													type="hidden" name="discount_amount" value="300"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/s4.jpg" alt="" class="pro-image-front">
									<img src="images/s4.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Benetton Flip Flops</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹400</span>
										<del>₹600</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Benetton Flip Flops">
												<input type="hidden" name="amount" value="600"> <input
													type="hidden" name="discount_amount" value="200"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/s5.jpg" alt="" class="pro-image-front">
									<img src="images/s5.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Moonwalk Bellies </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹800</span>
										<del>₹1000</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Moonwalk Bellies">
												<input type="hidden" name="amount" value="1000"> <input
													type="hidden" name="discount_amount" value="200"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/s6.jpg" alt="" class="pro-image-front">
									<img src="images/s6.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Aero Canvas Loafers </a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1200</span>
										<del>₹1450</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Aero Canvas Loafers">
												<input type="hidden" name="amount" value="1450"> <input
													type="hidden" name="discount_amount" value="250"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/s7.jpg" alt="" class="pro-image-front">
									<img src="images/s7.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Sparx Sporty Canvas Shoes</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹1600</span>
										<del>₹2000</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name"
													value="Sparx Sporty Canvas Shoes"> <input
													type="hidden" name="amount" value="2000"> <input
													type="hidden" name="discount_amount" value="400"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/s8.jpg" alt="" class="pro-image-front">
									<img src="images/s8.jpg" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.html" class="link-product-add-cart">Quick
												View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single.html">Women BLACK Heels</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">₹700</span>
										<del>₹850</del>
									</div>
									<div
										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart"> <input
													type="hidden" name="add" value="1"> <input
													type="hidden" name="business" value=" "> <input
													type="hidden" name="item_name" value="Women BLACK Heels">
												<input type="hidden" name="amount" value="850"> <input
													type="hidden" name="discount_amount" value="150"> <input
													type="hidden" name="currency_code" value="INR"> <input
													type="hidden" name="return" value=" "> <input
													type="hidden" name="cancel_return" value=" "> <input
													type="submit" name="submit" value="Add to cart"
													class="button">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<%@include file="js.jsp"%>
	</body>
</html>