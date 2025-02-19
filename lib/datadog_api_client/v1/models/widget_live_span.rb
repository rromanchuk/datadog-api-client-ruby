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

require 'date'
require 'time'

module DatadogAPIClient::V1
  class WidgetLiveSpan
    PAST_ONE_MINUTE = "1m".freeze
    PAST_FIVE_MINUTES = "5m".freeze
    PAST_TEN_MINUTES = "10m".freeze
    PAST_FIFTEEN_MINUTES = "15m".freeze
    PAST_THIRTY_MINUTES = "30m".freeze
    PAST_ONE_HOUR = "1h".freeze
    PAST_FOUR_HOURS = "4h".freeze
    PAST_ONE_DAY = "1d".freeze
    PAST_TWO_DAYS = "2d".freeze
    PAST_ONE_WEEK = "1w".freeze
    PAST_ONE_MONTH = "1mo".freeze
    PAST_THREE_MONTHS = "3mo".freeze
    PAST_SIX_MONTHS = "6mo".freeze
    PAST_ONE_YEAR = "1y".freeze
    ALERT = "alert".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = WidgetLiveSpan.constants.select { |c| WidgetLiveSpan::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V1::UnparsedObject.new(value) : value
    end
  end
end
