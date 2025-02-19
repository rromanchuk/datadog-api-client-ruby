# DatadogAPIClient::V2::LogsArchivesAPI

All URIs are relative to *https://api.datadoghq.com*

| Method                                                                        | HTTP request                                                 | Description                    |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------ | ------------------------------ |
| [**add_read_role_to_archive**](LogsArchivesAPI.md#add_read_role_to_archive)   | **POST** /api/v2/logs/config/archives/{archive_id}/readers   | Grant role to an archive       |
| [**create_logs_archive**](LogsArchivesAPI.md#create_logs_archive)             | **POST** /api/v2/logs/config/archives                        | Create an archive              |
| [**delete_logs_archive**](LogsArchivesAPI.md#delete_logs_archive)             | **DELETE** /api/v2/logs/config/archives/{archive_id}         | Delete an archive              |
| [**get_logs_archive**](LogsArchivesAPI.md#get_logs_archive)                   | **GET** /api/v2/logs/config/archives/{archive_id}            | Get an archive                 |
| [**get_logs_archive_order**](LogsArchivesAPI.md#get_logs_archive_order)       | **GET** /api/v2/logs/config/archive-order                    | Get archive order              |
| [**list_archive_read_roles**](LogsArchivesAPI.md#list_archive_read_roles)     | **GET** /api/v2/logs/config/archives/{archive_id}/readers    | List read roles for an archive |
| [**list_logs_archives**](LogsArchivesAPI.md#list_logs_archives)               | **GET** /api/v2/logs/config/archives                         | Get all archives               |
| [**remove_role_from_archive**](LogsArchivesAPI.md#remove_role_from_archive)   | **DELETE** /api/v2/logs/config/archives/{archive_id}/readers | Revoke role from an archive    |
| [**update_logs_archive**](LogsArchivesAPI.md#update_logs_archive)             | **PUT** /api/v2/logs/config/archives/{archive_id}            | Update an archive              |
| [**update_logs_archive_order**](LogsArchivesAPI.md#update_logs_archive_order) | **PUT** /api/v2/logs/config/archive-order                    | Update archive order           |

## add_read_role_to_archive

> add_read_role_to_archive(archive_id, body)

Adds a read role to an archive. ([Roles API](https://docs.datadoghq.com/api/v2/roles/))

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = 'archive_id_example' # String | The ID of the archive.
body = DatadogAPIClient::V2::RelationshipToRole.new # RelationshipToRole |

begin
  # Grant role to an archive
  api_instance.add_read_role_to_archive(archive_id, body)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->add_read_role_to_archive: #{e}"
end
```

#### Using the add_read_role_to_archive_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_read_role_to_archive_with_http_info(archive_id, body)

```ruby
begin
  # Grant role to an archive
  data, status_code, headers = api_instance.add_read_role_to_archive_with_http_info(archive_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->add_read_role_to_archive_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type                                            | Description            | Notes |
| -------------- | ----------------------------------------------- | ---------------------- | ----- |
| **archive_id** | **String**                                      | The ID of the archive. |       |
| **body**       | [**RelationshipToRole**](RelationshipToRole.md) |                        |       |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## create_logs_archive

> <LogsArchive> create_logs_archive(body)

Create an archive in your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
body = DatadogAPIClient::V2::LogsArchiveCreateRequest.new # LogsArchiveCreateRequest | The definition of the new archive.

begin
  # Create an archive
  result = api_instance.create_logs_archive(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->create_logs_archive: #{e}"
end
```

#### Using the create_logs_archive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsArchive>, Integer, Hash)> create_logs_archive_with_http_info(body)

```ruby
begin
  # Create an archive
  data, status_code, headers = api_instance.create_logs_archive_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsArchive>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->create_logs_archive_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                                        | Description                        | Notes |
| -------- | ----------------------------------------------------------- | ---------------------------------- | ----- |
| **body** | [**LogsArchiveCreateRequest**](LogsArchiveCreateRequest.md) | The definition of the new archive. |       |

### Return type

[**LogsArchive**](LogsArchive.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## delete_logs_archive

> delete_logs_archive(archive_id)

Delete a given archive from your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = 'archive_id_example' # String | The ID of the archive.

begin
  # Delete an archive
  api_instance.delete_logs_archive(archive_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->delete_logs_archive: #{e}"
end
```

#### Using the delete_logs_archive_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_logs_archive_with_http_info(archive_id)

```ruby
begin
  # Delete an archive
  data, status_code, headers = api_instance.delete_logs_archive_with_http_info(archive_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->delete_logs_archive_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type       | Description            | Notes |
| -------------- | ---------- | ---------------------- | ----- |
| **archive_id** | **String** | The ID of the archive. |       |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_logs_archive

> <LogsArchive> get_logs_archive(archive_id)

Get a specific archive from your organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = 'archive_id_example' # String | The ID of the archive.

begin
  # Get an archive
  result = api_instance.get_logs_archive(archive_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->get_logs_archive: #{e}"
end
```

#### Using the get_logs_archive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsArchive>, Integer, Hash)> get_logs_archive_with_http_info(archive_id)

```ruby
begin
  # Get an archive
  data, status_code, headers = api_instance.get_logs_archive_with_http_info(archive_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsArchive>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->get_logs_archive_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type       | Description            | Notes |
| -------------- | ---------- | ---------------------- | ----- |
| **archive_id** | **String** | The ID of the archive. |       |

### Return type

[**LogsArchive**](LogsArchive.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## get_logs_archive_order

> <LogsArchiveOrder> get_logs_archive_order

Get the current order of your archives.
This endpoint takes no JSON arguments.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new

begin
  # Get archive order
  result = api_instance.get_logs_archive_order
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->get_logs_archive_order: #{e}"
end
```

#### Using the get_logs_archive_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsArchiveOrder>, Integer, Hash)> get_logs_archive_order_with_http_info

```ruby
begin
  # Get archive order
  data, status_code, headers = api_instance.get_logs_archive_order_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsArchiveOrder>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->get_logs_archive_order_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsArchiveOrder**](LogsArchiveOrder.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_archive_read_roles

> <RolesResponse> list_archive_read_roles(archive_id)

Returns all read roles a given archive is restricted to.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = 'archive_id_example' # String | The ID of the archive.

begin
  # List read roles for an archive
  result = api_instance.list_archive_read_roles(archive_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->list_archive_read_roles: #{e}"
end
```

#### Using the list_archive_read_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RolesResponse>, Integer, Hash)> list_archive_read_roles_with_http_info(archive_id)

```ruby
begin
  # List read roles for an archive
  data, status_code, headers = api_instance.list_archive_read_roles_with_http_info(archive_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RolesResponse>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->list_archive_read_roles_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type       | Description            | Notes |
| -------------- | ---------- | ---------------------- | ----- |
| **archive_id** | **String** | The ID of the archive. |       |

### Return type

[**RolesResponse**](RolesResponse.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## list_logs_archives

> <LogsArchives> list_logs_archives

Get the list of configured logs archives with their definitions.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new

begin
  # Get all archives
  result = api_instance.list_logs_archives
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->list_logs_archives: #{e}"
end
```

#### Using the list_logs_archives_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsArchives>, Integer, Hash)> list_logs_archives_with_http_info

```ruby
begin
  # Get all archives
  data, status_code, headers = api_instance.list_logs_archives_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsArchives>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->list_logs_archives_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LogsArchives**](LogsArchives.md)

### Authorization

[AuthZ](README.md#AuthZ), [apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

## remove_role_from_archive

> remove_role_from_archive(archive_id, body)

Removes a role from an archive. ([Roles API](https://docs.datadoghq.com/api/v2/roles/))

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = 'archive_id_example' # String | The ID of the archive.
body = DatadogAPIClient::V2::RelationshipToRole.new # RelationshipToRole |

begin
  # Revoke role from an archive
  api_instance.remove_role_from_archive(archive_id, body)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->remove_role_from_archive: #{e}"
end
```

#### Using the remove_role_from_archive_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_role_from_archive_with_http_info(archive_id, body)

```ruby
begin
  # Revoke role from an archive
  data, status_code, headers = api_instance.remove_role_from_archive_with_http_info(archive_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->remove_role_from_archive_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type                                            | Description            | Notes |
| -------------- | ----------------------------------------------- | ---------------------- | ----- |
| **archive_id** | **String**                                      | The ID of the archive. |       |
| **body**       | [**RelationshipToRole**](RelationshipToRole.md) |                        |       |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## update_logs_archive

> <LogsArchive> update_logs_archive(archive_id, body)

Update a given archive configuration.

**Note**: Using this method updates your archive configuration by **replacing**
your current configuration with the new one sent to your Datadog organization.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
archive_id = 'archive_id_example' # String | The ID of the archive.
body = DatadogAPIClient::V2::LogsArchiveCreateRequest.new # LogsArchiveCreateRequest | New definition of the archive.

begin
  # Update an archive
  result = api_instance.update_logs_archive(archive_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->update_logs_archive: #{e}"
end
```

#### Using the update_logs_archive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsArchive>, Integer, Hash)> update_logs_archive_with_http_info(archive_id, body)

```ruby
begin
  # Update an archive
  data, status_code, headers = api_instance.update_logs_archive_with_http_info(archive_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsArchive>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->update_logs_archive_with_http_info: #{e}"
end
```

### Parameters

| Name           | Type                                                        | Description                    | Notes |
| -------------- | ----------------------------------------------------------- | ------------------------------ | ----- |
| **archive_id** | **String**                                                  | The ID of the archive.         |       |
| **body**       | [**LogsArchiveCreateRequest**](LogsArchiveCreateRequest.md) | New definition of the archive. |       |

### Return type

[**LogsArchive**](LogsArchive.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

## update_logs_archive_order

> <LogsArchiveOrder> update_logs_archive_order(body)

Update the order of your archives. Since logs are processed sequentially, reordering an archive may change
the structure and content of the data processed by other archives.

**Note**: Using the `PUT` method updates your archive's order by replacing the current order
with the new one.

### Examples

```ruby
require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
body = DatadogAPIClient::V2::LogsArchiveOrder.new # LogsArchiveOrder | An object containing the new ordered list of archive IDs.

begin
  # Update archive order
  result = api_instance.update_logs_archive_order(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->update_logs_archive_order: #{e}"
end
```

#### Using the update_logs_archive_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsArchiveOrder>, Integer, Hash)> update_logs_archive_order_with_http_info(body)

```ruby
begin
  # Update archive order
  data, status_code, headers = api_instance.update_logs_archive_order_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsArchiveOrder>
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsArchivesAPI->update_logs_archive_order_with_http_info: #{e}"
end
```

### Parameters

| Name     | Type                                        | Description                                               | Notes |
| -------- | ------------------------------------------- | --------------------------------------------------------- | ----- |
| **body** | [**LogsArchiveOrder**](LogsArchiveOrder.md) | An object containing the new ordered list of archive IDs. |       |

### Return type

[**LogsArchiveOrder**](LogsArchiveOrder.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
