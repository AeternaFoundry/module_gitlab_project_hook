resource "gitlab_project_hook" "project_hooks" {
  for_each = var.project_hooks

  project                      = each.value.project
  url                          = each.value.url
  branch_filter_strategy       = each.value.branch_filter_strategy
  confidential_issues_events   = each.value.confidential_issues_events
  confidential_note_events     = each.value.confidential_note_events
  custom_headers               = each.value.custom_headers
  custom_webhook_template      = each.value.custom_webhook_template
  deployment_events            = each.value.deployment_events
  description                  = each.value.description
  emoji_events                 = each.value.emoji_events
  enable_ssl_verification      = each.value.enable_ssl_verification
  feature_flag_events          = each.value.feature_flag_events
  issues_events                = each.value.issues_events
  job_events                   = each.value.job_events
  merge_requests_events        = each.value.merge_requests_events
  milestone_events             = each.value.milestone_events
  name                         = each.value.name
  note_events                  = each.value.note_events
  pipeline_events              = each.value.pipeline_events
  push_events                  = each.value.push_events
  push_events_branch_filter    = each.value.push_events_branch_filter
  releases_events              = each.value.releases_events
  resource_access_token_events = each.value.resource_access_token_events
  resource_deploy_token_events = each.value.resource_deploy_token_events
  signing_token                = each.value.signing_token
  tag_push_events              = each.value.tag_push_events
  token                        = each.value.token
  url_variables                = each.value.url_variables
  vulnerability_events         = each.value.vulnerability_events
  wiki_page_events             = each.value.wiki_page_events
}

