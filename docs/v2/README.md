# datadog_api_client/v2

DatadogAPIClient::V2 - the Ruby gem for the Datadog API V2 Collection

Collection of all Datadog Public endpoints.

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'datadog_api_client/v2'

api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateRequest.new({data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateData.new({attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes.new({expression: 'exec.file.name == \"sh\"', name: 'my_agent_rule'}), type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE})}) # CloudWorkloadSecurityAgentRuleCreateRequest | The definition of the new Agent rule.

begin
  #Create a Cloud Workload Security Agent rule
  result = api_instance.create_cloud_workload_security_agent_rule(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Exception when calling CloudWorkloadSecurityAPI->create_cloud_workload_security_agent_rule: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.datadoghq.com*

| Class                                            | Method                                                                                                                 | HTTP request                                                                               | Description                                        |
| ------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ | -------------------------------------------------- |
| _DatadogAPIClient::V2::CloudWorkloadSecurityAPI_ | [**create_cloud_workload_security_agent_rule**](CloudWorkloadSecurityAPI.md#create_cloud_workload_security_agent_rule) | **POST** /api/v2/security_monitoring/cloud_workload_security/agent_rules                   | Create a Cloud Workload Security Agent rule        |
| _DatadogAPIClient::V2::CloudWorkloadSecurityAPI_ | [**delete_cloud_workload_security_agent_rule**](CloudWorkloadSecurityAPI.md#delete_cloud_workload_security_agent_rule) | **DELETE** /api/v2/security_monitoring/cloud_workload_security/agent_rules/{agent_rule_id} | Delete a Cloud Workload Security Agent rule        |
| _DatadogAPIClient::V2::CloudWorkloadSecurityAPI_ | [**download_cloud_workload_policy_file**](CloudWorkloadSecurityAPI.md#download_cloud_workload_policy_file)             | **GET** /api/v2/security/cloud_workload/policy/download                                    | Get the latest Cloud Workload Security policy      |
| _DatadogAPIClient::V2::CloudWorkloadSecurityAPI_ | [**get_cloud_workload_security_agent_rule**](CloudWorkloadSecurityAPI.md#get_cloud_workload_security_agent_rule)       | **GET** /api/v2/security_monitoring/cloud_workload_security/agent_rules/{agent_rule_id}    | Get a Cloud Workload Security Agent rule           |
| _DatadogAPIClient::V2::CloudWorkloadSecurityAPI_ | [**list_cloud_workload_security_agent_rules**](CloudWorkloadSecurityAPI.md#list_cloud_workload_security_agent_rules)   | **GET** /api/v2/security_monitoring/cloud_workload_security/agent_rules                    | Get all Cloud Workload Security Agent rules        |
| _DatadogAPIClient::V2::CloudWorkloadSecurityAPI_ | [**update_cloud_workload_security_agent_rule**](CloudWorkloadSecurityAPI.md#update_cloud_workload_security_agent_rule) | **PATCH** /api/v2/security_monitoring/cloud_workload_security/agent_rules/{agent_rule_id}  | Update a Cloud Workload Security Agent rule        |
| _DatadogAPIClient::V2::DashboardListsAPI_        | [**create_dashboard_list_items**](DashboardListsAPI.md#create_dashboard_list_items)                                    | **POST** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards                     | Add Items to a Dashboard List                      |
| _DatadogAPIClient::V2::DashboardListsAPI_        | [**delete_dashboard_list_items**](DashboardListsAPI.md#delete_dashboard_list_items)                                    | **DELETE** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards                   | Delete items from a dashboard list                 |
| _DatadogAPIClient::V2::DashboardListsAPI_        | [**get_dashboard_list_items**](DashboardListsAPI.md#get_dashboard_list_items)                                          | **GET** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards                      | Get items of a Dashboard List                      |
| _DatadogAPIClient::V2::DashboardListsAPI_        | [**update_dashboard_list_items**](DashboardListsAPI.md#update_dashboard_list_items)                                    | **PUT** /api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards                      | Update items of a dashboard list                   |
| _DatadogAPIClient::V2::IncidentServicesAPI_      | [**create_incident_service**](IncidentServicesAPI.md#create_incident_service)                                          | **POST** /api/v2/services                                                                  | Create a new incident service                      |
| _DatadogAPIClient::V2::IncidentServicesAPI_      | [**delete_incident_service**](IncidentServicesAPI.md#delete_incident_service)                                          | **DELETE** /api/v2/services/{service_id}                                                   | Delete an existing incident service                |
| _DatadogAPIClient::V2::IncidentServicesAPI_      | [**get_incident_service**](IncidentServicesAPI.md#get_incident_service)                                                | **GET** /api/v2/services/{service_id}                                                      | Get details of an incident service                 |
| _DatadogAPIClient::V2::IncidentServicesAPI_      | [**list_incident_services**](IncidentServicesAPI.md#list_incident_services)                                            | **GET** /api/v2/services                                                                   | Get a list of all incident services                |
| _DatadogAPIClient::V2::IncidentServicesAPI_      | [**update_incident_service**](IncidentServicesAPI.md#update_incident_service)                                          | **PATCH** /api/v2/services/{service_id}                                                    | Update an existing incident service                |
| _DatadogAPIClient::V2::IncidentTeamsAPI_         | [**create_incident_team**](IncidentTeamsAPI.md#create_incident_team)                                                   | **POST** /api/v2/teams                                                                     | Create a new incident team                         |
| _DatadogAPIClient::V2::IncidentTeamsAPI_         | [**delete_incident_team**](IncidentTeamsAPI.md#delete_incident_team)                                                   | **DELETE** /api/v2/teams/{team_id}                                                         | Delete an existing incident team                   |
| _DatadogAPIClient::V2::IncidentTeamsAPI_         | [**get_incident_team**](IncidentTeamsAPI.md#get_incident_team)                                                         | **GET** /api/v2/teams/{team_id}                                                            | Get details of an incident team                    |
| _DatadogAPIClient::V2::IncidentTeamsAPI_         | [**list_incident_teams**](IncidentTeamsAPI.md#list_incident_teams)                                                     | **GET** /api/v2/teams                                                                      | Get a list of all incident teams                   |
| _DatadogAPIClient::V2::IncidentTeamsAPI_         | [**update_incident_team**](IncidentTeamsAPI.md#update_incident_team)                                                   | **PATCH** /api/v2/teams/{team_id}                                                          | Update an existing incident team                   |
| _DatadogAPIClient::V2::IncidentsAPI_             | [**create_incident**](IncidentsAPI.md#create_incident)                                                                 | **POST** /api/v2/incidents                                                                 | Create an incident                                 |
| _DatadogAPIClient::V2::IncidentsAPI_             | [**delete_incident**](IncidentsAPI.md#delete_incident)                                                                 | **DELETE** /api/v2/incidents/{incident_id}                                                 | Delete an existing incident                        |
| _DatadogAPIClient::V2::IncidentsAPI_             | [**get_incident**](IncidentsAPI.md#get_incident)                                                                       | **GET** /api/v2/incidents/{incident_id}                                                    | Get the details of an incident                     |
| _DatadogAPIClient::V2::IncidentsAPI_             | [**list_incidents**](IncidentsAPI.md#list_incidents)                                                                   | **GET** /api/v2/incidents                                                                  | Get a list of incidents                            |
| _DatadogAPIClient::V2::IncidentsAPI_             | [**update_incident**](IncidentsAPI.md#update_incident)                                                                 | **PATCH** /api/v2/incidents/{incident_id}                                                  | Update an existing incident                        |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**create_api_key**](KeyManagementAPI.md#create_api_key)                                                               | **POST** /api/v2/api_keys                                                                  | Create an API key                                  |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**create_current_user_application_key**](KeyManagementAPI.md#create_current_user_application_key)                     | **POST** /api/v2/current_user/application_keys                                             | Create an application key for current user         |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**delete_api_key**](KeyManagementAPI.md#delete_api_key)                                                               | **DELETE** /api/v2/api_keys/{api_key_id}                                                   | Delete an API key                                  |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**delete_application_key**](KeyManagementAPI.md#delete_application_key)                                               | **DELETE** /api/v2/application_keys/{app_key_id}                                           | Delete an application key                          |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**delete_current_user_application_key**](KeyManagementAPI.md#delete_current_user_application_key)                     | **DELETE** /api/v2/current_user/application_keys/{app_key_id}                              | Delete an application key owned by current user    |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**get_api_key**](KeyManagementAPI.md#get_api_key)                                                                     | **GET** /api/v2/api_keys/{api_key_id}                                                      | Get API key                                        |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**get_application_key**](KeyManagementAPI.md#get_application_key)                                                     | **GET** /api/v2/application_keys/{app_key_id}                                              | Get an application key                             |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**get_current_user_application_key**](KeyManagementAPI.md#get_current_user_application_key)                           | **GET** /api/v2/current_user/application_keys/{app_key_id}                                 | Get one application key owned by current user      |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**list_api_keys**](KeyManagementAPI.md#list_api_keys)                                                                 | **GET** /api/v2/api_keys                                                                   | Get all API keys                                   |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**list_application_keys**](KeyManagementAPI.md#list_application_keys)                                                 | **GET** /api/v2/application_keys                                                           | Get all application keys                           |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**list_current_user_application_keys**](KeyManagementAPI.md#list_current_user_application_keys)                       | **GET** /api/v2/current_user/application_keys                                              | Get all application keys owned by current user     |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**update_api_key**](KeyManagementAPI.md#update_api_key)                                                               | **PATCH** /api/v2/api_keys/{api_key_id}                                                    | Edit an API key                                    |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**update_application_key**](KeyManagementAPI.md#update_application_key)                                               | **PATCH** /api/v2/application_keys/{app_key_id}                                            | Edit an application key                            |
| _DatadogAPIClient::V2::KeyManagementAPI_         | [**update_current_user_application_key**](KeyManagementAPI.md#update_current_user_application_key)                     | **PATCH** /api/v2/current_user/application_keys/{app_key_id}                               | Edit an application key owned by current user      |
| _DatadogAPIClient::V2::LogsAPI_                  | [**aggregate_logs**](LogsAPI.md#aggregate_logs)                                                                        | **POST** /api/v2/logs/analytics/aggregate                                                  | Aggregate events                                   |
| _DatadogAPIClient::V2::LogsAPI_                  | [**list_logs**](LogsAPI.md#list_logs)                                                                                  | **POST** /api/v2/logs/events/search                                                        | Search logs                                        |
| _DatadogAPIClient::V2::LogsAPI_                  | [**list_logs_get**](LogsAPI.md#list_logs_get)                                                                          | **GET** /api/v2/logs/events                                                                | Get a list of logs                                 |
| _DatadogAPIClient::V2::LogsAPI_                  | [**submit_log**](LogsAPI.md#submit_log)                                                                                | **POST** /api/v2/logs                                                                      | Send logs                                          |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**add_read_role_to_archive**](LogsArchivesAPI.md#add_read_role_to_archive)                                            | **POST** /api/v2/logs/config/archives/{archive_id}/readers                                 | Grant role to an archive                           |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**create_logs_archive**](LogsArchivesAPI.md#create_logs_archive)                                                      | **POST** /api/v2/logs/config/archives                                                      | Create an archive                                  |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**delete_logs_archive**](LogsArchivesAPI.md#delete_logs_archive)                                                      | **DELETE** /api/v2/logs/config/archives/{archive_id}                                       | Delete an archive                                  |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**get_logs_archive**](LogsArchivesAPI.md#get_logs_archive)                                                            | **GET** /api/v2/logs/config/archives/{archive_id}                                          | Get an archive                                     |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**get_logs_archive_order**](LogsArchivesAPI.md#get_logs_archive_order)                                                | **GET** /api/v2/logs/config/archive-order                                                  | Get archive order                                  |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**list_archive_read_roles**](LogsArchivesAPI.md#list_archive_read_roles)                                              | **GET** /api/v2/logs/config/archives/{archive_id}/readers                                  | List read roles for an archive                     |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**list_logs_archives**](LogsArchivesAPI.md#list_logs_archives)                                                        | **GET** /api/v2/logs/config/archives                                                       | Get all archives                                   |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**remove_role_from_archive**](LogsArchivesAPI.md#remove_role_from_archive)                                            | **DELETE** /api/v2/logs/config/archives/{archive_id}/readers                               | Revoke role from an archive                        |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**update_logs_archive**](LogsArchivesAPI.md#update_logs_archive)                                                      | **PUT** /api/v2/logs/config/archives/{archive_id}                                          | Update an archive                                  |
| _DatadogAPIClient::V2::LogsArchivesAPI_          | [**update_logs_archive_order**](LogsArchivesAPI.md#update_logs_archive_order)                                          | **PUT** /api/v2/logs/config/archive-order                                                  | Update archive order                               |
| _DatadogAPIClient::V2::LogsMetricsAPI_           | [**create_logs_metric**](LogsMetricsAPI.md#create_logs_metric)                                                         | **POST** /api/v2/logs/config/metrics                                                       | Create a log-based metric                          |
| _DatadogAPIClient::V2::LogsMetricsAPI_           | [**delete_logs_metric**](LogsMetricsAPI.md#delete_logs_metric)                                                         | **DELETE** /api/v2/logs/config/metrics/{metric_id}                                         | Delete a log-based metric                          |
| _DatadogAPIClient::V2::LogsMetricsAPI_           | [**get_logs_metric**](LogsMetricsAPI.md#get_logs_metric)                                                               | **GET** /api/v2/logs/config/metrics/{metric_id}                                            | Get a log-based metric                             |
| _DatadogAPIClient::V2::LogsMetricsAPI_           | [**list_logs_metrics**](LogsMetricsAPI.md#list_logs_metrics)                                                           | **GET** /api/v2/logs/config/metrics                                                        | Get all log-based metrics                          |
| _DatadogAPIClient::V2::LogsMetricsAPI_           | [**update_logs_metric**](LogsMetricsAPI.md#update_logs_metric)                                                         | **PATCH** /api/v2/logs/config/metrics/{metric_id}                                          | Update a log-based metric                          |
| _DatadogAPIClient::V2::MetricsAPI_               | [**create_tag_configuration**](MetricsAPI.md#create_tag_configuration)                                                 | **POST** /api/v2/metrics/{metric_name}/tags                                                | Create a tag configuration                         |
| _DatadogAPIClient::V2::MetricsAPI_               | [**delete_tag_configuration**](MetricsAPI.md#delete_tag_configuration)                                                 | **DELETE** /api/v2/metrics/{metric_name}/tags                                              | Delete a tag configuration                         |
| _DatadogAPIClient::V2::MetricsAPI_               | [**list_tag_configuration_by_name**](MetricsAPI.md#list_tag_configuration_by_name)                                     | **GET** /api/v2/metrics/{metric_name}/tags                                                 | List tag configuration by name                     |
| _DatadogAPIClient::V2::MetricsAPI_               | [**list_tag_configurations**](MetricsAPI.md#list_tag_configurations)                                                   | **GET** /api/v2/metrics                                                                    | List tag configurations                            |
| _DatadogAPIClient::V2::MetricsAPI_               | [**list_tags_by_metric_name**](MetricsAPI.md#list_tags_by_metric_name)                                                 | **GET** /api/v2/metrics/{metric_name}/all-tags                                             | List tags by metric name                           |
| _DatadogAPIClient::V2::MetricsAPI_               | [**list_volumes_by_metric_name**](MetricsAPI.md#list_volumes_by_metric_name)                                           | **GET** /api/v2/metrics/{metric_name}/volumes                                              | List distinct metric volumes by metric name        |
| _DatadogAPIClient::V2::MetricsAPI_               | [**update_tag_configuration**](MetricsAPI.md#update_tag_configuration)                                                 | **PATCH** /api/v2/metrics/{metric_name}/tags                                               | Update a tag configuration                         |
| _DatadogAPIClient::V2::ProcessesAPI_             | [**list_processes**](ProcessesAPI.md#list_processes)                                                                   | **GET** /api/v2/processes                                                                  | Get all processes                                  |
| _DatadogAPIClient::V2::RolesAPI_                 | [**add_permission_to_role**](RolesAPI.md#add_permission_to_role)                                                       | **POST** /api/v2/roles/{role_id}/permissions                                               | Grant permission to a role                         |
| _DatadogAPIClient::V2::RolesAPI_                 | [**add_user_to_role**](RolesAPI.md#add_user_to_role)                                                                   | **POST** /api/v2/roles/{role_id}/users                                                     | Add a user to a role                               |
| _DatadogAPIClient::V2::RolesAPI_                 | [**clone_role**](RolesAPI.md#clone_role)                                                                               | **POST** /api/v2/roles/{role_id}/clone                                                     | Create a new role by cloning an existing role      |
| _DatadogAPIClient::V2::RolesAPI_                 | [**create_role**](RolesAPI.md#create_role)                                                                             | **POST** /api/v2/roles                                                                     | Create role                                        |
| _DatadogAPIClient::V2::RolesAPI_                 | [**delete_role**](RolesAPI.md#delete_role)                                                                             | **DELETE** /api/v2/roles/{role_id}                                                         | Delete role                                        |
| _DatadogAPIClient::V2::RolesAPI_                 | [**get_role**](RolesAPI.md#get_role)                                                                                   | **GET** /api/v2/roles/{role_id}                                                            | Get a role                                         |
| _DatadogAPIClient::V2::RolesAPI_                 | [**list_permissions**](RolesAPI.md#list_permissions)                                                                   | **GET** /api/v2/permissions                                                                | List permissions                                   |
| _DatadogAPIClient::V2::RolesAPI_                 | [**list_role_permissions**](RolesAPI.md#list_role_permissions)                                                         | **GET** /api/v2/roles/{role_id}/permissions                                                | List permissions for a role                        |
| _DatadogAPIClient::V2::RolesAPI_                 | [**list_role_users**](RolesAPI.md#list_role_users)                                                                     | **GET** /api/v2/roles/{role_id}/users                                                      | Get all users of a role                            |
| _DatadogAPIClient::V2::RolesAPI_                 | [**list_roles**](RolesAPI.md#list_roles)                                                                               | **GET** /api/v2/roles                                                                      | List roles                                         |
| _DatadogAPIClient::V2::RolesAPI_                 | [**remove_permission_from_role**](RolesAPI.md#remove_permission_from_role)                                             | **DELETE** /api/v2/roles/{role_id}/permissions                                             | Revoke permission                                  |
| _DatadogAPIClient::V2::RolesAPI_                 | [**remove_user_from_role**](RolesAPI.md#remove_user_from_role)                                                         | **DELETE** /api/v2/roles/{role_id}/users                                                   | Remove a user from a role                          |
| _DatadogAPIClient::V2::RolesAPI_                 | [**update_role**](RolesAPI.md#update_role)                                                                             | **PATCH** /api/v2/roles/{role_id}                                                          | Update a role                                      |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**create_security_filter**](SecurityMonitoringAPI.md#create_security_filter)                                          | **POST** /api/v2/security_monitoring/configuration/security_filters                        | Create a security filter                           |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**create_security_monitoring_rule**](SecurityMonitoringAPI.md#create_security_monitoring_rule)                        | **POST** /api/v2/security_monitoring/rules                                                 | Create a detection rule                            |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**delete_security_filter**](SecurityMonitoringAPI.md#delete_security_filter)                                          | **DELETE** /api/v2/security_monitoring/configuration/security_filters/{security_filter_id} | Delete a security filter                           |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**delete_security_monitoring_rule**](SecurityMonitoringAPI.md#delete_security_monitoring_rule)                        | **DELETE** /api/v2/security_monitoring/rules/{rule_id}                                     | Delete an existing rule                            |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**get_security_filter**](SecurityMonitoringAPI.md#get_security_filter)                                                | **GET** /api/v2/security_monitoring/configuration/security_filters/{security_filter_id}    | Get a security filter                              |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**get_security_monitoring_rule**](SecurityMonitoringAPI.md#get_security_monitoring_rule)                              | **GET** /api/v2/security_monitoring/rules/{rule_id}                                        | Get a rule's details                               |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**list_security_filters**](SecurityMonitoringAPI.md#list_security_filters)                                            | **GET** /api/v2/security_monitoring/configuration/security_filters                         | Get all security filters                           |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**list_security_monitoring_rules**](SecurityMonitoringAPI.md#list_security_monitoring_rules)                          | **GET** /api/v2/security_monitoring/rules                                                  | List rules                                         |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**list_security_monitoring_signals**](SecurityMonitoringAPI.md#list_security_monitoring_signals)                      | **GET** /api/v2/security_monitoring/signals                                                | Get a quick list of security signals               |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**search_security_monitoring_signals**](SecurityMonitoringAPI.md#search_security_monitoring_signals)                  | **POST** /api/v2/security_monitoring/signals/search                                        | Get a list of security signals                     |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**update_security_filter**](SecurityMonitoringAPI.md#update_security_filter)                                          | **PATCH** /api/v2/security_monitoring/configuration/security_filters/{security_filter_id}  | Update a security filter                           |
| _DatadogAPIClient::V2::SecurityMonitoringAPI_    | [**update_security_monitoring_rule**](SecurityMonitoringAPI.md#update_security_monitoring_rule)                        | **PUT** /api/v2/security_monitoring/rules/{rule_id}                                        | Update an existing rule                            |
| _DatadogAPIClient::V2::ServiceAccountsAPI_       | [**create_service_account_application_key**](ServiceAccountsAPI.md#create_service_account_application_key)             | **POST** /api/v2/service_accounts/{service_account_id}/application_keys                    | Create an application key for this service account |
| _DatadogAPIClient::V2::ServiceAccountsAPI_       | [**delete_service_account_application_key**](ServiceAccountsAPI.md#delete_service_account_application_key)             | **DELETE** /api/v2/service_accounts/{service_account_id}/application_keys/{app_key_id}     | Delete an application key for this service account |
| _DatadogAPIClient::V2::ServiceAccountsAPI_       | [**get_service_account_application_key**](ServiceAccountsAPI.md#get_service_account_application_key)                   | **GET** /api/v2/service_accounts/{service_account_id}/application_keys/{app_key_id}        | Get one application key for this service account   |
| _DatadogAPIClient::V2::ServiceAccountsAPI_       | [**list_service_account_application_keys**](ServiceAccountsAPI.md#list_service_account_application_keys)               | **GET** /api/v2/service_accounts/{service_account_id}/application_keys                     | List application keys for this service account     |
| _DatadogAPIClient::V2::ServiceAccountsAPI_       | [**update_service_account_application_key**](ServiceAccountsAPI.md#update_service_account_application_key)             | **PATCH** /api/v2/service_accounts/{service_account_id}/application_keys/{app_key_id}      | Edit an application key for this service account   |
| _DatadogAPIClient::V2::UsersAPI_                 | [**create_service_account**](UsersAPI.md#create_service_account)                                                       | **POST** /api/v2/service_accounts                                                          | Create a service account                           |
| _DatadogAPIClient::V2::UsersAPI_                 | [**create_user**](UsersAPI.md#create_user)                                                                             | **POST** /api/v2/users                                                                     | Create a user                                      |
| _DatadogAPIClient::V2::UsersAPI_                 | [**disable_user**](UsersAPI.md#disable_user)                                                                           | **DELETE** /api/v2/users/{user_id}                                                         | Disable a user                                     |
| _DatadogAPIClient::V2::UsersAPI_                 | [**get_invitation**](UsersAPI.md#get_invitation)                                                                       | **GET** /api/v2/user_invitations/{user_invitation_uuid}                                    | Get a user invitation                              |
| _DatadogAPIClient::V2::UsersAPI_                 | [**get_user**](UsersAPI.md#get_user)                                                                                   | **GET** /api/v2/users/{user_id}                                                            | Get user details                                   |
| _DatadogAPIClient::V2::UsersAPI_                 | [**list_user_organizations**](UsersAPI.md#list_user_organizations)                                                     | **GET** /api/v2/users/{user_id}/orgs                                                       | Get a user organization                            |
| _DatadogAPIClient::V2::UsersAPI_                 | [**list_user_permissions**](UsersAPI.md#list_user_permissions)                                                         | **GET** /api/v2/users/{user_id}/permissions                                                | Get a user permissions                             |
| _DatadogAPIClient::V2::UsersAPI_                 | [**list_users**](UsersAPI.md#list_users)                                                                               | **GET** /api/v2/users                                                                      | List all users                                     |
| _DatadogAPIClient::V2::UsersAPI_                 | [**send_invitations**](UsersAPI.md#send_invitations)                                                                   | **POST** /api/v2/user_invitations                                                          | Send invitation emails                             |
| _DatadogAPIClient::V2::UsersAPI_                 | [**update_user**](UsersAPI.md#update_user)                                                                             | **PATCH** /api/v2/users/{user_id}                                                          | Update a user                                      |

## Documentation for Models

- [DatadogAPIClient::V2::APIErrorResponse](APIErrorResponse.md)
- [DatadogAPIClient::V2::APIKeyCreateAttributes](APIKeyCreateAttributes.md)
- [DatadogAPIClient::V2::APIKeyCreateData](APIKeyCreateData.md)
- [DatadogAPIClient::V2::APIKeyCreateRequest](APIKeyCreateRequest.md)
- [DatadogAPIClient::V2::APIKeyRelationships](APIKeyRelationships.md)
- [DatadogAPIClient::V2::APIKeyResponse](APIKeyResponse.md)
- [DatadogAPIClient::V2::APIKeyResponseIncludedItem](APIKeyResponseIncludedItem.md)
- [DatadogAPIClient::V2::APIKeyUpdateAttributes](APIKeyUpdateAttributes.md)
- [DatadogAPIClient::V2::APIKeyUpdateData](APIKeyUpdateData.md)
- [DatadogAPIClient::V2::APIKeyUpdateRequest](APIKeyUpdateRequest.md)
- [DatadogAPIClient::V2::APIKeysResponse](APIKeysResponse.md)
- [DatadogAPIClient::V2::APIKeysSort](APIKeysSort.md)
- [DatadogAPIClient::V2::APIKeysType](APIKeysType.md)
- [DatadogAPIClient::V2::ApplicationKeyCreateAttributes](ApplicationKeyCreateAttributes.md)
- [DatadogAPIClient::V2::ApplicationKeyCreateData](ApplicationKeyCreateData.md)
- [DatadogAPIClient::V2::ApplicationKeyCreateRequest](ApplicationKeyCreateRequest.md)
- [DatadogAPIClient::V2::ApplicationKeyRelationships](ApplicationKeyRelationships.md)
- [DatadogAPIClient::V2::ApplicationKeyResponse](ApplicationKeyResponse.md)
- [DatadogAPIClient::V2::ApplicationKeyResponseIncludedItem](ApplicationKeyResponseIncludedItem.md)
- [DatadogAPIClient::V2::ApplicationKeyUpdateAttributes](ApplicationKeyUpdateAttributes.md)
- [DatadogAPIClient::V2::ApplicationKeyUpdateData](ApplicationKeyUpdateData.md)
- [DatadogAPIClient::V2::ApplicationKeyUpdateRequest](ApplicationKeyUpdateRequest.md)
- [DatadogAPIClient::V2::ApplicationKeysSort](ApplicationKeysSort.md)
- [DatadogAPIClient::V2::ApplicationKeysType](ApplicationKeysType.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleAttributes](CloudWorkloadSecurityAgentRuleAttributes.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes](CloudWorkloadSecurityAgentRuleCreateAttributes.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateData](CloudWorkloadSecurityAgentRuleCreateData.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateRequest](CloudWorkloadSecurityAgentRuleCreateRequest.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreatorAttributes](CloudWorkloadSecurityAgentRuleCreatorAttributes.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleData](CloudWorkloadSecurityAgentRuleData.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleResponse](CloudWorkloadSecurityAgentRuleResponse.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType](CloudWorkloadSecurityAgentRuleType.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateAttributes](CloudWorkloadSecurityAgentRuleUpdateAttributes.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateData](CloudWorkloadSecurityAgentRuleUpdateData.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateRequest](CloudWorkloadSecurityAgentRuleUpdateRequest.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdaterAttributes](CloudWorkloadSecurityAgentRuleUpdaterAttributes.md)
- [DatadogAPIClient::V2::CloudWorkloadSecurityAgentRulesListResponse](CloudWorkloadSecurityAgentRulesListResponse.md)
- [DatadogAPIClient::V2::ContentEncoding](ContentEncoding.md)
- [DatadogAPIClient::V2::Creator](Creator.md)
- [DatadogAPIClient::V2::DashboardListAddItemsRequest](DashboardListAddItemsRequest.md)
- [DatadogAPIClient::V2::DashboardListAddItemsResponse](DashboardListAddItemsResponse.md)
- [DatadogAPIClient::V2::DashboardListDeleteItemsRequest](DashboardListDeleteItemsRequest.md)
- [DatadogAPIClient::V2::DashboardListDeleteItemsResponse](DashboardListDeleteItemsResponse.md)
- [DatadogAPIClient::V2::DashboardListItem](DashboardListItem.md)
- [DatadogAPIClient::V2::DashboardListItemRequest](DashboardListItemRequest.md)
- [DatadogAPIClient::V2::DashboardListItemResponse](DashboardListItemResponse.md)
- [DatadogAPIClient::V2::DashboardListItems](DashboardListItems.md)
- [DatadogAPIClient::V2::DashboardListUpdateItemsRequest](DashboardListUpdateItemsRequest.md)
- [DatadogAPIClient::V2::DashboardListUpdateItemsResponse](DashboardListUpdateItemsResponse.md)
- [DatadogAPIClient::V2::DashboardType](DashboardType.md)
- [DatadogAPIClient::V2::FullAPIKey](FullAPIKey.md)
- [DatadogAPIClient::V2::FullAPIKeyAttributes](FullAPIKeyAttributes.md)
- [DatadogAPIClient::V2::FullApplicationKey](FullApplicationKey.md)
- [DatadogAPIClient::V2::FullApplicationKeyAttributes](FullApplicationKeyAttributes.md)
- [DatadogAPIClient::V2::HTTPLogError](HTTPLogError.md)
- [DatadogAPIClient::V2::HTTPLogErrors](HTTPLogErrors.md)
- [DatadogAPIClient::V2::HTTPLogItem](HTTPLogItem.md)
- [DatadogAPIClient::V2::IncidentCreateAttributes](IncidentCreateAttributes.md)
- [DatadogAPIClient::V2::IncidentCreateData](IncidentCreateData.md)
- [DatadogAPIClient::V2::IncidentCreateRelationships](IncidentCreateRelationships.md)
- [DatadogAPIClient::V2::IncidentCreateRequest](IncidentCreateRequest.md)
- [DatadogAPIClient::V2::IncidentFieldAttributes](IncidentFieldAttributes.md)
- [DatadogAPIClient::V2::IncidentFieldAttributesMultipleValue](IncidentFieldAttributesMultipleValue.md)
- [DatadogAPIClient::V2::IncidentFieldAttributesSingleValue](IncidentFieldAttributesSingleValue.md)
- [DatadogAPIClient::V2::IncidentFieldAttributesSingleValueType](IncidentFieldAttributesSingleValueType.md)
- [DatadogAPIClient::V2::IncidentFieldAttributesValueType](IncidentFieldAttributesValueType.md)
- [DatadogAPIClient::V2::IncidentIntegrationMetadataType](IncidentIntegrationMetadataType.md)
- [DatadogAPIClient::V2::IncidentNotificationHandle](IncidentNotificationHandle.md)
- [DatadogAPIClient::V2::IncidentPostmortemType](IncidentPostmortemType.md)
- [DatadogAPIClient::V2::IncidentRelatedObject](IncidentRelatedObject.md)
- [DatadogAPIClient::V2::IncidentResponse](IncidentResponse.md)
- [DatadogAPIClient::V2::IncidentResponseAttributes](IncidentResponseAttributes.md)
- [DatadogAPIClient::V2::IncidentResponseData](IncidentResponseData.md)
- [DatadogAPIClient::V2::IncidentResponseIncludedItem](IncidentResponseIncludedItem.md)
- [DatadogAPIClient::V2::IncidentResponseRelationships](IncidentResponseRelationships.md)
- [DatadogAPIClient::V2::IncidentServiceCreateAttributes](IncidentServiceCreateAttributes.md)
- [DatadogAPIClient::V2::IncidentServiceCreateData](IncidentServiceCreateData.md)
- [DatadogAPIClient::V2::IncidentServiceCreateRequest](IncidentServiceCreateRequest.md)
- [DatadogAPIClient::V2::IncidentServiceIncludedItems](IncidentServiceIncludedItems.md)
- [DatadogAPIClient::V2::IncidentServiceRelationships](IncidentServiceRelationships.md)
- [DatadogAPIClient::V2::IncidentServiceResponse](IncidentServiceResponse.md)
- [DatadogAPIClient::V2::IncidentServiceResponseAttributes](IncidentServiceResponseAttributes.md)
- [DatadogAPIClient::V2::IncidentServiceResponseData](IncidentServiceResponseData.md)
- [DatadogAPIClient::V2::IncidentServiceType](IncidentServiceType.md)
- [DatadogAPIClient::V2::IncidentServiceUpdateAttributes](IncidentServiceUpdateAttributes.md)
- [DatadogAPIClient::V2::IncidentServiceUpdateData](IncidentServiceUpdateData.md)
- [DatadogAPIClient::V2::IncidentServiceUpdateRequest](IncidentServiceUpdateRequest.md)
- [DatadogAPIClient::V2::IncidentServicesResponse](IncidentServicesResponse.md)
- [DatadogAPIClient::V2::IncidentServicesResponseMeta](IncidentServicesResponseMeta.md)
- [DatadogAPIClient::V2::IncidentServicesResponseMetaPagination](IncidentServicesResponseMetaPagination.md)
- [DatadogAPIClient::V2::IncidentTeamCreateAttributes](IncidentTeamCreateAttributes.md)
- [DatadogAPIClient::V2::IncidentTeamCreateData](IncidentTeamCreateData.md)
- [DatadogAPIClient::V2::IncidentTeamCreateRequest](IncidentTeamCreateRequest.md)
- [DatadogAPIClient::V2::IncidentTeamIncludedItems](IncidentTeamIncludedItems.md)
- [DatadogAPIClient::V2::IncidentTeamRelationships](IncidentTeamRelationships.md)
- [DatadogAPIClient::V2::IncidentTeamResponse](IncidentTeamResponse.md)
- [DatadogAPIClient::V2::IncidentTeamResponseAttributes](IncidentTeamResponseAttributes.md)
- [DatadogAPIClient::V2::IncidentTeamResponseData](IncidentTeamResponseData.md)
- [DatadogAPIClient::V2::IncidentTeamType](IncidentTeamType.md)
- [DatadogAPIClient::V2::IncidentTeamUpdateAttributes](IncidentTeamUpdateAttributes.md)
- [DatadogAPIClient::V2::IncidentTeamUpdateData](IncidentTeamUpdateData.md)
- [DatadogAPIClient::V2::IncidentTeamUpdateRequest](IncidentTeamUpdateRequest.md)
- [DatadogAPIClient::V2::IncidentTeamsResponse](IncidentTeamsResponse.md)
- [DatadogAPIClient::V2::IncidentTimelineCellCreateAttributes](IncidentTimelineCellCreateAttributes.md)
- [DatadogAPIClient::V2::IncidentTimelineCellMarkdownContentType](IncidentTimelineCellMarkdownContentType.md)
- [DatadogAPIClient::V2::IncidentTimelineCellMarkdownCreateAttributes](IncidentTimelineCellMarkdownCreateAttributes.md)
- [DatadogAPIClient::V2::IncidentTimelineCellMarkdownCreateAttributesContent](IncidentTimelineCellMarkdownCreateAttributesContent.md)
- [DatadogAPIClient::V2::IncidentType](IncidentType.md)
- [DatadogAPIClient::V2::IncidentUpdateAttributes](IncidentUpdateAttributes.md)
- [DatadogAPIClient::V2::IncidentUpdateData](IncidentUpdateData.md)
- [DatadogAPIClient::V2::IncidentUpdateRelationships](IncidentUpdateRelationships.md)
- [DatadogAPIClient::V2::IncidentUpdateRequest](IncidentUpdateRequest.md)
- [DatadogAPIClient::V2::IncidentsResponse](IncidentsResponse.md)
- [DatadogAPIClient::V2::ListApplicationKeysResponse](ListApplicationKeysResponse.md)
- [DatadogAPIClient::V2::Log](Log.md)
- [DatadogAPIClient::V2::LogAttributes](LogAttributes.md)
- [DatadogAPIClient::V2::LogType](LogType.md)
- [DatadogAPIClient::V2::LogsAggregateBucket](LogsAggregateBucket.md)
- [DatadogAPIClient::V2::LogsAggregateBucketValue](LogsAggregateBucketValue.md)
- [DatadogAPIClient::V2::LogsAggregateBucketValueTimeseriesPoint](LogsAggregateBucketValueTimeseriesPoint.md)
- [DatadogAPIClient::V2::LogsAggregateRequest](LogsAggregateRequest.md)
- [DatadogAPIClient::V2::LogsAggregateRequestPage](LogsAggregateRequestPage.md)
- [DatadogAPIClient::V2::LogsAggregateResponse](LogsAggregateResponse.md)
- [DatadogAPIClient::V2::LogsAggregateResponseData](LogsAggregateResponseData.md)
- [DatadogAPIClient::V2::LogsAggregateResponseStatus](LogsAggregateResponseStatus.md)
- [DatadogAPIClient::V2::LogsAggregateSort](LogsAggregateSort.md)
- [DatadogAPIClient::V2::LogsAggregateSortType](LogsAggregateSortType.md)
- [DatadogAPIClient::V2::LogsAggregationFunction](LogsAggregationFunction.md)
- [DatadogAPIClient::V2::LogsArchive](LogsArchive.md)
- [DatadogAPIClient::V2::LogsArchiveAttributes](LogsArchiveAttributes.md)
- [DatadogAPIClient::V2::LogsArchiveCreateRequest](LogsArchiveCreateRequest.md)
- [DatadogAPIClient::V2::LogsArchiveCreateRequestAttributes](LogsArchiveCreateRequestAttributes.md)
- [DatadogAPIClient::V2::LogsArchiveCreateRequestDefinition](LogsArchiveCreateRequestDefinition.md)
- [DatadogAPIClient::V2::LogsArchiveCreateRequestDestination](LogsArchiveCreateRequestDestination.md)
- [DatadogAPIClient::V2::LogsArchiveDefinition](LogsArchiveDefinition.md)
- [DatadogAPIClient::V2::LogsArchiveDestination](LogsArchiveDestination.md)
- [DatadogAPIClient::V2::LogsArchiveDestinationAzure](LogsArchiveDestinationAzure.md)
- [DatadogAPIClient::V2::LogsArchiveDestinationAzureType](LogsArchiveDestinationAzureType.md)
- [DatadogAPIClient::V2::LogsArchiveDestinationGCS](LogsArchiveDestinationGCS.md)
- [DatadogAPIClient::V2::LogsArchiveDestinationGCSType](LogsArchiveDestinationGCSType.md)
- [DatadogAPIClient::V2::LogsArchiveDestinationS3](LogsArchiveDestinationS3.md)
- [DatadogAPIClient::V2::LogsArchiveDestinationS3Type](LogsArchiveDestinationS3Type.md)
- [DatadogAPIClient::V2::LogsArchiveIntegrationAzure](LogsArchiveIntegrationAzure.md)
- [DatadogAPIClient::V2::LogsArchiveIntegrationGCS](LogsArchiveIntegrationGCS.md)
- [DatadogAPIClient::V2::LogsArchiveIntegrationS3](LogsArchiveIntegrationS3.md)
- [DatadogAPIClient::V2::LogsArchiveOrder](LogsArchiveOrder.md)
- [DatadogAPIClient::V2::LogsArchiveOrderAttributes](LogsArchiveOrderAttributes.md)
- [DatadogAPIClient::V2::LogsArchiveOrderDefinition](LogsArchiveOrderDefinition.md)
- [DatadogAPIClient::V2::LogsArchiveOrderDefinitionType](LogsArchiveOrderDefinitionType.md)
- [DatadogAPIClient::V2::LogsArchiveState](LogsArchiveState.md)
- [DatadogAPIClient::V2::LogsArchives](LogsArchives.md)
- [DatadogAPIClient::V2::LogsCompute](LogsCompute.md)
- [DatadogAPIClient::V2::LogsComputeType](LogsComputeType.md)
- [DatadogAPIClient::V2::LogsGroupBy](LogsGroupBy.md)
- [DatadogAPIClient::V2::LogsGroupByHistogram](LogsGroupByHistogram.md)
- [DatadogAPIClient::V2::LogsGroupByMissing](LogsGroupByMissing.md)
- [DatadogAPIClient::V2::LogsGroupByTotal](LogsGroupByTotal.md)
- [DatadogAPIClient::V2::LogsListRequest](LogsListRequest.md)
- [DatadogAPIClient::V2::LogsListRequestPage](LogsListRequestPage.md)
- [DatadogAPIClient::V2::LogsListResponse](LogsListResponse.md)
- [DatadogAPIClient::V2::LogsListResponseLinks](LogsListResponseLinks.md)
- [DatadogAPIClient::V2::LogsMetricCompute](LogsMetricCompute.md)
- [DatadogAPIClient::V2::LogsMetricComputeAggregationType](LogsMetricComputeAggregationType.md)
- [DatadogAPIClient::V2::LogsMetricCreateAttributes](LogsMetricCreateAttributes.md)
- [DatadogAPIClient::V2::LogsMetricCreateData](LogsMetricCreateData.md)
- [DatadogAPIClient::V2::LogsMetricCreateRequest](LogsMetricCreateRequest.md)
- [DatadogAPIClient::V2::LogsMetricFilter](LogsMetricFilter.md)
- [DatadogAPIClient::V2::LogsMetricGroupBy](LogsMetricGroupBy.md)
- [DatadogAPIClient::V2::LogsMetricResponse](LogsMetricResponse.md)
- [DatadogAPIClient::V2::LogsMetricResponseAttributes](LogsMetricResponseAttributes.md)
- [DatadogAPIClient::V2::LogsMetricResponseCompute](LogsMetricResponseCompute.md)
- [DatadogAPIClient::V2::LogsMetricResponseComputeAggregationType](LogsMetricResponseComputeAggregationType.md)
- [DatadogAPIClient::V2::LogsMetricResponseData](LogsMetricResponseData.md)
- [DatadogAPIClient::V2::LogsMetricResponseFilter](LogsMetricResponseFilter.md)
- [DatadogAPIClient::V2::LogsMetricResponseGroupBy](LogsMetricResponseGroupBy.md)
- [DatadogAPIClient::V2::LogsMetricType](LogsMetricType.md)
- [DatadogAPIClient::V2::LogsMetricUpdateAttributes](LogsMetricUpdateAttributes.md)
- [DatadogAPIClient::V2::LogsMetricUpdateData](LogsMetricUpdateData.md)
- [DatadogAPIClient::V2::LogsMetricUpdateRequest](LogsMetricUpdateRequest.md)
- [DatadogAPIClient::V2::LogsMetricsResponse](LogsMetricsResponse.md)
- [DatadogAPIClient::V2::LogsQueryFilter](LogsQueryFilter.md)
- [DatadogAPIClient::V2::LogsQueryOptions](LogsQueryOptions.md)
- [DatadogAPIClient::V2::LogsResponseMetadata](LogsResponseMetadata.md)
- [DatadogAPIClient::V2::LogsResponseMetadataPage](LogsResponseMetadataPage.md)
- [DatadogAPIClient::V2::LogsSort](LogsSort.md)
- [DatadogAPIClient::V2::LogsSortOrder](LogsSortOrder.md)
- [DatadogAPIClient::V2::LogsWarning](LogsWarning.md)
- [DatadogAPIClient::V2::Metric](Metric.md)
- [DatadogAPIClient::V2::MetricAllTags](MetricAllTags.md)
- [DatadogAPIClient::V2::MetricAllTagsAttributes](MetricAllTagsAttributes.md)
- [DatadogAPIClient::V2::MetricAllTagsResponse](MetricAllTagsResponse.md)
- [DatadogAPIClient::V2::MetricCustomAggregation](MetricCustomAggregation.md)
- [DatadogAPIClient::V2::MetricCustomSpaceAggregation](MetricCustomSpaceAggregation.md)
- [DatadogAPIClient::V2::MetricCustomTimeAggregation](MetricCustomTimeAggregation.md)
- [DatadogAPIClient::V2::MetricDistinctVolume](MetricDistinctVolume.md)
- [DatadogAPIClient::V2::MetricDistinctVolumeAttributes](MetricDistinctVolumeAttributes.md)
- [DatadogAPIClient::V2::MetricDistinctVolumeType](MetricDistinctVolumeType.md)
- [DatadogAPIClient::V2::MetricIngestedIndexedVolume](MetricIngestedIndexedVolume.md)
- [DatadogAPIClient::V2::MetricIngestedIndexedVolumeAttributes](MetricIngestedIndexedVolumeAttributes.md)
- [DatadogAPIClient::V2::MetricIngestedIndexedVolumeType](MetricIngestedIndexedVolumeType.md)
- [DatadogAPIClient::V2::MetricTagConfiguration](MetricTagConfiguration.md)
- [DatadogAPIClient::V2::MetricTagConfigurationAttributes](MetricTagConfigurationAttributes.md)
- [DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes](MetricTagConfigurationCreateAttributes.md)
- [DatadogAPIClient::V2::MetricTagConfigurationCreateData](MetricTagConfigurationCreateData.md)
- [DatadogAPIClient::V2::MetricTagConfigurationCreateRequest](MetricTagConfigurationCreateRequest.md)
- [DatadogAPIClient::V2::MetricTagConfigurationMetricTypes](MetricTagConfigurationMetricTypes.md)
- [DatadogAPIClient::V2::MetricTagConfigurationResponse](MetricTagConfigurationResponse.md)
- [DatadogAPIClient::V2::MetricTagConfigurationType](MetricTagConfigurationType.md)
- [DatadogAPIClient::V2::MetricTagConfigurationUpdateAttributes](MetricTagConfigurationUpdateAttributes.md)
- [DatadogAPIClient::V2::MetricTagConfigurationUpdateData](MetricTagConfigurationUpdateData.md)
- [DatadogAPIClient::V2::MetricTagConfigurationUpdateRequest](MetricTagConfigurationUpdateRequest.md)
- [DatadogAPIClient::V2::MetricType](MetricType.md)
- [DatadogAPIClient::V2::MetricVolumes](MetricVolumes.md)
- [DatadogAPIClient::V2::MetricVolumesResponse](MetricVolumesResponse.md)
- [DatadogAPIClient::V2::MetricsAndMetricTagConfigurations](MetricsAndMetricTagConfigurations.md)
- [DatadogAPIClient::V2::MetricsAndMetricTagConfigurationsResponse](MetricsAndMetricTagConfigurationsResponse.md)
- [DatadogAPIClient::V2::Organization](Organization.md)
- [DatadogAPIClient::V2::OrganizationAttributes](OrganizationAttributes.md)
- [DatadogAPIClient::V2::OrganizationsType](OrganizationsType.md)
- [DatadogAPIClient::V2::Pagination](Pagination.md)
- [DatadogAPIClient::V2::PartialAPIKey](PartialAPIKey.md)
- [DatadogAPIClient::V2::PartialAPIKeyAttributes](PartialAPIKeyAttributes.md)
- [DatadogAPIClient::V2::PartialApplicationKey](PartialApplicationKey.md)
- [DatadogAPIClient::V2::PartialApplicationKeyAttributes](PartialApplicationKeyAttributes.md)
- [DatadogAPIClient::V2::PartialApplicationKeyResponse](PartialApplicationKeyResponse.md)
- [DatadogAPIClient::V2::Permission](Permission.md)
- [DatadogAPIClient::V2::PermissionAttributes](PermissionAttributes.md)
- [DatadogAPIClient::V2::PermissionsResponse](PermissionsResponse.md)
- [DatadogAPIClient::V2::PermissionsType](PermissionsType.md)
- [DatadogAPIClient::V2::ProcessSummariesMeta](ProcessSummariesMeta.md)
- [DatadogAPIClient::V2::ProcessSummariesMetaPage](ProcessSummariesMetaPage.md)
- [DatadogAPIClient::V2::ProcessSummariesResponse](ProcessSummariesResponse.md)
- [DatadogAPIClient::V2::ProcessSummary](ProcessSummary.md)
- [DatadogAPIClient::V2::ProcessSummaryAttributes](ProcessSummaryAttributes.md)
- [DatadogAPIClient::V2::ProcessSummaryType](ProcessSummaryType.md)
- [DatadogAPIClient::V2::QuerySortOrder](QuerySortOrder.md)
- [DatadogAPIClient::V2::RelationshipToIncidentIntegrationMetadataData](RelationshipToIncidentIntegrationMetadataData.md)
- [DatadogAPIClient::V2::RelationshipToIncidentIntegrationMetadatas](RelationshipToIncidentIntegrationMetadatas.md)
- [DatadogAPIClient::V2::RelationshipToIncidentPostmortem](RelationshipToIncidentPostmortem.md)
- [DatadogAPIClient::V2::RelationshipToIncidentPostmortemData](RelationshipToIncidentPostmortemData.md)
- [DatadogAPIClient::V2::RelationshipToOrganization](RelationshipToOrganization.md)
- [DatadogAPIClient::V2::RelationshipToOrganizationData](RelationshipToOrganizationData.md)
- [DatadogAPIClient::V2::RelationshipToOrganizations](RelationshipToOrganizations.md)
- [DatadogAPIClient::V2::RelationshipToPermission](RelationshipToPermission.md)
- [DatadogAPIClient::V2::RelationshipToPermissionData](RelationshipToPermissionData.md)
- [DatadogAPIClient::V2::RelationshipToPermissions](RelationshipToPermissions.md)
- [DatadogAPIClient::V2::RelationshipToRole](RelationshipToRole.md)
- [DatadogAPIClient::V2::RelationshipToRoleData](RelationshipToRoleData.md)
- [DatadogAPIClient::V2::RelationshipToRoles](RelationshipToRoles.md)
- [DatadogAPIClient::V2::RelationshipToUser](RelationshipToUser.md)
- [DatadogAPIClient::V2::RelationshipToUserData](RelationshipToUserData.md)
- [DatadogAPIClient::V2::RelationshipToUsers](RelationshipToUsers.md)
- [DatadogAPIClient::V2::ResponseMetaAttributes](ResponseMetaAttributes.md)
- [DatadogAPIClient::V2::Role](Role.md)
- [DatadogAPIClient::V2::RoleAttributes](RoleAttributes.md)
- [DatadogAPIClient::V2::RoleClone](RoleClone.md)
- [DatadogAPIClient::V2::RoleCloneAttributes](RoleCloneAttributes.md)
- [DatadogAPIClient::V2::RoleCloneRequest](RoleCloneRequest.md)
- [DatadogAPIClient::V2::RoleCreateAttributes](RoleCreateAttributes.md)
- [DatadogAPIClient::V2::RoleCreateData](RoleCreateData.md)
- [DatadogAPIClient::V2::RoleCreateRequest](RoleCreateRequest.md)
- [DatadogAPIClient::V2::RoleCreateResponse](RoleCreateResponse.md)
- [DatadogAPIClient::V2::RoleCreateResponseData](RoleCreateResponseData.md)
- [DatadogAPIClient::V2::RoleRelationships](RoleRelationships.md)
- [DatadogAPIClient::V2::RoleResponse](RoleResponse.md)
- [DatadogAPIClient::V2::RoleResponseRelationships](RoleResponseRelationships.md)
- [DatadogAPIClient::V2::RoleUpdateAttributes](RoleUpdateAttributes.md)
- [DatadogAPIClient::V2::RoleUpdateData](RoleUpdateData.md)
- [DatadogAPIClient::V2::RoleUpdateRequest](RoleUpdateRequest.md)
- [DatadogAPIClient::V2::RoleUpdateResponse](RoleUpdateResponse.md)
- [DatadogAPIClient::V2::RoleUpdateResponseData](RoleUpdateResponseData.md)
- [DatadogAPIClient::V2::RolesResponse](RolesResponse.md)
- [DatadogAPIClient::V2::RolesSort](RolesSort.md)
- [DatadogAPIClient::V2::RolesType](RolesType.md)
- [DatadogAPIClient::V2::SecurityFilter](SecurityFilter.md)
- [DatadogAPIClient::V2::SecurityFilterAttributes](SecurityFilterAttributes.md)
- [DatadogAPIClient::V2::SecurityFilterCreateAttributes](SecurityFilterCreateAttributes.md)
- [DatadogAPIClient::V2::SecurityFilterCreateData](SecurityFilterCreateData.md)
- [DatadogAPIClient::V2::SecurityFilterCreateRequest](SecurityFilterCreateRequest.md)
- [DatadogAPIClient::V2::SecurityFilterExclusionFilter](SecurityFilterExclusionFilter.md)
- [DatadogAPIClient::V2::SecurityFilterExclusionFilterResponse](SecurityFilterExclusionFilterResponse.md)
- [DatadogAPIClient::V2::SecurityFilterFilteredDataType](SecurityFilterFilteredDataType.md)
- [DatadogAPIClient::V2::SecurityFilterMeta](SecurityFilterMeta.md)
- [DatadogAPIClient::V2::SecurityFilterResponse](SecurityFilterResponse.md)
- [DatadogAPIClient::V2::SecurityFilterType](SecurityFilterType.md)
- [DatadogAPIClient::V2::SecurityFilterUpdateAttributes](SecurityFilterUpdateAttributes.md)
- [DatadogAPIClient::V2::SecurityFilterUpdateData](SecurityFilterUpdateData.md)
- [DatadogAPIClient::V2::SecurityFilterUpdateRequest](SecurityFilterUpdateRequest.md)
- [DatadogAPIClient::V2::SecurityFiltersResponse](SecurityFiltersResponse.md)
- [DatadogAPIClient::V2::SecurityMonitoringFilter](SecurityMonitoringFilter.md)
- [DatadogAPIClient::V2::SecurityMonitoringFilterAction](SecurityMonitoringFilterAction.md)
- [DatadogAPIClient::V2::SecurityMonitoringListRulesResponse](SecurityMonitoringListRulesResponse.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleCase](SecurityMonitoringRuleCase.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate](SecurityMonitoringRuleCaseCreate.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleCreatePayload](SecurityMonitoringRuleCreatePayload.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod](SecurityMonitoringRuleDetectionMethod.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow](SecurityMonitoringRuleEvaluationWindow.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive](SecurityMonitoringRuleKeepAlive.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration](SecurityMonitoringRuleMaxSignalDuration.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptions](SecurityMonitoringRuleNewValueOptions.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptionsForgetAfter](SecurityMonitoringRuleNewValueOptionsForgetAfter.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptionsLearningDuration](SecurityMonitoringRuleNewValueOptionsLearningDuration.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleOptions](SecurityMonitoringRuleOptions.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleQuery](SecurityMonitoringRuleQuery.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation](SecurityMonitoringRuleQueryAggregation.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleQueryCreate](SecurityMonitoringRuleQueryCreate.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleResponse](SecurityMonitoringRuleResponse.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleSeverity](SecurityMonitoringRuleSeverity.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleTypeCreate](SecurityMonitoringRuleTypeCreate.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleTypeRead](SecurityMonitoringRuleTypeRead.md)
- [DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload](SecurityMonitoringRuleUpdatePayload.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignal](SecurityMonitoringSignal.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalAttributes](SecurityMonitoringSignalAttributes.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalListRequest](SecurityMonitoringSignalListRequest.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalListRequestFilter](SecurityMonitoringSignalListRequestFilter.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalListRequestPage](SecurityMonitoringSignalListRequestPage.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalType](SecurityMonitoringSignalType.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalsListResponse](SecurityMonitoringSignalsListResponse.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalsListResponseLinks](SecurityMonitoringSignalsListResponseLinks.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalsListResponseMeta](SecurityMonitoringSignalsListResponseMeta.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalsListResponseMetaPage](SecurityMonitoringSignalsListResponseMetaPage.md)
- [DatadogAPIClient::V2::SecurityMonitoringSignalsSort](SecurityMonitoringSignalsSort.md)
- [DatadogAPIClient::V2::ServiceAccountCreateAttributes](ServiceAccountCreateAttributes.md)
- [DatadogAPIClient::V2::ServiceAccountCreateData](ServiceAccountCreateData.md)
- [DatadogAPIClient::V2::ServiceAccountCreateRequest](ServiceAccountCreateRequest.md)
- [DatadogAPIClient::V2::User](User.md)
- [DatadogAPIClient::V2::UserAttributes](UserAttributes.md)
- [DatadogAPIClient::V2::UserCreateAttributes](UserCreateAttributes.md)
- [DatadogAPIClient::V2::UserCreateData](UserCreateData.md)
- [DatadogAPIClient::V2::UserCreateRequest](UserCreateRequest.md)
- [DatadogAPIClient::V2::UserInvitationData](UserInvitationData.md)
- [DatadogAPIClient::V2::UserInvitationDataAttributes](UserInvitationDataAttributes.md)
- [DatadogAPIClient::V2::UserInvitationRelationships](UserInvitationRelationships.md)
- [DatadogAPIClient::V2::UserInvitationResponse](UserInvitationResponse.md)
- [DatadogAPIClient::V2::UserInvitationResponseData](UserInvitationResponseData.md)
- [DatadogAPIClient::V2::UserInvitationsRequest](UserInvitationsRequest.md)
- [DatadogAPIClient::V2::UserInvitationsResponse](UserInvitationsResponse.md)
- [DatadogAPIClient::V2::UserInvitationsType](UserInvitationsType.md)
- [DatadogAPIClient::V2::UserRelationships](UserRelationships.md)
- [DatadogAPIClient::V2::UserResponse](UserResponse.md)
- [DatadogAPIClient::V2::UserResponseIncludedItem](UserResponseIncludedItem.md)
- [DatadogAPIClient::V2::UserResponseRelationships](UserResponseRelationships.md)
- [DatadogAPIClient::V2::UserUpdateAttributes](UserUpdateAttributes.md)
- [DatadogAPIClient::V2::UserUpdateData](UserUpdateData.md)
- [DatadogAPIClient::V2::UserUpdateRequest](UserUpdateRequest.md)
- [DatadogAPIClient::V2::UsersResponse](UsersResponse.md)
- [DatadogAPIClient::V2::UsersType](UsersType.md)

## Documentation for Authorization

### AuthZ

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: /oauth2/v1/authorize
- **Scopes**:
  - dashboards_public_share: The ability to share dashboards externally.
  - dashboards_read: The ability to view dashboards.
  - dashboards_write: The ability to create and change dashboards.
  - events_read: The ability to read Events data.
  - incident_read: The ability to view incidents in Datadog.
  - incident_settings_write: The ability to configure Incidents settings.
  - incident_write: The ability to create, view, and manage incidents in Datadog.
  - metrics_read: The ability to view custom metrics.
  - security_monitoring_filters_read: The ability to read Security Filters.
  - security_monitoring_filters_write: The ability to create, edit and delete Security Filters.
  - security_monitoring_rules_read: The ability to read Detection Rules.
  - security_monitoring_rules_write: The ability to create and edit Detection Rules.
  - security_monitoring_signals_read: The ability to view Security Signals.
  - user_access_invite: The ability to invite other users to your organization.
  - user_access_manage: The ability to disable users, manage user roles, and manage SAML-to-role mappings.

### apiKeyAuth

- **Type**: API key
- **API key parameter name**: DD-API-KEY
- **Location**: HTTP header

### appKeyAuth

- **Type**: API key
- **API key parameter name**: DD-APPLICATION-KEY
- **Location**: HTTP header
