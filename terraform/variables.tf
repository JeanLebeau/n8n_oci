variable "tenancy_ocid" {
  description = "OCID of Oracle Cloud Tenancy"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
}

variable "availability_domain_number" {
  type        = number
  description = "The availability domain to use (1, 2, or 3). If you get an 'out of capacity' error, destroy the stack and try a different number."
  default     = 1

  validation {
    condition     = contains([1, 2, 3], var.availability_domain_number)
    error_message = "The Availability Domain number must be 1, 2, or 3."
  }
}
