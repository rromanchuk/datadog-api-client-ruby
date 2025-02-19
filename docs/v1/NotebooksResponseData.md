# DatadogAPIClient::V1::NotebooksResponseData

## Properties

| Name           | Type                                                                      | Description                                                | Notes                            |
| -------------- | ------------------------------------------------------------------------- | ---------------------------------------------------------- | -------------------------------- |
| **attributes** | [**NotebooksResponseDataAttributes**](NotebooksResponseDataAttributes.md) |                                                            |                                  |
| **id**         | **Integer**                                                               | Unique notebook ID, assigned when you create the notebook. | [readonly]                       |
| **type**       | [**NotebookResourceType**](NotebookResourceType.md)                       |                                                            | [default to &#39;notebooks&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebooksResponseData.new(
  attributes: null,
  id: 123456,
  type: null
)
```
