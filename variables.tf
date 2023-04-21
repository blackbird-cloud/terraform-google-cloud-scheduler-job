variable "name" {
  type        = string
  description = "The name to apply to any nameable resources."
}

variable "description" {
  type        = string
  default     = "Processes events."
  description = "The description to apply to any describable resources."
}

variable "project_id" {
  type        = string
  description = "The ID of the project to which resources will be applied."
}

variable "region" {
  type        = string
  description = "The region in which resources will be applied."
}

variable "http_uri" {
  type        = string
  description = ""
}

variable "http_oidc_token" {
  type = object({
    service_account_email = string
    audience              = string
  })
  default     = null
  description = ""
}

variable "paused" {
  type        = string
  description = "(Optional) Sets the job to a paused state. Jobs default to being enabled when this property is not set."
}

variable "schedule" {
  type        = string
  description = "(Optional) Describes the schedule on which the job will be executed."
}

variable "time_zone" {
  type        = string
  description = "(Optional) Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the tz database."
}

variable "attempt_deadline" {
  type        = string
  description = "(Optional) The deadline for job attempts."
}

variable "retry_count" {
  type        = number
  description = " (Optional) The number of attempts that the system will make to run a job using the exponential backoff procedure described by maxDoublings. Values greater than 5 and negative values are not allowed."
}

variable "http_method" {
  type        = string
  description = "(Optional) Which HTTP method to use for the Cloud Scheduler request."
  default     = "POST"
}

variable "http_body" {
  type        = string
  default     = null
  description = "(Optional) Cloud Scheduler HTTP request body. A request body is allowed only if the HTTP method is POST or PUT. It will result in invalid argument error to set a body on a job with an incompatible HttpMethod. A base64-encoded string."
}

variable "http_headers" {
  type        = map(string)
  description = "(Optional) Cloud Scheduler HTTP request headers. This map contains the header field names and values. Headers can be set when the job is created."
  default     = {}
}
