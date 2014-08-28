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
Member -> View
</div>
</center>
</div>

<c:if test="${! empty  list}">
<center>
<table class="list">
<tr><th>Member Id</th><th>First Name</th><th>First Name</th><th>Mobile Number </th><th>Email Id</th><th>Group Name</th><th>Comment</th><th>Member Modify</th></tr>	
<c:forEach items="${list}" var="member">
<tr><td><c:out value="${member.id}"></c:out></td>
<td><c:out value="${member.firstName}"></c:out></td>
<td><c:out value="${member.lastName}"></c:out></td>
<td><c:out value="${member.mobile}"></c:out></td>
<td><c:out value="${member.emailId}"></c:out></td>
<td><c:out value="${member.group.name}"></c:out></td>
<!--<td><c:out value="${member.group.name}"></c:out></td>-->
<td><c:out value="${member.comment}"></c:out></td>
<td><a href="GroupModifyView?id=${member.id}">Edit</a></td></tr>
</c:forEach>

</table>
</center>
</c:if>

</body>
</html>