<%@page import="com.cognizant.bean.EmployeeBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@page import="com.cognizant.dao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" class="table">
<tr>
<th>Column</th>
<th>Value</th>

</tr>
<form action="editaction.jsp">

<%
EmployeeDAO empDAO=new EmployeeDAO();
EmployeeBean emp=new EmployeeBean();
//List<EmployeeBean>  empList=new ArrayList<EmployeeBean>();
emp=empDAO.read(Integer.parseInt(request.getParameter("empId")));
if(emp!=null){
%>
<tr><th>ID</th>
<td><input type="number" value="<%=emp.getEmpId()%>" readonly="readonly" name="empId" ></td></tr>
<tr><th>Name</th>
<td><input type="text" value="<%=emp.getEmpName() %>" name="empName"/></td></tr>
<tr><th>Email</th>
<td><input type="email" value="<%=emp.getEmail() %>" name="email"/></td></tr>
<tr><th>Mobile</th>
<td><input type="tel" value="<%=emp.getMobile() %>" name="mobile"></td></tr>

<tr>
<td><input type="reset" value="Clear"/></td>

<td><input type="submit" value="Edit"/> </td></tr>


<%}
out.println("</table></form>"); %>
</body>
</html>