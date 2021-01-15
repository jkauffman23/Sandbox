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
				Message From: ${user.firstName} ${user.lastName}<br>
				<br>
				${userMessage}
			</font>
			<hr>
			<table bgcolor="#FFFFFF">
				<tr>
					<td width="50%"><font size="2" face="Verdana"><b><u>Return to Vendor Notification</u> - Invoice Details:</b></font></td>
				</tr>
				<tr>
					<td width="50%"><font size="2" face="Verdana"><b>Requestor Name:</b></font></td>
					<td><font size="2" face="Verdana">${document.requester.displayName}</font></td>
				</tr>
				<tr>
					<td><font size="2" face="Verdana">- or -</font></td>
				</tr>
				<tr>
					<td width="50%"><font size="2" face="Verdana"><b>Buyer Name:</b></font></td>
					<td><font size="2" face="Verdana">${document.buyer.displayName}</font></td>
				</tr>
				<tr>
					<td><font size="2" face="Verdana">- and -</font></td>
					</tr>
				<tr>
					<td><font size="2" face="Verdana"><b>PO Number:</b></font></td>
					<td><font size="2" face="Verdana">${document.poId}</font></td>
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
					<td><font size="2" face="Verdana">${document.currencyId} ${document.grossAmount?string(",##0.00")}</font></td>
				</tr>
			</table>
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>				
			<font size="2" face="Verdana"><br>
				<font size="1" color="#FFFFFF" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
						DOCUMENTID:0123456789=${document.seqId?string("############")}<br>
						SENDERSEMAIL:[<#if user.email?exists>${user.email}<#else>${"User does not have email associated"}</#if>&]</font>
		</td>
	</tr>
</table>
