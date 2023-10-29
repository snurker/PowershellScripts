Set-ExecutionPolicy RemoteSigned
Import-Module ExchangeOnlineManagement

Connect-IPPSSession
$ips = "168.245.34.162/32",
"168.245.30.20/32",
"54.209.51.230/32",
"157.230.65.76/32",
"168.245.68.173/32",
"149.72.207.249/32",
"149.72.184.111/32",
"168.245.40.98/32",
"18.209.119.19/32",
"34.231.173.178/32"
$domainlist = "it-support.care",
"customer-portal.info",
"member-services.info",
"bankonlinesupport.com",
"secureaccess.biz",
"logineverification.com",
"Iogmein.com",
"mlcrosoft.live",
"cloud-service-care.com",
"packagetrackingportal.com"
$phishRuleName = "BSNPhishSimOverrideRule"
New-PhishSimOverridePolicy -Name PhishSimOverridePolicy
New-PhishSimOverrideRule -Name $phishRuleName -Policy PhishSimOverridePolicy -SenderDomainIs $domainlist -SenderIpRanges $ips
