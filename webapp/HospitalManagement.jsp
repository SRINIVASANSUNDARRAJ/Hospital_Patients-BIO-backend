<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Appointment</title>
</head>
<body>
<% try {String name=request.getParameter("patient");
Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(
				"jdbc:Mysql://localhost:3306/hospitalmanagement","root","srini@123");
		Statement stmt=con.createStatement();
		out.print("insert successfully");
		ResultSet rs;
		stmt.executeUpdate("insert into patient values('"+name+"')");
		out.print("insert successfully");
}
catch (Exception e)
{out.print("exception");}
%>
</body>
</html>