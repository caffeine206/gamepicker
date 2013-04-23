<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.google.appengine.api.rdbms.AppEngineDriver" %>

<html>
  <body>

<%
Connection c = null;
c = DriverManager.getConnection("jdbc:google:rdbms://gamepickersql:gamepickerdata/gamedata");
ResultSet rs = c.createStatement().executeQuery("SELECT id, name FROM entries"); %>

<table style="border: 1px solid black">
<tbody>
<tr>
<th width="35%" style="background-color: #CCFFCC; margin: 5px">ID</th>
<th style="background-color: #CCFFCC; margin: 5px">Name</th>
</tr> <%
while (rs.next()){
    int id = rs.getInt("id");
    String name = rs.getString("name");
%>

<tr>
<td><%= id %></td>
<td><%= name %></td>
</tr>

<% }
c.close(); %>

</tbody>
</table>
<br />

<form action="/sign" method="post">
	<div>ID: <input type="integer" name="id"></input></div>
    <div>Game Title: <input type="text" name="name"></input></div>
    <div><input type="submit" value="Submit" /></div>
  </form>
  </body>
</html>