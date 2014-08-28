<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js">
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js">
</script>

<div>

<center>
<div id="heading1">
Group -> Delete
</div>
</center>
</div>

<c:if test="${! empty  list}">
<center>
<form action="groupDelete" id="myForm">
<table class="list">
<tr><th>Group Id</th><th>Group Name</th><th><input id="selectall" type="checkbox" name="select"  onclick="checkAll();chek();" />Select All</th></tr>	
<c:forEach items="${list}" var="group">
<tr><td><c:out value="${group.id}"></c:out></td><td><c:out value="${group.name}"></c:out></td><td><input  class="case" type="checkbox" onclick="chek()" name="check" value="${group.id}"/></td></tr>
</c:forEach>

</table>
<input id="ia" type="submit" name="submit" disabled="disabled" value="delete"/>
 
</form>
</center>
</c:if>



</html>