<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Base64"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style1.css">
<style>
.button-border-0
{
	background:none;
	border:none;
}
.resp-tab-active {
	background: black;
	color: white !important;
	border: 1px #ddd solid;
	border-bottom-color: transparent;
}
.imagePreview {
	width: 100%;
	height: 180px;
	background-position: center center;
	background:
		url(http://cliquecities.com/assets/no-image-e3699ae23f866f6cbdf8ba2443ee5c4e.jpg);
	background-color: #fff;
	background-size: cover;
	background-repeat: no-repeat;
	display: inline-block;
	box-shadow: 0px -3px 6px 2px rgba(0, 0, 0, 0.2);
}
.btn-primary {
	display: block;
	border-radius: 0px;
	box-shadow: 0px 4px 6px 2px rgba(0, 0, 0, 0.2);
	margin-top: -5px;
}
.imgUp {
	margin-bottom: 15px;
}
.del {
	position: absolute;
	top: 0px;
	right: 15px;
	width: 30px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	background-color: rgba(255, 255, 255, 0.6);
	cursor: pointer;
}
.imgAdd {
	width: 30px;
	height: 30px;
	border-radius: 50%;
	background-color: #4bd7ef;
	color: #fff;
	box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.2);
	text-align: center;
	line-height: 30px;
	margin-top: 0px;
	cursor: pointer;
	font-size: 15px;
}
.m15 {
	margin: 1.5rem 0 0 0;
	padding: 0 !important;
}
.p0 {
	padding: 0 !important;
}
.mb-3 {
	margin-bottom: 1rem !important;
}
.input {
	outline: none;
	padding: 10px 0;
	font-size: 1em;
	color: #fff;
	border: none;
	width: 50%;
	background: black;
	cursor: pointer;
	margin: 1.5em 0 0;
}
.d-none {
	display: none;
}
</style>
<body>
	<%@include file="header2.jsp"%>
	<%@include file="banner.jsp"%>
	<%@include file="sigin.jsp"%>
	<%@include file="signup.jsp"%>
	<%
	if(request.getParameter("msg")!=null)
	{
	}
	%>
	<div class=container style="padding-top: 1rem">
		<div class="col-md-10 col-sm-12 col-xs-12 form-horizontal"
			style="float: none; margin: auto">
			<div class="col-md-12">
				<div class="text-center">
					<input type="submit" class="input btn btn-default"
						value="Add New address" id="add" onclick="show();">
				</div>
				<div class="w3l_main_grid1_w3ls_grid agileinfo_account_reset">
					<div class="w3_agile_main_left_grid_w3_agileits">
						<div class="d-none col-md-12 order-md-1 personal-info mb-3 "
							style="border: 1px gray solid; padding: 2.5rem" id=form>
							<h3>New Address</h3>
							<%
							project_Doa pd=new project_Doa();
							int id=0;
							try
							{
								String email=session.getAttribute("loginemail").toString();
								ResultSet rs=pd.userlogin(session.getAttribute("loginemail").toString());
								while(rs.next())
								{
									id=rs.getInt("uid");
								}
							%>
							<form class="needs-validation" action="<%=request.getContextPath()%>/address?msg=add&id=<%=id%>" method="post">
								<div class="row">
									<div class="col-md-6 mb-3">
										<label for="FirstName"> Reciepient's Name</label> <input
											type="text" id="FirstName" name="name" value="" class="p0"
											required>
									</div>
									<div class="col-md-6 mb-3">
										<label for="Mobile">Mobile Number</label> <input type="text"
											id="Mobile" name=mobile value="" class="p0" required>
									</div>
									<div class="col-md-6 mb-3">
										<label for="address">Address</label> <input type="text"
											id="address" name=address class="p0" name="" required>
									</div>
									<div class="col-md-6 mb-3">
										<label for="address2">Locality <span
											class="text-muted">(Optional)</span></label> <input type="text"
											id="address2" name="locality" class="p0">
									</div>
									<div class="col-md-4 mb-3">
										<label for="pin">PinCode </label> <input type="text" id="pin"
											class="p0" name="pin" required>
									</div>
									<div class="col-md-4 mb-3">
										<label for="district">District </label> <input type="text"
											id="dis" class="p0" disabled name="district" required>
									</div>
									<div class="col-md-4 mb-3">
										<label for="state">State </label> <input type="text"
											id="state" class="p0" disabled name="state" required>
									</div>
									<div class=" mb-3 row" style="text-align: center;">
										<div class=col-md-6>
											<input type="submit" class="btn btn-default"
												value="Save Address" id="submit">
										</div>
										<div class=col-md-6>
											<input type="reset" class="btn btn-default" value="Reset"
												id="submit">
										</div>
										<div class=clearfix></div>
									</div>
								</div>
							</form>
						<%
							}
								catch(Exception e)
							{
							}
							%>
						</div>
						<div class=container-fluid>
							<div class=row>
								<div class=col-md-12>
									<h3>Saved Addresses</h3>
									<div class="m15">
										<table class="table table-bordered text-center">
											<thead>
												<tr>
													<th>Name</th>
													<th>Mobile</th>
													<th>Address</th>
													<th>District</th>
													<th>State</th>
													<th>Pincode</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
											<%
											int id1=0;
											try
											{
												String email=session.getAttribute("loginemail").toString();
												ResultSet rs=pd.userlogin(session.getAttribute("loginemail").toString());
												while(rs.next())
												{
													id1=rs.getInt("uid");
												}
												ResultSet rr=pd.getAddress(id1);
												while(rr.next())
												{
											%>
												<tr>
													<td id="name<%=rr.getString("aid")%>"><%=rr.getString("name")%></td>
													<td id="mobile<%=rr.getString("aid")%>"><%=rr.getString("mobile")%></td>
													<td id="address<%=rr.getString("aid")%>"><%=rr.getString("Address")%></td>
													<td id="district<%=rr.getString("aid")%>"><%=rr.getString("district")%></td>
													<td id="state<%=rr.getString("aid")%>"><%=rr.getString("state")%></td>
													<td id="pincode<%=rr.getString("aid")%>"><%=rr.getString("pincode")%></td>
													<td>
														<button data-toggle="tooltip" title="Edit" class="pd-setting-ed button-border-0" id="edit<%=rr.getString("aid")%>" onclick="edittable(<%=rr.getString("aid")%>)">
															<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
														</button>
														<button data-toggle="tooltip" title="Save" class="pd-setting-ed d-none button-border-0" id="save<%=rr.getString("aid")%>" onclick="savedata(<%=rr.getString("aid")%>)">
															<i class="fa fa-save" aria-hidden="true"></i>
														</button>
														<button data-toggle="tooltip" title="Delete" class="pd-setting-ed button-border-0">
															<a style="color:inherit" data-toggle="tooltip" title="Delete" class="pd-setting-ed" href="<%=request.getContextPath()%>/address?msg=del&id=<%=rr.getString("aid")%>">
																<i class="fa fa-trash-o" aria-hidden="true"></i>
															</a>
														</button>
													</td>
												</tr>
												<%}
												}
											catch(Exception e)
											{
											}
												%>
											</tbody>
										</table>
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
	<script type="text/javascript">
		function show() {
			var form = document.getElementById("form");
			form.classList.toggle("d-none");
		}
	</script>
	<script type="text/javascript">
	$(document).ready(function() {
        $('#pin').blur(function(){
        	var input=document.getElementById("pin");
        	var inr=Number(input.value);
            $.ajax({
                type: "GET",
                url: "http://postalpincode.in/api/pincode/"+inr,
                success: function(msg){
               var post=msg["PostOffice"];
               if(post!=null)
            	   {
		              var columnsin=post[0];
		              var dis=columnsin.District;
		              var state=columnsin.State;		    
		              document.getElementById("dis").value=dis;
		          	  document.getElementById("dis").disabled=false;
		          	  document.getElementById("state").disabled=false;
		              document.getElementById("state").value=state;
                }else
                	{
                	p.innerHTML="";
                	Swal.fire({
            			type: 'error',
            			title: 'OOps',
            			text: 'Please enter correct Pincode',		
            			}).then(function() {
        					// Redirect the user
        					window.location.href = "address.jsp";
        					});
                	}
               }
            ,
                failure:function(msg)
            	{
                	Swal.fire({
            			type: 'error',
            			title: 'OOps',
            			text: 'Please enter correct Pincode',		
            			}).then(function() {
        					// Redirect the user
        					window.location.href = "address.jsp";
        					});
            	}
            }); // Ajax Call
        }); //event handler
    }); //document.ready
	</script>
	<script type="text/javascript">
	function edittable(id)
	{
		var field1=document.getElementById("name"+id)
		field1.contentEditable="true";
		var field2=document.getElementById("mobile"+id)
		field2.contentEditable="true";
		var field3=document.getElementById("address"+id)
		field3.contentEditable="true";
		var field4=document.getElementById("district"+id)
		field4.contentEditable="true";
		var field5=document.getElementById("state"+id)
		field5.contentEditable="true";
		var field6=document.getElementById("pincode"+id)
		field6.contentEditable="true";
		var edit=document.getElementById("edit"+id);
		edit.classList.add("d-none");
		var save=document.getElementById("save"+id);
	    save.classList.remove("d-none");
	}
	function savedata(id)
	{
		var field1=document.getElementById("name"+id)
		var field2=document.getElementById("mobile"+id)
		var field3=document.getElementById("address"+id)
		var field4=document.getElementById("district"+id)
		var field5=document.getElementById("state"+id)
		var field6=document.getElementById("pincode"+id)
		$.ajax({
	        url: "address",
	        data:{'msg':'update','id':id,'name':field1.innerHTML,'mobile':field2.innerHTML,'address':field3.innerHTML,'district':field4.innerHTML,'state':field5.innerHTML,'pincode':field6.innerHTML},
			type: "POST",    
			success: function(html)
	        {   
	        	Swal.fire({
					type : 'success',
					title : 'Success',
					text : 'The address is updated',
				}).then(function() {
					// Redirect the user
					window.location.href = "address.jsp";
					});
	        }
	    });
	}
	</script>
	<%@include file="js.jsp"%>
</body>
