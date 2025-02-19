# DatadogAPIClient::V1::EventsAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                        | HTTP request                      | Description            |
| --------------------------------------------- | --------------------------------- | ---------------------- |
| [**create_event**](EventsAPI.md#create_event) | **POST** /api/v1/events           | Post an event          |
| [**get_event**](EventsAPI.md#get_event)       | **GET** /api/v1/events/{event_id} | Get an event           |
| [**list_events**](EventsAPI.md#list_events)   | **GET** /api/v1/events            | Query the event stream |

## create_event

> <EventCreateResponse> create_event(body)

This endpoint allows you to post events to the stream.
Tag them, set priority and event aggregate them with other events.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::EventsAPI.new
body = DatadogAPIClient::V1::EventCreateRequest.new({text: 'Oh boy!', title: 'Did you hear the news today?'}) # EventCreateRequest | Event request object

begin
  # Post an event
  result = api_instance.create_event(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling EventsAPI->create_event: #{e}"
end
```

#### Using the create_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventCreateResponse>, Integer, Hash)> create_event_with_http_info(body)

```ruby
begin
  # Post an event
  data, status_code, headers = api_instance.create_event_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventCreateResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling EventsAPI->create_event_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                            | Description          | Notes |
| -------- | ----------------------------------------------- | -------------------- | ----- |
| **body** | [**EventCreateRequest**](EventCreateRequest.md) | Event request object |       |

### Return type

[**EventCreateResponse**](EventCreateResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## get_event

> <EventResponse> get_event(event_id)

This endpoint allows you to query for event details.

**Note**: If the event you’re querying contains markdown formatting of any kind,
you may see characters such as `%`,`\`,`n` in your output.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::EventsAPI.new
event_id = 789 # Integer | The ID of the event.

begin
  # Get an event
  result = api_instance.get_event(event_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling EventsAPI->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> get_event_with_http_info(event_id)

```ruby
begin
  # Get an event
  data, status_code, headers = api_instance.get_event_with_http_info(event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling EventsAPI->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name         | Type        | Description          | Notes |
| ------------ | ----------- | -------------------- | ----- |
| **event_id** | **Integer** | The ID of the event. |       |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_events

> <EventListResponse> list_events(start, \_end, opts)

The event stream can be queried and filtered by time, priority, sources and tags.

**Notes**:

- If the event you’re querying contains markdown formatting of any kind,
  you may see characters such as `%`,`\`,`n` in your output.

- This endpoint returns a maximum of `1000` most recent results. To return additional results,
  identify the last timestamp of the last result and set that as the `end` query time to
  paginate the results. You can also use the page parameter to specify which set of `1000` results to return.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::EventsAPI.new
start = 789 # Integer | POSIX timestamp.
_end = 789 # Integer | POSIX timestamp.
opts = {
  priority: DatadogAPIClient::V1::EventPriority::NORMAL, # EventPriority | Priority of your events, either `low` or `normal`.
  sources: 'sources_example', # String | A comma separated string of sources.
  tags: 'host:host0', # String | A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope.
  unaggregated: true, # Boolean | Set unaggregated to `true` to return all events within the specified [`start`,`end`] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won't be available in the output. Aggregated events with `is_aggregate=true` in the response will still be returned unless exclude_aggregate is set to `true.`
  exclude_aggregate: true, # Boolean | Set `exclude_aggregate` to `true` to only return unaggregated events where `is_aggregate=false` in the response. If the `exclude_aggregate` parameter is set to `true`, then the unaggregated parameter is ignored and will be `true` by default.
  page: 56 # Integer | By default 1000 results are returned per request. Set page to the number of the page to return with `0` being the first page. The page parameter can only be used when either unaggregated or exclude_aggregate is set to `true.`
}

begin
  # Query the event stream
  result = api_instance.list_events(start, _end, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling EventsAPI->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventListResponse>, Integer, Hash)> list_events_with_http_info(start, \_end, opts)

```ruby
begin
  # Query the event stream
  data, status_code, headers = api_instance.list_events_with_http_info(start, _end, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventListResponse>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling EventsAPI->list_events_with_http_info: #{e}"
end
```

### Parameters

| Name                  | Type              | Description                                                                                                                                                                                                                                                                                                                                                                                                                   | Notes      |
| --------------------- | ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **start**             | **Integer**       | POSIX timestamp.                                                                                                                                                                                                                                                                                                                                                                                                              |            |
| **\_end**             | **Integer**       | POSIX timestamp.                                                                                                                                                                                                                                                                                                                                                                                                              |            |
| **priority**          | **EventPriority** | Priority of your events, either &#x60;low&#x60; or &#x60;normal&#x60;.                                                                                                                                                                                                                                                                                                                                                        | [optional] |
| **sources**           | **String**        | A comma separated string of sources.                                                                                                                                                                                                                                                                                                                                                                                          | [optional] |
| **tags**              | **String**        | A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope.                                                                                                                                                                                                                                                                                                                  | [optional] |
| **unaggregated**      | **Boolean**       | Set unaggregated to &#x60;true&#x60; to return all events within the specified [&#x60;start&#x60;,&#x60;end&#x60;] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won&#39;t be available in the output. Aggregated events with &#x60;is_aggregate&#x3D;true&#x60; in the response will still be returned unless exclude_aggregate is set to &#x60;true.&#x60; | [optional] |
| **exclude_aggregate** | **Boolean**       | Set &#x60;exclude_aggregate&#x60; to &#x60;true&#x60; to only return unaggregated events where &#x60;is_aggregate&#x3D;false&#x60; in the response. If the &#x60;exclude_aggregate&#x60; parameter is set to &#x60;true&#x60;, then the unaggregated parameter is ignored and will be &#x60;true&#x60; by default.                                                                                                            | [optional] |
| **page**              | **Integer**       | By default 1000 results are returned per request. Set page to the number of the page to return with &#x60;0&#x60; being the first page. The page parameter can only be used when either unaggregated or exclude_aggregate is set to &#x60;true.&#x60;                                                                                                                                                                         | [optional] |

### Return type

[**EventListResponse**](EventListResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
