# Get Monthly Usage Attribution returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_monthly_usage_attribution] = true
end
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_monthly_usage_attribution((Time.now + -3 * 86400), MonthlyUsageAttributionSupportedMetrics::INFRA_HOST_USAGE)
