# Azure-Lighthouse-DelegatedResource
Azure Lighthouse resource delegation

Before modifying the file we need to gather certain information from the service provider tenants.

mspName: Name of the MSP/service provider. In this case, Azure User Group Nepal.

mspOfferDecription: The service we offer to the customer. Here, AUGN Fully Managed Service.

managedByTenantid: Tenant ID of the MSP (Azure Active Directory->Properties->Directory ID)

principalId: Object Id of the group/user (Get-AzADGroup -DisplayName ‘<yourGroupName>’).id . Here, object ID of Tier1, Tier2, and Tier3.
  
principleIdDisplayName: the display name of the group/user in the customer’s tenant.

roleDefinitionID: predefined GUID of the role, like reader, contributor, and owner. We can find it from here. PowerShell command to find it (Get-AzRoleDefinition -Name ‘<roleName>’).id
