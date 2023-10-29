# NAME: Impersonation.ps1
# 
# AUTHOR: Matthew Snurkowski 
# DATE: 09/17/2021
# DESCRIPTION: Gives Impersonation rights to Admin for transferring accounts to O365

Set-ExecutionPolicy Unrestricted
Import-Module ExchangeOnlineManagement
$UPN = Read-Host -Prompt 'Enter Domain User'
Connect-ExchangeOnline -UserPrincipalName $UPN
Enable-OrganizationCustomization
New-ManagementRoleAssignment -Name:ImpersonationAssignment -Role:ApplicationImpersonation -User: $UPN