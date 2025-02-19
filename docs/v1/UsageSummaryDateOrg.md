# DatadogAPIClient::V1::UsageSummaryDateOrg

## Properties

| Name                                             | Type        | Description                                                                                                                                                   | Notes      |
| ------------------------------------------------ | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **agent_host_top99p**                            | **Integer** | Shows the 99th percentile of all agent hosts over all hours in the current date for the given org.                                                            | [optional] |
| **apm_azure_app_service_host_top99p**            | **Integer** | Shows the 99th percentile of all Azure app services using APM over all hours in the current date for the given org.                                           | [optional] |
| **apm_host_top99p**                              | **Integer** | Shows the 99th percentile of all distinct APM hosts over all hours in the current date for the given org.                                                     | [optional] |
| **audit_logs_lines_indexed_sum**                 | **Integer** | Shows the sum of all audit logs lines indexed over all hours in the current date for the given org.                                                           | [optional] |
| **avg_profiled_fargate_tasks**                   | **Integer** | The average profiled task count for Fargate Profiling.                                                                                                        | [optional] |
| **aws_host_top99p**                              | **Integer** | Shows the 99th percentile of all AWS hosts over all hours in the current date for the given org.                                                              | [optional] |
| **aws_lambda_func_count**                        | **Integer** | Shows the sum of all AWS Lambda invocations over all hours in the current date for the given org.                                                             | [optional] |
| **aws_lambda_invocations_sum**                   | **Integer** | Shows the sum of all AWS Lambda invocations over all hours in the current date for the given org.                                                             | [optional] |
| **azure_app_service_top99p**                     | **Integer** | Shows the 99th percentile of all Azure app services over all hours in the current date for the given org.                                                     | [optional] |
| **billable_ingested_bytes_sum**                  | **Integer** | Shows the sum of all log bytes ingested over all hours in the current date for the given org.                                                                 | [optional] |
| **browser_rum_lite_session_count_sum**           | **Integer** | Shows the sum of all browser lite sessions over all hours in the current date for the given org.                                                              | [optional] |
| **browser_rum_replay_session_count_sum**         | **Integer** | Shows the sum of all browser replay sessions over all hours in the current date for the given org.                                                            | [optional] |
| **browser_rum_units_sum**                        | **Integer** | Shows the sum of all browser RUM units over all hours in the current date for the given org.                                                                  | [optional] |
| **container_avg**                                | **Integer** | Shows the average of all distinct containers over all hours in the current date for the given org.                                                            | [optional] |
| **container_hwm**                                | **Integer** | Shows the high-water mark of all distinct containers over all hours in the current date for the given org.                                                    | [optional] |
| **cspm_aas_host_top99p**                         | **Integer** | Shows the 99th percentile of all Cloud Security Posture Management Azure app services hosts over all hours in the current date for the given org.             | [optional] |
| **cspm_azure_host_top99p**                       | **Integer** | Shows the 99th percentile of all Cloud Security Posture Management Azure hosts over all hours in the current date for the given org.                          | [optional] |
| **cspm_container_avg**                           | **Integer** | Shows the average number of Cloud Security Posture Management containers over all hours in the current date for the given org.                                | [optional] |
| **cspm_container_hwm**                           | **Integer** | Shows the high-water mark of Cloud Security Posture Management containers over all hours in the current date for the given org.                               | [optional] |
| **cspm_host_top99p**                             | **Integer** | Shows the 99th percentile of all Cloud Security Posture Management hosts over all hours in the current date for the given org.                                | [optional] |
| **custom_ts_avg**                                | **Integer** | Shows the average number of distinct custom metrics over all hours in the current date for the given org.                                                     | [optional] |
| **cws_container_count_avg**                      | **Integer** | Shows the average of all distinct Cloud Workload Security containers over all hours in the current date for the given org.                                    | [optional] |
| **cws_host_top99p**                              | **Integer** | Shows the 99th percentile of all Cloud Workload Security hosts over all hours in the current date for the given org.                                          | [optional] |
| **dbm_host_top99p_sum**                          | **Integer** | Shows the 99th percentile of all Database Monitoring hosts over all hours in the current month for the given org.                                             | [optional] |
| **dbm_queries_avg_sum**                          | **Integer** | Shows the average of all distinct Database Monitoring normalized queries over all hours in the current month for the given org.                               | [optional] |
| **fargate_tasks_count_avg**                      | **Integer** | The average task count for Fargate.                                                                                                                           | [optional] |
| **fargate_tasks_count_hwm**                      | **Integer** | Shows the high-water mark of all Fargate tasks over all hours in the current date for the given org.                                                          | [optional] |
| **gcp_host_top99p**                              | **Integer** | Shows the 99th percentile of all GCP hosts over all hours in the current date for the given org.                                                              | [optional] |
| **heroku_host_top99p**                           | **Integer** | Shows the 99th percentile of all Heroku dynos over all hours in the current date for the given org.                                                           | [optional] |
| **id**                                           | **String**  | The organization id.                                                                                                                                          | [optional] |
| **incident_management_monthly_active_users_hwm** | **Integer** | Shows the high-water mark of incident management monthly active users over all hours in the current date for the given org.                                   | [optional] |
| **indexed_events_count_sum**                     | **Integer** | Shows the sum of all log events indexed over all hours in the current date for the given org.                                                                 | [optional] |
| **infra_host_top99p**                            | **Integer** | Shows the 99th percentile of all distinct infrastructure hosts over all hours in the current date for the given org.                                          | [optional] |
| **ingested_events_bytes_sum**                    | **Integer** | Shows the sum of all log bytes ingested over all hours in the current date for the given org.                                                                 | [optional] |
| **iot_device_agg_sum**                           | **Integer** | Shows the sum of all IoT devices over all hours in the current date for the given org.                                                                        | [optional] |
| **iot_device_top99p_sum**                        | **Integer** | Shows the 99th percentile of all IoT devices over all hours in the current date for the given org.                                                            | [optional] |
| **mobile_rum_lite_session_count_sum**            | **Integer** | Shows the sum of all mobile lite sessions over all hours in the current date for the given org.                                                               | [optional] |
| **mobile_rum_session_count_android_sum**         | **Integer** | Shows the sum of all mobile RUM Sessions on Android over all hours in the current date for the given org.                                                     | [optional] |
| **mobile_rum_session_count_ios_sum**             | **Integer** | Shows the sum of all mobile RUM Sessions on iOS over all hours in the current date for the given org.                                                         | [optional] |
| **mobile_rum_session_count_sum**                 | **Integer** | Shows the sum of all mobile RUM Sessions over all hours in the current date for the given org.                                                                | [optional] |
| **mobile_rum_units_sum**                         | **Integer** | Shows the sum of all mobile RUM units over all hours in the current date for the given org.                                                                   | [optional] |
| **name**                                         | **String**  | The organization name.                                                                                                                                        | [optional] |
| **netflow_indexed_events_count_sum**             | **Integer** | Shows the sum of all Network flows indexed over all hours in the current date for the given org.                                                              | [optional] |
| **npm_host_top99p**                              | **Integer** | Shows the 99th percentile of all distinct Networks hosts over all hours in the current date for the given org.                                                | [optional] |
| **opentelemetry_host_top99p**                    | **Integer** | Shows the 99th percentile of all hosts reported by the Datadog exporter for the OpenTelemetry Collector over all hours in the current date for the given org. | [optional] |
| **profiling_host_top99p**                        | **Integer** | Shows the 99th percentile of all profiled hosts over all hours in the current date for the given org.                                                         | [optional] |
| **public_id**                                    | **String**  | The organization public id.                                                                                                                                   | [optional] |
| **rum_browser_and_mobile_session_count**         | **Integer** | Shows the sum of all mobile sessions and all browser lite and legacy sessions over all hours in the current date for the given org.                           | [optional] |
| **rum_session_count_sum**                        | **Integer** | Shows the sum of all browser RUM Lite Sessions over all hours in the current date for the given org.                                                          | [optional] |
| **rum_total_session_count_sum**                  | **Integer** | Shows the sum of RUM Sessions (browser and mobile) over all hours in the current date for the given org.                                                      | [optional] |
| **rum_units_sum**                                | **Integer** | Shows the sum of all browser and mobile RUM units over all hours in the current date for the given org.                                                       | [optional] |
| **sds_logs_scanned_bytes_sum**                   | **Integer** | Shows the sum of all bytes scanned of logs usage by the Sensitive Data Scanner over all hours in the current month for the given org.                         | [optional] |
| **sds_total_scanned_bytes_sum**                  | **Integer** | Shows the sum of all bytes scanned across all usage types by the Sensitive Data Scanner over all hours in the current month for the given org.                | [optional] |
| **synthetics_browser_check_calls_count_sum**     | **Integer** | Shows the sum of all Synthetic browser tests over all hours in the current date for the given org.                                                            | [optional] |
| **synthetics_check_calls_count_sum**             | **Integer** | Shows the sum of all Synthetic API tests over all hours in the current date for the given org.                                                                | [optional] |
| **trace_search_indexed_events_count_sum**        | **Integer** | Shows the sum of all Indexed Spans indexed over all hours in the current date for the given org.                                                              | [optional] |
| **twol_ingested_events_bytes_sum**               | **Integer** | Shows the sum of all tracing without limits bytes ingested over all hours in the current date for the given org.                                              | [optional] |
| **vsphere_host_top99p**                          | **Integer** | Shows the 99th percentile of all vSphere hosts over all hours in the current date for the given org.                                                          | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSummaryDateOrg.new(
  agent_host_top99p: null,
  apm_azure_app_service_host_top99p: null,
  apm_host_top99p: null,
  audit_logs_lines_indexed_sum: null,
  avg_profiled_fargate_tasks: null,
  aws_host_top99p: null,
  aws_lambda_func_count: null,
  aws_lambda_invocations_sum: null,
  azure_app_service_top99p: null,
  billable_ingested_bytes_sum: null,
  browser_rum_lite_session_count_sum: null,
  browser_rum_replay_session_count_sum: null,
  browser_rum_units_sum: null,
  container_avg: null,
  container_hwm: null,
  cspm_aas_host_top99p: null,
  cspm_azure_host_top99p: null,
  cspm_container_avg: null,
  cspm_container_hwm: null,
  cspm_host_top99p: null,
  custom_ts_avg: null,
  cws_container_count_avg: null,
  cws_host_top99p: null,
  dbm_host_top99p_sum: null,
  dbm_queries_avg_sum: null,
  fargate_tasks_count_avg: null,
  fargate_tasks_count_hwm: null,
  gcp_host_top99p: null,
  heroku_host_top99p: null,
  id: null,
  incident_management_monthly_active_users_hwm: null,
  indexed_events_count_sum: null,
  infra_host_top99p: null,
  ingested_events_bytes_sum: null,
  iot_device_agg_sum: null,
  iot_device_top99p_sum: null,
  mobile_rum_lite_session_count_sum: null,
  mobile_rum_session_count_android_sum: null,
  mobile_rum_session_count_ios_sum: null,
  mobile_rum_session_count_sum: null,
  mobile_rum_units_sum: null,
  name: null,
  netflow_indexed_events_count_sum: null,
  npm_host_top99p: null,
  opentelemetry_host_top99p: null,
  profiling_host_top99p: null,
  public_id: null,
  rum_browser_and_mobile_session_count: null,
  rum_session_count_sum: null,
  rum_total_session_count_sum: null,
  rum_units_sum: null,
  sds_logs_scanned_bytes_sum: null,
  sds_total_scanned_bytes_sum: null,
  synthetics_browser_check_calls_count_sum: null,
  synthetics_check_calls_count_sum: null,
  trace_search_indexed_events_count_sum: null,
  twol_ingested_events_bytes_sum: null,
  vsphere_host_top99p: null
)
```
