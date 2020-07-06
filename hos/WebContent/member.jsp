<%@page import="java.util.List"%>
<%@page import="com.hos.Service.PatientService"%>
<%@page import="java.util.Date"%>
<%@page import="com.hos.Entity.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	<meta name="viewport" content="width=device-width, initial-scale=1">
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

<title>Patient</title>
</head>
<body>
			
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<a href="main.jsp" class="buttonHome"><span>Home </span></a> <a href="member.jsp" class="buttonGreen">Patients</a> 
				<a href="doc.html" class="buttonBlue">doctors</a><a href="staff.html" class="buttonRed">Staff</a><br><br>
				
				<a href="AddPatient.jsp" class="buttonBlue">Add</a><br><br>
				
				<h1>Inpatient</h1>
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Id</th>
								<th class="column2">First Name</th>
								<th class="column3">Last Name</th>
								<th class="column4">Birth Date</th>
								<th class="column5">Phone No.</th>
								<th class="column6">Unit</th>
								<th class="column7">Doctor</th>
								<th class="column8">Cured</th>
								<th class="column9">Edit</th>
								<th class="column10">Delete</th>
								
							</tr>
						</thead>
						<tbody>
								<%
									PatientService patientService = new PatientService();
									String type1 = "inpatient";
                     				List<Patient> list = patientService.getListOfPatients(type1);
				                     for (Patient u : list) {
				                 %>
				                 <tr>
				                     <td><%=u.getId()%></td>
				                     <td><%=u.getFirstName()%></td>
				                     <td><%=u.getLastName()%></td>
				                     <td><%=u.getBirthDate()%></td>
				                     <td><%=u.getPhoneNo()%></td>
				                     <td><%=u.getUnit()%></td>
				                     <td><%=u.getDoctor()%></td>
				                     <td><%=u.getCured()%></td>
				                     <td><a href="staff.html" class="buttonBlue">Edit</a></td>
				                     <td><a href="staff.html" class="buttonRed">Delete</a></td>
				                     
				                 </tr>
			                 	<%}%>
								
								
						</tbody>
					</table>
				</div>
				<br>
				<br>
				<h1>Outpatient</h1>
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Id</th>
								<th class="column2">First Name</th>
								<th class="column3">Last Name</th>
								<th class="column4">Birth Date</th>
								<th class="column5">Phone No.</th>
								<th class="column6">Unit</th>
								<th class="column7">Doctor</th>
								<th class="column8">Cured</th>
								<th class="column9">Edit</th>
								<th class="column10">Delete</th>
								
							</tr>
						</thead>
						<tbody>
								<%
									PatientService patientService2 = new PatientService();
									String type2 = "outpatient";
                     				List<Patient> list2 = patientService.getListOfPatients(type2);
				                     for (Patient u : list2) {
				                 %>
				                 <tr>
				                     <td><%=u.getId()%></td>
				                     <td><%=u.getFirstName()%></td>
				                     <td><%=u.getLastName()%></td>
				                     <td><%=u.getBirthDate()%></td>
				                     <td><%=u.getPhoneNo()%></td>
				                     <td><%=u.getUnit()%></td>
				                     <td><%=u.getDoctor()%></td>
				                     <td><%=u.getCured()%></td>
				                     <td><a href="staff.html" class="buttonBlue">Edit</a></td>
				                     <td><a href="staff.html" class="buttonRed">Delete</a></td>
				                     
				                 </tr>
			                 	<%}%>
								
								
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