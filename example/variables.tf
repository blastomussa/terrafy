variable "subscriptionId" {
  description = ""
  default     = {}
  type        = string
}
variable "name" {
  description = ""
  default     = {}
  type        = string
}
variable "location" {
  description = ""
  default     = {}
  type        = string
}
variable "hostingPlanName" {
  description = ""
  default     = {}
  type        = string
}
variable "serverFarmResourceGroup" {
  description = ""
  default     = {}
  type        = string
}
variable "ftpsState" {
  description = ""
  default     = {}
  type        = string
}
variable "sku" {
  description = ""
  default     = {}
  type        = string
}
variable "skuCode" {
  description = ""
  default     = {}
  type        = string
}
variable "workerSize" {
  description = ""
  default     = {}
  type        = string
}
variable "workerSizeId" {
  description = ""
  default     = {}
  type        = string
}
variable "numberOfWorkers" {
  description = ""
  default     = {}
  type        = string
}
variable "kind" {
  description = ""
  default     = {}
  type        = string
}
variable "reserved" {
  description = ""
  default     = {}
  type        = bool
}
variable "alwaysOn" {
  description = ""
  default     = {}
  type        = bool
}
variable "linuxFxVersion" {
  description = ""
  default     = {}
  type        = string
}
variable "dockerRegistryUrl" {
  description = ""
  default     = {}
  type        = string
}
variable "storageSizeGB" {
  description = ""
  default     = {}
  type        = number
}
variable "storageIops" {
  description = ""
  default     = {}
  type        = number
}
variable "storageAutoGrow" {
  description = ""
  default     = {}
  type        = string
}
variable "storageAutoIoScaling" {
  description = ""
  default     = {}
  type        = string
}
variable "backupRetentionDays" {
  description = ""
  default     = {}
  type        = number
}
variable "geoRedundantBackup" {
  description = ""
  default     = {}
  type        = string
}
variable "charset" {
  description = ""
  default     = {}
  type        = string
}
variable "collation" {
  description = ""
  default     = {}
  type        = string
}
variable "vmName" {
  description = ""
  default     = {}
  type        = string
}
variable "serverEdition" {
  description = ""
  default     = {}
  type        = string
}
variable "vCores" {
  description = ""
  default     = {}
  type        = number
}
variable "serverName" {
  description = ""
  default     = {}
  type        = string
}
variable "serverUsername" {
  description = ""
  default     = {}
  type        = string
}
variable "serverPassword" {
  description = ""
  default     = {}
  type        = string
  sensitive   = true
}
variable "databaseName" {
  description = ""
  default     = {}
  type        = string
}
variable "publicNetworkAccess" {
  description = ""
  default     = {}
  type        = string
}
variable "wordpressTitle" {
  description = ""
  default     = {}
  type        = string
}
variable "wordpressAdminEmail" {
  description = ""
  default     = {}
  type        = string
}
variable "wordpressUsername" {
  description = ""
  default     = {}
  type        = string
}
variable "wordpressPassword" {
  description = ""
  default     = {}
  type        = string
  sensitive   = true
}
variable "wpLocaleCode" {
  description = ""
  default     = {}
  type        = string
}
variable "cdnProfileName" {
  description = ""
  default     = {}
  type        = string
}
variable "cdnEndpointName" {
  description = ""
  default     = {}
  type        = string
}
variable "cdnType" {
  description = ""
  default     = {}
  type        = string
}
variable "storageAccountName" {
  description = ""
  default     = {}
  type        = string
}
variable "storageAccountType" {
  description = ""
  default     = {}
  type        = string
}
variable "storageAccountKind" {
  description = ""
  default     = {}
  type        = string
}
variable "accessTier" {
  description = ""
  default     = {}
  type        = string
}
variable "minimumTlsVersion" {
  description = ""
  default     = {}
  type        = string
}
variable "supportsHttpsTrafficOnly" {
  description = ""
  default     = {}
  type        = bool
}
variable "allowBlobPublicAccess" {
  description = ""
  default     = {}
  type        = bool
}
variable "allowSharedKeyAccess" {
  description = ""
  default     = {}
  type        = bool
}
variable "allowCrossTenantReplication" {
  description = ""
  default     = {}
  type        = bool
}
variable "networkAclsBypass" {
  description = ""
  default     = {}
  type        = string
}
variable "networkAclsDefaultAction" {
  description = ""
  default     = {}
  type        = string
}
variable "keySource" {
  description = ""
  default     = {}
  type        = string
}
variable "encryptionEnabled" {
  description = ""
  default     = {}
  type        = bool
}
variable "infrastructureEncryptionEnabled" {
  description = ""
  default     = {}
  type        = bool
}
variable "blobContainerName" {
  description = ""
  default     = {}
  type        = string
}
variable "blobPublicAccessLevel" {
  description = ""
  default     = {}
  type        = string
}
variable "vnetName" {
  description = ""
  default     = {}
  type        = string
}
variable "subnetForApp" {
  description = ""
  default     = {}
  type        = string
}
variable "subnetForDb" {
  description = ""
  default     = {}
  type        = string
}
variable "privateDnsZoneNameForDb" {
  description = ""
  default     = {}
  type        = string
}
variable "vnetrg" {
  description = ""
  default     = {}
  type        = string
}
