<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>administrator page</title>
</head>
<body>
	<table>
		<%
		if(!"admin".equals(session.getAttribute("userName")))
        	response.sendRedirect("homepage.html");
Connection conn = null;

String url = "jdbc:mysql://localhost/javaproj?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String url_o = "jdbc:mysql://localhost:3306/javaproj";
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, "root", "admin");
	
	if (conn != null){
		// check connection
		out.print("connection success >> from skeleton" + "<br>");
		
		// SQL Query starts here
		String query = "SELECT * from users;";
		Statement stm = conn.createStatement();
		ResultSet rs = stm.executeQuery(query);
		
		while(rs.next()){
			out.print("<tr>");
		    out.print("<td>" + rs.getString("username") + "</td>");
		    out.print("<td>" + rs.getString("password") + "</td>");
		  	out.print("</tr>");
		  	out.print("<br>");
		}
		
		
		
		
		// close connection
		conn.close();
	}
}
	catch (Exception e){
		out.print("connection error" + e.getMessage());
	}




%>
	</table>
</body>
</html>