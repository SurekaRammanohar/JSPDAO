<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cognizant.bean.EmployeeBean"%>
<%@page import="com.cognizant.dao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read Page</title>
</head>
<body>
<table border="1" class="table">
<tr>
<th>ID</th>
<th>EMPNAME</th>
<th>EMAIL</th>
<th>MOBILE</th>
<th>ACTION</th>
</tr>

<%
EmployeeDAO empDAO=new EmployeeDAO();
//EmployeeBean emp=new EmployeeBean();
List<EmployeeBean>  empList=new ArrayList<EmployeeBean>();
empList=empDAO.readAll();
for(EmployeeBean emp:empList){
%>

<tr>
<td><%=emp.getEmpId() %></td>
<td><%=emp.getEmpName() %></td>
<td><%=emp.getEmail() %></td>
<td><%=emp.getMobile() %></td>
<td><a href="edit.jsp?empId=<%=emp.getEmpId()%>">Edit </a>|<a href="delete.jsp?empId=<%=emp.getEmpId()%>" >Delete</a></td>
</tr>
<%}
out.println("</table>"); %>

</body>
</html>