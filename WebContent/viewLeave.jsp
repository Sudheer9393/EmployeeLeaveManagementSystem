<%@ page import="java.sql.*" %>
<%@ page import="com.elms.DBConnection" %>
<html><body>
<h2>Leave Status</h2>
<table border="1">
<tr><th>ID</th><th>Date</th><th>Reason</th><th>Status</th></tr>
<%
String username = (String)session.getAttribute("username");
Connection con = DBConnection.getConnection();
PreparedStatement ps = con.prepareStatement("select * from leaves where username=?");
ps.setString(1, username);
ResultSet rs = ps.executeQuery();
while(rs.next()) {
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
</tr>
<% } %>
</table>
</body></html>
