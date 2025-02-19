# DatadogAPIClient::V1::EventCreateResponse

## Properties

| Name                 | Type                                    | Description                                                                                                                                                                                                                                                               | Notes                |
| -------------------- | --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------- |
| **alert_type**       | [**EventAlertType**](EventAlertType.md) |                                                                                                                                                                                                                                                                           | [optional]           |
| **date_happened**    | **Integer**                             | POSIX timestamp of the event. Must be sent as an integer (that is no quotes). Limited to events no older than 7 days.                                                                                                                                                     | [optional]           |
| **device_name**      | **String**                              | A device name.                                                                                                                                                                                                                                                            | [optional]           |
| **host**             | **String**                              | Host name to associate with the event. Any tags associated with the host are also applied to this event.                                                                                                                                                                  | [optional]           |
| **id**               | **Integer**                             | Integer ID of the event.                                                                                                                                                                                                                                                  | [optional][readonly] |
| **payload**          | **String**                              | Payload of the event.                                                                                                                                                                                                                                                     | [optional][readonly] |
| **priority**         | [**EventPriority**](EventPriority.md)   |                                                                                                                                                                                                                                                                           | [optional]           |
| **related_event_id** | **Integer**                             | ID of the parent event. Must be sent as an integer (that is no quotes).                                                                                                                                                                                                   | [optional]           |
| **source_type_name** | **String**                              | The type of event being posted. Option examples include nagios, hudson, jenkins, my_apps, chef, puppet, git, bitbucket, etc. A complete list of source attribute values [available here](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value). | [optional]           |
| **status**           | **String**                              | A status.                                                                                                                                                                                                                                                                 | [optional]           |
| **tags**             | **Array&lt;String&gt;**                 | A list of tags to apply to the event.                                                                                                                                                                                                                                     | [optional]           |
| **text**             | **String**                              | The body of the event. Limited to 4000 characters. The text supports markdown. Use &#x60;msg_text&#x60; with the Datadog Ruby library.                                                                                                                                    | [optional]           |
| **title**            | **String**                              | The event title. Limited to 100 characters. Use &#x60;msg_title&#x60; with the Datadog Ruby library.                                                                                                                                                                      | [optional]           |
| **url**              | **String**                              | URL of the event.                                                                                                                                                                                                                                                         | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::EventCreateResponse.new(
  alert_type: null,
  date_happened: null,
  device_name: null,
  host: null,
  id: null,
  payload: {},
  priority: null,
  related_event_id: null,
  source_type_name: null,
  status: null,
  tags: [&quot;environment:test&quot;],
  text: Oh boy!,
  title: Did you hear the news today?,
  url: null
)
```
