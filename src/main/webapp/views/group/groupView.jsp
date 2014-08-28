<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

	<div>

		<center>
			<div id="heading1">Group -> View</div>
		</center>
	</div>

	<c:if test="${! empty  groupLlist}">
		<center>
			<table class="list">
				<tr>
					<th>Group Id</th>
					<th>Group Name</th>
					<th>Group Modify</th>
				</tr>
				<c:forEach items="${groupLlist}" var="group">
					<tr>
						<td><c:out value="${group.id}"></c:out></td>
						<td><c:out value="${group.name}"></c:out></td>
						<td><a href="GroupModifyView?id=${group.id}">Edit</a></td>
					</tr>
				</c:forEach>

			</table>
		</center>
	</c:if>

</body>
</html>