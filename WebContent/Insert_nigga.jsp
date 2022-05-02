<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>How can you see this page????</title>
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
		if((String)session.getAttribute("userName") != null)
		{
			String name_of_show = request.getParameter("name_of_show");
			String zaner = request.getParameter("zaner");
			String age_restriction = request.getParameter("age");
			String description_noder = request.getParameter("show_description");
			String show_description = "";
			for(int i = 0; i < description_noder.length(); i++)
			{
				if(description_noder.charAt(i) != '"' && description_noder.charAt(i) != '"')
					show_description = show_description + description_noder.charAt(i);
			}
			String image_link = request.getParameter("image");
			String added_by = (String)session.getAttribute("userName");
			String update = "INSERT INTO the_netflix_shows (name_of_show, image_link, zaner, age_restriction, show_description, added_by) VALUES ('" + name_of_show + "', '" + image_link + "', '" + zaner + "', '" + age_restriction + "', '" + show_description + "', '" + added_by + "');";
			Statement stm = conn.createStatement();
			stm.executeUpdate(update);
			String redirectURL = "SharedContent.jsp";
	        response.sendRedirect(redirectURL);
		}
		else
		{
			String redirectURL = "CreateContentItem.html";
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