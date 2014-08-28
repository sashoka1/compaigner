<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><tiles:getAsString name="title"/></title>
<link rel="shortcut icon" type="image/x-icon" href="image/favicon.png">
</head>

<body>

<center>
<div align="center"   style="margin-top:0px; background-color: white;width:1100px" id="main">


<div>
<img src="image/mainHeader.png" align="left"  /></h1>
</div>


 <hr style="height:2px;">

<div id="content" style="width:780px;height:440px;float:left;text-align:left;">
<tiles:insertAttribute name="contents"></tiles:insertAttribute>
</div>

<div id="advertise" style="width:320px;float:left;text-align:left;;vertical-align:top;margin-bottom: 30px">
<tiles:insertAttribute name="right"></tiles:insertAttribute>
</div>


<hr style="height:2px;">

<div id="footer" style="background-color:#EBEBEB;clear:both;text-align:center; height: 60px">
campaigner provide facility to run various <br/> 
marketing campaigns to provide information of their products and services to existing 
<br/>and prospective customers, and to receive their feedbacks etc.
<hr style="height:2px;"/>
<p style="color: blue;"><b>All Rights Reserved By Sanghavi Infosoft Pvt. Ltd.</b></p>  
 </div>
 
</div>
</center>

</body>
</html>
