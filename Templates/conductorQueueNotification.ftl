<#setting time_zone="${user.timeZone}">
<html>
  <body>
    <table width="100%" bgcolor="#FFFFFF">
    <tr>
      <td colspan="3"><b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
Active</span></font></i></b> <b><i><font size="4" color="#4A6D00" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#4A6D00;font-weight:bold;font-style:italic'>
Pay</span></font></i></b> <b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt; font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
&trade;</span></font></i></b>
      </td>
    </tr>
  <tr>
    <td colspan="3"><font size="2" face="Verdana"><br>
    <b>Conductor queue Notification</b><br>
    <br>
    Support Team:<br>
    <br>
An invoice has hit the limit for auto retries. Please review and investigate. </font>
<font size="2" face="Verdana"><br>
Please log in to Active Pay by clicking <a href=${baseURL}/DisplayInvoiceScreen.jsp?wobNumber=${document.wobNumber}&urlPage=true&ceDocumentId=${document.ceDocumentId?replace("{","%7B")?replace("}","%7D")}">
					<table>
						<tr>
							<td><font size="2" face="Verdana">&nbsp;</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Type:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.type?exists>${document.type}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Wob Number:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.wobNumber?exists>${document.wobNumber}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Invoice Date:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.date?exists>${document.date}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td><b><font size="2" face="Verdana">Ref Id:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.number?exists>${document.seqId}<#else>${""}</#if></font></td>
						</tr>
					</table>
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>					
		<table>
			<tr>
				<td>	<font size="1" color="#FFFFFF" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
						DOCUMENTID:0123456789=${document.seqId?string("############")}<br>
						SENDERSEMAIL:[${user.email}&]</font>
				</td>
			</tr>
		</table>
	</body>
</html>
