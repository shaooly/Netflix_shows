<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>how can you see this page bro?</title>
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
		// check connection
		out.print("connection success >> from skeleton" + "<br>");
		
		// SQL Query starts here
		String username = request.getParameter("username");
		String password = request.getParameter("psw");
		String query = "SELECT * FROM users;";
		Statement stm = conn.createStatement();
		ResultSet rs = stm.executeQuery(query);
		boolean exist = false;
		
		while(rs.next())
		{
			if(rs.getString("username").equals(username) && rs.getString("password").equals(password))
				exist = true;
		}
		if(exist)
		{
			session.setAttribute("userName", username);
			String redirectURL = "netflix_news.jsp";
	        response.sendRedirect(redirectURL);
		}
		else
		{
			String redirectURL = "homepage.html";
	        response.sendRedirect(redirectURL);
		}
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