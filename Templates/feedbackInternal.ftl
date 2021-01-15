<#setting time_zone="${user.timeZone}">
<table width="100%" bgcolor="#FFFFFF">
	<tr>
		<td colspan="3">
			<img src="${baseURL}/images/activeOps.jpg" />
		</td>
	</tr>
	<tr>
		<td colspan="3">
			<font size="2" face="Verdana"><br>
				Message From: ${user.firstName} ${user.lastName} <br>
				<br>
				Dear ActiveOps user:<br>
				<br>
				${userMessage}
			</font>
			<hr>
			<table bgcolor="#FFFFFF">
				<tr>
					<td width="50%"><font size="2" face="Verdana"><b><u>Invoice Feedback Notification</u> - Invoice Details:</b></font></td>
				</tr>
				<tr>
					<td width="50%"><font size="2" face="Verdana"><b>Requestor Name:</b></font></td>
					<td><font size="2" face="Verdana">${document.requester.displayName}</font></td>
				</tr>
				<tr>
					<td width="50%"><font size="2" face="Verdana"><b>Group:</b></font></td>
					<td><font size="2" face="Verdana">${document.group}</font></td>
				</tr>
				<tr>
					<td width="50%"><font size="2" face="Verdana"><b>Vendor Name:</b></font></td>
					<td><font size="2" face="Verdana">${document.vendor.name}</font></td>
				</tr>
				<tr>
					<td width="50%"><font size="2" face="Verdana"><b>Vendor Id:</b></font></td>
					<td><font size="2" face="Verdana">${document.vendor.code}</font></td>
				</tr>
				<tr>
					<td width="50%"><font size="2" face="Verdana"><b>Invoice Date:</b></font></td>
					<td><font size="2" face="Verdana">${document.date?date}</font></td>
				</tr>
				<tr>
					<td><font size="2" face="Verdana"><b>Invoice Number:</b></font></td>
					<td><font size="2" face="Verdana">${document.number}</font></td>
				</tr>
				<tr>
					<td><font size="2" face="Verdana"><b>Invoice Amount:</b></td>
					<td><font size="2" face="Verdana"><#if document.currencyId?exists>${document.currencyId} ${document.grossAmount?string(",##0.00")}<#else>${document.grossAmount?string(",##0.00")}</#if></font></td>
				</tr>
			</table>			
			<font size="2" face="Verdana"><br>
				Click <a href="${baseURL}/DisplayInvoiceScreen.jsp?wobNumber=${document.wobNumber}&urlPage=true&ceDocumentId=${document.ceDocumentId?replace("{","%7B")?replace("}","%7D")}"> here</a> to view the invoice.</font><br>
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>					
				<font size="1" color="#FFFFFF" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
						DOCUMENTID:0123456789=${document.seqId?string("############")}<br>
						SENDERSEMAIL:[${user.email}&]</font>
		</td>
	</tr>
</table>