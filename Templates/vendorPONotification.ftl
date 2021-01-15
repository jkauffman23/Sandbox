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
    <td colspan="3"><font size="2" face="Verdana"><br>
    <b>New Purchase Order Notification</b><br>
    <br>
    Dear Vendor:<br>
    <br>
CUSTOMER has created a new purchase order for you. Please review the attached purchase order documentation.</font>

					<table>
						<tr>
							<td><font size="2" face="Verdana">&nbsp;</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Purchase Order #:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.poId?exists>${document.poId}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Date:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.date?exists>${document.date?string["MM/dd/yyyy"]}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Confirmed To:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.tbdString24?exists>${document.tbdString24}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Buyer:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.buyerName?exists>${document.buyerName}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Deliver To</b></font></td>
							<td><font size="2" face="Verdana"><#if document.tbdString22?exists>${document.tbdString22}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td><b><font size="2" face="Verdana">Delivery Date</b></font></td>
							<td><font size="2" face="Verdana"><#if document.dueDate?exists>${document.dueDate?string["MM/dd/yyyy"]}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td><b><font size="2" face="Verdana">Purchase Order Amount:</b></font></td>
							<td><font size="2" face="Verdana">${document.grossAmount?string(",##0.00")} ${document.currencyId}</font></td>
						</tr>

					</table>
		<table>
			<tr>
				<td>	<font size="1" color="#FFFFFF" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
						DOCUMENTID:0123456789=${document.seqId?string("############")}<br>
						SENDERSEMAIL:[${user.email}&]</font>
				</td>
			</tr>
		</table>
		<table width="100%" bgcolor="#FFFFFF">
			<tr><td><br><font size="2" face="Verdana">This is a system-generated email. Please do not reply since responses will not be monitored.</font></td></tr>
		</table>
	</body>
</html>
