=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V2
  class IncidentTeamsAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end
    # Create a new incident team
    # Creates a new incident team.
    # @param body [IncidentTeamCreateRequest] Incident Team Payload.
    # @param [Hash] opts the optional parameters
    # @return [IncidentTeamResponse]
    def create_incident_team(body, opts = {})
      data, _status_code, _headers = create_incident_team_with_http_info(body, opts)
      data
    end

    # Create a new incident team
    # Creates a new incident team.
    # @param body [IncidentTeamCreateRequest] Incident Team Payload.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncidentTeamResponse, Integer, Hash)>] IncidentTeamResponse data, response status code and response headers
    def create_incident_team_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_incident_team)
        unstable_enabled = @api_client.config.unstable_operations[:create_incident_team]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_incident_team")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_incident_team"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentTeamsAPI.create_incident_team ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentTeamsAPI.create_incident_team"
      end
      # resource path
      local_var_path = '/api/v2/teams'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentTeamResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_incident_team,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentTeamsAPI#create_incident_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing incident team
    # Deletes an existing incident team.
    # @param team_id [String] The ID of the incident team.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_incident_team(team_id, opts = {})
      delete_incident_team_with_http_info(team_id, opts)
      nil
    end

    # Delete an existing incident team
    # Deletes an existing incident team.
    # @param team_id [String] The ID of the incident team.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_incident_team_with_http_info(team_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_incident_team)
        unstable_enabled = @api_client.config.unstable_operations[:delete_incident_team]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_incident_team")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "delete_incident_team"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentTeamsAPI.delete_incident_team ...'
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling IncidentTeamsAPI.delete_incident_team"
      end
      # resource path
      local_var_path = '/api/v2/teams/{team_id}'.sub('{' + 'team_id' + '}', CGI.escape(team_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_incident_team,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentTeamsAPI#delete_incident_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details of an incident team
    # Get details of an incident team. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident teams.
    # @param team_id [String] The ID of the incident team.
    # @param [Hash] opts the optional parameters
    # @option opts [IncidentRelatedObject] :include Specifies which types of related objects should be included in the response.
    # @return [IncidentTeamResponse]
    def get_incident_team(team_id, opts = {})
      data, _status_code, _headers = get_incident_team_with_http_info(team_id, opts)
      data
    end

    # Get details of an incident team
    # Get details of an incident team. If the &#x60;include[users]&#x60; query parameter is provided, the included attribute will contain the users related to these incident teams.
    # @param team_id [String] The ID of the incident team.
    # @param [Hash] opts the optional parameters
    # @option opts [IncidentRelatedObject] :include Specifies which types of related objects should be included in the response.
    # @return [Array<(IncidentTeamResponse, Integer, Hash)>] IncidentTeamResponse data, response status code and response headers
    def get_incident_team_with_http_info(team_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_incident_team)
        unstable_enabled = @api_client.config.unstable_operations[:get_incident_team]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_incident_team")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_incident_team"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentTeamsAPI.get_incident_team ...'
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling IncidentTeamsAPI.get_incident_team"
      end
      # resource path
      local_var_path = '/api/v2/teams/{team_id}'.sub('{' + 'team_id' + '}', CGI.escape(team_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentTeamResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_incident_team,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentTeamsAPI#get_incident_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all incident teams
    # Get all incident teams for the requesting user's organization. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident teams.
    # @param [Hash] opts the optional parameters
    # @option opts [IncidentRelatedObject] :include Specifies which types of related objects should be included in the response.
    # @option opts [Integer] :page_size Size for a given page. (default to 10)
    # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page. (default to 0)
    # @option opts [String] :filter A search query that filters teams by name.
    # @return [IncidentTeamsResponse]
    def list_incident_teams(opts = {})
      data, _status_code, _headers = list_incident_teams_with_http_info(opts)
      data
    end

    # Get a list of all incident teams
    # Get all incident teams for the requesting user&#39;s organization. If the &#x60;include[users]&#x60; query parameter is provided, the included attribute will contain the users related to these incident teams.
    # @param [Hash] opts the optional parameters
    # @option opts [IncidentRelatedObject] :include Specifies which types of related objects should be included in the response.
    # @option opts [Integer] :page_size Size for a given page.
    # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page.
    # @option opts [String] :filter A search query that filters teams by name.
    # @return [Array<(IncidentTeamsResponse, Integer, Hash)>] IncidentTeamsResponse data, response status code and response headers
    def list_incident_teams_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_incident_teams)
        unstable_enabled = @api_client.config.unstable_operations[:list_incident_teams]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_incident_teams")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_incident_teams"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentTeamsAPI.list_incident_teams ...'
      end
      # resource path
      local_var_path = '/api/v2/teams'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[offset]'] = opts[:'page_offset'] if !opts[:'page_offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentTeamsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_incident_teams,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentTeamsAPI#list_incident_teams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing incident team
    # Updates an existing incident team. Only provide the attributes which should be updated as this request is a partial update.
    # @param team_id [String] The ID of the incident team.
    # @param body [IncidentTeamUpdateRequest] Incident Team Payload.
    # @param [Hash] opts the optional parameters
    # @return [IncidentTeamResponse]
    def update_incident_team(team_id, body, opts = {})
      data, _status_code, _headers = update_incident_team_with_http_info(team_id, body, opts)
      data
    end

    # Update an existing incident team
    # Updates an existing incident team. Only provide the attributes which should be updated as this request is a partial update.
    # @param team_id [String] The ID of the incident team.
    # @param body [IncidentTeamUpdateRequest] Incident Team Payload.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncidentTeamResponse, Integer, Hash)>] IncidentTeamResponse data, response status code and response headers
    def update_incident_team_with_http_info(team_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_incident_team)
        unstable_enabled = @api_client.config.unstable_operations[:update_incident_team]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_incident_team")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_incident_team"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentTeamsAPI.update_incident_team ...'
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling IncidentTeamsAPI.update_incident_team"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentTeamsAPI.update_incident_team"
      end
      # resource path
      local_var_path = '/api/v2/teams/{team_id}'.sub('{' + 'team_id' + '}', CGI.escape(team_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentTeamResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_incident_team,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentTeamsAPI#update_incident_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
