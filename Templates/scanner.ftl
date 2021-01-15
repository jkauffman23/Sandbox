<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title></title>
	</head>
	<body>
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td colspan="3">
					<b><i>
						<font size="4" color="#000099" face="Verdana">
							<span style='font-size:13.5pt;font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
								Managed
							</span>
						</font>
					</i></b>
					<b><i>
						<font size="4" color="#4A6D00" face="Verdana">
							<span style='font-size:13.5pt;font-family:Verdana;color:#4A6D00;font-weight:bold;font-style:italic'>
								Pay
							</span>
						</font>
					</i></b> 
					<b><i>
						<font size="4" color="#000099"face="Verdana">
							<span style='font-size:13.5pt; font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
								&trade;
							</span>
						</font>
					</i></b>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<font size="2" face="Verdana"><br>
						Message From: ${user.firstName}, ${user.lastName}<br>
						<br>
						Dear User:<br>
						<br>
						Please re-scan this invoice.<br>
						<br>
						Additional Information:<br>
						${userMessage}
					</font>
					<hr>
					<table>
						<tr>
							<td width="50%"><b>Vendor name:</b></td>
							<td>${document.vendor.name}</td>
						</tr>
						<tr>	
							<td><b>Invoice Date:</b></td>
							<td>${document.date}</td>
						</tr>
						<tr>
							<td><b>Invoice Number:</b></td>
							<td>${document.number}</td>
						</tr>
						<tr>
							<td><b>Invoice Amount:</b></td>
							<td>${document.currencyId}
							${document.grossAmount?string(",##0.00")}</td>
						</tr>
					</table>
		
					<font size="2" face="Verdana"><br>
					Click <a href="${baseURL}/DisplayInvoiceScreen.jsp?wobNumber=${document.wobNumber}&urlPage=true&ceDocumentId=${document.ceDocumentId?replace("{","%7B")?replace("}","%7D")}">
					here</a> to view the invoice.</font><br>
			<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>					
					<font size="1" color="#FFFFFF" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
						DOCUMENTID:0123456789=${document.seqId}<br></font></td>
				</tr>
			</table>
		</body>
</html>
