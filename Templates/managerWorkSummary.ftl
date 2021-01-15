<#setting time_zone="${user.timeZone}">
<html>
	<body>
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td colspan="3">
					<img src="${baseURL}/images/activeOps.jpg" />
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<font size="2" face="Verdana"><br>
						<u>Work Summary Notification</u><br>
						<br>
						Dear ${user.displayName}<br>
						<br>
                        You are receiving this e-mail as you have been designated the ActiveOps AP Manager.<br>
                        The following items are now overdue in public ActiveOps queues:
					</font>
					<hr>
				</td>
			</tr>
		</table>		
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td><font size="2" face="Verdana">No.</font>
				</td>
				<td><font size="2" face="Verdana">Queue</font>
				</td>
				<td><font size="2" face="Verdana">Group</font>
				</td>
				<td><font size="2" face="Verdana">Type</font>
				</td>
				<td><font size="2" face="Verdana">Number</font>
				</td>
				<td><font size="2" face="Verdana">Date</font>
				</td>
				<td><font size="2" face="Verdana">Deadline</font>
				</td>
				<td><font size="2" face="Verdana">Link</font>
				</td>
			</tr>
			
			<#list documents as doc>
				<tr>
					<td><font size="2" face="Verdana">${doc_index + 1}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.processInformation.queueName}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.group}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.type}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.number}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.date?date}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.processInformation.deadline?date}</font>
					</td>
					<td><font size="2" face="Verdana">
					<a href="${baseURL}/DisplayInvoiceScreen.jsp?wobNumber=${document.wobNumber}&urlPage=true&ceDocumentId=${document.ceDocumentId?replace("{","%7B")?replace("}","%7D")}">Click here</a>
					</font></td>
				</tr>
			</#list>  
			
		</table>
		
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td>
					<br>
					<font size="2" face="Verdana">Message sent by ActiveOps Admin.</font>
				</td>
			</tr>
			
		</table>
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>			
	</body>
</html>