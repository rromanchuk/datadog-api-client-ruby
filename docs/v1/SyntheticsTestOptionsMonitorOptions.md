# DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions

## Properties

| Name                  | Type        | Description                                                                 | Notes      |
| --------------------- | ----------- | --------------------------------------------------------------------------- | ---------- |
| **renotify_interval** | **Integer** | Time interval before renotifying if the test is still failing (in minutes). | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions.new(
  renotify_interval: null
)
```
