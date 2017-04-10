<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<html>
<head>
<%
String cssTag = "<link rel='stylesheet' type='text/css' href='./css/loginStyle.css'>";
out.print(cssTag);
System.out.println("cssTag - " +cssTag);
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form method=get action=login style="height: 165px; ">		
		<table style="width: 300px">
			<tr>
				<td>Name</td>
				<td style="text-align: right;"><input type="text" value="tom"  style="width: 150px; height: 25px" name="name"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td style="text-align: right;"><input type="password" value="" style="width: 150px; height: 25px" name="pass"></td>
			</tr>
			<tr>
				<td></td>
				<td style="text-align: right;"><input type=submit name="Submit"style="width: 100px; height: 25px; float: top;" value="Login"></td>			
			</tr>			
		</table>			
	</form>
</body>
</html>