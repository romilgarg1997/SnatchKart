<!-- Modal1 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-body modal-body-sub_agile">
				<div class="col-md-8 modal_body_left modal_body_left1">
					<h3 class="agileinfo_sign">
						Sign In <span>Now</span>
					</h3>
					<form action="signin" method="post">
						<div class="styled-input agile-styled-input-top"">
							<input type="text" name="email" required placeholder="Email">
							<span></span>
						</div>
						<div class="styled-input">
							<input type="password" name="password" required
								placeholder="Password"> <span></span>
						</div>
						<p>
							<script>
								function Demo1() {
									a = document.getElementById("myModal");
									a.classList.remove("in");
								}
							</script>
							<a href="#" id="ddd" data-toggle="modal" data-target="#myModal4"
								onclick="Demo1();"> Forgot Password</a>
						</p>
						<input type="submit" value="Sign In">
					</form>
					<ul
						class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
						<li><a href="#" class="facebook">
								<div class="front">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</div>
								<div class="back">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</div>
						</a></li>
						<li><a href="#" class="twitter">
								<div class="front">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</div>
								<div class="back">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</div>
						</a></li>
						<li><a href="#" class="instagram">
								<div class="front">
									<i class="fa fa-instagram" aria-hidden="true"></i>
								</div>
								<div class="back">
									<i class="fa fa-instagram" aria-hidden="true"></i>
								</div>
						</a></li>
						<li><a href="#" class="pinterest">
								<div class="front">
									<i class="fa fa-linkedin" aria-hidden="true"></i>
								</div>
								<div class="back">
									<i class="fa fa-linkedin" aria-hidden="true"></i>
								</div>
						</a></li>
					</ul>
					<div class="clearfix"></div>
					<p>
						<script>
							function Demo() {
								a = document.getElementById("myModal");
								a.classList.remove("in");
							}
						</script>
						<a href="#" id="ddd" data-toggle="modal" data-target="#myModal2"
							onclick="Demo();"> Don't have an account?</a>
					</p>
				</div>
				<div class="col-md-4 modal_body_right modal_body_right1">
					<img src="images/log_pic.jpg" alt=" " />
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //Modal content-->
	</div>
</div>
<!-- //Modal1 -->