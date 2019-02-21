<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Data</title>
</head>
<body>
<div align="center">
<h1>
INSERT DATA</h1>
<a href="index.jsp">Back</a>
<form action="insertAction.jsp">
<table>
<tr><th>ID </th><td><input type="number" name="empId" required="required" placeholder="Enter the employee Id"></d></td></tr>
<tr><th>Name</th><td><input type="text" name="empName"></td></tr>
<tr><th>email</th><td><input type="email" name="email"></td></tr>
<tr><th>mobile</th><td><input type="tel" name="mobile"></td></tr>
<tr><td><input type="reset" value="Clear"/></td><td><input type="submit" value="Insert"/></td></tr>
</table>
</form>
</div>

</body>
</html>