<#setting time_zone="${user.timeZone}">
<html>
	<body>
		<table width="100%" bgcolor="#D5DCE8">
			<tr>
				<td colspan="3"><b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
Active</span></font></i></b> <b><i><font size="4" color="#4A6D00" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#4A6D00;font-weight:bold;font-style:italic'>
Pay</span></font></i></b> <b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt; font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
&trade;</span></font></i></b>
				</td>
			</tr>
			<tr>
				<td colspan="3"><font size="2" face="Verdana"><br>
					<u><b>Alert Notification</b></u><br>
					<br>
					A problem has occurred with the ActiveOps instance located at <a href="${baseURL}"></a>${baseURL}<br>
					Please click the <a href="${baseURL}/admin">link to the Admin</a> site to view details of the issue.</font><br>
				</td>
			</tr?
		</table>
		<table>
			<tr><td>Failed Component: </td><td>${details.component}</td></tr>
			<tr><td>Failure</td><td>${details.message}</td></tr>
		</table>

		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>
		
	</body>
</html>