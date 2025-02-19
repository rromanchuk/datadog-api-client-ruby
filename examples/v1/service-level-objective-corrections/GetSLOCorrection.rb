# Get an SLO correction for an SLO returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_slo_correction] = true
end
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new

# there is a valid "correction" for "slo"
CORRECTION_DATA_ID = ENV["CORRECTION_DATA_ID"]
p api_instance.get_slo_correction(CORRECTION_DATA_ID)
