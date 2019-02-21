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
int status=empDAO.delete(Integer.parseInt(request.getParameter("empId")));
if(status==0)
	out.println("Error in deleteing the record");
else
	response.sendRedirect("read.jsp");
%>
</body>
</html>