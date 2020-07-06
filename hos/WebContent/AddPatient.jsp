<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add new patient</title>
<style type="text/css">
h3{font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:SlateBlue;
text-align: center; text-decoration: underline }
table{font-family: Calibri; color:white; font-size: 11pt; font-style: normal;width: 50%;
text-align:; background-color: SlateBlue; border-collapse: collapse; border: 2px solid navy}
table.inner{border: 0px}
</style>
</head>
<body>

<h3>Patient Registration Form</h3>
<form action="PatientServlet" method="POST">
<table align="center" cellpadding = "10">
<tr>

<tr>
<td>Patient Type</td>
<td>
	<input type = "radio" name = "patientType" value = "inpatient"/><span>Inpatient</span>
	<input type = "radio" name = "patientType" value = "outpatient"/><span>Outpatient</span>
</td>
</tr>
<tr>
				
								
<td>First Name</td>
<td><input type="text" name="firstName" maxlength="30"/>
</td>
</tr>
<td>Last Name</td>
<td><input type="text" name="lastName" maxlength="30"/>
</td>
</tr>
<tr>
<td>Birth Date</td>
<td><input type="text" name="birthDate" maxlength="100" /></td>
</tr>
<tr>
<td>Phone No.</td>
<td><input type="text" name="phoneNo" maxlength="100" /></td>
</tr>
<tr>
<td>Unit</td>
<td><input type="text" name="unit" maxlength="100" /></td>
</tr>
<tr>
<tr>
<td>Doctor</td>
<td><input type="text" name="doctor" maxlength="100" /></td>
</tr>
<tr>
<tr>
<td>Cured</td>
<td><input type="text" name="cured" maxlength="100" /></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>
</form>

</body>
</html>