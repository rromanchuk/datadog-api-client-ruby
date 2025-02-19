=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'spec_helper'
require 'json'

# Unit tests for DatadogAPIClient::V1::LogsAPI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LogsAPI' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::LogsAPI.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogsAPI' do
    it 'should create an instance of LogsAPI' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::LogsAPI)
    end
  end

  # unit tests for list_logs
  # Search logs
  # List endpoint returns logs that match a log search query. [Results are paginated][1].  **If you are considering archiving logs for your organization, consider use of the Datadog archive capabilities instead of the log list API. See [Datadog Logs Archive documentation][2].**  [1]: /logs/guide/collect-multiple-logs-with-pagination [2]: https://docs.datadoghq.com/logs/archives
  # @param body Logs filter
  # @param [Hash] opts the optional parameters
  # @return [LogsListResponse]
  describe 'list_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_log
  # Send logs
  # Send your logs to your Datadog platform over HTTP. Limits per HTTP request are:  - Maximum content size per payload (uncompressed): 5MB - Maximum size for a single log: 1MB - Maximum array size if sending multiple logs in an array: 1000 entries  Any log exceeding 1MB is accepted and truncated by Datadog: - For a single log request, the API truncates the log at 1MB and returns a 2xx. - For a multi-logs request, the API processes all logs, truncates only logs larger than 1MB, and returns a 2xx.  Datadog recommends sending your logs compressed. Add the &#x60;Content-Encoding: gzip&#x60; header to the request when sending compressed logs.  The status codes answered by the HTTP API are: - 200: OK - 400: Bad request (likely an issue in the payload formatting) - 403: Permission issue (likely using an invalid API Key) - 413: Payload too large (batch is above 5MB uncompressed) - 5xx: Internal error, request should be retried after some time
  # @param body Log to send (JSON format).
  # @param [Hash] opts the optional parameters
  # @option opts [ContentEncoding] :content_encoding HTTP header used to compress the media-type.
  # @option opts [String] :ddtags Log tags can be passed as query parameters with &#x60;text/plain&#x60; content type.
  # @return [Object]
  describe 'submit_log test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
