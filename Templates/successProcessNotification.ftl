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
			<td colspan="3"><font size="2" face="Verdana">
			<b>Successful Connection Notification</b>
			</td>
		</tr>
	</table>
	The e-mail confirms that there was successful connections in the system
<br>
					<table>
					<#list process as doc>
						<tr>
							<td><font size="2" face="Verdana">&nbsp;</font></td>
						</tr>
						<tr>
							<td width="50%"><font size="2" face="Verdana">Connection Name</font></td>
							<td><font size="2" face="Verdana">${doc.stepName}</font></td>
						</tr>
						<tr>
							<td width="50%"><font size="2" face="Verdana">Connection Status</font></td>
							<td><font size="2" face="Verdana">${doc.comment}</font></td>
						</tr>
						</#list>
					</table>
	</body>
</html>