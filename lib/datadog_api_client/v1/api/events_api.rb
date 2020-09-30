=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'cgi'

module DatadogAPIClient::V1
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get an event
    # This endpoint allows you to query for event details.  **Note**: If the event you’re querying contains markdown formatting of any kind, you may see characters such as `%`,`\\`,`n` in your output.
    # @param event_id [Integer] The ID of the event.
    # @param [Hash] opts the optional parameters
    # @return [EventResponse]
    def get_event(event_id, opts = {})
      data, _status_code, _headers = get_event_with_http_info(event_id, opts)
      data
    end

    # Get an event
    # This endpoint allows you to query for event details.  **Note**: If the event you’re querying contains markdown formatting of any kind, you may see characters such as &#x60;%&#x60;,&#x60;\\&#x60;,&#x60;n&#x60; in your output.
    # @param event_id [Integer] The ID of the event.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventResponse, Integer, Hash)>] EventResponse data, response status code and response headers
    def get_event_with_http_info(event_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_event)
        unstable_enabled = @api_client.config.unstable_operations[:get_event]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_event")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "get_event"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.get_event ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsApi.get_event"
      end
      # resource path
      local_var_path = '/api/v1/events/{event_id}'.sub('{' + 'event_id' + '}', CGI.escape(event_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EventResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"EventsApi.get_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query the event stream
    # The event stream can be queried and filtered by time, priority, sources and tags.  **Note**: If the event you’re querying contains markdown formatting of any kind, you may see characters such as %,\\,n in your output.
    # @param start [Integer] POSIX timestamp.
    # @param _end [Integer] POSIX timestamp.
    # @param [Hash] opts the optional parameters
    # @option opts [EventPriority] :priority Priority of your events, either &#x60;low&#x60; or &#x60;normal&#x60;.
    # @option opts [String] :sources A comma separated string of sources.
    # @option opts [String] :tags A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope.
    # @option opts [Boolean] :unaggregated Set unaggregated to &#x60;true&#x60; to return all events within the specified [&#x60;start&#x60;,&#x60;end&#x60;] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won&#39;t be available in the output.
    # @return [EventListResponse]
    def list_events(start, _end, opts = {})
      data, _status_code, _headers = list_events_with_http_info(start, _end, opts)
      data
    end

    # Query the event stream
    # The event stream can be queried and filtered by time, priority, sources and tags.  **Note**: If the event you’re querying contains markdown formatting of any kind, you may see characters such as %,\\,n in your output.
    # @param start [Integer] POSIX timestamp.
    # @param _end [Integer] POSIX timestamp.
    # @param [Hash] opts the optional parameters
    # @option opts [EventPriority] :priority Priority of your events, either &#x60;low&#x60; or &#x60;normal&#x60;.
    # @option opts [String] :sources A comma separated string of sources.
    # @option opts [String] :tags A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope.
    # @option opts [Boolean] :unaggregated Set unaggregated to &#x60;true&#x60; to return all events within the specified [&#x60;start&#x60;,&#x60;end&#x60;] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won&#39;t be available in the output.
    # @return [Array<(EventListResponse, Integer, Hash)>] EventListResponse data, response status code and response headers
    def list_events_with_http_info(start, _end, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_events)
        unstable_enabled = @api_client.config.unstable_operations[:list_events]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_events")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "list_events"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.list_events ...'
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling EventsApi.list_events"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling EventsApi.list_events"
      end
      # resource path
      local_var_path = '/api/v1/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = start
      query_params[:'end'] = _end
      query_params[:'priority'] = opts[:'priority'] if !opts[:'priority'].nil?
      query_params[:'sources'] = opts[:'sources'] if !opts[:'sources'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'unaggregated'] = opts[:'unaggregated'] if !opts[:'unaggregated'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"EventsApi.list_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#list_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
