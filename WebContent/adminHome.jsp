<%@ page import="java.sql.*" %>
<%@ page import="com.elms.DBConnection" %>
<html><body>
<h2>Admin Dashboard</h2>
<table border="1">
<tr><th>ID</th><th>Employee</th><th>Date</th><th>Reason</th><th>Status</th><th>Action</th></tr>
<%
Connection con = DBConnection.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from leaves");
while(rs.next()) {
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td>
<a href="UpdateStatusServlet?id=<%=rs.getInt(1)%>&status=Approved">Approve</a> |
<a href="UpdateStatusServlet?id=<%=rs.getInt(1)%>&status=Rejected">Reject</a>
</td>
</tr>
<% } %>
</table>
</body></html>
