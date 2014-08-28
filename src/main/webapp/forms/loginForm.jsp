<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<body style="border-bottom-style: none;">

<div align="right" style="margin-top: 20px">
<form action="web/login/authenticate" method="post">
<table style="border: 2px double;margin-right: 1px;border-color: threedlightshadow" style="border-bottom-style: none;">
<tr><th colspan="2"><p align="center" style="margin-top: 0;color:teal"><b>Login</b></p></th><th></th></tr>
<tr><td><b>User Name &nbsp; : </b></td><td><input type="text" name="name"  size="22"></td></tr>
<tr><td><b>Password  &nbsp; &nbsp; &nbsp;: </b></td><td><input type="password" name="pwd" size="22"></td></tr>
<tr><td></td><td><input type="submit" value="Login"></td></tr>
</table>
</form>

<c:import url="/forms/signupForm.jsp"></c:import>

</div>
</body>
</html>
