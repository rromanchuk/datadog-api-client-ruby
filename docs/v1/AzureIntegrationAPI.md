# DatadogAPIClient::V1::AzureIntegrationAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                            | HTTP request                                    | Description                           |
| --------------------------------------------------------------------------------- | ----------------------------------------------- | ------------------------------------- |
| [**create_azure_integration**](AzureIntegrationAPI.md#create_azure_integration)   | **POST** /api/v1/integration/azure              | Create an Azure integration           |
| [**delete_azure_integration**](AzureIntegrationAPI.md#delete_azure_integration)   | **DELETE** /api/v1/integration/azure            | Delete an Azure integration           |
| [**list_azure_integration**](AzureIntegrationAPI.md#list_azure_integration)       | **GET** /api/v1/integration/azure               | List all Azure integrations           |
| [**update_azure_host_filters**](AzureIntegrationAPI.md#update_azure_host_filters) | **POST** /api/v1/integration/azure/host_filters | Update Azure integration host filters |
| [**update_azure_integration**](AzureIntegrationAPI.md#update_azure_integration)   | **PUT** /api/v1/integration/azure               | Update an Azure integration           |

## create_azure_integration

> Object create_azure_integration(body)

Create a Datadog-Azure integration.

Using the `POST` method updates your integration configuration by adding your new
configuration to the existing one in your Datadog organization.

Using the `PUT` method updates your integration configuration by replacing your
current configuration with the new one sent to your Datadog organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Create a Datadog-Azure integration for your Datadog account request body.

begin
  # Create an Azure integration
  result = api_instance.create_azure_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->create_azure_integration: #{e}"
end
```

#### Using the create_azure_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_azure_integration_with_http_info(body)

```ruby
begin
  # Create an Azure integration
  data, status_code, headers = api_instance.create_azure_integration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->create_azure_integration_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                | Description                                                               | Notes |
| -------- | ----------------------------------- | ------------------------------------------------------------------------- | ----- |
| **body** | [**AzureAccount**](AzureAccount.md) | Create a Datadog-Azure integration for your Datadog account request body. |       |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## delete_azure_integration

> Object delete_azure_integration(body)

Delete a given Datadog-Azure integration from your Datadog account.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Delete a given Datadog-Azure integration request body.

begin
  # Delete an Azure integration
  result = api_instance.delete_azure_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->delete_azure_integration: #{e}"
end
```

#### Using the delete_azure_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_azure_integration_with_http_info(body)

```ruby
begin
  # Delete an Azure integration
  data, status_code, headers = api_instance.delete_azure_integration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->delete_azure_integration_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                | Description                                            | Notes |
| -------- | ----------------------------------- | ------------------------------------------------------ | ----- |
| **body** | [**AzureAccount**](AzureAccount.md) | Delete a given Datadog-Azure integration request body. |       |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## list_azure_integration

> <Array<AzureAccount>> list_azure_integration

List all Datadog-Azure integrations configured in your Datadog account.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new

begin
  # List all Azure integrations
  result = api_instance.list_azure_integration
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->list_azure_integration: #{e}"
end
```

#### Using the list_azure_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AzureAccount>>, Integer, Hash)> list_azure_integration_with_http_info

```ruby
begin
  # List all Azure integrations
  data, status_code, headers = api_instance.list_azure_integration_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AzureAccount>>
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->list_azure_integration_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AzureAccount&gt;**](AzureAccount.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## update_azure_host_filters

> Object update_azure_host_filters(body)

Update the defined list of host filters for a given Datadog-Azure integration.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Update a Datadog-Azure integration's host filters request body.

begin
  # Update Azure integration host filters
  result = api_instance.update_azure_host_filters(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->update_azure_host_filters: #{e}"
end
```

#### Using the update_azure_host_filters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_azure_host_filters_with_http_info(body)

```ruby
begin
  # Update Azure integration host filters
  data, status_code, headers = api_instance.update_azure_host_filters_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->update_azure_host_filters_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                | Description                                                         | Notes |
| -------- | ----------------------------------- | ------------------------------------------------------------------- | ----- |
| **body** | [**AzureAccount**](AzureAccount.md) | Update a Datadog-Azure integration&#39;s host filters request body. |       |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## update_azure_integration

> Object update_azure_integration(body)

Update a Datadog-Azure integration. Requires an existing `tenant_name` and `client_id`.
Any other fields supplied will overwrite existing values. To overwrite `tenant_name` or `client_id`,
use `new_tenant_name` and `new_client_id`. To leave a field unchanged, do not supply that field in the payload.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Update a Datadog-Azure integration request body.

begin
  # Update an Azure integration
  result = api_instance.update_azure_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->update_azure_integration: #{e}"
end
```

#### Using the update_azure_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_azure_integration_with_http_info(body)

```ruby
begin
  # Update an Azure integration
  data, status_code, headers = api_instance.update_azure_integration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->update_azure_integration_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                | Description                                      | Notes |
| -------- | ----------------------------------- | ------------------------------------------------ | ----- |
| **body** | [**AzureAccount**](AzureAccount.md) | Update a Datadog-Azure integration request body. |       |

### Return type

**Object**

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
