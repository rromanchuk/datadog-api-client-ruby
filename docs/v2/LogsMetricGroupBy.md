# DatadogAPIClient::V2::LogsMetricGroupBy

## Properties

| Name         | Type       | Description                                                                                         | Notes      |
| ------------ | ---------- | --------------------------------------------------------------------------------------------------- | ---------- |
| **path**     | **String** | The path to the value the log-based metric will be aggregated over.                                 |            |
| **tag_name** | **String** | Eventual name of the tag that gets created. By default, the path attribute is used as the tag name. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricGroupBy.new(
  path: @http.status_code,
  tag_name: status_code
)
```
