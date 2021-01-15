<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payments Posting Data</title>

<style type="text/css">
<#assign aDateTime = .now>
.activeTitleClass{
	font: Verdana;
	font-weight: bold;
	font-style: italic;
	color: #0369A2;
	font-size: 28px;
}
.payTitleClass{
	font: Verdana;
	font-style: italic;
	color: #FA7832; 
	font-size: 28px;
}

.tmTitleClass{
	font: Verdana;
	color: #FA7832; 
	font-size: 18px;
	vertical-align: super;
}

.reportTitle{
	font: Verdana;
	text-decoration: underline;
	color: #000000;
	font-size: 24px;
}

.dataTitle{
	font: Verdana;
	color: #000000;
	font-size: 20x;
}

 .reportHeader{
     background-color: lightgray;
     color: black;
     font-family:verdana;
     font-size:100%;
     
 }
 .banner{
     background-color: white;
     color: blue;
     font-family:verdana;
     font-size:100%;
     font-style:italic;
     
 }
 .dataTable{
 	border: 0px solid black;
 }
 .dataTableHeader{
     background-color: lightgray;
     color: black;
     font-family:verdana;
     font-size:100%;
 }
 th{
  align:left;
 }
</style>
</head>
<body>
<Table width="100%">
	<!--<TR class="banner">-->
	<TR class="banner"><td align=left>
		<span class="activeTitleClass">Active</span>
		<span class="payTitleClass">Pay</span>
		<span class="tmTitleClass">TM</span>
	</td></tr>
	<!--<td align="right"><img src="cid:image"></td></tr>-->
	
	<TR><td align="center" class="reportTitle" colspan="2">Payments Posting Data</td></TR>
	
	<TR><td align="left" class="dataTitle" colspan="2">Dear ActivePay User,</td></TR>
	
	<TR><td align="left" class="dataTitle" colspan="2">The Payments Posting Data has generated.</td></TR>
		
	<TR><td align="right" colspan="1">Job process Date/Time: ${aDateTime?iso_local}</td></TR>
	
	
	
</Table>
<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>

</body>
</html>