<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<sf:form>


	</sf:form>
	<div>
		<div id="heading1" style="text-align: center;">
			<span>Group -> Add</span>
		</div>
		<div align="center" style="margin-top: 50px">
			<form name="loginForm" action="../group/add" method="post">
				<table
					style="border: 2px double; margin-right: 1px; border-color: threedlightshadow"
					style="border-bottom-style: none;">
					<tr>
						<th colspan="2"><p align="center"
								style="margin-top: 0; color: teal">
								<b>New Group Add</b>
							</p></th>
						<th></th>
					</tr>
					<tr>
						<td><b>Group Name &nbsp; : </b></td>
						<td><input type="text" name="name" size="22"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Group Add"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>