variable "project_hooks" {
  description = <<EOT
Map of project_hooks, attributes below
Required:
    - project
    - url
Optional:
    - branch_filter_strategy
    - confidential_issues_events
    - confidential_note_events
    - custom_headers
    - custom_webhook_template
    - deployment_events
    - description
    - emoji_events
    - enable_ssl_verification
    - feature_flag_events
    - issues_events
    - job_events
    - merge_requests_events
    - milestone_events
    - name
    - note_events
    - pipeline_events
    - push_events
    - push_events_branch_filter
    - releases_events
    - resource_access_token_events
    - resource_deploy_token_events
    - signing_token
    - tag_push_events
    - token
    - url_variables
    - vulnerability_events
    - wiki_page_events
EOT

  type = map(object({
    project                    = string
    url                        = string
    branch_filter_strategy     = optional(string)
    confidential_issues_events = optional(bool)
    confidential_note_events   = optional(bool)
    custom_headers = optional(set(object({
      key   = string
      value = string
    })))
    custom_webhook_template      = optional(string)
    deployment_events            = optional(bool)
    description                  = optional(string)
    emoji_events                 = optional(bool)
    enable_ssl_verification      = optional(bool)
    feature_flag_events          = optional(bool)
    issues_events                = optional(bool)
    job_events                   = optional(bool)
    merge_requests_events        = optional(bool)
    milestone_events             = optional(bool)
    name                         = optional(string)
    note_events                  = optional(bool)
    pipeline_events              = optional(bool)
    push_events                  = optional(bool)
    push_events_branch_filter    = optional(string)
    releases_events              = optional(bool)
    resource_access_token_events = optional(bool)
    resource_deploy_token_events = optional(bool)
    signing_token                = optional(string)
    tag_push_events              = optional(bool)
    token                        = optional(string)
    url_variables = optional(set(object({
      key   = string
      value = string
    })))
    vulnerability_events = optional(bool)
    wiki_page_events     = optional(bool)
  }))
}

