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
						<u>Credit Card Transaction(s) Error Report</u><br>
						<br>
						Dear ${user.displayName}<br>
						<br>
                        You are receiving this e-mail as you have been designated the ActiveOps AP Manager.<br>
                        The following Credit Card(s) have unallocated transactions but are Unassigned, Disabled or Missing in Card Admin:
					</font>
					<hr>
				</td>
			</tr>
		</table>		
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td><font size="2" face="Verdana">Credit Card No</font>
				</td>
				
				<td><font size="2" face="Verdana">User Id</font>
				</td>
				<td><font size="2" face="Verdana">Type</font>
				</td>
				<td><font size="2" face="Verdana">Status</font>
				</td>
				
			</tr>
			
			<#list creditcard as credit>
				<tr>
					<td><font size="2" face="Verdana">${credit.ccNumber}</font>
					</td>
					
					<td><font size="2" face="Verdana">${credit.userId}</font>
					</td>
					<td><font size="2" face="Verdana">${credit.type}</font>
					</td>
					<td><font size="2" face="Verdana">${credit.ccStatus}</font>
					</td>
					
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