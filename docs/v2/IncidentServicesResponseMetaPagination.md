# DatadogAPIClient::V2::IncidentServicesResponseMetaPagination

## Properties

| Name            | Type        | Description                                                                                                 | Notes      |
| --------------- | ----------- | ----------------------------------------------------------------------------------------------------------- | ---------- |
| **next_offset** | **Integer** | The index of the first element in the next page of results. Equal to page size added to the current offset. | [optional] |
| **offset**      | **Integer** | The index of the first element in the results.                                                              | [optional] |
| **size**        | **Integer** | Maximum size of pages to return.                                                                            | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentServicesResponseMetaPagination.new(
  next_offset: 1000,
  offset: 10,
  size: 1000
)
```
