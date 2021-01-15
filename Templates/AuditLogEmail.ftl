<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Non Trade1 1Update Exception Report</title>

<style type="text/css">

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
	<TR class="banner">
		<TR class="banner"><td align=left>
		<span class="activeTitleClass">Active</span>
		<span class="payTitleClass">Pay</span>
		<span class="tmTitleClass">TM</span>
	</td>
	<!--<td align="right"><img src="cid:image"></td></tr>-->
	
	<TR><td align="center" class="reportTitle" colspan="2">Non Trade Update Exception Report</td></TR>
	
	<TR><td align="left" class="dataTitle" colspan="2">Dear ActivePay Admin,</td></TR>
	<TR><td align="left" class="dataTitle" colspan="2">Please review the attached exceptions from the inbound non trade interface.</td></TR>
		

 
	
	<TR><td align="right" colspan="2">Date: ${date?date}</td></TR>
</Table>
<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td><font size="2" face="Verdana"><b>Ref#</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Vendor#</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Invoice#</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Date</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Batch#</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Status</b></font>
				</td>
				
			</tr>
			
			<#list postings as doc>
				<tr>
					<td><font size="2" face="Verdana">${doc.docSeqId?string("##0")}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.tbdString1}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.tbdString2}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.tbdDate1?date}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.tbdNumber1?string("##0")}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.responseDescription}</font>
					</td>
					
				</tr>
			</#list>  
			
		</table>
</body>
</html>