		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td colspan="3">
					<img src="${baseURL}/images/activeOps.jpg" />
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<font size="2" face="Verdana"><br>
						New Attachment Notification
						<font size="2" face="Verdana"><br>
					Click <a href="${baseURL}/DisplayInvoiceScreen.jsp?wobNumber=${document.wobNumber}&urlPage=true&ceDocumentId=${document.ceDocumentId?replace("{","%7B")?replace("}","%7D")}">
					here</a> to view the invoice.</font><br>
						<hr>
					</font>
					<hr>
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>						
					<font size="1" color="#FFFFFF" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
						DOCUMENTID:0123456789=${document.seqId?string("############")}<br>
						SENDERSEMAIL:${user.email}&</font></td>
				</tr>
			</table>