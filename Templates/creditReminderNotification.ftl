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
						<u>Important Reminder</u><br>
						<br>
						Dear ${user.displayName},<br>
						<br>
						This is a reminder that you have a total of ${user.tbdNumber1} unallocated credit card transactions. 
						Please remember to allocate your expenses on a regular basis. You can do this by logging into Managed$Pay
						and completing an Expense Report. If you need assistance with this, please contact the Card Administrator at corpcard@cabelas.com. 
					</font>
					<hr>
				</td>
			</tr>
		</table>
		
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>
		
	</body>
</html>