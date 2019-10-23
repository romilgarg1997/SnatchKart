<!-- js -->
<!-- //js -->
<script src="<%=request.getContextPath()%>/js/modernizr.custom.js"></script>
<!-- Custom-JavaScript-File-Links -->
<!-- cart-js -->
<script src="<%=request.getContextPath()%>/js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action : 'checkout_1'
	});
	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
<!-- //cart-js -->
<!-- script for responsive tabs -->
<script src="js/easy-responsive-tabs.js"></script>
<script>
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true, // 100% fit in a container
			closed : 'accordion', // Start closed if in accordion view
			activate : function(event) { // Callback function if tab is switched
				var $tab = $(this);
				var $info = $('#tabInfo');
				var $name = $('span', $info);
				$name.text($tab.text());
				$info.show();
			}
		});
		$('#verticalTab').easyResponsiveTabs({
			type : 'vertical',
			width : 'auto',
			fit : true
		});
	});
</script>
<!-- //script for responsive tabs -->
<!-- stats -->
<script src="<%=request.getContextPath()%>/js/jquery.waypoints.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.countup.js"></script>
<script>
	$('.counter').countUp();
</script>
<!-- //stats -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/move-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easing.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
	$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		 */
		$().UItoTop({
			easingType : 'easeOutQuart'
		});
	});
</script>
	<script type="text/javascript">
		$(function() {
			var bindDatePicker = function() {
				$(".date").datetimepicker({
					format : 'DD-MM-YYYY',
					icons : {
						time : "fa fa-clock-o",
						date : "fa fa-calendar",
						up : "fa fa-arrow-up",
						down : "fa fa-arrow-down"
					}
				}).find('input:first').on("blur", function() {
					// check if the date is correct. We can accept dd-mm-yyyy and DD-MM-YYYY.
					// update the format if it's DD-MM-YYYY
					var date = parseDate($(this).val());
					if (!isValidDate(date)) {
						//create date based on momentjs (we have that)
						date = moment().format('DD-MM-YYYY');
					}
					$(this).val(date);
				});
			}
			var isValidDate = function(value, format) {
				format = format || false;
				// lets parse the date to the best of our knowledge
				if (format) {
					value = parseDate(value);
				}
				var timestamp = Date.parse(value);
				return isNaN(timestamp) == false;
			}
			var parseDate = function(value) {
				var m = value
						.match(/^(\d{1,2})(\/|-)?(\d{1,2})(\/|-)?(\d{4})$/);
				if (m)
					value = m[5] + '-' + ("00" + m[3]).slice(-2) + '-'
							+ ("00" + m[1]).slice(-2);
				return value;
			}
			bindDatePicker();
		});
	</script>
	<script type="text/javascript">
		$(function() {
			$(document).on(
					"change",
					".uploadFile",
					function() {
						var uploadFile = $(this);
						var files = !!this.files ? this.files : [];
						if (!files.length || !window.FileReader)
							return; // no file selected, or no FileReader support
						if (/^image/.test(files[0].type)) { // only image file
							var reader = new FileReader(); // instance of the FileReader
							reader.readAsDataURL(files[0]); // read the local file
							reader.onloadend = function() { // set image data as background of div
								//alert(uploadFile.closest(".upimage").find('.imagePreview').length);
								uploadFile.closest(".imgUp").find(
										'.imagePreview').css(
										"background-image",
										"url(" + this.result + ")");
							}
						}
					});
		});
	</script>
	<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js"></script>
<script src='//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js'></script>
<script	src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/js/bootstrap-datetimepicker.min.js'></script>
<!-- //here ends scrolling icon -->
<script src="<%=request.getContextPath()%>/js/sweetalert2.min.js"></script>
 <script src="<%=request.getContextPath() %>/Admin/js/image.js"></script>
 <script src="<%=request.getContextPath()%>/js/easy-responsive-tabs.js"></script>
<script src="<%=request.getContextPath()%>/js/imagezoom.js"></script>
<!-- for bootstrap working -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.js"></script>