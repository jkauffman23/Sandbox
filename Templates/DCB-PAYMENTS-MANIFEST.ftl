<#assign uploadedDateTime = .now>
<#list documentsList as document><#-- Start Document Loop -->
<osg>
  <version>3.0</version>
  <ADFCode>MIRIA</ADFCode>
  <siteCode>Norristown</siteCode>
  <integration>Payables</integration>
  <clientCode>SEIINVEST</clientCode>
  <clientName>SEI Investments Company</clientName>
  <fileType>DCBSTANDARDXML</fileType>
  <zipFileArchiveName>${fileName}.zip</zipFileArchiveName>
  <jobId><#if document.seqId?exists>${document.seqId?c}</#if><#if paymentModeInfo.clientIdToken?exists && paymentModeInfo.clientIdToken?length gt 0>-${paymentModeInfo.clientIdToken}</#if></jobId>
  <jobType>PaymentRequest</jobType>
  <ticketDate>${uploadedDateTime?iso_utc}</ticketDate>
  <source>ADF</source>
</osg>
</#list>