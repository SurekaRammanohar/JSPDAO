package com.cognizant.dao;

import java.util.*;
import java.math.BigDecimal;
import java.sql.*;
import com.cognizant.bean.EmployeeBean;

public class EmployeeDAO {
	
	public static Connection connect() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=null;
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
		return conn;
	}
	public int insert(EmployeeBean emp)throws Exception {
		Connection conn=connect();
		PreparedStatement pstmt=conn.prepareStatement("insert into employee values(?,?,?,?)");
		pstmt.setInt(1, emp.getEmpId());
		pstmt.setString(2, emp.getEmpName());
		pstmt.setString(3,emp.getEmail());
		pstmt.setBigDecimal(4, BigDecimal.valueOf(emp.getMobile()));
	int status=0;
	status=pstmt.executeUpdate();
	
		return status;	
	}
	public int update(EmployeeBean emp)throws Exception {
		Connection conn=connect();
		PreparedStatement pstmt=conn.prepareStatement("update employee set emp_name=?,email=?,mobile=? where emp_id=?");
		pstmt.setInt(4, emp.getEmpId());
		pstmt.setString(1, emp.getEmpName());
		pstmt.setString(2,emp.getEmail());
		pstmt.setBigDecimal(3, BigDecimal.valueOf(emp.getMobile()));
	int status=0;
	status=pstmt.executeUpdate();
	
		return status;	
		
	}
	public int delete(int empId)throws Exception {
	Connection conn=connect();
	Statement stmt=conn.createStatement();
	int status=0;
	status=stmt.executeUpdate("delete from employee where emp_id="+empId);
			return status;
	}
	public EmployeeBean read(int empId)throws Exception {
		Connection conn=connect();
		Statement stmt=conn.createStatement();
		int status=0;
		ResultSet rs=stmt.executeQuery("select * from employee where emp_id="+empId);
		EmployeeBean emp=new EmployeeBean();
		if(rs.next()) {
			emp.setEmpId(rs.getInt(1));
			emp.setEmpName(rs.getString(2));
			emp.setEmail(rs.getString(3));
			emp.setMobile(rs.getLong(4));
		}
		return emp;
	}
	public List<EmployeeBean> readAll()throws Exception{
		
		List<EmployeeBean> empList=new ArrayList<EmployeeBean>();
		Connection conn=connect();
		Statement stmt=conn.createStatement();
		int status=0;
		ResultSet rs=stmt.executeQuery("select * from employee ");
	
		while(rs.next()) {
			EmployeeBean emp=new EmployeeBean();
			emp.setEmpId(rs.getInt(1));
			emp.setEmpName(rs.getString(2));
			emp.setEmail(rs.getString(3));
			emp.setMobile(rs.getLong(4));
		empList.add(emp);
		}
		return empList;
	}
}
