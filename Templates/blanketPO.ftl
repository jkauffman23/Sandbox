
<div class="template">
<style>
body {
  position: relative;
  width: 21cm;  
  height: 29.7cm; 
  margin: 0 auto; 
  color: #001028;
  background: #FFFFFF; 
  font-family: Arial, sans-serif; 
  font-size: 12px; 
  font-family: Arial;
  
}


table {
  width: 100%;
  border-collapse: collapse;
  border-spacing: 0;
  margin-bottom: 1px;
}

table th {
  text-align: center;
}

table th {
  padding: 5px 2px;
  color: #00000;
  border-bottom: 1px solid #000000;
  white-space: nowrap;        
  font-weight: normal;
}


table td {
  padding: 0px;
  text-align: left;  
}

table TD.right {
	text-align: right;
	padding: 0px;
}

div.footer {
  color: #5D6975;
  width: 100%;
  height: 30px;
  bottom: 0;
  border-top: 1px solid #C1CED9;
  padding: 8px 0;
  text-align: center;
}

div.template {
  margin: auto;
  top:0px;
  border-style:outset;
  overflow:hidden;
  padding :5px;
}

div.generate {
  margin: auto;
  top:0px;

  overflow:hidden;
  padding :5px;
}

#TCPage {
display: inline-block;	
}

#lines {
font-size: 10px;

}


#pageNumber:after {
    counter-increment: page;
    content:"Page " counter(page);
    left: 0; 
    top: 100%;
    white-space: nowrap; 
    z-index: 20;
    -moz-border-radius: 5px; 
    -moz-box-shadow: 0px 0px 4px #222;  
    background-image: -moz-linear-gradient(top, #eeeeee, #cccccc);  
  }
  
  
</style>




<div id="headertop">

<table style="width: 100%">
	<tr>
		<td stye="font-size: 36px">
		
	<div style="float: left">
			<table>
				<tr style="margin:0px;padding:0px;">
					<td style="font-size: 60px; font-weight: 500;">CUSTOMER</td>
						<td>
							<div style="font-size: 18px; font-weight: 500;">LOGO</div>
							<div style="font-size: 18px; font-weight: 500;">LOGO</div>
						</td>
					</tr>	
			</table>

		</div>
		
	<div style="float: RIGHT">
			<table>
				<tr>
					<td><span style="font-size: 24px">PURCHASE ORDER</SPAN>&nbsp;&nbsp; </td>
				
				</tr>
			
			</table>
		</div>
		</td>
				
	</tr>

	<tr>
		<td>
		<hr/>
		</td>
	</tr>
	
		
		<td>
			<span style="font-family: 'Lucida Sans'; font-size: 12px ; float:left;"> ADDRESS1&nbsp;&nbsp; ADDRESS2&nbsp;&nbsp; CITY, STATE ZIP </span>
			
			<span style="font-family: 'Lucida Sans'; font-size: 12px ; float:right;">
				
					<div id="pageNumber"></div>
				</span>
			
				<span style="font-family: 'Lucida Sans'; font-size: 12px ; float:right;"> No&nbsp;&nbsp;&nbsp;:    <#if document.poId?exists>${document.poId}</#if>   &nbsp;&nbsp;&nbsp; <br>
Date:  <#if document.date?exists>${document.date?string["MM/dd/yyyy"]}<#else>${""}</#if>&nbsp;&nbsp;&nbsp;
				</span>
			</span>
		</td>
	
	<tr>
		
	<td>
		<span style="font-family: 'Lucida Sans'; font-size: 12px ; float:left;"> 
Confirmed to: <#if document.tbdString24?exists>${document.tbdString24}<#else>${""}</#if><br />
Buyer .&nbsp;&nbsp;.&nbsp;&nbsp;.&nbsp;&nbsp; .&nbsp;&nbsp;. : <#if document.buyerName?exists>${document.buyerName}</#if><br />
Vendor Number: <#if document.vendorId?exists>${document.vendorId}</#if>

		</span>
		<span style="font-family: 'Lucida Sans'; font-size: 12px ;display: inline-block;margin-left:80px;">
		
			<span style="font-family: 'Lucida Sans'; font-size: 12px ; float:left;"> 
					Deliver To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:    <#if document.tbdString22?exists>${document.tbdString22}</#if><br />
					Date: <#if document.dueDate?exists>${document.dueDate?string["MM/dd/yyyy"]}</#if><br />&nbsp;
			</span>
		</span>
		
	</td>
	</tr>

	<tr>
		<td>
			<br/>
		</td>
	</tr>
	</table>


