		<table width="100%" bgcolor="#D5DCE8">
		     <tr>
      <td colspan="3"><b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
Active</span></font></i></b> <b><i><font size="4" color="#4A6D00" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#4A6D00;font-weight:bold;font-style:italic'>
Pay</span></font></i></b> <b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt; font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
&trade;</span></font></i></b>
      </td>
    </tr>
			<tr>
				<td colspan="3">
					<font size="2" face="Verdana"><br>
					<P>Dear ${user.userName},</P>
						<b>You have requested to change your password.</b><br>
						<P>
						If you have not requested a password change, please contact the system administrator by
						replying to this email, otherwise please
						click the following link to change your password. Your token will expire in 10 minutes.
						</P>
						<a href="${baseURL}/restricted/nooriginalpassword.do?token=${token.token}&amp;userId=${user.userName}">Reset Password</a>


						
					</font>
					</td>
				</tr>
			</table>
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>			