# DatadogAPIClient::V1::UsageSummaryResponse

## Properties

| Name                                                 | Type                                                     | Description                                                                                                                                                         | Notes      |
| ---------------------------------------------------- | -------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **agent_host_top99p_sum**                            | **Integer**                                              | Shows the 99th percentile of all agent hosts over all hours in the current months for all organizations.                                                            | [optional] |
| **apm_azure_app_service_host_top99p_sum**            | **Integer**                                              | Shows the 99th percentile of all Azure app services using APM over all hours in the current months all organizations.                                               | [optional] |
| **apm_host_top99p_sum**                              | **Integer**                                              | Shows the 99th percentile of all distinct APM hosts over all hours in the current months for all organizations.                                                     | [optional] |
| **audit_logs_lines_indexed_agg_sum**                 | **Integer**                                              | Shows the sum of all audit logs lines indexed over all hours in the current months for all organizations.                                                           | [optional] |
| **avg_profiled_fargate_tasks_sum**                   | **Integer**                                              | Shows the average of all profiled Fargate tasks over all hours in the current months for all organizations.                                                         | [optional] |
| **aws_host_top99p_sum**                              | **Integer**                                              | Shows the 99th percentile of all AWS hosts over all hours in the current months for all organizations.                                                              | [optional] |
| **aws_lambda_func_count**                            | **Integer**                                              | Shows the average of the number of functions that executed 1 or more times each hour in the current months for all organizations.                                   | [optional] |
| **aws_lambda_invocations_sum**                       | **Integer**                                              | Shows the sum of all AWS Lambda invocations over all hours in the current months for all organizations.                                                             | [optional] |
| **azure_app_service_top99p_sum**                     | **Integer**                                              | Shows the 99th percentile of all Azure app services over all hours in the current months for all organizations.                                                     | [optional] |
| **azure_host_top99p_sum**                            | **Integer**                                              | Shows the 99th percentile of all Azure hosts over all hours in the current months for all organizations.                                                            | [optional] |
| **billable_ingested_bytes_agg_sum**                  | **Integer**                                              | Shows the sum of all log bytes ingested over all hours in the current months for all organizations.                                                                 | [optional] |
| **browser_rum_lite_session_count_agg_sum**           | **Integer**                                              | Shows the sum of all browser lite sessions over all hours in the current months for all organizations.                                                              | [optional] |
| **browser_rum_replay_session_count_agg_sum**         | **Integer**                                              | Shows the sum of all browser replay sessions over all hours in the current months for all organizations.                                                            | [optional] |
| **browser_rum_units_agg_sum**                        | **Integer**                                              | Shows the sum of all browser RUM units over all hours in the current months for all organizations.                                                                  | [optional] |
| **container_avg_sum**                                | **Integer**                                              | Shows the average of all distinct containers over all hours in the current months for all organizations.                                                            | [optional] |
| **container_hwm_sum**                                | **Integer**                                              | Shows the sum of the high-water marks of all distinct containers over all hours in the current months for all organizations.                                        | [optional] |
| **cspm_aas_host_top99p_sum**                         | **Integer**                                              | Shows the 99th percentile of all Cloud Security Posture Management Azure app services hosts over all hours in the current months for all organizations.             | [optional] |
| **cspm_azure_host_top99p_sum**                       | **Integer**                                              | Shows the 99th percentile of all Cloud Security Posture Management Azure hosts over all hours in the current months for all organizations.                          | [optional] |
| **cspm_container_avg_sum**                           | **Integer**                                              | Shows the average number of Cloud Security Posture Management containers over all hours in the current months for all organizations.                                | [optional] |
| **cspm_container_hwm_sum**                           | **Integer**                                              | Shows the sum of the the high-water marks of Cloud Security Posture Management containers over all hours in the current months for all organizations.               | [optional] |
| **cspm_host_top99p_sum**                             | **Integer**                                              | Shows the 99th percentile of all Cloud Security Posture Management hosts over all hours in the current months for all organizations.                                | [optional] |
| **custom_ts_sum**                                    | **Integer**                                              | Shows the average number of distinct custom metrics over all hours in the current months for all organizations.                                                     | [optional] |
| **cws_containers_avg_sum**                           | **Integer**                                              | Shows the average of all distinct Cloud Workload Security containers over all hours in the current months for all organizations.                                    | [optional] |
| **cws_host_top99p_sum**                              | **Integer**                                              | Shows the 99th percentile of all Cloud Workload Security hosts over all hours in the current months for all organizations.                                          | [optional] |
| **dbm_host_top99p_sum**                              | **Integer**                                              | Shows the 99th percentile of all Database Monitoring hosts over all hours in the current month for all organizations.                                               | [optional] |
| **dbm_queries_avg_sum**                              | **Integer**                                              | Shows the average of all distinct Database Monitoring Normalized Queries over all hours in the current month for all organizations.                                 | [optional] |
| **end_date**                                         | **Time**                                                 | Shows the last date of usage in the current months for all organizations.                                                                                           | [optional] |
| **fargate_tasks_count_avg_sum**                      | **Integer**                                              | Shows the average of all Fargate tasks over all hours in the current months for all organizations.                                                                  | [optional] |
| **fargate_tasks_count_hwm_sum**                      | **Integer**                                              | Shows the sum of the high-water marks of all Fargate tasks over all hours in the current months for all organizations.                                              | [optional] |
| **gcp_host_top99p_sum**                              | **Integer**                                              | Shows the 99th percentile of all GCP hosts over all hours in the current months for all organizations.                                                              | [optional] |
| **heroku_host_top99p_sum**                           | **Integer**                                              | Shows the 99th percentile of all Heroku dynos over all hours in the current months for all organizations.                                                           | [optional] |
| **incident_management_monthly_active_users_hwm_sum** | **Integer**                                              | Shows sum of the the high-water marks of incident management monthly active users in the current months for all organizations.                                      | [optional] |
| **indexed_events_count_agg_sum**                     | **Integer**                                              | Shows the sum of all log events indexed over all hours in the current months for all organizations.                                                                 | [optional] |
| **infra_host_top99p_sum**                            | **Integer**                                              | Shows the 99th percentile of all distinct infrastructure hosts over all hours in the current months for all organizations.                                          | [optional] |
| **ingested_events_bytes_agg_sum**                    | **Integer**                                              | Shows the sum of all log bytes ingested over all hours in the current months for all organizations.                                                                 | [optional] |
| **iot_device_agg_sum**                               | **Integer**                                              | Shows the sum of all IoT devices over all hours in the current months for all organizations.                                                                        | [optional] |
| **iot_device_top99p_sum**                            | **Integer**                                              | Shows the 99th percentile of all IoT devices over all hours in the current months of all organizations.                                                             | [optional] |
| **last_updated**                                     | **Time**                                                 | Shows the the most recent hour in the current months for all organizations for which all usages were calculated.                                                    | [optional] |
| **live_indexed_events_agg_sum**                      | **Integer**                                              | Shows the sum of all live logs indexed over all hours in the current months for all organizations (data available as of December 1, 2020).                          | [optional] |
| **live_ingested_bytes_agg_sum**                      | **Integer**                                              | Shows the sum of all live logs bytes ingested over all hours in the current months for all organizations (data available as of December 1, 2020).                   | [optional] |
| **logs_by_retention**                                | [**LogsByRetention**](LogsByRetention.md)                |                                                                                                                                                                     | [optional] |
| **mobile_rum_lite_session_count_agg_sum**            | **Integer**                                              | Shows the sum of all mobile lite sessions over all hours in the current months for all organizations.                                                               | [optional] |
| **mobile_rum_session_count_agg_sum**                 | **Integer**                                              | Shows the sum of all mobile RUM Sessions over all hours in the current months for all organizations.                                                                | [optional] |
| **mobile_rum_session_count_android_agg_sum**         | **Integer**                                              | Shows the sum of all mobile RUM Sessions on Android over all hours in the current months for all organizations.                                                     | [optional] |
| **mobile_rum_session_count_ios_agg_sum**             | **Integer**                                              | Shows the sum of all mobile RUM Sessions on iOS over all hours in the current months for all organizations.                                                         | [optional] |
| **mobile_rum_units_agg_sum**                         | **Integer**                                              | Shows the sum of all mobile RUM units over all hours in the current months for all organizations.                                                                   | [optional] |
| **netflow_indexed_events_count_agg_sum**             | **Integer**                                              | Shows the sum of all Network flows indexed over all hours in the current months for all organizations.                                                              | [optional] |
| **npm_host_top99p_sum**                              | **Integer**                                              | Shows the 99th percentile of all distinct Networks hosts over all hours in the current months for all organizations.                                                | [optional] |
| **opentelemetry_host_top99p_sum**                    | **Integer**                                              | Shows the 99th percentile of all hosts reported by the Datadog exporter for the OpenTelemetry Collector over all hours in the current months for all organizations. | [optional] |
| **profiling_container_agent_count_avg**              | **Integer**                                              | Shows the average number of profiled containers over all hours in the current months for all organizations.                                                         | [optional] |
| **profiling_host_count_top99p_sum**                  | **Integer**                                              | Shows the 99th percentile of all profiled hosts over all hours in the current months for all organizations.                                                         | [optional] |
| **rehydrated_indexed_events_agg_sum**                | **Integer**                                              | Shows the sum of all rehydrated logs indexed over all hours in the current months for all organizations (data available as of December 1, 2020).                    | [optional] |
| **rehydrated_ingested_bytes_agg_sum**                | **Integer**                                              | Shows the sum of all rehydrated logs bytes ingested over all hours in the current months for all organizations (data available as of December 1, 2020).             | [optional] |
| **rum_browser_and_mobile_session_count**             | **Integer**                                              | Shows the sum of all mobile sessions and all browser lite and legacy sessions over all hours in the current month for all organizations.                            | [optional] |
| **rum_session_count_agg_sum**                        | **Integer**                                              | Shows the sum of all browser RUM Lite Sessions over all hours in the current months for all organizations.                                                          | [optional] |
| **rum_total_session_count_agg_sum**                  | **Integer**                                              | Shows the sum of RUM Sessions (browser and mobile) over all hours in the current months for all organizations.                                                      | [optional] |
| **rum_units_agg_sum**                                | **Integer**                                              | Shows the sum of all browser and mobile RUM units over all hours in the current months for all organizations.                                                       | [optional] |
| **sds_logs_scanned_bytes_sum**                       | **Integer**                                              | Shows the sum of all bytes scanned of logs usage by the Sensitive Data Scanner over all hours in the current month for all organizations.                           | [optional] |
| **sds_total_scanned_bytes_sum**                      | **Integer**                                              | Shows the sum of all bytes scanned across all usage types by the Sensitive Data Scanner over all hours in the current month for all organizations.                  | [optional] |
| **start_date**                                       | **Time**                                                 | Shows the first date of usage in the current months for all organizations.                                                                                          | [optional] |
| **synthetics_browser_check_calls_count_agg_sum**     | **Integer**                                              | Shows the sum of all Synthetic browser tests over all hours in the current months for all organizations.                                                            | [optional] |
| **synthetics_check_calls_count_agg_sum**             | **Integer**                                              | Shows the sum of all Synthetic API tests over all hours in the current months for all organizations.                                                                | [optional] |
| **trace_search_indexed_events_count_agg_sum**        | **Integer**                                              | Shows the sum of all Indexed Spans indexed over all hours in the current months for all organizations.                                                              | [optional] |
| **twol_ingested_events_bytes_agg_sum**               | **Integer**                                              | Shows the sum of all tracing without limits bytes ingested over all hours in the current months for all organizations.                                              | [optional] |
| **usage**                                            | [**Array&lt;UsageSummaryDate&gt;**](UsageSummaryDate.md) | An array of objects regarding hourly usage.                                                                                                                         | [optional] |
| **vsphere_host_top99p_sum**                          | **Integer**                                              | Shows the 99th percentile of all vSphere hosts over all hours in the current months for all organizations.                                                          | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSummaryResponse.new(
  agent_host_top99p_sum: null,
  apm_azure_app_service_host_top99p_sum: null,
  apm_host_top99p_sum: null,
  audit_logs_lines_indexed_agg_sum: null,
  avg_profiled_fargate_tasks_sum: null,
  aws_host_top99p_sum: null,
  aws_lambda_func_count: null,
  aws_lambda_invocations_sum: null,
  azure_app_service_top99p_sum: null,
  azure_host_top99p_sum: null,
  billable_ingested_bytes_agg_sum: null,
  browser_rum_lite_session_count_agg_sum: null,
  browser_rum_replay_session_count_agg_sum: null,
  browser_rum_units_agg_sum: null,
  container_avg_sum: null,
  container_hwm_sum: null,
  cspm_aas_host_top99p_sum: null,
  cspm_azure_host_top99p_sum: null,
  cspm_container_avg_sum: null,
  cspm_container_hwm_sum: null,
  cspm_host_top99p_sum: null,
  custom_ts_sum: null,
  cws_containers_avg_sum: null,
  cws_host_top99p_sum: null,
  dbm_host_top99p_sum: null,
  dbm_queries_avg_sum: null,
  end_date: null,
  fargate_tasks_count_avg_sum: null,
  fargate_tasks_count_hwm_sum: null,
  gcp_host_top99p_sum: null,
  heroku_host_top99p_sum: null,
  incident_management_monthly_active_users_hwm_sum: null,
  indexed_events_count_agg_sum: null,
  infra_host_top99p_sum: null,
  ingested_events_bytes_agg_sum: null,
  iot_device_agg_sum: null,
  iot_device_top99p_sum: null,
  last_updated: null,
  live_indexed_events_agg_sum: null,
  live_ingested_bytes_agg_sum: null,
  logs_by_retention: null,
  mobile_rum_lite_session_count_agg_sum: null,
  mobile_rum_session_count_agg_sum: null,
  mobile_rum_session_count_android_agg_sum: null,
  mobile_rum_session_count_ios_agg_sum: null,
  mobile_rum_units_agg_sum: null,
  netflow_indexed_events_count_agg_sum: null,
  npm_host_top99p_sum: null,
  opentelemetry_host_top99p_sum: null,
  profiling_container_agent_count_avg: null,
  profiling_host_count_top99p_sum: null,
  rehydrated_indexed_events_agg_sum: null,
  rehydrated_ingested_bytes_agg_sum: null,
  rum_browser_and_mobile_session_count: null,
  rum_session_count_agg_sum: null,
  rum_total_session_count_agg_sum: null,
  rum_units_agg_sum: null,
  sds_logs_scanned_bytes_sum: null,
  sds_total_scanned_bytes_sum: null,
  start_date: null,
  synthetics_browser_check_calls_count_agg_sum: null,
  synthetics_check_calls_count_agg_sum: null,
  trace_search_indexed_events_count_agg_sum: null,
  twol_ingested_events_bytes_agg_sum: null,
  usage: null,
  vsphere_host_top99p_sum: null
)
```
