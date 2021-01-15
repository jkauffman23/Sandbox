<body>
	<table width="100%" bgcolor="#D5DCE8">
		<table width="100%" bgcolor="#D5DCE8">
			<tr>
				<td colspan="3"><b><i><font size="4" color="#016CA5" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#016CA5;font-weight:bold;font-style:italic'>
			Active</span></font></i></b> <i><font size="4" color="#F16F13" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#F16F13;font-style:italic'>
			Pay</span></font></i> <i><font size="4" color="#F16F13" face="Verdana"><span style='font-size:13.5pt; font-family:Verdana;color:#F16F13;font-style:italic'>
			&trade;</span></font></i>
				  </td>
			</tr>
			<tr>

			
				<td colspan="3">
					<font size="2" face="Verdana"><br>
						<u>Trade Exception Report</u><br>
						<br>
						Dear ${user.displayName},<br>
						<br>
						Please review the following exceptions from the trade interface. 
					</font>
					<hr>
				</td>
			</tr>
		</table>		
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td><font size="2" face="Verdana"><b>No.</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>MAX Voucher #</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Type</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Exception</b></font>
				</td>
			</tr>
			
			<#list documents as doc>
				<tr>
					<td><font size="2" face="Verdana">${doc_index + 1}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.maxVoucher}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.type}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.exception}</font>
					</td>				
				</tr>
			</#list>  
			
		</table>
		
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>
		
	</body>
</html>
