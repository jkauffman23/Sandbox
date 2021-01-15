ClientCode|PayeeIdentifier|PayeeName|PayeeAcccountNumber|PayeeBankCountry|PayeeCurrency|IntermediaryBankName|IntermediaryBankBIC|PayeeBankName|PayeeBankAddressLine1|PayeeBankAddressLine2|PayeeBankCity|PayeeBankPostalCode|PayeeBankProvince|PayeeBankBIC|CambridgeInstructions|PayeeAddressLine1|PayeeAddressLine2|PayeeCity|PayeePostalCode|PayeePrimaryContact|PayeeEmail|DefaultReference|PayeeCountry|PayeeProvince|PayeeBankRoutingCode|PaymentType|PayeeClassification|PurposeOfPayment|RegulatoryField1|RegulatoryField2|RegulatoryField3|RegulatoryField4|RegulatoryField5|RegulatoryField6|RegulatoryField7|SettlementCurrency|PaymentAmount|SettlementAmount|PaymentReference|SettlementId
<#assign classification = "">
<#list documentsList as document><#-- Start Document Loop -->
	<#list document.documentLines as docline><#-- Start DocumentList Loop -->
		<#if docline.paymentsPurposeOfPayment?exists && docline.paymentsPurposeOfPayment?length gt 0>
			<#if docline.paymentsPurposeOfPayment?upper_case?contains("INVESTMENT PAYMENT")>
				<#assign classification = "Individual">
			<#elseif docline.paymentsPurposeOfPayment?upper_case?contains("PAYROLL/PERSONNEL PAYMENT")>
				<#assign classification = "Individual">
			<#elseif docline.paymentsPurposeOfPayment?upper_case?contains("PURCHASE OF GOOD")>
				<#assign classification = "Business">
			<#elseif docline.paymentsPurposeOfPayment?upper_case?contains("PURCHASE OF SERVICE")>
				<#assign classification = "Business">
			</#if>
		<#else>
			<#assign classification = "Business">
		</#if>
		<#if !document.paymentsConsolidate><#--    ********************************  Is not a consolidated batch  ******************************    -->
<#if paymentModeInfo.clientIdToken?exists && paymentModeInfo.clientIdToken?length gt 0>${paymentModeInfo.clientIdToken}</#if>|<#if docline.paymentsVendorId?exists>${docline.paymentsVendorId}</#if>|<#if docline.paymentsVendorName?exists>${docline.paymentsVendorName}</#if>|<#if docline.paymentsVendorBankAcctNo?exists>${docline.paymentsVendorBankAcctNo}</#if>|<#if docline.venBankCountry?exists>${docline.venBankCountry}</#if>|<#if docline.paymentsCurrencyId?exists>${docline.paymentsCurrencyId}</#if>|||<#if docline.paymentsVendorBankName?exists>${docline.paymentsVendorBankName}</#if>|<#if docline.venBankAddr1?exists>${docline.venBankAddr1}</#if>|<#if docline.venBankAddr2?exists && docline.venBankAddr2?length gt 0>${docline.venBankAddr2}</#if>|<#if docline.venBankCity?exists>${docline.venBankCity}</#if>|<#if docline.venBankPostalCode?exists>${docline.venBankPostalCode}</#if>|<#if docline.venBankState?exists && docline.venBankState?length gt 0>${docline.venBankState}</#if>|<#if docline.venBankSwiftCode?exists>${docline.venBankSwiftCode}</#if>||<#if docline.paymentsAddr1?exists>${docline.paymentsAddr1}</#if>|<#if docline.paymentsAddr2?exists>${docline.paymentsAddr2}</#if>|<#if docline.paymentsCity?exists>${docline.paymentsCity}</#if>|<#if docline.paymentsPostalCode?exists>${docline.paymentsPostalCode}</#if>|<#if docline.paymentsVendorPhone?exists>${docline.paymentsVendorPhone}</#if>|<#if docline.paymentsEmail?exists>${docline.paymentsEmail}</#if>||<#if docline.paymentsCountry?exists>${docline.paymentsCountry}</#if>|<#if docline.paymentsState?exists && docline.paymentsState?length gt 0>${docline.paymentsState}</#if>|<#if docline.paymentsVendorBankRoutingNo?exists>${docline.paymentsVendorBankRoutingNo}</#if>|<#if document.tbdString9?exists>${document.tbdString9}</#if>|${classification}|<#if docline.paymentsPurposeOfPayment?exists>${docline.paymentsPurposeOfPayment}<#else>Purchase of Good(s)</#if>|<#if docline.venRegValue1?exists>${docline.venRegValue1}</#if>|<#if docline.venRegValue2?exists>${docline.venRegValue2}</#if>|<#if docline.venRegValue3?exists>${docline.venRegValue3}</#if>|<#if docline.venRegValue4?exists>${docline.venRegValue4}</#if>|<#if docline.venRegValue5?exists>${docline.venRegValue5}</#if>|||<#if docline.paymentsCurrencyId?exists>${docline.paymentsCurrencyId}</#if>|<#if docline.lineTotal?exists>${docline.lineTotal?string("0.00")}</#if>||<#if docline.seqId?exists>${docline.seqId?c}</#if>|<#if document.bankAccountNo?exists>${document.bankAccountNo}</#if>
		<#elseif document.paymentsConsolidate><#--    ********************************  Is a consolidated batch  ******************************    -->
			<#if !docline.subLineTypeNumber?contains(".")><#--    ********************************  Is a payment line  ******************************    -->
