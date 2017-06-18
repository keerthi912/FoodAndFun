function formValidation()
{

var useatno=document.order.seatno;
var uorderno=document.order.orderno;
var uquantity=document.order.quantity;
 
	if(allnumeric(useatno))
		{
		
			if(allnumeric(uquantity))
			{
				if(orderno_validation(uorderno,1,24))
				{
									return true;
				}
								
							}
							
						}
						
					
				

return false;
}




function allnumeric(useatno)
{
var seatno_len=useatno.value.length;
if(seatno_len==2)
	{
	var number=/^[0-9]+$/;
	if(useatno.value.match(number))
		{
		return true;
		}
	else
		{
		
		alert("seat must have numeric digit only");
		
		useatno.focus();
		return false;
		}
	
	}
else
	{
	alert("enter valid seat no");
	
	useatno.focus();
	return false;
	
	}
}
function orderno_validation(uorderno,mx,my)
{
	var orderno_len=uorderno.value.length;
	if(orderno_len==0||orderno_len<mx||orderno_len>my)
		{
		alert("orderno must be between"+mx+"to"+my);
		uorderno.focus();
		return false;
		}
	else
		{
		return true;
		}	
}

function allnumeric(uquantity)
{
var quantity_len=uquantity.value.length;
if(quantity_len==2)
	{
	var number=/^[0-9]+$/;
	if(uquantity.value.match(number))
		{
		return true;
		}
	else
		{
		
		alert("quantity must have numeric digit only");
		
		uquantity.focus();
		return false;
		}
	
	}
else
	{
	alert("valid quantity");
	
	quantity.focus();
	return false;
	
	}
}

