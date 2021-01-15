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
    <b>New Voucher Notification</b><br>
    <br>
    Dear ${user.displayName}:<br>
    <br>
The e-mail confirms that you have successfully created a voucher in ActiveOps with details below.</font>
<font size="2" face="Verdana"><br>
					<table>
						<tr>
							<td><font size="2" face="Verdana">&nbsp;</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Invoice Number:</b></font></td>
							<td><font size="2" face="Verdana">${document.number}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Vendor Name:</b></font></td>
							<td><font size="2" face="Verdana">${document.vendor.name}</font></td>
						</tr>
						<tr>
							<td><b><font size="2" face="Verdana">Invoice Amount:</b></font></td>
							<td><font size="2" face="Verdana">${document.grossAmount?string(",##0.00")}</font></td>
						</tr>
						
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Invoice Date:</b></font></td>
							<td><font size="2" face="Verdana">${document.date?date}</font></td>
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
