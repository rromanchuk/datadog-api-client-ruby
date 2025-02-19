# DatadogAPIClient::V1::Monitor

## Properties

| Name                 | Type                                                | Description                                                                                                      | Notes                |
| -------------------- | --------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | -------------------- |
| **created**          | **Time**                                            | Timestamp of the monitor creation.                                                                               | [optional][readonly] |
| **creator**          | [**Creator**](Creator.md)                           |                                                                                                                  | [optional]           |
| **deleted**          | **Time**                                            | Whether or not the monitor is deleted. (Always &#x60;null&#x60;)                                                 | [optional][readonly] |
| **id**               | **Integer**                                         | ID of this monitor.                                                                                              | [optional][readonly] |
| **message**          | **String**                                          | A message to include with notifications for this monitor.                                                        | [optional]           |
| **modified**         | **Time**                                            | Last timestamp when the monitor was edited.                                                                      | [optional][readonly] |
| **multi**            | **Boolean**                                         | Whether or not the monitor is broken down on different groups.                                                   | [optional][readonly] |
| **name**             | **String**                                          | The monitor name.                                                                                                | [optional]           |
| **options**          | [**MonitorOptions**](MonitorOptions.md)             |                                                                                                                  | [optional]           |
| **overall_state**    | [**MonitorOverallStates**](MonitorOverallStates.md) |                                                                                                                  | [optional]           |
| **priority**         | **Integer**                                         | Integer from 1 (high) to 5 (low) indicating alert severity.                                                      | [optional]           |
| **query**            | **String**                                          | The monitor query.                                                                                               |                      |
| **restricted_roles** | **Array&lt;String&gt;**                             | A list of role identifiers that can be pulled from the Roles API. Cannot be used with &#x60;locked&#x60; option. | [optional]           |
| **state**            | [**MonitorState**](MonitorState.md)                 |                                                                                                                  | [optional]           |
| **tags**             | **Array&lt;String&gt;**                             | Tags associated to your monitor.                                                                                 | [optional]           |
| **type**             | [**MonitorType**](MonitorType.md)                   |                                                                                                                  |                      |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::Monitor.new(
  created: null,
  creator: null,
  deleted: null,
  id: null,
  message: null,
  modified: null,
  multi: null,
  name: My monitor,
  options: null,
  overall_state: null,
  priority: null,
  query: avg(last_5m):sum:system.net.bytes_rcvd{host:host0} &gt; 100,
  restricted_roles: null,
  state: null,
  tags: null,
  type: null
)
```
