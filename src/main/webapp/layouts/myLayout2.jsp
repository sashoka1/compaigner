<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><tiles:getAsString name="title"/></title>
<link href="../../css/texFormat.css" rel="stylesheet" type="text/css" />
<link href="../../leftMenus/leftMenu.css" rel="stylesheet" type="text/css" />
<link href="../../image/favicon.png" rel="shortcut icon" type="/image/x-icon" />
</head>

<body>


<center>
<div align="center"   style="margin-top:0px; background-color: white;width:1100px" id="main">

<div>
<img src="${pageContext.request.contextPath}/image/mainHeader.png" align="left"/></h1>
</div>

<hr style="height:2px;">

<div id="left" style="width:250px;float:left;text-align:left;;vertical-align:top;">
<tiles:insertAttribute name="left"></tiles:insertAttribute>
</div>

<div id="content" style="width:830px;float:left;text-align:left;margin-right:5px;">
<tiles:insertAttribute name="contents"></tiles:insertAttribute>
</div>

 <hr style="height:2px;">
<div id="footer" style="background-color:#EBEBEB;clear:both;text-align:center; height: 20px">
<p style="color: blue;"><b>All Rights Reserved By Sanghavi Infosoft Pvt. Ltd.</b></p>  
 </div>

</div>

</center>

</body>
</html>
