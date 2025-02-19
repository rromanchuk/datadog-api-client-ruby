# DatadogAPIClient::V1::Series

## Properties

| Name         | Type                    | Description                                                                                                                                                                                                                                        | Notes                                  |
| ------------ | ----------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------- |
| **host**     | **String**              | The name of the host that produced the metric.                                                                                                                                                                                                     | [optional]                             |
| **interval** | **Integer**             | If the type of the metric is rate or count, define the corresponding interval.                                                                                                                                                                     | [optional]                             |
| **metric**   | **String**              | The name of the timeseries.                                                                                                                                                                                                                        |                                        |
| **points**   | **Array&lt;Array&gt;**  | Points relating to a metric. All points must be tuples with timestamp and a scalar value (cannot be a string). Timestamps should be in POSIX time in seconds, and cannot be more than ten minutes in the future or more than one hour in the past. |                                        |
| **tags**     | **Array&lt;String&gt;** | A list of tags associated with the metric.                                                                                                                                                                                                         | [optional]                             |
| **type**     | **String**              | The type of the metric either &#x60;count&#x60;, &#x60;gauge&#x60;, or &#x60;rate&#x60;.                                                                                                                                                           | [optional][default to &#39;gauge&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::Series.new(
  host: test.example.com,
  interval: 20,
  metric: system.load.1,
  points: null,
  tags: [&quot;environment:test&quot;],
  type: rate
)
```