</div>  <!-- HeaderTop -->


<div id="header2">

<table>
	<tr>
	<td>

<div style="float:left margin-left: 8px;">
<table>
<tr>
<td>
Vendor: <#if document.vendor.name?exists>${document.vendor.name}</#if><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<#if document.vendorAddress.address1?exists>${document.vendorAddress.address1}</#if><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<#if document.vendorAddress.city?exists>${document.vendorAddress.city}, </#if><#if document.vendorAddress.state?exists>${document.vendorAddress.state} </#if><#if document.vendorAddress.postalCode?exists>${document.vendorAddress.postalCode} </#if><br />
&nbsp;</td>
</tr>

</table>
</div>

</td>
<td>
<div style="float:right; margin-right: 20px;">
<table>
<tr>
<td>
Ship to:&nbsp; <#if document.shipToCompany?exists>${document.shipToCompany}</#if><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<#if document.shipToAddress1?exists>${document.shipToAddress1}</#if><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<#if document.shipToAddress2?exists>${document.shipToAddress2}</#if><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<#if document.shipToCity?exists>${document.shipToCity}, </#if><#if document.shipToState?exists>${document.shipToState}&nbsp; </#if><#if document.shipToZip?exists>${document.shipToZip}</#if><br />
&nbsp;</td>
</tr>



</table>

</div>
</td>
</tr>
</table>


<div id="poComments">
	<p>Comments: <#if document.tbdComment1?exists>${document.tbdComment1}</#if>
</div>

<span style="font-size: 14px; font-weight: 500">Requisition NO: <#if document.number?exists>${document.number}</#if></span>

</div>  <!-- Header2 -->



<div id="poTableHeader">
<table style="width: 100%;  border: 1px solid #000000;">
				<!--<tr>
					<td colspan="7" style="height: 10px;"></td>
				</tr> -->
				<tr>
			
					<th style="width:6%; height: 19px; padding:10px;"><b>Line #</b></th>
					<th style="width:16%; height: 19px;"><b>Item Code</b></th>
					<th style="width:38%; height: 19px;"><b>Description</b></th>
					<th style="width:10%; height: 19px;"><b>Quantity</b></th>
					<th style="width: 8%; height: 19px;"><b>UOM</b></th>
					<th style="width:12%; height: 19px;"><b>Unit Cost</b></th>
					<th style="width:10%; height: 19px;"><b>Extended Cost</b></th>
				
				</tr>
	<#list document.documentLines as docline>

				<tr>
					<td style="border-right: 1px dotted; text-align:center;vertical-align:top;"><span id="lines"><#if docline.lineNumber?exists>${docline.lineNumber}</#if></span></td>
					<td style="border-right: 1px dotted;text-align:Left;vertical-align:top;"><span id="lines"><#if docline.itemCode?exists>${docline.itemCode}</#if></span></td>
					<td style="border-right: 1px dotted;text-align:left;vertical-align:top;"><span id="lines">Blanket Period:<#if document.tbdDate10?exists>${document.tbdDate10?string["MM/dd/yyyy"]}</#if>-<#if document.tbdDate11?exists>  ${document.tbdDate11?string["MM/dd/yyyy"]}</#if><br><#if docline.itemDescription?exists>${docline.itemDescription}</#if><br>Account Code: <#if docline.accountCode?exists>${docline.accountCode}</#if></span></td>
					<td style="border-right: 1px dotted;text-align:center;vertical-align:top;"><span id="lines"><#if docline.quantity?exists>${docline.quantity}</#if></span></td>
					<td style="border-right: 1px dotted;text-align:center;vertical-align:top;"><span id="lines"><#if docline.uom?exists>${docline.uom}</#if></span></td>
					<td style="border-right: 1px dotted;text-align:right;vertical-align:top;"><span id="lines"><#if docline.unitPrice?exists>${docline.unitPrice?string(",############0.00")} <#if document.currencyId?exists>${document.currencyId}<#else>${""}</#if></#if></span>&nbsp;</td>
					<td style="border-right: 1px dotted;text-align:right;vertical-align:top;"><span id="lines"><#if docline.lineTotal?exists>${docline.lineTotal?string(",############0.00")} <#if document.currencyId?exists>${document.currencyId}<#else>${""}</#if></#if></span>&nbsp;</td>
					
				</tr>

	</#list>
			</table>