<#if paymentModeInfo.clientIdToken?exists && paymentModeInfo.clientIdToken?length gt 0>${paymentModeInfo.clientIdToken}</#if>|<#if docline.paymentsVendorId?exists>${docline.paymentsVendorId}</#if>|<#if docline.paymentsVendorName?exists>${docline.paymentsVendorName}</#if>|<#if docline.paymentsVendorBankAcctNo?exists>${docline.paymentsVendorBankAcctNo}</#if>|<#if docline.venBankCountry?exists>${docline.venBankCountry}</#if>|<#if docline.paymentsCurrencyId?exists>${docline.paymentsCurrencyId}</#if>|||<#if docline.paymentsVendorBankName?exists>${docline.paymentsVendorBankName}</#if>|<#if docline.venBankAddr1?exists>${docline.venBankAddr1}</#if>|<#if docline.venBankAddr2?exists && docline.venBankAddr2?length gt 0>${docline.venBankAddr2}</#if>|<#if docline.venBankCity?exists>${docline.venBankCity}</#if>|<#if docline.venBankPostalCode?exists>${docline.venBankPostalCode}</#if>|<#if docline.venBankState?exists && docline.venBankState?length gt 0>${docline.venBankState}</#if>|<#if docline.venBankSwiftCode?exists>${docline.venBankSwiftCode}</#if>||<#if docline.paymentsAddr1?exists>${docline.paymentsAddr1}</#if>|<#if docline.paymentsAddr2?exists>${docline.paymentsAddr2}</#if>|<#if docline.paymentsCity?exists>${docline.paymentsCity}</#if>|<#if docline.paymentsPostalCode?exists>${docline.paymentsPostalCode}</#if>|<#if docline.paymentsVendorPhone?exists>${docline.paymentsVendorPhone}</#if>|<#if docline.paymentsEmail?exists>${docline.paymentsEmail}</#if>||<#if docline.paymentsCountry?exists>${docline.paymentsCountry}</#if>|<#if docline.paymentsState?exists && docline.paymentsState?length gt 0>${docline.paymentsState}</#if>|<#if docline.paymentsVendorBankRoutingNo?exists>${docline.paymentsVendorBankRoutingNo}</#if>|<#if document.tbdString9?exists>${document.tbdString9}</#if>|${classification}|<#if docline.paymentsPurposeOfPayment?exists>${docline.paymentsPurposeOfPayment}<#else>Purchase of Good(s)</#if>|<#if docline.venRegValue1?exists>${docline.venRegValue1}</#if>|<#if docline.venRegValue2?exists>${docline.venRegValue2}</#if>|<#if docline.venRegValue3?exists>${docline.venRegValue3}</#if>|<#if docline.venRegValue4?exists>${docline.venRegValue4}</#if>|<#if docline.venRegValue5?exists>${docline.venRegValue5}</#if>|||<#if docline.paymentsCurrencyId?exists>${docline.paymentsCurrencyId}</#if>|<#if docline.lineTotal?exists>${docline.lineTotal?string("0.00")}</#if>||<#if docline.seqId?exists>${docline.seqId?c}</#if>|<#if document.bankAccountNo?exists>${document.bankAccountNo}</#if>
			</#if>
		</#if><#--    ********************************  End Consolidated IF  ******************************    -->
	</#list><#-- End DocumentList Loop -->
</#list><#-- End Document Loop -->


