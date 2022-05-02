<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<head><meta http-equiv="refresh" content="0; URL=homepage.html" /></head>
<meta charset="UTF-8">
<title>I don't understand how are you doing this</title>
</head>
<body>
<%
Connection conn = null;

String url = "jdbc:mysql://localhost/javaproj?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String url_o = "jdbc:mysql://localhost:3306/javaproj";
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, "root", "admin");
	
	if (conn != null){
		
		// SQL Query starts here
		String username = request.getParameter("username");
		String password = request.getParameter("psw");
		String update = "INSERT INTO users (username, password) VALUES ('" + username + "', '" + password + "');";
		Statement stm = conn.createStatement();
		stm.executeUpdate(update);
		
		
		
		
		// close connection
		conn.close();
	}
}
	catch (Exception e){
		out.print("connection error" + e.getMessage());
	}




%>
</body>
</html>