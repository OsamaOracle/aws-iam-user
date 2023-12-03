variable "name" {
  description = "The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.. User names are not distinguished by case. For example, you cannot create users named both 'TESTUSER' and 'testuser'."
  type        = string
}

variable "path" {
  description = "Optional, default '/') Path in which to create the user."
  default     = "/"
  type        = string
}

variable "permissions_boundary" {
  description = "(Optional) The ARN of the policy that is used to set the permissions boundary for the user."
  default     = null
  type        = string
}

variable "force_destroy" {
  description = "(Optional, default false) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  default     = false
  type        = bool
}

variable "tags" {
  description = "Key-value mapping of tags for the IAM user"
  default     = {}
  type        = map
}

variable "inline_policies" {
  description = "(Optional) A map of inline policies to apply to the user."
  default     = {}
  type        = map
}

variable "policy_arns" {
  description = "(Optional) A map of policy arns to attach to the user."
  default     = {}
  type        = map
}
