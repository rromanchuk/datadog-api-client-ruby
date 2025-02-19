# DatadogAPIClient::V1::PagerDutyIntegrationAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                                                        | HTTP request                                                                   | Description                    |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | ------------------------------ |
| [**create_pager_duty_integration_service**](PagerDutyIntegrationAPI.md#create_pager_duty_integration_service) | **POST** /api/v1/integration/pagerduty/configuration/services                  | Create a new service object    |
| [**delete_pager_duty_integration_service**](PagerDutyIntegrationAPI.md#delete_pager_duty_integration_service) | **DELETE** /api/v1/integration/pagerduty/configuration/services/{service_name} | Delete a single service object |
| [**get_pager_duty_integration_service**](PagerDutyIntegrationAPI.md#get_pager_duty_integration_service)       | **GET** /api/v1/integration/pagerduty/configuration/services/{service_name}    | Get a single service object    |
| [**update_pager_duty_integration_service**](PagerDutyIntegrationAPI.md#update_pager_duty_integration_service) | **PUT** /api/v1/integration/pagerduty/configuration/services/{service_name}    | Update a single service object |

## create_pager_duty_integration_service

> <PagerDutyServiceName> create_pager_duty_integration_service(body)

Create a new service object in the PagerDuty integration.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
body = DatadogAPIClient::V1::PagerDutyService.new({service_key: 'service_key_example', service_name: 'service_name_example'}) # PagerDutyService | Create a new service object request body.

begin
  # Create a new service object
  result = api_instance.create_pager_duty_integration_service(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->create_pager_duty_integration_service: #{e}"
end
```

#### Using the create_pager_duty_integration_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagerDutyServiceName>, Integer, Hash)> create_pager_duty_integration_service_with_http_info(body)

```ruby
begin
  # Create a new service object
  data, status_code, headers = api_instance.create_pager_duty_integration_service_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagerDutyServiceName>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->create_pager_duty_integration_service_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                        | Description                               | Notes |
| -------- | ------------------------------------------- | ----------------------------------------- | ----- |
| **body** | [**PagerDutyService**](PagerDutyService.md) | Create a new service object request body. |       |

### Return type

[**PagerDutyServiceName**](PagerDutyServiceName.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## delete_pager_duty_integration_service

> delete_pager_duty_integration_service(service_name)

Delete a single service object in the Datadog-PagerDuty integration.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
service_name = 'service_name_example' # String | The service name

begin
  # Delete a single service object
  api_instance.delete_pager_duty_integration_service(service_name)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->delete_pager_duty_integration_service: #{e}"
end
```

#### Using the delete_pager_duty_integration_service_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pager_duty_integration_service_with_http_info(service_name)

```ruby
begin
  # Delete a single service object
  data, status_code, headers = api_instance.delete_pager_duty_integration_service_with_http_info(service_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->delete_pager_duty_integration_service_with_http_info: #{e}"
end
```

### Parameters

| Name             | Type       | Description      | Notes |
| ---------------- | ---------- | ---------------- | ----- |
| **service_name** | **String** | The service name |       |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_pager_duty_integration_service

> <PagerDutyServiceName> get_pager_duty_integration_service(service_name)

Get service name in the Datadog-PagerDuty integration.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
service_name = 'service_name_example' # String | The service name.

begin
  # Get a single service object
  result = api_instance.get_pager_duty_integration_service(service_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->get_pager_duty_integration_service: #{e}"
end
```

#### Using the get_pager_duty_integration_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagerDutyServiceName>, Integer, Hash)> get_pager_duty_integration_service_with_http_info(service_name)

```ruby
begin
  # Get a single service object
  data, status_code, headers = api_instance.get_pager_duty_integration_service_with_http_info(service_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagerDutyServiceName>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->get_pager_duty_integration_service_with_http_info: #{e}"
end
```

### Parameters

| Name             | Type       | Description       | Notes |
| ---------------- | ---------- | ----------------- | ----- |
| **service_name** | **String** | The service name. |       |

### Return type

[**PagerDutyServiceName**](PagerDutyServiceName.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## update_pager_duty_integration_service

> update_pager_duty_integration_service(service_name, body)

Update a single service object in the Datadog-PagerDuty integration.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
service_name = 'service_name_example' # String | The service name
body = DatadogAPIClient::V1::PagerDutyServiceKey.new({service_key: 'service_key_example'}) # PagerDutyServiceKey | Update an existing service object request body.

begin
  # Update a single service object
  api_instance.update_pager_duty_integration_service(service_name, body)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->update_pager_duty_integration_service: #{e}"
end
```

#### Using the update_pager_duty_integration_service_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_pager_duty_integration_service_with_http_info(service_name, body)

```ruby
begin
  # Update a single service object
  data, status_code, headers = api_instance.update_pager_duty_integration_service_with_http_info(service_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->update_pager_duty_integration_service_with_http_info: #{e}"
end
```

### Parameters

| Name             | Type                                              | Description                                     | Notes |
| ---------------- | ------------------------------------------------- | ----------------------------------------------- | ----- |
| **service_name** | **String**                                        | The service name                                |       |
| **body**         | [**PagerDutyServiceKey**](PagerDutyServiceKey.md) | Update an existing service object request body. |       |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
