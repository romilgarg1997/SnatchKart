<%
if(request.getAttribute("msg")!=null)
{
if(request.getAttribute("msg")=="forgotmailsuc")
	{
		%>
		<script>
		Swal.fire({
		type: 'success',
		title: 'Success',
		text: 'The mail is sent to your registered email id with the reset link password',		
		}).then(function() 
				{
			window.location.href = "index.jsp";
			});
		</script>
		<%
	}
	else if(request.getAttribute("msg")=="forgotmailerr")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'No user registered with this email id.',		
			}).then(function() 
					{
				window.location.href = "passforget.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="ordersucc")
	{
			%>
			<script>
			Swal.fire({
			type: 'success',
			title: 'Great',
			text: 'Order Placed',		
			}).then(function() 
					{
				window.location.href = "index.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="forgotmailempty")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'No email entered.',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="forgotchangeexpire")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'The link is expired request for another',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}else if(request.getAttribute("msg")=="forgotchangeidnotexist")
	{
		%>
		<script>
		Swal.fire({
		type: 'error',
		title: 'Error',
		text: 'This link doesnot exist',		
		}).then(function() 
				{
			window.location.href = "<%=request.getAttribute("link")%>";
			});
		</script>
		<%
}
	else if(request.getAttribute("msg")=="forgotchangesuc")
	{
			%>
			<script>
			Swal.fire({
			type: 'success',
			title: 'Success',
			text: 'The password is changed',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="forgotchangeunsuc")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Server Error',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="profilenosession")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Please login first to view the profile',		
			}).then(function() 
					{
				window.location.href = "profile.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="profileupdate")
	{
			%>
			<script>
			Swal.fire({
			type: 'success',
			title: 'Success',
			text: 'The profile has been updated',		
			}).then(function() 
					{
				window.location.href = "profile.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="profilenotupdate")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'The profile has not been updated',		
			}).then(function() 
					{
				window.location.href = "profile.jsp";
				});;
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="profileempty")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Please input all the parametres',		
			}).then(function() 
					{
				window.location.href = "profile.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="loginsuc")
	{
			%>
			<script>
			Swal.fire({
			type: 'success',
			title: 'Success',
			text: 'Successful logged in',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="loginunsuc")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Invalid email or password',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="loginempty")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Please input all the parametres',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="profileempty")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Please input all the parametres',		
			})then(function() 
					{
				window.location.href = "index.jsp";
				});;
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="signout")
	{
			%>
			<script>
			Swal.fire({
			type: 'success',
			title: 'Success',
			text: 'Signout successful',		
			}).then(function() 
					{
				window.location.href = "index.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="signupsuc")
	{
			%>
			<script>
			Swal.fire({
			type: 'success',
			title: 'Success',
			text: 'Signed up successfully',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="signupunsuc")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'OOps',
			text: 'Server error',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="signupexist")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			html: 'Already exist please <a href="#" data-toggle="modal" data-target="#myModal">signin</a> or <a href="#" id="ddd" data-toggle="modal" data-target="#myModal4" onclick="Demo1();">Forgot Password</a>',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			function Demo1() {
				a = document.getElementById("myModal");
				a.classList.remove("in");
			}
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="signuppassnomatch")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Passwords do not match',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="signupempty")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Please do not leave any field empty',		
			}).then(function() 
					{
				window.location.href = "<%=request.getAttribute("link")%>";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="changenoemail")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'No email is registered',		
			}).then(function() 
					{
				window.location.href = "index.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="changesuc")
	{
			%>
			<script>
			Swal.fire({
			type: 'success',
			title: 'Success',
			text: 'The password is changed successfully',		
			}).then(function() 
					{
				window.location.href = "index.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="changeunsuc")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Password is not changed server error',		
			}).then(function() 
					{
				window.location.href = "changepassword.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="changediff")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Password and confirm password are different',		
			}).then(function() 
					{
				window.location.href = "changepassword.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="changeolddiff")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'Old password doesnot match',		
			}).then(function() 
					{
				window.location.href = "changepassword.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="changeidnotexist")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'This id doesnot exist',		
			}).then(function() 
					{
				window.location.href = "index.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg")=="productnoid")
	{
			%>
			<script>
			Swal.fire({
			type: 'error',
			title: 'Error',
			text: 'This product doesnot exist',		
			}).then(function() 
					{
				window.location.href = "index.jsp";
				});
			</script>
			<%
	}
	else if(request.getAttribute("msg").equals("addresssuc"))
{
%>
	<script>
	Swal.fire({
		type: 'success',
		title: 'Great',
		text: 'New Address added',		
		}).then(function() {
			// Redirect the user
			window.location.href = "address.jsp";
			});
	</script>
<%
}
else if(request.getAttribute("msg").equals("addressunsuc"))
{
%>
	<script>
	Swal.fire({
		type: 'error',
		title: 'err..',
		text: 'Server error please login again',		
		}).then(function() {
			// Redirect the user
			window.location.href = "address.jsp";
			});
	</script>
<%
}
else if(request.getAttribute("msg").equals("addressunsucempty"))
{
%>
	<script>
	Swal.fire({
		type: 'error',
		title: 'err',
		text: 'Please donot leave field empty',		
		}).then(function() {
			// Redirect the user
			window.location.href = "address.jsp";
			});
	</script>
<%
}
else if(request.getAttribute("msg").equals("addressdelsuc"))
{
%>
	<script>
	Swal.fire({
		type: 'success',
		title: 'Great',
		text: 'Address deleted successfully',		
		}).then(function() {
			// Redirect the user
			window.location.href = "address.jsp";
			});
	</script>
<%
}
else if(request.getAttribute("msg").equals("addressdelunsuc"))
{
%>
	<script>
	Swal.fire({
		type: 'erroe',
		title: 'err..',
		text: 'Address not deleted please login again',		
		}).then(function() {
			// Redirect the user
			window.location.href = "address.jsp";
			});
	</script>
<%
}
else if(request.getAttribute("msg").equals("addresssuc"))
{
%>
	<script>
	Swal.fire({
		type: 'success',
		title: 'Great',
		text: 'New Address added',		
		}).then(function() {
			// Redirect the user
			window.location.href = "address.jsp";
			});
	</script>
<%
}
}
%>