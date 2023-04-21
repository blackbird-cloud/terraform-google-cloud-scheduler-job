[![blackbird-logo](https://raw.githubusercontent.com/blackbird-cloud/terraform-module-template/main/.config/logo_simple.png)](https://blackbird.cloud)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.61 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.62.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloud_scheduler_job.scheduler](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_scheduler_job) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attempt_deadline"></a> [attempt\_deadline](#input\_attempt\_deadline) | (Optional) The deadline for job attempts. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description to apply to any describable resources. | `string` | `"Processes events."` | no |
| <a name="input_http_body"></a> [http\_body](#input\_http\_body) | (Optional) Cloud Scheduler HTTP request body. A request body is allowed only if the HTTP method is POST or PUT. It will result in invalid argument error to set a body on a job with an incompatible HttpMethod. A base64-encoded string. | `string` | `null` | no |
| <a name="input_http_headers"></a> [http\_headers](#input\_http\_headers) | (Optional) Cloud Scheduler HTTP request headers. This map contains the header field names and values. Headers can be set when the job is created. | `map(string)` | `{}` | no |
| <a name="input_http_method"></a> [http\_method](#input\_http\_method) | (Optional) Which HTTP method to use for the Cloud Scheduler request. | `string` | `"POST"` | no |
| <a name="input_http_oidc_token"></a> [http\_oidc\_token](#input\_http\_oidc\_token) | n/a | <pre>object({<br>    service_account_email = string<br>    audience              = string<br>  })</pre> | `null` | no |
| <a name="input_http_uri"></a> [http\_uri](#input\_http\_uri) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name to apply to any nameable resources. | `string` | n/a | yes |
| <a name="input_paused"></a> [paused](#input\_paused) | (Optional) Sets the job to a paused state. Jobs default to being enabled when this property is not set. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project to which resources will be applied. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which resources will be applied. | `string` | n/a | yes |
| <a name="input_retry_count"></a> [retry\_count](#input\_retry\_count) | (Optional) The number of attempts that the system will make to run a job using the exponential backoff procedure described by maxDoublings. Values greater than 5 and negative values are not allowed. | `number` | n/a | yes |
| <a name="input_schedule"></a> [schedule](#input\_schedule) | (Optional) Describes the schedule on which the job will be executed. | `string` | n/a | yes |
| <a name="input_time_zone"></a> [time\_zone](#input\_time\_zone) | (Optional) Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the tz database. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_google_cloud_scheduler_job"></a> [google\_cloud\_scheduler\_job](#output\_google\_cloud\_scheduler\_job) | The Cloud Scheduler Job |

## About

We are [Blackbird Cloud](https://blackbird.cloud), Amsterdam based cloud consultancy, and cloud management service provider. We help companies build secure, cost efficient, and scale-able solutions.

Checkout our other :point\_right: [terraform modules](https://registry.terraform.io/namespaces/blackbird-cloud)

## Copyright

Copyright © 2017-2023 [Blackbird Cloud](https://blackbird.cloud)
