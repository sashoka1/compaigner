<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<div>

<center>
<div id="heading1">
Member -> Add
</div>
</center>


<div align="center" style="margin-top: 50px">
<form name="loginForm" action="../member/memberAdd" method="post">
<table style="border: 2px double;margin-right: 1px;border-color: threedlightshadow" style="border-bottom-style: none;">
<tr><th colspan="2"><p align="center" style="margin-top: 0;color:teal"><b>New Member Add</b></p></th><th></th></tr>
<tr><td><b>First Name &nbsp; &nbsp;  : </b></td><td><input type="text" name="firstName"  size="22"/></td></tr>
<tr><td><b>Last Name &nbsp; &nbsp; : </b></td><td><input type="text" name="lastName"  size="22"/></td></tr>
<tr><td><b>Mobile No &nbsp; &nbsp; : </b></td><td><input type="text" name="mobile"  size="22"/></td></tr>
<tr><td><b>Email Id &nbsp; &nbsp; &nbsp; &nbsp;  : </b></td><td><input type="text" name="emailId"  size="22"/></td></tr>
<tr><td><b>Group Name &nbsp;: </b></td><td>

<select style="width: 166px;" name="group.id">

<c:forEach items="${dlist}" var="groups">
<option value="${groups.id}"><c:out value="${groups.name}"></c:out></option>
</c:forEach>

</select>
</td></tr>

<tr><td><b>Comment  &nbsp;  &nbsp; &nbsp;  : </b></td><td><input type="text" name="comment"  size="22"/></td></tr>
<tr><td></td><td><input type="submit" value="Member Add"/></td></tr>
</table>
</form>
</div>

</div>
</body>
</html>