<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="netflix_site_styles.css">
<meta charset="UTF-8">
<title>Shared Content</title>
</head>
<body>
<body>
	<img src="images/netflix_logo.jpg" width="256" height="144"/>
	<a href ="netflix_news.jsp">חזרה הביתה</a>
	<br>
	<table style="width:100%">
	  <tr>
	    <th>שם הסדרה</th>
	    <th>תמונה</th> 
	    <th>ז'אנר</th>
	    <th>תיאור הסדרה</th>
	    <th>הגבלת גיל</th>
	    <th>הועלה על ידי</th>
	  </tr>
	  <tr>
	    <td>חליפות</td>
	    <td><img src="images/suits.jpg" width="100" height="145"/></td>
	    <td>דרמה קומית</td>
	    <td>
	    <p> הסדרה עוסקת בפירמת עורכי דין בשם "פירסון הארדמן" שנמצאת בעיר ניו יורק. מייק, תלמיד קולג' המתכנן להיות סטודנט למשפטים באוניברסיטת הרווארד, נזר מהלימודים לאחר שמכר תשובות למבחן במתמטיקה,<br> ובכך הורס את סיכויו להתקבל לבית ספר למשפטים. לאחר שסולק מהלימודים הוא מרוויח כסף בכך שהוא נבחן במקום אנשים אחרים תמורת תשלום,<br> על ידי ניצול הזיכרון הפנומנלי שלו. טרבור, חברו, משכנע אותו לקחת חלק בעסקת מריחואנה.<br> מייק מגלה שהעסקה היא תרגיל עוקץ של המשטרה, ותוך כדי בריחתו הוא נכנס לחדר במלון בו מקיים הארווי, עורך דין ב"פירסון הארדמן" שנחשב ל"סוגר העסקאות הטוב ביותר בניו יורק",<br> ראיונות עבודה. הארווי, שלאחרונה הפך לשותף בכיר בפירמה, תר אחר עורך דין בוגר הרווארד שיעבוד איתו, כחלק ממדיניות הפירמה. מייק משתמש בזיכרון הצילומי שלו ובידע המשפטי שיש לו,<br> ומוכיח להארווי שהוא המועמד הטוב ביותר שהוא יכול להעסיק<br>, למרות שאין לו תואר במשפטים והוא מעולם לא למד בהרווארד.</p>
	    </td>
	    <td>13+ </td>
	    <td>admin</td>
	  </tr>
	  <tr>
	    <td>בנות גילמור</td>
	    <td><img src="images/gilmore.jpg" width="100" height="145"/></td>
	    <td>דרמה קומית</td>
	    <td>
		    <p>
		    הסדרה עוקבת אחר אם במשפחה חד־הורית בשם לורליי גילמור (לורן גרהאם) ובתה היחידה רורי גילמור (אלקסיס בלדל), החיות בעיירה הבדיונית סטארס-הולו אשר בקונטיקט<br>. הסדרה עוקבת אחר חיי המשפחה שלהן, חייהן הפרטיים, חברויות וסיפורי האהבה שלהן, תוך חשיפת דמויות אחרות החיות גם הן בעיירה הקטנה.
		    </p>
	    </td>
	    <td> 14+ </td>
	    <td>admin</td>
	  </tr>
	  <tr>
	    <td>גמביט המלכה</td>
	    <td><img src="images/gambitqueen.jpg" width="100" height="145"/></td>
	    <td>דרמה</td>
	    <td>
		    <p>
		    הסדרה מגוללת את חייה של ילדת פלא גאונת שחמט בשם בת' הרמון, מגיל 8 עד 22, כשהיא נאבקת בהתמכרויות לסמי הרגעה ולאלכוהול, לצד הצלחותיה כאלופת שחמט.<br>

עלילת הסדרה מתרחשת מסוף שנות ה-50 של המאה ה-20 ועד סוף שנות ה-60. בת' הרמון בת השמונה ניצלה מתאונת דרכים שבה נהרגה אמהּ. היא מועברת לבית יתומות שבו היא מתחברת עם ג'ולין המבוגרת ממנה בשנים אחדות.<br> במרתף בית היתומות היא רואה את השרת, מר שייבל, מול לוח שחמט, ומפצירה בו שילמד אותה את המשחק. הוא נענה לבקשתה, וכעבור משחקים אחדים היא מנצחת אותו.<br> הוא מפגיש אותה עם מנהל מועדון השחמט המקומי, והיא מנצחת בקלות את כל חברי המועדון. בית היתומות נותן מדי יום ליתומות שבו סמי הרגעה, ובת' מתמכרת להם.<br> לאחר שהמדינה אוסרת מתן סמי הרגעה לילדים, בת' פורצת לחדר שבו נותרו סמי ההרגעה, ומתעלפת לאחר שלקחה מנת יתר. כעונש נאסר עליה לשחק שחמט.
		    </p> 
	    </td>
	    <td> 12+ </td>
	    <td>admin</td>
	  </tr>
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
		String query = "SELECT * from the_netflix_shows;";
		Statement stm = conn.createStatement();
		ResultSet rs = stm.executeQuery(query);
		
		while(rs.next()){
			out.print("<tr>");
		    out.print("<td>" + rs.getString("name_of_show") + "</td>");
		    out.print("<td><img src='" + rs.getString("image_link") +  "' width='100' height='145'/></td>");
		    out.print("<td>" + rs.getString("zaner") + "</td>");
		    out.print("<td>" + rs.getString("show_description") + "</td>");
		    out.print("<td>" + rs.getString("age_restriction") + "+" + "</td>");
		    out.print("<td>" + rs.getString("added_by") + "</td>");
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
</body>
</html>