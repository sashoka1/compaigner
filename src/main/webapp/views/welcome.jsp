<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<div>

<center>
<script type="text/javascript">

	    var message = "Welcome in Compaigner World..."
	    var neonbasecolor = "#FFFFFF"
	    var neontextcolor = "#610B38"
	    var flashspeed = 100

	    var n = 0
	    if (document.all || document.getElementById) {
	        document.write('<h1 id="h1">')
	        for (m = 0; m < message.length; m++)
	            document.write('<span id="neonlight' + m + '">' + message.charAt(m) + 

'</span>')
	        document.write('</h1>')
	    }
	    else
	        document.write(message)

	    function crossref(number) {
	        var crossobj = document.all ? eval("document.all.neonlight" + number) : 

document.getElementById("neonlight" + number)
	        return crossobj
	    }

	    function neon() {

	        //Change all letters to base color
	        if (n == 0) {
	            for (m = 0; m < message.length; m++)
	            //eval("document.all.neonlight"+m).style.color=neonbasecolor
	                crossref(m).style.color = neonbasecolor
	        }

	        //cycle through and change individual letters to neon color
	        crossref(n).style.color = neontextcolor

	        if (n < message.length - 1)
	            n++
	        else {
	            n = 0
	            clearInterval(flashing)
	            setTimeout("beginneon()", 1500)
	            return
	        }
	    }

	    function beginneon() {
	        if (document.all || document.getElementById)
	            flashing = setInterval("neon()", flashspeed)
	    }
	    beginneon()
</script>
</center>


<div id="heading2">
3 Simple Steps to use Compaigner
</div>

<div id="tf">
Step 1 - Add Group. <br>
Step 2 - Add Members that's you want to send mail.<br>
Step 3 - Choose group and send mail.<br>
</div>

<div style="margin-left: 70px;margin-top: 80px">
<img alt="Compaigner Flow" src="${pageContext.request.contextPath}/image/compaignerFlow.png">
</div>

</div>

</body>
</html>