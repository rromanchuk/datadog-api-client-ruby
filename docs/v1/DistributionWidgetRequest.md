# DatadogAPIClient::V1::DistributionWidgetRequest

## Properties

| Name                      | Type                                                      | Description   | Notes      |
| ------------------------- | --------------------------------------------------------- | ------------- | ---------- |
| **apm_query**             | [**LogQueryDefinition**](LogQueryDefinition.md)           |               | [optional] |
| **apm_stats_query**       | [**ApmStatsQueryDefinition**](ApmStatsQueryDefinition.md) |               | [optional] |
| **event_query**           | [**LogQueryDefinition**](LogQueryDefinition.md)           |               | [optional] |
| **log_query**             | [**LogQueryDefinition**](LogQueryDefinition.md)           |               | [optional] |
| **network_query**         | [**LogQueryDefinition**](LogQueryDefinition.md)           |               | [optional] |
| **process_query**         | [**ProcessQueryDefinition**](ProcessQueryDefinition.md)   |               | [optional] |
| **profile_metrics_query** | [**LogQueryDefinition**](LogQueryDefinition.md)           |               | [optional] |
| **q**                     | **String**                                                | Widget query. | [optional] |
| **rum_query**             | [**LogQueryDefinition**](LogQueryDefinition.md)           |               | [optional] |
| **security_query**        | [**LogQueryDefinition**](LogQueryDefinition.md)           |               | [optional] |
| **style**                 | [**WidgetStyle**](WidgetStyle.md)                         |               | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DistributionWidgetRequest.new(
  apm_query: null,
  apm_stats_query: null,
  event_query: null,
  log_query: null,
  network_query: null,
  process_query: null,
  profile_metrics_query: null,
  q: null,
  rum_query: null,
  security_query: null,
  style: null
)
```
