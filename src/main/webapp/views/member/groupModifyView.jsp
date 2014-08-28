<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div>

<center>
<div id="heading1">
Group -> Modify
</div>
</center>


<div align="center" style="margin-top: 50px">
<form name="loginForm" action="groupModify" method="get">
<table style="border: 2px double;margin-right: 1px;border-color: threedlightshadow" style="border-bottom-style: none;">
<tr><th colspan="2"><p align="center" style="margin-top: 0;color:teal"><b>Group Modify</b></p></th><th></th></tr>
<tr><td><b></b></td><td><input type="hidden" name="id"  size="22" value="${user.id}"></td></tr>
<tr><td><b>Group Name &nbsp; : </b></td><td><input type="text" name="name"  size="22" value="${user.name}"></td></tr>
<tr><td></td><td><input type="submit" value="Modify"></td></tr>
</table>
</form>
</div>
</div>

</body>
</html>