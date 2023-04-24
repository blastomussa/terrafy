variable "subscriptionId" {
  description = ""
  type        = string
}
variable "name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "hostingPlanName" {
  description = ""
  type        = string
}
variable "serverFarmResourceGroup" {
  description = ""
  type        = string
}
variable "ftpsState" {
  description = ""
  type        = string
}
variable "sku" {
  description = ""
  type        = string
}
variable "skuCode" {
  description = ""
  type        = string
}
variable "workerSize" {
  description = ""
  type        = string
}
variable "workerSizeId" {
  description = ""
  type        = string
}
variable "numberOfWorkers" {
  description = ""
  type        = string
}
variable "kind" {
  description = ""
  type        = string
}
variable "reserved" {
  description = ""
  type        = bool
}
variable "alwaysOn" {
  description = ""
  type        = bool
}
variable "linuxFxVersion" {
  description = ""
  type        = string
}
variable "dockerRegistryUrl" {
  description = ""
  type        = string
}
variable "storageSizeGB" {
  description = ""
  type        = number
}
variable "storageIops" {
  description = ""
  type        = number
}
variable "storageAutoGrow" {
  description = ""
  type        = string
}
variable "storageAutoIoScaling" {
  description = ""
  type        = string
}
variable "backupRetentionDays" {
  description = ""
  type        = number
}
variable "geoRedundantBackup" {
  description = ""
  type        = string
}
variable "charset" {
  description = ""
  type        = string
}
variable "collation" {
  description = ""
  type        = string
}
variable "vmName" {
  description = ""
  type        = string
}
variable "serverEdition" {
  description = ""
  type        = string
}
variable "vCores" {
  description = ""
  type        = number
}
variable "serverName" {
  description = ""
  type        = string
}
variable "serverUsername" {
  description = ""
  type        = string
}
variable "serverPassword" {
  description = ""
  type        = string
  sensitive   = true
}
variable "databaseName" {
  description = ""
  type        = string
}
variable "publicNetworkAccess" {
  description = ""
  type        = string
}
variable "wordpressTitle" {
  description = ""
  type        = string
}
variable "wordpressAdminEmail" {
  description = ""
  type        = string
}
variable "wordpressUsername" {
  description = ""
  type        = string
}
variable "wordpressPassword" {
  description = ""
  type        = string
  sensitive   = true
}
variable "wpLocaleCode" {
  description = ""
  type        = string
}
variable "cdnProfileName" {
  description = ""
  type        = string
}
variable "cdnEndpointName" {
  description = ""
  type        = string
}
variable "cdnType" {
  description = ""
  type        = string
}
variable "storageAccountName" {
  description = ""
  type        = string
}
variable "storageAccountType" {
  description = ""
  type        = string
}
variable "storageAccountKind" {
  description = ""
  type        = string
}
variable "accessTier" {
  description = ""
  type        = string
}
variable "minimumTlsVersion" {
  description = ""
  type        = string
}
variable "supportsHttpsTrafficOnly" {
  description = ""
  type        = bool
}
variable "allowBlobPublicAccess" {
  description = ""
  type        = bool
}
variable "allowSharedKeyAccess" {
  description = ""
  type        = bool
}
variable "allowCrossTenantReplication" {
  description = ""
  type        = bool
}
variable "networkAclsBypass" {
  description = ""
  type        = string
}
variable "networkAclsDefaultAction" {
  description = ""
  type        = string
}
variable "keySource" {
  description = ""
  type        = string
}
variable "encryptionEnabled" {
  description = ""
  type        = bool
}
variable "infrastructureEncryptionEnabled" {
  description = ""
  type        = bool
}
variable "blobContainerName" {
  description = ""
  type        = string
}
variable "blobPublicAccessLevel" {
  description = ""
  type        = string
}
variable "vnetName" {
  description = ""
  type        = string
}
variable "subnetForApp" {
  description = ""
  type        = string
}
variable "subnetForDb" {
  description = ""
  type        = string
}
variable "privateDnsZoneNameForDb" {
  description = ""
  type        = string
}
variable "vnetrg" {
  description = ""
  type        = string
}
