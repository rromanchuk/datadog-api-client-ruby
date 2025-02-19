# DatadogAPIClient::V1::LogsRetentionSumUsage

## Properties

| Name                                       | Type        | Description                                                                            | Notes      |
| ------------------------------------------ | ----------- | -------------------------------------------------------------------------------------- | ---------- |
| **logs_indexed_logs_usage_sum**            | **Integer** | Total indexed logs for this retention period.                                          | [optional] |
| **logs_live_indexed_logs_usage_sum**       | **Integer** | Live indexed logs for this retention period.                                           | [optional] |
| **logs_rehydrated_indexed_logs_usage_sum** | **Integer** | Rehydrated indexed logs for this retention period.                                     | [optional] |
| **retention**                              | **String**  | The retention period in days or \&quot;custom\&quot; for all custom retention periods. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsRetentionSumUsage.new(
  logs_indexed_logs_usage_sum: null,
  logs_live_indexed_logs_usage_sum: null,
  logs_rehydrated_indexed_logs_usage_sum: null,
  retention: null
)
```
