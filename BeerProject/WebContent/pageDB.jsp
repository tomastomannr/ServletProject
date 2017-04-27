<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
asdf

<table border="2">
   <tr>
        <td>user ID</td>
        <td>Birthday</td>
        <td>Gender</td>
        <td>First Name</td>
        <td>Last Name</td>
   </tr>
<%  
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://mysql50.websupport.sk:3308/asanatoman_38703";
String username="admin_38703";
String password="95525111Aa";
String query="select * from odberatelTab";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<tr><td><%=rs.getInt("idOdberatel") %></td></tr>
<tr><td><%=rs.getString("nazovSpolocnosti") %></td></tr>
<tr><td><%=rs.getString("adresaMestoPSC") %></td></tr>
<tr><td><%=rs.getString("adresaUlicaCislo") %></td></tr>
<tr><td><%=rs.getString("kontaktMobil") %></td></tr>

 <%

}
%>
</table>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
   
</body>
</html>