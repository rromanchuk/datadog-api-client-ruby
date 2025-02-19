# DatadogAPIClient::V1::DowntimesAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                     | HTTP request                                   | Description                     |
| -------------------------------------------------------------------------- | ---------------------------------------------- | ------------------------------- |
| [**cancel_downtime**](DowntimesAPI.md#cancel_downtime)                     | **DELETE** /api/v1/downtime/{downtime_id}      | Cancel a downtime               |
| [**cancel_downtimes_by_scope**](DowntimesAPI.md#cancel_downtimes_by_scope) | **POST** /api/v1/downtime/cancel/by_scope      | Cancel downtimes by scope       |
| [**create_downtime**](DowntimesAPI.md#create_downtime)                     | **POST** /api/v1/downtime                      | Schedule a downtime             |
| [**get_downtime**](DowntimesAPI.md#get_downtime)                           | **GET** /api/v1/downtime/{downtime_id}         | Get a downtime                  |
| [**list_downtimes**](DowntimesAPI.md#list_downtimes)                       | **GET** /api/v1/downtime                       | Get all downtimes               |
| [**list_monitor_downtimes**](DowntimesAPI.md#list_monitor_downtimes)       | **GET** /api/v1/monitor/{monitor_id}/downtimes | Get all downtimes for a monitor |
| [**update_downtime**](DowntimesAPI.md#update_downtime)                     | **PUT** /api/v1/downtime/{downtime_id}         | Update a downtime               |

## cancel_downtime

> cancel_downtime(downtime_id)

Cancel a downtime.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
downtime_id = 123456 # Integer | ID of the downtime to cancel.

begin
  # Cancel a downtime
  api_instance.cancel_downtime(downtime_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->cancel_downtime: #{e}"
end
```

#### Using the cancel_downtime_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_downtime_with_http_info(downtime_id)

```ruby
begin
  # Cancel a downtime
  data, status_code, headers = api_instance.cancel_downtime_with_http_info(downtime_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->cancel_downtime_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type        | Description                   | Notes |
| --------------- | ----------- | ----------------------------- | ----- |
| **downtime_id** | **Integer** | ID of the downtime to cancel. |       |

### Return type

nil (empty response body)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## cancel_downtimes_by_scope

> <CanceledDowntimesIds> cancel_downtimes_by_scope(body)

Delete all downtimes that match the scope of `X`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
body = DatadogAPIClient::V1::CancelDowntimesByScopeRequest.new({scope: 'host:myserver'}) # CancelDowntimesByScopeRequest | Scope to cancel downtimes for.

begin
  # Cancel downtimes by scope
  result = api_instance.cancel_downtimes_by_scope(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->cancel_downtimes_by_scope: #{e}"
end
```

#### Using the cancel_downtimes_by_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CanceledDowntimesIds>, Integer, Hash)> cancel_downtimes_by_scope_with_http_info(body)

```ruby
begin
  # Cancel downtimes by scope
  data, status_code, headers = api_instance.cancel_downtimes_by_scope_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CanceledDowntimesIds>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->cancel_downtimes_by_scope_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                                  | Description                    | Notes |
| -------- | --------------------------------------------------------------------- | ------------------------------ | ----- |
| **body** | [**CancelDowntimesByScopeRequest**](CancelDowntimesByScopeRequest.md) | Scope to cancel downtimes for. |       |

### Return type

[**CanceledDowntimesIds**](CanceledDowntimesIds.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## create_downtime

> <Downtime> create_downtime(body)

Schedule a downtime.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
body = DatadogAPIClient::V1::Downtime.new # Downtime | Schedule a downtime request body.

begin
  # Schedule a downtime
  result = api_instance.create_downtime(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->create_downtime: #{e}"
end
```

#### Using the create_downtime_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Downtime>, Integer, Hash)> create_downtime_with_http_info(body)

```ruby
begin
  # Schedule a downtime
  data, status_code, headers = api_instance.create_downtime_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Downtime>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->create_downtime_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                        | Description                       | Notes |
| -------- | --------------------------- | --------------------------------- | ----- |
| **body** | [**Downtime**](Downtime.md) | Schedule a downtime request body. |       |

### Return type

[**Downtime**](Downtime.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## get_downtime

> <Downtime> get_downtime(downtime_id)

Get downtime detail by `downtime_id`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
downtime_id = 123456 # Integer | ID of the downtime to fetch.

begin
  # Get a downtime
  result = api_instance.get_downtime(downtime_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->get_downtime: #{e}"
end
```

#### Using the get_downtime_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Downtime>, Integer, Hash)> get_downtime_with_http_info(downtime_id)

```ruby
begin
  # Get a downtime
  data, status_code, headers = api_instance.get_downtime_with_http_info(downtime_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Downtime>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->get_downtime_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type        | Description                  | Notes |
| --------------- | ----------- | ---------------------------- | ----- |
| **downtime_id** | **Integer** | ID of the downtime to fetch. |       |

### Return type

[**Downtime**](Downtime.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_downtimes

> <Array<Downtime>> list_downtimes(opts)

Get all scheduled downtimes.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
opts = {
  current_only: true # Boolean | Only return downtimes that are active when the request is made.
}

begin
  # Get all downtimes
  result = api_instance.list_downtimes(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->list_downtimes: #{e}"
end
```

#### Using the list_downtimes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Downtime>>, Integer, Hash)> list_downtimes_with_http_info(opts)

```ruby
begin
  # Get all downtimes
  data, status_code, headers = api_instance.list_downtimes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Downtime>>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->list_downtimes_with_http_info: #{e}"
end
```

### Parameters

| Name             | Type        | Description                                                     | Notes      |
| ---------------- | ----------- | --------------------------------------------------------------- | ---------- |
| **current_only** | **Boolean** | Only return downtimes that are active when the request is made. | [optional] |

### Return type

[**Array&lt;Downtime&gt;**](Downtime.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_monitor_downtimes

> <Array<Downtime>> list_monitor_downtimes(monitor_id)

Get all active downtimes for the specified monitor.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
monitor_id = 789 # Integer | The id of the monitor

begin
  # Get all downtimes for a monitor
  result = api_instance.list_monitor_downtimes(monitor_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->list_monitor_downtimes: #{e}"
end
```

#### Using the list_monitor_downtimes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Downtime>>, Integer, Hash)> list_monitor_downtimes_with_http_info(monitor_id)

```ruby
begin
  # Get all downtimes for a monitor
  data, status_code, headers = api_instance.list_monitor_downtimes_with_http_info(monitor_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Downtime>>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->list_monitor_downtimes_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type        | Description           | Notes |
| -------------- | ----------- | --------------------- | ----- |
| **monitor_id** | **Integer** | The id of the monitor |       |

### Return type

[**Array&lt;Downtime&gt;**](Downtime.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## update_downtime

> <Downtime> update_downtime(downtime_id, body)

Update a single downtime by `downtime_id`.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
downtime_id = 123456 # Integer | ID of the downtime to update.
body = DatadogAPIClient::V1::Downtime.new # Downtime | Update a downtime request body.

begin
  # Update a downtime
  result = api_instance.update_downtime(downtime_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->update_downtime: #{e}"
end
```

#### Using the update_downtime_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Downtime>, Integer, Hash)> update_downtime_with_http_info(downtime_id, body)

```ruby
begin
  # Update a downtime
  data, status_code, headers = api_instance.update_downtime_with_http_info(downtime_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Downtime>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->update_downtime_with_http_info: #{e}"
end
```

### Parameters

| Name            | Type                        | Description                     | Notes |
| --------------- | --------------------------- | ------------------------------- | ----- |
| **downtime_id** | **Integer**                 | ID of the downtime to update.   |       |
| **body**        | [**Downtime**](Downtime.md) | Update a downtime request body. |       |

### Return type

[**Downtime**](Downtime.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