</div>  <!-- poTableHeader-->

<div id="poTableFooter">
<div id="SigBox">
				
				
<div style="float:left">
<table>
<tr>
<td>
				Purchase order number <strong>must</strong> appear on all<br/>correspondance,shipping papers, invoices, etc.
				</td>
</tr>

</table>
</div>

<p style="break-before: avoid">

<div style="/*float:right*/">

<div style="margin-right:180px;">
<table>
<tr>
<td>
				<br/>
				</td>
</tr>

</table>
</div>
<div>
<table>
<tr>
<td class="left">
<br />
Total: <br />
&nbsp;<br />
&nbsp;
</td>
<td class=right>
<br />
<#if document.grossAmount?exists>${document.grossAmount?string(",############0.00")}<#else>${"0.00"}</#if> <#if document.currencyId?exists>${document.currencyId}<#else>${""}</#if> &nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;</td>
</tr>

</table>
</div>
</div>

		
		
</div> <!--poTableFooter -->


<div>
<table>

<tr>


<td>
			<div style="float:left">
			<table>
			<tr>
			<td>
			Send Invoice in Duplicate to:<br />
			<br />
			<strong>CUSTOMER</strong><br />
			ADDRESS1<br />
			ADDRESS2<br />
			CITY, STATE&nbsp; ZIP
			</td>
			</tr>
			
			</table>
			</div>
</td>

<td>

		<div style="float:right">
		<table>
		<tr>
		<td>
		COMPANY NAME<br />
		<br />
		
		Buyer: _______________________________________ </td>
		</tr>
		
		</table>
		</div>
</td>

</tr>
</table>

<h3>INSTRUCTIONS</h3>
	<p><Strong>DELIVERY:</strong> Ship on date specified. If you are unable to 
		meet this shipping date, notify us at once. Unless we accept a deferred 
		date, we reserve the right to cancel this order. 
		<br><br>
		<hr>
		<Strong>PACKAGES:</strong> Mark each package with:
		<ol type="a">
		<li>Shipper&#39;s name and address</li>
		<li>Contents</li>
		<li>Our PURCHASE ORDER NUMBER</li>
		</ol></p>
</div> <!-- page1Footer -->

<p style="page-break-after: always">

<div id="TCPage">
	
