resource "google_cloud_scheduler_job" "scheduler" {
  name        = var.name
  description = var.description
  paused      = var.paused
  region      = var.region

  schedule = var.schedule

  time_zone        = var.time_zone
  project          = var.project_id
  attempt_deadline = var.attempt_deadline

  retry_config {
    retry_count = var.retry_count
  }

  http_target {
    http_method = var.http_method
    uri         = var.http_uri
    body        = var.http_body
    headers     = var.http_headers
    dynamic "oidc_token" {
      for_each = compact([try(var.http_oidc_token.service_account_email, null) && try(var.http_oidc_token.audience, null) ? 1 : null])
      content {
        service_account_email = try(var.http_oidc_token.service_account_email, null)
        audience              = try(var.http_oidc_token.audience, null)
      }
    }
  }
}
