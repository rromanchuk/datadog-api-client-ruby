# DatadogAPIClient::V2::RelationshipToRoleData

## Properties

| Name     | Type                          | Description     | Notes                                  |
| -------- | ----------------------------- | --------------- | -------------------------------------- |
| **id**   | **String**                    | ID of the role. | [optional]                             |
| **type** | [**RolesType**](RolesType.md) |                 | [optional][default to &#39;roles&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RelationshipToRoleData.new(
  id: 3653d3c6-0c75-11ea-ad28-fb5701eabc7d,
  type: null
)
```
