function chek()
{
	if ($('#myForm :checkbox:checked').length > 0 ){
    document.getElementById('ia').disabled=false;
  }
  else{
   document.getElementById('ia').disabled=true;
  }
	if ($('#myForm :checkbox:checked').length == 1 && $("#selectall").is(":checked") )
	{document.getElementById('ia').disabled=true;	
	$("#selectall").attr("checked",false);
	}
}


function checkAll(){ 
var a=$("#selectall").is(":checked");
//alert(a);
if(a==true){
$(".case").attr("checked",true);
}else{
$(".case").attr("checked",false);
}
}
