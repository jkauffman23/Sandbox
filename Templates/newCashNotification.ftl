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
    <b>Cash Advance Submitted</b><br>
    <br>
    Dear ${user.displayName}:<br>
    <br><br><br>
This is an e-mail confirmation that your pre-paid card request has been submitted. The card administrator will contact you when your request has been processed.</font>
<font size="2" face="Verdana"><br>
		<table>
						<tr>
							<td><font size="2" face="Verdana">&nbsp;</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Request #:</b></font></td>
							<td><font size="2" face="Verdana">${document.seqId?c}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Submitter:</b></font></td>
							<td><font size="2" face="Verdana">${document.originatorName}</font></td>
						</tr>					
						<tr>
							<td><b><font size="2" face="Verdana">Amount Requested:</b></font></td>
							<td><font size="2" face="Verdana">${document.grossAmount?string(",##0.00")}</font></td>
						</tr>
		</table>
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>			
</body>



</html>
