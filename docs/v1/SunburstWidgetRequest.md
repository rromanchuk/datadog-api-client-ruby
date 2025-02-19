# DatadogAPIClient::V1::SunburstWidgetRequest

## Properties

| Name                      | Type                                                                                       | Description                                                                                               | Notes      |
| ------------------------- | ------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- | ---------- |
| **apm_query**             | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **audit_query**           | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **event_query**           | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **formulas**              | [**Array&lt;WidgetFormula&gt;**](WidgetFormula.md)                                         | List of formulas that operate on queries. **This feature is currently in beta.**                          | [optional] |
| **log_query**             | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **network_query**         | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **process_query**         | [**ProcessQueryDefinition**](ProcessQueryDefinition.md)                                    |                                                                                                           | [optional] |
| **profile_metrics_query** | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **q**                     | **String**                                                                                 | Widget query.                                                                                             | [optional] |
| **queries**               | [**Array&lt;FormulaAndFunctionQueryDefinition&gt;**](FormulaAndFunctionQueryDefinition.md) | List of queries that can be returned directly or used in formulas. **This feature is currently in beta.** | [optional] |
| **response_format**       | [**FormulaAndFunctionResponseFormat**](FormulaAndFunctionResponseFormat.md)                |                                                                                                           | [optional] |
| **rum_query**             | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **security_query**        | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SunburstWidgetRequest.new(
  apm_query: null,
  audit_query: null,
  event_query: null,
  formulas: null,
  log_query: null,
  network_query: null,
  process_query: null,
  profile_metrics_query: null,
  q: null,
  queries: null,
  response_format: null,
  rum_query: null,
  security_query: null
)
```
