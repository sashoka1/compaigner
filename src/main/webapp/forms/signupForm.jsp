<html>
<head>

<script>
function enquiry()
		{
			a=document.getElementById("name1").value.toUpperCase(); 
			b=document.getElementById("mobile1").value;
			c=document.getElementById("email1").value;
			d=document.getElementById("batch1").value;
			e=document.getElementById("message1").value.toUpperCase();

			if(a=="")
			{
				alert("Name can't be left Blank...");
				document.enquiryForm.name.focus();
				return false;
			}
			
			if(b=="")
			{
				alert("Contact can't be blank.....");
				document.enquiryForm.mobile.focus();
				return false;
			}
			if(b.length<10 || b.length>10)
			{
				alert("Please enter the Phone No of 10 digit.");
				document.enquiryForm.mobile.focus();
				return false;
			}
			
			if(c=="")
			{
				alert("Email can't be blank.....");
				document.enquiryForm.email.focus();
				return false;
			}
			var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			if(c.match(mailformat))
 			{
 			}
 			else
 			{
 				alert("Invalid Email id .....");
 				document.enquiryForm.email.focus();
 				return false;
 			}
			
			if(e=="")
			{
				alert("Message can't be blank.....");
				document.enquiryForm.message.focus();
				return false;
			}
			
			
			var xmlhttp;
			if (window.XMLHttpRequest)
  			{// code for IE7+, Firefox, Chrome, Opera, Safari
 				 xmlhttp=new XMLHttpRequest();
 			 }
 			 else
  			{// code for IE6, IE5
  				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  			}
 			 xmlhttp.onreadystatechange=function()
  			{
  				if (xmlhttp.readyState==4 && xmlhttp.status==200)
   				{ // document.getElementById("msg").innerHTML=xmlhttp.responseText;
  				 	o=xmlhttp.responseText;
     				document.getElementById("name1").value="";
       				document.getElementById("mobile1").value="";
       				document.getElementById("email1").value="";
       				//document.getElementById("batch1").value="";
       				document.getElementById("message1").value="";
       				alert(o);
    			}
    		}
				xmlhttp.open("POST","enquiry?name="+a+"&mobile="+b+"&email="+c+"&batch="+d+"&message="+e,true);
				xmlhttp.send();
				return false;
		}
</script>
</head>

<div align="right" style="margin-top: 30px">
<form name="enquiryForm" action="login/signUp" method="post">
<table style="border: 2px double;margin-right: 1px;border-color: threedlightshadow">
<tr><th colspan="2"><p align="center" style="margin-top: 0;color:teal"><b>New User, Sign Up</b></p></th><th></th></tr>
<tr><td><b>Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</b></td><td><input type="text" name="name" id="name1" size="22"></td></tr>
<tr><td><b>Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b></td><td><input type="text" name="email" id="email1" size="22"></td></tr>
<tr><td><b>Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b></td><td><input type="text" name="password" id="password1" size="22"></td></tr>
<tr><td><b>Confirm <br/> Password &nbsp;&nbsp;&nbsp;&nbsp; :</b></td><td><input type="text" name="cpassword" id="cpassword1" size="22"></td></tr>
<tr><td></td><td><input type="submit" value="Register"></td></tr>
</table>
</form>
</div>

</html>