<br><hr></p>
		<br><strong>TERMS AND CONDITIONS</strong>
		<ol>
		<li><Strong>FORCE OF CONDITIONS:</strong> Except as may be otherwise provided on the face hereof, the 
		following terms and conditions shall be applicable to this purchase.</li> 
		<li><strong>ACKNOWLEDGEMENT AND ACCEPTANCE OF ORDER:</strong> If no notification is given 
		to us within 7 days after receipt of this order, it is understood that 
		the terms and conditions herein are satisfactory.</li>
		<li><strong>CHANGES:</strong> No changes in terms, conditions, prices or deliveries shall be made without 
		our specific authorization therefore in writing; provided, however, that 
		if the material ordered hereunder is to be specially manufactured in 
		accordance with our drawings and specifications, we shall have the 
		right, by written order, to make changes in such drawings or 
		specifications. If such changes require a change in price or time for 
		performance, you shall notify us immediately and thereupon an equitable 
		adjustment shall be negotiated.</li>
		<li><strong>SPECIFICATIONS:</strong> Any manufacturing 
		or other specifications referred to in this order are hereby made a part 
		hereof as if fully set forth within.</li>
		<li>You expressly warrant all 
		articles and materials covered by this order to be of quality, quantity, 
		size, description and dimension specified and free from defects, 
		including latent defects. Such warranty shall survive delivery and shall 
		not be deemed waived either by reason of our acceptance of said 
		materials or articles or payment for them.</li>
		<li><strong>INSPECTION, ACCEPTANCE OF GOODS: </strong>If specifications are not met, material may be returned at 
		your expense (Including transportation charges for both ways).</li>
		<li><Strong>EXCLUSIVE RIGHTS:</strong> You agree that all specifications and drawings 
		furnished to you in connection with its order shall be used only in the 
		manufacture of material furnished to us.</li> 
		<li><strong>QUANTITIES:</strong> We reserve the right to reject (and return) material exceeding the quantity 
		ordered.</li>
		<li><strong>PRICE:</strong> Prices as shown on this order are those agreed 
		upon and, are not subject to increase.</li>
		<li><strong>TERMS:</strong> Cash discount will 
		be calculated from the date we receive an acceptable invoice.</li> 
		<li><strong>DRAWINGS, BLUEPRINTS, TOOLS, DIES, ARTWORK, ETC.:</strong> Whenever you have our 
		property in your possession, by virtue of this order, you will be 
		considered an insurer of the property and will be responsible for its 
		safe return to us. </li>
		<li>When the cost of special tools and drawings, 
		involved in the manufacture of this order, is included in the price - 
		all become our property upon the completion of the order (subject to our 
		shipping instructions at all times).</li> 
		<li><strong>ASSIGNMENT:</strong> None of your 
		rights or obligations under this order may be assigned without prior 
		written consent.</li>
		<li><strong>PATENTS:</strong> The seller agrees to protect us against 
		all claims for infringement of patents (trademarks, copyrights) arising 
		from purchase installation or use of these tools and to assume all 
		expense and damages arising from such claims.</li> 
		<li><strong>APPLICABLE LAWS 
		AND REGULATIONS, FEDERAL, STATE, ETC.:</strong> You guarantee that in furnishing 
		the articles, materials or services covered by this order, you will 
		comply with all applicable state, federal and local laws, rules and 
		regulations, and will indemnify us against liability on account of any 
		failure to do so.</li>
		<li><strong>DELAYS AND CONTINGENCIES:</strong> You will not be 
		liable for any delays or failures to perform this contract in whole or 
		in part caused directly by fire, flood, explosion or other casualty, 
		strikes or other labor disturbance, existing state of war, insurrection, 
		invasion, riots or by any existing or future governmental regulations, 
		restrictions or appropriations or any other contingency happening, 
		preventing you from making deliveries as provided for. It being further 
		understood, however, that if such disability continues for a period of 
		thirty days, then we shall have the right to cancel this contract and to 
		procure deliveries from another source without any liability or 
		responsibility whatsoever to you. </li>
		<li><strong>CANCELLATION:</strong> We reserve the 
		right to cancel this order or any unfilled portion thereof if shipment 
		is not made as promised or if goods are not according to specifications. 
		Time is of the essence of this contract.</li> 
		<li>We shall have the right to cancel this order in the event:
		<ol type="a">
		<li>You cease to continue your 
		operations in the normal course of business.</li>
		<li>Shall file a petition 
		in bankruptcy of seeking relief under any of the provisions of the 
		Federal Bankruptcy Act or of any state insolvency statue, or </li><li>Such a 
		petition shall be filed against you and remain undismissed for a period 
		of 30 days, or </li><li>A receiver or trustee is appointed for you and such 
		appointment is not vacated within 30 days from the date thereof, or</li><li>You 
		make an assignment for the benefit of creditors. </li></ol></li>
		</ol>
		<hr>
		<br><br>
		<p style="font-family:calibri;font-size:16px;"><strong>This order/contract is subject to the requirements of 41 CFR 60-1.4 and 29 
		CFR part 471, Appendix A to Subpart A, which are incorporated into this 
		order/contract by reference, as applicable. In addition, this 
		order/contract is subject to the requirements of 41 CFR 60-300.5(a) and 
		41 CFR 60-741.5(a), which are incorporated herein by reference, as 
		applicable. The latter two regulations prohibit discrimination against 
		qualified individuals on the basis of protected veteran status and 
		disability and require affirmative action to employ and advance in 
		employment protected veterans and qualified individuals with 
		disabilities.</Strong><br></p>
    </div>
    
</div>  <!--TC Page -->
<div class="footer">
      Invoice was created on a computer and is valid without the signature and seal.
</div> 
    
</div>	
