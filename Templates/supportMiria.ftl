<table width="100%" bgcolor="#FFFFFF">
	<tr>
		<td colspan="3">
			<img src="${baseURL}/images/activeOps.jpg" />
		</td>
	</tr>
	<tr>
		<td colspan="3">
			<font size="2" face="Verdana"><br>
				Message From: ${user.firstName}, ${user.lastName}<br>
				<br>
				Missing Fields:<br>
				<br>
				${userMessage}
			</font>
			<hr>
			<table>
				<tr>
					<br>
					<td width="50%"><b><font size="2" face="Verdana">Batch #:</b></font></td>
					<td><font size="2" face="Verdana">${document.batchNumber}</font></td>
				<tr>
				<tr>	
					<font size="2" face="Verdana"><br>
					<td><b><font size="2" face="Verdana">Ref #:</b></font></td>
					<td><font size="2" face="Verdana">${document.seqId?string("############")}</font></td>
					</font>
				</tr>
			</table>
			<font size="2" face="Verdana"><br>
				Click <a href="${baseURL}/DisplayInvoiceScreen.jsp?wobNumber=${document.wobNumber}&urlPage=true&ceDocumentId=${document.ceDocumentId?replace("{","%7B")?replace("}","%7D")}">
				here</a> to view the invoice.</font><br>
			<font size="1" color="#FFFFFF" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
					DOCUMENTID:0123456789=${document.seqId}<br>
			</font>
		</td>
	</tr>
</table>
<table width="100%" bgcolor="#FFFFFF">
	<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
</table>