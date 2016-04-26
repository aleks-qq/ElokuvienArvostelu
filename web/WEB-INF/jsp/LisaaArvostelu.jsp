<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Elokuva-arvostelu</title>
<script src="/ElokuvienArv/js/jquery.js"></script>
<script type="text/javascript">
function doAjaxPost() {  
	  // get the form values  
	  var nimi = $('#nimi').val();
	  var arvostelu = $('#arvostelu').val();
	   
	  $.ajax({  
	    type: "POST",  
	    url: "/ElokuvienArv/LisaaArvostelu.htm",  
	    data: "nimi=" + nimi + "&arvostelu=" + arvostelu,  
	    success: function(response){  
	      // we have the response  
	      $('#info').html(response);
	      $('#nimi').val('');
	      $('#arvostelu').val('');
	    },  
	    error: function(e){  
	      alert('Error: ' + e);  
	    }  
	  });  
	}  
</script>
</head>
<body>
<h1>Lisää Elokuvan arvostelu</h1>
	<table>
		<tr><td>Elokuvan nimi : </td><td> <input type="text" id="nimi"><br/></td></tr>
		<tr><td>Lyhyt arvostelu : </td><td> <input type="text" id="arvostelu"><br/></td></tr>
		<tr><td colspan="2"><input type="button" value="Lisää Arvostelu" onclick="doAjaxPost()"><br/></td></tr>
		<tr><td colspan="2"><div id="info" style="color: green;"></div></td></tr>
	</table>
	<a href="/ElokuvienArv/NaytaArvostelut.htm">Näytä arvostelut</a>
</body>
</html>