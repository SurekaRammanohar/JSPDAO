<%@page import="com.cognizant.bean.EmployeeBean"%>
<%@page import="com.cognizant.dao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
EmployeeDAO empDAO=new EmployeeDAO();
EmployeeBean emp=new EmployeeBean();
emp.setEmpId(Integer.parseInt(request.getParameter("empId")));
emp.setEmpName(request.getParameter("empName"));
emp.setEmail(request.getParameter("email"));
emp.setMobile(Long.parseLong(request.getParameter("mobile")));
int status=empDAO.insert(emp);
if(status==0)
	out.println("Error in inserting the data");
else
	response.sendRedirect("read.jsp");
%>
</body>
</html>