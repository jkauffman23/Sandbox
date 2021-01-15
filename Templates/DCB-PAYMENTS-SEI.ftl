<#ftl output_format="XML">
<#assign uploadedDateTime = .now>
<#assign pieceLineItemTag = "">
<#assign paymentRow = 0>
<#assign invoiceRow = 0>
<#list documentsList as document><#-- Start Document Loop -->
<#assign recordsProcessed = 0>
<#list document.documentLines as docline><#-- Start DocumentList Loop -->
<#if !docline.subLineTypeNumber?contains(".")><#--  Only count the payment lines  -->
<#assign recordsProcessed = recordsProcessed + 1>
</#if>
</#list><#-- End DocumentList Loop -->
<?xml version="1.0" encoding="UTF-8"?> 
<sourceDCBData>
  <version>3.1</version>
  <job>   
    <ADFCode>MIRIA</ADFCode>
    <siteCode>Norristown</siteCode>
    <integration>Payables</integration>
    <jobId><#if document.seqId?exists>${document.seqId?c}</#if><#if paymentModeInfo.clientIdToken?exists && paymentModeInfo.clientIdToken?length gt 0>-${paymentModeInfo.clientIdToken}</#if></jobId>
    <jobDescription>Payment-Request</jobDescription>
    <fileName>${fileName}.zip</fileName>
    <uploadedDateTime>${uploadedDateTime?iso_utc}</uploadedDateTime>
    <jobStartTime>${uploadedDateTime?iso_utc}</jobStartTime>
    <jobEndTime>${uploadedDateTime?iso_utc}</jobEndTime>
	<jobType>PaymentRequest</jobType>
    <recordsProcessed>${recordsProcessed?c}</recordsProcessed>
  </job>
  <clients>
    <client>
		<clientCode>SEIINVEST</clientCode>
		<clientName>SEI Investments Company</clientName>
		<programCode><#if document.companyCode?exists>${document.companyCode}</#if></programCode>
		<programName><#if document.tbdString12?exists>${document.tbdString12}</#if></programName>
		<customerPieces>
			<#list document.documentLines as docline>
				<#if !document.paymentsConsolidate><#--    ********************************  Is not a consolidated batch  ******************************    -->
					<#assign paymentRow = paymentRow + 1>
			<customerPiece>
				<clientCustomer>
					<clientCustomerNumber><#if docline.paymentsVendorId?exists>${docline.paymentsVendorId}</#if></clientCustomerNumber>
					<emailPrimary><#if docline.paymentsEmail?exists>${docline.paymentsEmail}</#if></emailPrimary>
					<#if docline.paymentsPurposeOfPayment?exists && docline.paymentsPurposeOfPayment?length gt 0>
						<#if docline.paymentsPurposeOfPayment?upper_case?contains("INVESTMENT PAYMENT")>
					<classification>Individual</classification>
						<#elseif docline.paymentsPurposeOfPayment?upper_case?contains("PAYROLL/PERSONNEL PAYMENT")>
					<classification>Individual</classification>
						<#elseif docline.paymentsPurposeOfPayment?upper_case?contains("PURCHASE OF GOOD")>
					<classification>Business</classification>
						<#elseif docline.paymentsPurposeOfPayment?upper_case?contains("PURCHASE OF SERVICE")>
					<classification>Business</classification>
						</#if>
					<#else>
					<classification>Business</classification>
					</#if>
					<customerAddresses>
						<customerAddress>
							<addressType><#if docline.paymentsAddrType?exists>${docline.paymentsAddrType}<#else>payeeAddress</#if></addressType>
							<city><#if docline.paymentsCity?exists>${docline.paymentsCity}</#if></city>
							<#if docline.paymentsState?exists && docline.paymentsState?length gt 0>
							<stateProvince>${docline.paymentsState}</stateProvince>
							</#if>
							<zipPostalCode><#if docline.paymentsPostalCode?exists>${docline.paymentsPostalCode}</#if></zipPostalCode>
							<country><#if docline.paymentsCountry?exists>${docline.paymentsCountry}</#if></country>
							<addr1><#if docline.paymentsAddr1?exists>${docline.paymentsAddr1}</#if></addr1>
							<#if docline.paymentsAddr2?exists>
							<addr2>${docline.paymentsAddr2}</addr2>
							</#if>
							<#if docline.paymentsAddr3?exists>
							<addr3>${docline.paymentsAddr3}</addr3>
							</#if>
							<#if docline.paymentsAddr4?exists>
							<addr4>${docline.paymentsAddr4}</addr4>
							</#if>
						</customerAddress>
					</customerAddresses>
					<payablePayee>
						<payablePayeeName><#if docline.paymentsVendorName?exists>${docline.paymentsVendorName}</#if></payablePayeeName>
						<accountNumber><#if docline.paymentsVendorBankAcctNo?exists>${docline.paymentsVendorBankAcctNo}</#if></accountNumber>
						<routingNumber><#if docline.paymentsVendorBankRoutingNo?exists>${docline.paymentsVendorBankRoutingNo}</#if></routingNumber>
						<bankName><#if docline.paymentsVendorBankName?exists>${docline.paymentsVendorBankName}</#if></bankName>
						<bankStreet1><#if docline.venBankAddr1?exists>${docline.venBankAddr1}</#if></bankStreet1>
						<#if docline.venBankAddr2?exists && docline.venBankAddr2?length gt 0>
						<bankStreet2>${docline.venBankAddr2}</bankStreet2>
						</#if>
						<bankCity><#if docline.venBankCity?exists>${docline.venBankCity}</#if></bankCity>
						<#if docline.venBankState?exists && docline.venBankState?length gt 0>
						<bankStateProvince>${docline.venBankState}</bankStateProvince>
						</#if>
						<bankZipPostalCode><#if docline.venBankPostalCode?exists>${docline.venBankPostalCode}</#if></bankZipPostalCode>
						<bankCountry><#if docline.venBankCountry?exists>${docline.venBankCountry}</#if></bankCountry>
						<bankBIC><#if docline.venBankSwiftCode?exists>${docline.venBankSwiftCode}</#if></bankBIC>
						<primaryContact><#if docline.paymentsVendorPhone?exists>${docline.paymentsVendorPhone}</#if></primaryContact>
						<#if docline.venRegFieldName1?exists && docline.venRegFieldName1?length gt 0 || docline.venRegFieldName2?exists && docline.venRegFieldName2?length gt 0 || docline.venRegFieldName3?exists && docline.venRegFieldName3?length gt 0 || docline.venRegFieldName4?exists && docline.venRegFieldName4?length gt 0 || docline.venRegFieldName5?exists && docline.venRegFieldName5?length gt 0>
						<payablePayeeCustomValues>
							<#if docline.venRegFieldName1?exists && docline.venRegFieldName1?length gt 0 && !docline.venRegFieldName1?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName1?exists>
								<fieldName>${docline.venRegFieldName1}</fieldName>
								</#if>
								<#if docline.venRegValue1?exists>
								<value>${docline.venRegValue1}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName2?exists && docline.venRegFieldName2?length gt 0 && !docline.venRegFieldName2?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName2?exists>
								<fieldName>${docline.venRegFieldName2}</fieldName>
								</#if>
								<#if docline.venRegValue2?exists>
								<value>${docline.venRegValue2}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName3?exists && docline.venRegFieldName3?length gt 0 && !docline.venRegFieldName3?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName3?exists>
								<fieldName>${docline.venRegFieldName3}</fieldName>
								</#if>
								<#if docline.venRegValue3?exists>
								<value>${docline.venRegValue3}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName4?exists && docline.venRegFieldName4?length gt 0 && !docline.venRegFieldName4?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName4?exists>
								<fieldName>${docline.venRegFieldName4}</fieldName>
								</#if>
								<#if docline.venRegValue4?exists>
								<value>${docline.venRegValue4}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName5?exists && docline.venRegFieldName5?length gt 0 && !docline.venRegFieldName5?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName5?exists>
								<fieldName>${docline.venRegFieldName5}</fieldName>
								</#if>
								<#if docline.venRegValue5?exists>
								<value>${docline.venRegValue5}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
						</payablePayeeCustomValues>
						</#if>
					</payablePayee>
				</clientCustomer>
				<pieces>
					<piece>
						<documentType>Payment</documentType>
						<sequenceNumber>${paymentRow}</sequenceNumber>
						<pieceDeliveryId><#if docline.seqId?exists>${docline.seqId?c}</#if></pieceDeliveryId>
						<transactionNumber><#if docline.seqId?exists>${docline.seqId?c}</#if></transactionNumber>
						<createdDate>${uploadedDateTime?string("yyyy-MM-dd")}</createdDate>
						<transactionDate><#if document.paymentsDueDate?exists>${document.paymentsDueDate?string("yyyy-MM-dd")}</#if></transactionDate>
						<applicationDocumentType><#if document.tbdString9?exists>${document.tbdString9}</#if></applicationDocumentType>
						<piecePaymentPayable>	
							<amountDueTotal><#if docline.lineTotal?exists>${docline.lineTotal?string("0.00")}</#if></amountDueTotal>
							<currencyPayee><#if docline.paymentsCurrencyId?exists>${docline.paymentsCurrencyId}</#if></currencyPayee>
							<currencyPayer><#if document.currencyId?exists>${document.currencyId}</#if></currencyPayer>
							<#if docline.paymentsPayRef?exists && document.tbdString9?upper_case?matches("CHECK")>
							<checkNumber>${docline.paymentsPayRef}</checkNumber>
							</#if>
							<purposePayment><#if docline.paymentsPurposeOfPayment?exists>${docline.paymentsPurposeOfPayment}<#else>Purchase of Good(s)</#if></purposePayment>
							<payerAccount>
								<accountNumber><#if document.bankAccountNo?exists>${document.bankAccountNo}</#if></accountNumber>
								<routingNumber><#if document.bankRoutingNo?exists>${document.bankRoutingNo}</#if></routingNumber>
								<#if document.tbdString8?exists && document.tbdString8?length gt 0>
								<accountReferenceId>${document.tbdString8}</accountReferenceId>
								</#if>
							</payerAccount>
							<pieceInvoicePayables>
								<pieceInvoicePayable>
									<sequence>1</sequence>
									<invoiceNumber><#if docline.paymentsNumber?exists>${docline.paymentsNumber}</#if></invoiceNumber>
									<#if docline.paymentsPoId?exists>
									<PONumber>${docline.paymentsPoId}</PONumber>
									</#if>
									<invoiceGrossAmount><#if docline.lineTotal?exists>${docline.lineTotal?string("0.00")}</#if></invoiceGrossAmount>
									<amountDiscount><#if docline.paymentsDiscountAmount?exists>${docline.paymentsDiscountAmount?string("0.00")}</#if></amountDiscount>
									<#if docline.lineTotal?exists && docline.paymentsDiscountAmount?exists>
									<amountToPay>${(docline.lineTotal - docline.paymentsDiscountAmount)?string("0.00")}</amountToPay>
									<#elseif docline.lineTotal?exists && !docline.paymentsDiscountAmount?exists>
									<amountToPay>${docline.lineTotal}</amountToPay>
									</#if>
									<dateInvoice><#if docline.paymentsDate?exists>${docline.paymentsDate?string("yyyy-MM-dd")}</#if></dateInvoice>
									<dateDue><#if docline.paymentsDueDate?exists>${docline.paymentsDueDate?string("yyyy-MM-dd")}</#if></dateDue>
									<invoiceDocType>INV</invoiceDocType>
									<#if docline.paymentsCheckStubMessage?exists && docline.paymentsCheckStubMessage != "">
									<memo>${docline.paymentsCheckStubMessage}</memo>
									</#if>
								</pieceInvoicePayable>
							</pieceInvoicePayables>
						</piecePaymentPayable>
						<pieceAddresses>
							<pieceAddress>
								<addressType><#if docline.paymentsAddrType?exists>${docline.paymentsAddrType}<#else>payeeAddress</#if></addressType>
							</pieceAddress>
						</pieceAddresses>
					</piece>
				</pieces>
			</customerPiece>
				<#elseif document.paymentsConsolidate><#--    ********************************  Is a consolidated batch  ******************************    -->
					<#if !docline.paymentsSeparateCheck><#--    ********************************  Is not a Separate check  ******************************    -->
						<#if !docline.subLineTypeNumber?contains(".")><#--    ********************************  Is a payment line  ******************************    -->
							<#assign paymentRow = paymentRow + 1>
			<customerPiece>
				<clientCustomer>
					<clientCustomerNumber><#if docline.paymentsVendorId?exists>${docline.paymentsVendorId}</#if></clientCustomerNumber>
					<emailPrimary><#if docline.paymentsEmail?exists>${docline.paymentsEmail}</#if></emailPrimary>
							<#list document.documentLines as docline2><#--  **********************************  Loop through the Invoices to determine classification  **********************************  -->
								<#if docline2.subLineTypeNumber?contains(".") && docline2.subLineTypeNumber?keep_before(".") == docline.subLineTypeNumber>	
									<#if docline2.paymentsPurposeOfPayment?exists && docline2.paymentsPurposeOfPayment?length gt 0>
										<#if docline2.paymentsPurposeOfPayment?upper_case?contains("INVESTMENT PAYMENT")>
					<classification>Individual</classification>
										<#elseif docline2.paymentsPurposeOfPayment?upper_case?contains("PAYROLL/PERSONNEL PAYMENT")>
					<classification>Individual</classification>
										<#elseif docline2.paymentsPurposeOfPayment?upper_case?contains("PURCHASE OF GOOD")>
					<classification>Business</classification>
										<#elseif docline2.paymentsPurposeOfPayment?upper_case?contains("PURCHASE OF SERVICE")>
					<classification>Business</classification>
										</#if>
									<#else>
					<classification>Business</classification>
									</#if>
									<#break>
								</#if>
							</#list>
					<customerAddresses>
						<customerAddress>
							<addressType><#if docline.paymentsAddrType?exists>${docline.paymentsAddrType}<#else>payeeAddress</#if></addressType>
							<city><#if docline.paymentsCity?exists>${docline.paymentsCity}</#if></city>
							<#if docline.paymentsState?exists && docline.paymentsState?length gt 0>
							<stateProvince>${docline.paymentsState}</stateProvince>
							</#if>
							<zipPostalCode><#if docline.paymentsPostalCode?exists>${docline.paymentsPostalCode}</#if></zipPostalCode>
							<country><#if docline.paymentsCountry?exists>${docline.paymentsCountry}</#if></country>
							<addr1><#if docline.paymentsAddr1?exists>${docline.paymentsAddr1}</#if></addr1>
							<#if docline.paymentsAddr2?exists>
							<addr2>${docline.paymentsAddr2}</addr2>
							</#if>
							<#if docline.paymentsAddr3?exists>
							<addr3>${docline.paymentsAddr3}</addr3>
							</#if>
							<#if docline.paymentsAddr4?exists>
							<addr4>${docline.paymentsAddr4}</addr4>
							</#if>
						</customerAddress>
					</customerAddresses>
					<payablePayee>
						<payablePayeeName><#if docline.paymentsVendorName?exists>${docline.paymentsVendorName}</#if></payablePayeeName>
						<accountNumber><#if docline.paymentsVendorBankAcctNo?exists>${docline.paymentsVendorBankAcctNo}</#if></accountNumber>
						<routingNumber><#if docline.paymentsVendorBankRoutingNo?exists>${docline.paymentsVendorBankRoutingNo}</#if></routingNumber>
						<bankName><#if docline.paymentsVendorBankName?exists>${docline.paymentsVendorBankName}</#if></bankName>
						<bankStreet1><#if docline.venBankAddr1?exists>${docline.venBankAddr1}</#if></bankStreet1>
							<#if docline.venBankAddr2?exists && docline.venBankAddr2?length gt 0>
						<bankStreet2>${docline.venBankAddr2}</bankStreet2>
							</#if>
						<bankCity><#if docline.venBankCity?exists>${docline.venBankCity}</#if></bankCity>
							<#if docline.venBankState?exists && docline.venBankState?length gt 0>
						<bankStateProvince>${docline.venBankState}</bankStateProvince>
							</#if>
						<bankZipPostalCode><#if docline.venBankPostalCode?exists>${docline.venBankPostalCode}</#if></bankZipPostalCode>
						<bankCountry><#if docline.venBankCountry?exists>${docline.venBankCountry}</#if></bankCountry>
						<bankBIC><#if docline.venBankSwiftCode?exists>${docline.venBankSwiftCode}</#if></bankBIC>
						<primaryContact><#if docline.paymentsVendorPhone?exists>${docline.paymentsVendorPhone}</#if></primaryContact>
							<#if docline.venRegFieldName1?exists && docline.venRegFieldName1?length gt 0 || docline.venRegFieldName2?exists && docline.venRegFieldName2?length gt 0 || docline.venRegFieldName3?exists && docline.venRegFieldName3?length gt 0 || docline.venRegFieldName4?exists && docline.venRegFieldName4?length gt 0 || docline.venRegFieldName5?exists && docline.venRegFieldName5?length gt 0>
						<payablePayeeCustomValues>
							<#if docline.venRegFieldName1?exists && docline.venRegFieldName1?length gt 0 && !docline.venRegFieldName1?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName1?exists>
								<fieldName>${docline.venRegFieldName1}</fieldName>
								</#if>
								<#if docline.venRegValue1?exists>
								<value>${docline.venRegValue1}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName2?exists && docline.venRegFieldName2?length gt 0 && !docline.venRegFieldName2?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName2?exists>
								<fieldName>${docline.venRegFieldName2}</fieldName>
								</#if>
								<#if docline.venRegValue2?exists>
								<value>${docline.venRegValue2}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName3?exists && docline.venRegFieldName3?length gt 0 && !docline.venRegFieldName3?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName3?exists>
								<fieldName>${docline.venRegFieldName3}</fieldName>
								</#if>
								<#if docline.venRegValue3?exists>
								<value>${docline.venRegValue3}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName4?exists && docline.venRegFieldName4?length gt 0 && !docline.venRegFieldName4?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName4?exists>
								<fieldName>${docline.venRegFieldName4}</fieldName>
								</#if>
								<#if docline.venRegValue4?exists>
								<value>${docline.venRegValue4}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName5?exists && docline.venRegFieldName5?length gt 0 && !docline.venRegFieldName5?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName5?exists>
								<fieldName>${docline.venRegFieldName5}</fieldName>
								</#if>
								<#if docline.venRegValue5?exists>
								<value>${docline.venRegValue5}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
						</payablePayeeCustomValues>
							</#if>
					</payablePayee>
				</clientCustomer>
				<pieces>
					<piece>
						<documentType>Payment</documentType>
						<sequenceNumber>${paymentRow}</sequenceNumber>
						<pieceDeliveryId><#if docline.seqId?exists>${docline.seqId?c}</#if></pieceDeliveryId>
						<transactionNumber><#if docline.seqId?exists>${docline.seqId?c}</#if></transactionNumber>
						<createdDate>${uploadedDateTime?string("yyyy-MM-dd")}</createdDate>
						<transactionDate><#if document.paymentsDueDate?exists>${document.paymentsDueDate?string("yyyy-MM-dd")}</#if></transactionDate>
						<applicationDocumentType><#if document.tbdString9?exists>${document.tbdString9}</#if></applicationDocumentType>
						<piecePaymentPayable>	
							<amountDueTotal><#if docline.lineTotal?exists>${docline.lineTotal?string("0.00")}</#if></amountDueTotal>
							<currencyPayee><#if docline.paymentsCurrencyId?exists>${docline.paymentsCurrencyId}</#if></currencyPayee>
							<currencyPayer><#if document.currencyId?exists>${document.currencyId}</#if></currencyPayer>
							<#if docline.paymentsPayRef?exists && document.tbdString9?upper_case?matches("CHECK")>
							<checkNumber>${docline.paymentsPayRef}</checkNumber>
							</#if>
							<#list document.documentLines as docline2><#--  **********************************  Loop through the Invoice to capture purpose of payment  **********************************  -->
								<#if docline2.subLineTypeNumber?contains(".") && docline2.subLineTypeNumber?keep_before(".") == docline.subLineTypeNumber>
							<purposePayment><#if docline2.paymentsPurposeOfPayment?exists>${docline2.paymentsPurposeOfPayment}<#else>Purchase of Good(s)</#if></purposePayment>
									<#break>
								</#if>
							</#list>
							<payerAccount>
								<accountNumber><#if document.bankAccountNo?exists>${document.bankAccountNo}</#if></accountNumber>
								<routingNumber><#if document.bankRoutingNo?exists>${document.bankRoutingNo}</#if></routingNumber>
								<#if document.tbdString8?exists && document.tbdString8?length gt 0>
								<accountReferenceId>${document.tbdString8}</accountReferenceId>
								</#if>
							</payerAccount>
							<pieceInvoicePayables>
							<#list document.documentLines as docline2><#--  **********************************  Loop through the Invoice details  **********************************  -->  
								<#if docline2.subLineTypeNumber?contains(".") && docline2.subLineTypeNumber?keep_before(".") == docline.subLineTypeNumber><#--  **********************************  Print invoice details if they match payments  **********************************  -->
									<#assign invoiceRow = invoiceRow + 1>
								<pieceInvoicePayable>
									<sequence>${invoiceRow}</sequence>
									<invoiceNumber><#if docline2.paymentsNumber?exists>${docline2.paymentsNumber}</#if></invoiceNumber>
									<#if docline2.paymentsPoId?exists>
									<PONumber>${docline2.paymentsPoId}</PONumber>
									</#if>
									<invoiceGrossAmount><#if docline2.lineTotal?exists>${docline2.lineTotal?string("0.00")}</#if></invoiceGrossAmount>
									<amountDiscount><#if docline2.paymentsDiscountAmount?exists>${docline2.paymentsDiscountAmount?string("0.00")}</#if></amountDiscount>
									<#if docline2.lineTotal?exists && docline2.paymentsDiscountAmount?exists>
									<amountToPay>${(docline2.lineTotal - docline2.paymentsDiscountAmount)?string("0.00")}</amountToPay>
									<#elseif docline2.lineTotal?exists && !docline2.paymentsDiscountAmount?exists>
									<amountToPay>${docline2.lineTotal}</amountToPay>
									</#if>
									<dateInvoice><#if docline2.paymentsDate?exists>${docline2.paymentsDate?string("yyyy-MM-dd")}</#if></dateInvoice>
									<dateDue><#if docline2.paymentsDueDate?exists>${docline2.paymentsDueDate?string("yyyy-MM-dd")}</#if></dateDue>
									<invoiceDocType>INV</invoiceDocType>
									<#if docline2.paymentsCheckStubMessage?exists && docline2.paymentsCheckStubMessage != "">
									<memo>${docline2.paymentsCheckStubMessage}</memo>
									</#if>
								</pieceInvoicePayable>
								</#if>
							</#list>
							<#assign invoiceRow = 0>
							</pieceInvoicePayables>
						</piecePaymentPayable>
						<pieceAddresses>
							<pieceAddress>
								<addressType><#if docline.paymentsAddrType?exists>${docline.paymentsAddrType}<#else>payeeAddress</#if></addressType>
							</pieceAddress>
						</pieceAddresses>
					</piece>
				</pieces>
			</customerPiece>
						</#if><#--    ********************************  End "Is a payment line"  ******************************    -->
					<#elseif docline.paymentsSeparateCheck><#--    ********************************  Is a Separate check  ******************************    -->
						<#assign paymentRow = paymentRow + 1>
			<customerPiece>
				<clientCustomer>
					<clientCustomerNumber><#if docline.paymentsVendorId?exists>${docline.paymentsVendorId}</#if></clientCustomerNumber>
					<emailPrimary><#if docline.paymentsEmail?exists>${docline.paymentsEmail}</#if></emailPrimary>
					<#if docline.paymentsPurposeOfPayment?exists && docline.paymentsPurposeOfPayment?length gt 0>
						<#if docline.paymentsPurposeOfPayment?upper_case?contains("INVESTMENT PAYMENT")>
					<classification>Individual</classification>
						<#elseif docline.paymentsPurposeOfPayment?upper_case?contains("PAYROLL/PERSONNEL PAYMENT")>
					<classification>Individual</classification>
						<#elseif docline.paymentsPurposeOfPayment?upper_case?contains("PURCHASE OF GOOD")>
					<classification>Business</classification>
						<#elseif docline.paymentsPurposeOfPayment?upper_case?contains("PURCHASE OF SERVICE")>
					<classification>Business</classification>
						</#if>
					<#else>
					<classification>Business</classification>
					</#if>
					<customerAddresses>
						<customerAddress>
							<addressType><#if docline.paymentsAddrType?exists>${docline.paymentsAddrType}<#else>payeeAddress</#if></addressType>
							<city><#if docline.paymentsCity?exists>${docline.paymentsCity}</#if></city>
							<#if docline.paymentsState?exists && docline.paymentsState?length gt 0>
							<stateProvince>${docline.paymentsState}</stateProvince>
							</#if>
							<zipPostalCode><#if docline.paymentsPostalCode?exists>${docline.paymentsPostalCode}</#if></zipPostalCode>
							<country><#if docline.paymentsCountry?exists>${docline.paymentsCountry}</#if></country>
							<addr1><#if docline.paymentsAddr1?exists>${docline.paymentsAddr1}</#if></addr1>
							<#if docline.paymentsAddr2?exists>
							<addr2>${docline.paymentsAddr2}</addr2>
							</#if>
							<#if docline.paymentsAddr3?exists>
							<addr3>${docline.paymentsAddr3}</addr3>
							</#if>
							<#if docline.paymentsAddr4?exists>
							<addr4>${docline.paymentsAddr4}</addr4>
							</#if>
						</customerAddress>
					</customerAddresses>
					<payablePayee>
						<payablePayeeName><#if docline.paymentsVendorName?exists>${docline.paymentsVendorName}</#if></payablePayeeName>
						<accountNumber><#if docline.paymentsVendorBankAcctNo?exists>${docline.paymentsVendorBankAcctNo}</#if></accountNumber>
						<routingNumber><#if docline.paymentsVendorBankRoutingNo?exists>${docline.paymentsVendorBankRoutingNo}</#if></routingNumber>
						<bankName><#if docline.paymentsVendorBankName?exists>${docline.paymentsVendorBankName}</#if></bankName>
						<bankStreet1><#if docline.venBankAddr1?exists>${docline.venBankAddr1}</#if></bankStreet1>
						<#if docline.venBankAddr2?exists && docline.venBankAddr2?length gt 0>
						<bankStreet2>${docline.venBankAddr2}</bankStreet2>
						</#if>
						<bankCity><#if docline.venBankCity?exists>${docline.venBankCity}</#if></bankCity>
						<#if docline.venBankState?exists && docline.venBankState?length gt 0>
						<bankStateProvince>${docline.venBankState}</bankStateProvince>
						</#if>
						<bankZipPostalCode><#if docline.venBankPostalCode?exists>${docline.venBankPostalCode}</#if></bankZipPostalCode>
						<bankCountry><#if docline.venBankCountry?exists>${docline.venBankCountry}</#if></bankCountry>
						<bankBIC><#if docline.venBankSwiftCode?exists>${docline.venBankSwiftCode}</#if></bankBIC>
						<primaryContact><#if docline.paymentsVendorPhone?exists>${docline.paymentsVendorPhone}</#if></primaryContact>
						<#if docline.venRegFieldName1?exists && docline.venRegFieldName1?length gt 0 || docline.venRegFieldName2?exists && docline.venRegFieldName2?length gt 0 || docline.venRegFieldName3?exists && docline.venRegFieldName3?length gt 0 || docline.venRegFieldName4?exists && docline.venRegFieldName4?length gt 0 || docline.venRegFieldName5?exists && docline.venRegFieldName5?length gt 0>
						<payablePayeeCustomValues>
							<#if docline.venRegFieldName1?exists && docline.venRegFieldName1?length gt 0 && !docline.venRegFieldName1?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName1?exists>
								<fieldName>${docline.venRegFieldName1}</fieldName>
								</#if>
								<#if docline.venRegValue1?exists>
								<value>${docline.venRegValue1}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName2?exists && docline.venRegFieldName2?length gt 0 && !docline.venRegFieldName2?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName2?exists>
								<fieldName>${docline.venRegFieldName2}</fieldName>
								</#if>
								<#if docline.venRegValue2?exists>
								<value>${docline.venRegValue2}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName3?exists && docline.venRegFieldName3?length gt 0 && !docline.venRegFieldName3?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName3?exists>
								<fieldName>${docline.venRegFieldName3}</fieldName>
								</#if>
								<#if docline.venRegValue3?exists>
								<value>${docline.venRegValue3}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName4?exists && docline.venRegFieldName4?length gt 0 && !docline.venRegFieldName4?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName4?exists>
								<fieldName>${docline.venRegFieldName4}</fieldName>
								</#if>
								<#if docline.venRegValue4?exists>
								<value>${docline.venRegValue4}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
							<#if docline.venRegFieldName5?exists && docline.venRegFieldName5?length gt 0 && !docline.venRegFieldName5?matches("-1")>
							<payablePayeeCustomValue>
								<#if docline.venRegFieldName5?exists>
								<fieldName>${docline.venRegFieldName5}</fieldName>
								</#if>
								<#if docline.venRegValue5?exists>
								<value>${docline.venRegValue5}</value>
								</#if>
							</payablePayeeCustomValue>
							</#if>
						</payablePayeeCustomValues>
						</#if>
					</payablePayee>
				</clientCustomer>
				<pieces>
					<piece>
						<documentType>Payment</documentType>
						<sequenceNumber>${paymentRow}</sequenceNumber>
						<pieceDeliveryId><#if docline.seqId?exists>${docline.seqId?c}</#if></pieceDeliveryId>
						<transactionNumber><#if docline.seqId?exists>${docline.seqId?c}</#if></transactionNumber>
						<createdDate>${uploadedDateTime?string("yyyy-MM-dd")}</createdDate>
						<transactionDate><#if document.paymentsDueDate?exists>${document.paymentsDueDate?string("yyyy-MM-dd")}</#if></transactionDate>
						<applicationDocumentType><#if document.tbdString9?exists>${document.tbdString9}</#if></applicationDocumentType>
						<piecePaymentPayable>	
							<amountDueTotal><#if docline.lineTotal?exists>${docline.lineTotal?string("0.00")}</#if></amountDueTotal>
							<currencyPayee><#if docline.paymentsCurrencyId?exists>${docline.paymentsCurrencyId}</#if></currencyPayee>
							<currencyPayer><#if document.currencyId?exists>${document.currencyId}</#if></currencyPayer>
							<#if docline.paymentsPayRef?exists && document.tbdString9?upper_case?matches("CHECK")>
							<checkNumber>${docline.paymentsPayRef}</checkNumber>
							</#if>
							<purposePayment><#if docline.paymentsPurposeOfPayment?exists>${docline.paymentsPurposeOfPayment}<#else>Purchase of Good(s)</#if></purposePayment>
							<payerAccount>
								<accountNumber><#if document.bankAccountNo?exists>${document.bankAccountNo}</#if></accountNumber>
								<routingNumber><#if document.bankRoutingNo?exists>${document.bankRoutingNo}</#if></routingNumber>
								<#if document.tbdString8?exists && document.tbdString8?length gt 0>
								<accountReferenceId>${document.tbdString8}</accountReferenceId>
								</#if>
							</payerAccount>
							<pieceInvoicePayables>
								<pieceInvoicePayable>
									<sequence>1</sequence>
									<invoiceNumber><#if docline.paymentsNumber?exists>${docline.paymentsNumber}</#if></invoiceNumber>
									<#if docline.paymentsPoId?exists>
									<PONumber>${docline.paymentsPoId}</PONumber>
									</#if>
									<invoiceGrossAmount><#if docline.lineTotal?exists>${docline.lineTotal?string("0.00")}</#if></invoiceGrossAmount>
									<amountDiscount><#if docline.paymentsDiscountAmount?exists>${docline.paymentsDiscountAmount?string("0.00")}</#if></amountDiscount>
									<#if docline.lineTotal?exists && docline.paymentsDiscountAmount?exists>
									<amountToPay>${(docline.lineTotal - docline.paymentsDiscountAmount)?string("0.00")}</amountToPay>
									<#elseif docline.lineTotal?exists && !docline.paymentsDiscountAmount?exists>
									<amountToPay>${docline.lineTotal}</amountToPay>
									</#if>
									<dateInvoice><#if docline.paymentsDate?exists>${docline.paymentsDate?string("yyyy-MM-dd")}</#if></dateInvoice>
									<dateDue><#if docline.paymentsDueDate?exists>${docline.paymentsDueDate?string("yyyy-MM-dd")}</#if></dateDue>
									<invoiceDocType>INV</invoiceDocType>
									<#if docline.paymentsCheckStubMessage?exists && docline.paymentsCheckStubMessage != "">
									<memo>${docline.paymentsCheckStubMessage}</memo>
									</#if>
								</pieceInvoicePayable>
							</pieceInvoicePayables>
						</piecePaymentPayable>
						<pieceAddresses>
							<pieceAddress>
								<addressType><#if docline.paymentsAddrType?exists>${docline.paymentsAddrType}<#else>payeeAddress</#if></addressType>
							</pieceAddress>
						</pieceAddresses>
					</piece>
				</pieces>
			</customerPiece>
					</#if>
				</#if>
			</#list>
		</customerPieces>
	</client>
  </clients>
</sourceDCBData>
</#list>