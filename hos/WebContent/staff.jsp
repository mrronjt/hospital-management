<%@page import="com.hos.Service.StaffService"%>
<%@page import="java.util.List"%>
<%@page import="com.hos.Entity.Staff"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Staff</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/commonStyle.css">
	
<!--===============================================================================================-->

</head>
<body>
<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<a href="main.jsp" class="buttonHome"><span>Home </span></a> <a href="member.jsp" class="buttonGreen">Patients</a> 
				<a href="doc.jsp" class="buttonBlue">doctors</a><a href="staff.jsp" class="buttonRed">Staff</a><br><br>
				
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Id</th>
								<th class="column2">First Name</th>
								<th class="column3">Last Name</th>
								<th class="column4">Phone No.</th>
								<th class="column5">Department</th>
							</tr>
						</thead>
						<tbody>
								<%
									StaffService staffService = new StaffService();
									String type1 = "inpatient";
                     				List<Staff> list = staffService .getListOfStaffs();
				                     for (Staff u : list) {
				                 %>
				                 <tr>
				                     <td><%=u.getId()%></td>
				                     <td><%=u.getFirstName()%></td>
				                     <td><%=u.getLastName()%></td>
				                     <td><%=u.getPhoneNo()%></td>
				                     <td><%=u.getDepartment()%></td>
				                 </tr>
			                 	<%}%>
								
								
						</tbody>
					</table>
				</div>
				<br>
				<br>
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Date</th>
								<th class="column2">Order ID</th>
								<th class="column3">Name</th>
								<th class="column4">Price</th>
								<th class="column5">Quantity</th>
								<th class="column6">Total</th>
							</tr>
						</thead>
						<tbody>
								<tr>
									<td class="column1">2017-09-29 01:22</td>
									<td class="column2">200398</td>
									<td class="column3">iPhone X 64Gb Grey</td>
									<td class="column4">$999.00</td>
									<td class="column5">1</td>
									<td class="column6">$999.00</td>
								</tr>
								
								
						</tbody>
					</table>
				</div>
				
			</div>
			
			
		</div>
	</div>

			
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
			
</body>
</html>