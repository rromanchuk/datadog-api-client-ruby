# DatadogAPIClient::V1::SLOListResponse

## Properties

| Name         | Type                                                               | Description                                                                         | Notes      |
| ------------ | ------------------------------------------------------------------ | ----------------------------------------------------------------------------------- | ---------- |
| **data**     | [**Array&lt;ServiceLevelObjective&gt;**](ServiceLevelObjective.md) | An array of service level objective objects.                                        | [optional] |
| **errors**   | **Array&lt;String&gt;**                                            | An array of error messages. Each endpoint documents how/whether this field is used. | [optional] |
| **metadata** | [**SLOListResponseMetadata**](SLOListResponseMetadata.md)          |                                                                                     | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOListResponse.new(
  data: null,
  errors: null,
  metadata: null
)
```
