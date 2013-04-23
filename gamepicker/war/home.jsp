<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
  <head>
  	<link type="text/css" rel="stylesheet" href="/stylesheets/main.css" />
    <title>game picker</title>
  </head>

  <body>
  
  <%
	  Connection c = null;
	  c = DriverManager.getConnection("jdbc:google:rdbms://gamepickersql:gamepickerdata/gamedata");
	  ResultSet rs = c.createStatement().executeQuery("SELECT id, name FROM entries ORDER BY RAND() LIMIT 2"); 
	  int id = rs.getInt("id");
	  String name = rs.getString("name");
	  rs.next();
	  int id2 = rs.getInt("id");
	  String name2 = rs.getString("name");
  %>
  
	<h1>Which game do you like better?</h1>
	<hr />
	<ul>
		<li><a href="home.jsp">Home</a></li>
		<li><a href="topgames.jsp">Top Games</a></li>
		<li><a href="gametable.jsp">Contact</a></li>
	</ul>
	<div align="center">
	<table border="0" cellpadding="0" cellspacing ="50" align="center">
	<tr>
	
	<td></td>
	<td></td>
	<td>
		<%
		out.println(
		    "<a href=\"http://gamepickerapp.appspot.com/vote?game1=" + id +
		    "&game2=" + id2 + 
		    "&winner=" + id +"\">");
		
		%>
	<img src="http://2.bp.blogspot.com/-cG55gr-Fbmg/TinBohWoBHI/AAAAAAAAAE0/z8jnfVOa-o8/s1600/OcarinaofTime.jpg"
	alt="Zelda: Ocarina of Time" title="Zelda: Ocarina of Time" /> 
	</a>
	</td>
	<td>
		<%
		out.println(
		    "<a href=\"http://gamepickerapp.appspot.com/vote?game1=" + id +
		    "&game2=" + id2 + 
		    "&winner=" + id2 +"\">");
		%>
	<img src="http://upload.wikimedia.org/wikipedia/en/9/93/StarCraft_box_art.jpg" alt="Starcraft" title="Starcraft" /> 
	</a>
	</td>
	</tr>
	</table>
	</div>
	<p><center><a href="home.jsp">Skip</a></center></p>
  </body>
</html>