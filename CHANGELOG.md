# CHANGELOG

## 1.6.0 / 2022-01-25

* [Added] Add `filter[deleted]` parameter for searching recently deleted dashboards. See [#693](https://github.com/DataDog/datadog-api-client-ruby/pull/693).
* [Added] Add support for authentication and proxy options in Synthetics. See [#656](https://github.com/DataDog/datadog-api-client-ruby/pull/656).
* [Added] Support formulas and functions in Treemap Widget. See [#688](https://github.com/DataDog/datadog-api-client-ruby/pull/688).
* [Added] Add Cloud Workload Security Agent Rules API. See [#677](https://github.com/DataDog/datadog-api-client-ruby/pull/677).
* [Added] Add `offset` and `limit` parameters to usage listing endpoint. See [#680](https://github.com/DataDog/datadog-api-client-ruby/pull/680).
* [Added] Add monthly usage attribution API spec. See [#668](https://github.com/DataDog/datadog-api-client-ruby/pull/668).
* [Added] Add missing hosts metadata fields. See [#661](https://github.com/DataDog/datadog-api-client-ruby/pull/661).
* [Added] Add `replay_session_count ` and update documentation for `rum_session_count`. See [#679](https://github.com/DataDog/datadog-api-client-ruby/pull/679).
* [Added] Add retry options for a step in Synthetics multistep test. See [#671](https://github.com/DataDog/datadog-api-client-ruby/pull/671).
* [Added] Document `author_name` in dashboard response. See [#669](https://github.com/DataDog/datadog-api-client-ruby/pull/669).
* [Added] Add organization metadata for RUM sessions usage and expose `rum_browser_and_mobile_session_count`. See [#662](https://github.com/DataDog/datadog-api-client-ruby/pull/662).
* [Added] Add endpoint to retrieve hourly usage attribution. See [#640](https://github.com/DataDog/datadog-api-client-ruby/pull/640).
* [Added] Add support for scoped application keys. See [#619](https://github.com/DataDog/datadog-api-client-ruby/pull/619).
* [Added] Add endpoint for cloning roles. See [#648](https://github.com/DataDog/datadog-api-client-ruby/pull/648).
* [Added] Add organization metadata for audit logs, CWS, CSPM, DBM. See [#652](https://github.com/DataDog/datadog-api-client-ruby/pull/652).
* [Added] Add `ci-pipelines alert` to monitors enum. See [#647](https://github.com/DataDog/datadog-api-client-ruby/pull/647).
* [Added] Add support for sunburst widget in dashboard. See [#651](https://github.com/DataDog/datadog-api-client-ruby/pull/651).
* [Fixed] Clarify required fields for `SyntheticsAPIStep`, `SyntheticsAPITest`, and `SyntheticsBrowserTest`. See [#573](https://github.com/DataDog/datadog-api-client-ruby/pull/573).
* [Fixed] Fixes to Cloud Workload Security API. See [#691](https://github.com/DataDog/datadog-api-client-ruby/pull/691).
* [Fixed] Make downtime weekdays nullable. See [#673](https://github.com/DataDog/datadog-api-client-ruby/pull/673).
* [Fixed] Fix a typo in an incident field attribute description. See [#629](https://github.com/DataDog/datadog-api-client-ruby/pull/629).
* [Fixed] Fix `SecurityMonitoringSignal.attributes.tags` type. See [#632](https://github.com/DataDog/datadog-api-client-ruby/pull/632).
* [Changed] Add CSPM usage fields and change properties to nullable doubles. See [#700](https://github.com/DataDog/datadog-api-client-ruby/pull/700).
* [Changed] Remove read only fields in `EventCreateRequest`. See [#689](https://github.com/DataDog/datadog-api-client-ruby/pull/689).
* [Changed] Change pagination arguments for querying usage attribution. See [#667](https://github.com/DataDog/datadog-api-client-ruby/pull/667).
* [Deprecated] Remove session counts from RUM units response. See [#643](https://github.com/DataDog/datadog-api-client-ruby/pull/643).
* [Removed] Remove deprecated AgentRule field in Security Rules API for CWS. See [#660](https://github.com/DataDog/datadog-api-client-ruby/pull/660).

## 1.5.0 / 2021-12-09

* [Added] Add Limit Note for Hourly Requests. See [#614](https://github.com/DataDog/datadog-api-client-ruby/pull/614).
* [Added] Expose estimated logs usage in Usage Attribution API. See [#615](https://github.com/DataDog/datadog-api-client-ruby/pull/615).
* [Added] Add endpoint to get corrections applied to an SLO. See [#604](https://github.com/DataDog/datadog-api-client-ruby/pull/604).
* [Added] Expose `public_id` and `org_name` in Usage API response. See [#607](https://github.com/DataDog/datadog-api-client-ruby/pull/607).
* [Added] Document query in `MonitorSearchResult`. See [#605](https://github.com/DataDog/datadog-api-client-ruby/pull/605).
* [Added] Add 429 error responses. See [#585](https://github.com/DataDog/datadog-api-client-ruby/pull/585).
* [Added] Add support for profiled Fargate tasks in Usage API. See [#576](https://github.com/DataDog/datadog-api-client-ruby/pull/576).
* [Added] Add support for `websocket` synthetics tests. See [#580](https://github.com/DataDog/datadog-api-client-ruby/pull/580).
* [Added] [Synthetics] Add support for UDP API tests. See [#569](https://github.com/DataDog/datadog-api-client-ruby/pull/569).
* [Added] Add trigger synthetics tests endpoint. See [#546](https://github.com/DataDog/datadog-api-client-ruby/pull/546).
* [Added] Add RUM Units to usage metering API. See [#565](https://github.com/DataDog/datadog-api-client-ruby/pull/565).
* [Added] [dashboards formulas and functions] Add formulas and functions support to change widget. See [#478](https://github.com/DataDog/datadog-api-client-ruby/pull/478).
* [Added] Add support for Azure `automute` option. See [#551](https://github.com/DataDog/datadog-api-client-ruby/pull/551).
* [Added] Add v2 intake endpoint. See [#545](https://github.com/DataDog/datadog-api-client-ruby/pull/545).
* [Added] Add support for RRULE fields in SLO corrections. See [#507](https://github.com/DataDog/datadog-api-client-ruby/pull/507).
* [Added] Add aggregations attribute to v2 metric tag configuration. See [#485](https://github.com/DataDog/datadog-api-client-ruby/pull/485).
* [Added] Add `apm_stats_query` property to `DistributionWidgetRequest`. See [#535](https://github.com/DataDog/datadog-api-client-ruby/pull/535).
* [Fixed] Be more resilient to plain text errors. See [#611](https://github.com/DataDog/datadog-api-client-ruby/pull/611).
* [Fixed] Fix monitor `timeout_h` example and limits. See [#599](https://github.com/DataDog/datadog-api-client-ruby/pull/599).
* [Fixed] Remove event title length constraint. See [#593](https://github.com/DataDog/datadog-api-client-ruby/pull/593).
* [Fixed] Mark `batch_id` in Synthetics Trigger CI response as nullable. See [#587](https://github.com/DataDog/datadog-api-client-ruby/pull/587).
* [Fixed] SLO Correction attributes `rrule` and `duration` can be nullable. See [#571](https://github.com/DataDog/datadog-api-client-ruby/pull/571).
* [Fixed] Change `UsageNetworkFlowsHour.indexed_event_count` to match actual API. See [#568](https://github.com/DataDog/datadog-api-client-ruby/pull/568).
* [Fixed] Fix type for `ratio_in_month` in usage metering. See [#559](https://github.com/DataDog/datadog-api-client-ruby/pull/559).
* [Fixed] Use plural form for dbm hosts usage properties. See [#518](https://github.com/DataDog/datadog-api-client-ruby/pull/518).
* [Changed] [Synthetics] Fix required target in assertions and type in step results. See [#572](https://github.com/DataDog/datadog-api-client-ruby/pull/572).
* [Changed] Update Synthetics CI test metadata. See [#515](https://github.com/DataDog/datadog-api-client-ruby/pull/515).
* [Deprecated] Update property descriptions for Dashboard RBAC release. See [#544](https://github.com/DataDog/datadog-api-client-ruby/pull/544).

## 1.4.0 / 2021-10-18

* [Added] Add `metrics_collection_enabled`, `cspm_resource_collection_enabled ` and `resource_collection_enabled` to AWS integration request. See [#524](https://github.com/DataDog/datadog-api-client-ruby/pull/524).
* [Added] Add SDS to usage metering endpoint. See [#527](https://github.com/DataDog/datadog-api-client-ruby/pull/527).
* [Added] [Synthetics] Add endpoint to get details of a batch. See [#477](https://github.com/DataDog/datadog-api-client-ruby/pull/477).
* [Added] Add `type` and `is_template` properties to notebooks. See [#522](https://github.com/DataDog/datadog-api-client-ruby/pull/522).
* [Added] Add `renotify_occurrences` and `renotify_statuses` monitor options. See [#520](https://github.com/DataDog/datadog-api-client-ruby/pull/520).
* [Added] Add `servername` property to SSL Synthetics tests request. See [#510](https://github.com/DataDog/datadog-api-client-ruby/pull/510).
* [Added] Document encoding in metrics intake. See [#511](https://github.com/DataDog/datadog-api-client-ruby/pull/511).
* [Added] Add support for formulas and functions in the Scatterplot Widget for dashboards. See [#495](https://github.com/DataDog/datadog-api-client-ruby/pull/495).
* [Added] Add support for gzip and deflate encoding. See [#500](https://github.com/DataDog/datadog-api-client-ruby/pull/500).
* [Added] Add information about creator to Synthetics tests details. See [#503](https://github.com/DataDog/datadog-api-client-ruby/pull/503).
* [Added] Add support for funnel widget in dashboards. See [#497](https://github.com/DataDog/datadog-api-client-ruby/pull/497).
* [Added] Add formula and function APM resource stats query definition for dashboards. See [#489](https://github.com/DataDog/datadog-api-client-ruby/pull/489).
* [Added] ApmDependencyStatsQuery for formulas and functions dashboard widgets. See [#488](https://github.com/DataDog/datadog-api-client-ruby/pull/488).
* [Fixed] Make monitor properties `priority` and `restricted_roles` nullable. See [#532](https://github.com/DataDog/datadog-api-client-ruby/pull/532).
* [Fixed] Remove event title length constraint. See [#505](https://github.com/DataDog/datadog-api-client-ruby/pull/505).
* [Fixed] Allow nullable date in notebook cells. See [#514](https://github.com/DataDog/datadog-api-client-ruby/pull/514).
* [Fixed] `IncidentFieldAttributesMultipleValue` can be nullable. See [#509](https://github.com/DataDog/datadog-api-client-ruby/pull/509).
* [Fixed] Fix incidents schemas. See [#508](https://github.com/DataDog/datadog-api-client-ruby/pull/508).
* [Fixed] Make sure that OpenAPI definition are valid with real server responses. See [#502](https://github.com/DataDog/datadog-api-client-ruby/pull/502).
* [Fixed] Fix typo in usage attribution field names for profiled containers. See [#504](https://github.com/DataDog/datadog-api-client-ruby/pull/504).
* [Fixed] [dashboards] Make the name property required for APM Dependency Stat Query. See [#494](https://github.com/DataDog/datadog-api-client-ruby/pull/494).
* [Fixed] Mark SLO Correction Type as required. See [#479](https://github.com/DataDog/datadog-api-client-ruby/pull/479).
* [Changed] Enable compression in responses. See [#519](https://github.com/DataDog/datadog-api-client-ruby/pull/519).
* [Changed] Use AVG aggregation function for DBM queries. See [#499](https://github.com/DataDog/datadog-api-client-ruby/pull/499).

## 1.3.0 / 2021-09-13

* [Added] Add `follow_redirects` options to test request in Synthetics. See [#481](https://github.com/DataDog/datadog-api-client-ruby/pull/481).
* [Added] Added `available_values` property to template variables schema. See [#476](https://github.com/DataDog/datadog-api-client-ruby/pull/476).
* [Added] Add config variables to Synthetics browser test config. See [#475](https://github.com/DataDog/datadog-api-client-ruby/pull/475).
* [Added] Add DBM usage endpoint. See [#459](https://github.com/DataDog/datadog-api-client-ruby/pull/459).
* [Added] Add `audit alert` monitor type. See [#471](https://github.com/DataDog/datadog-api-client-ruby/pull/471).
* [Added] Add `batch_id` to the synthetics trigger endpoint response. See [#468](https://github.com/DataDog/datadog-api-client-ruby/pull/468).
* [Added] Adding support for security monitoring rule `type` property. See [#457](https://github.com/DataDog/datadog-api-client-ruby/pull/457).
* [Added] Improve resiliency of Ruby SDK when deserializing enums/oneOfs. See [#460](https://github.com/DataDog/datadog-api-client-ruby/pull/460).
* [Added] Add events data source to Dashboard widgets. See [#458](https://github.com/DataDog/datadog-api-client-ruby/pull/458).
* [Added] Add restricted roles for Synthetics global variables. See [#463](https://github.com/DataDog/datadog-api-client-ruby/pull/463).
* [Added] Webhooks integration SDK. See [#462](https://github.com/DataDog/datadog-api-client-ruby/pull/462).
* [Added] Add missing synthetics variable parser type `x_path`. See [#461](https://github.com/DataDog/datadog-api-client-ruby/pull/461).
* [Added] Add `audit_stream` to `ListStreamSource`. See [#448](https://github.com/DataDog/datadog-api-client-ruby/pull/448).
* [Added] Add percentile to dashboard `WidgetAggregator` schema. See [#444](https://github.com/DataDog/datadog-api-client-ruby/pull/444).
* [Added] Add `id_str` property to Event response. See [#451](https://github.com/DataDog/datadog-api-client-ruby/pull/451).
* [Added] Add edge to Synthetics devices. See [#454](https://github.com/DataDog/datadog-api-client-ruby/pull/454).
* [Added] Add endpoints to manage Service Accounts v2. See [#434](https://github.com/DataDog/datadog-api-client-ruby/pull/434).
* [Added] Add `new_group_delay` and deprecate `new_host_delay` monitor properties. See [#447](https://github.com/DataDog/datadog-api-client-ruby/pull/447).
* [Added] Add `include_descendants` param to usage attribution API. See [#453](https://github.com/DataDog/datadog-api-client-ruby/pull/453).
* [Added] Add support for list widget in dashboards. See [#418](https://github.com/DataDog/datadog-api-client-ruby/pull/418).
* [Added] Extend dashboards table widget requests to support formulas and functions. See [#438](https://github.com/DataDog/datadog-api-client-ruby/pull/438).
* [Added] Add CSPM to usage attribution. See [#429](https://github.com/DataDog/datadog-api-client-ruby/pull/429).
* [Added] Add support for dashboard bulk delete, restore endpoints. See [#415](https://github.com/DataDog/datadog-api-client-ruby/pull/415).
* [Added] Add support for audit logs data source in dashboards. See [#432](https://github.com/DataDog/datadog-api-client-ruby/pull/432).
* [Fixed] Fix SLO history error response type for overall errors. See [#480](https://github.com/DataDog/datadog-api-client-ruby/pull/480).
* [Fixed] Make SLO history metadata unit nullable. See [#467](https://github.com/DataDog/datadog-api-client-ruby/pull/467).
* [Fixed] Minor fixes of the incident schema. See [#464](https://github.com/DataDog/datadog-api-client-ruby/pull/464).
* [Fixed] Fix serialization of query metrics response containing nullable points. See [#427](https://github.com/DataDog/datadog-api-client-ruby/pull/427).
* [Changed] Remove metadata from required list for metric SLO history endpoint. See [#487](https://github.com/DataDog/datadog-api-client-ruby/pull/487).
* [Changed] Fix SLO history schema for groups and monitors fields. See [#484](https://github.com/DataDog/datadog-api-client-ruby/pull/484).

## 1.2.0 / 2021-07-15

* [Added] Add `allow_insecure` option for multistep steps in Synthetics. See [#426](https://github.com/DataDog/datadog-api-client-ruby/pull/426).
* [Added] Add support for ` GET /api/v2/application_keys/{app_key_id}`. See [#416](https://github.com/DataDog/datadog-api-client-ruby/pull/416).
* [Added] Add `meta` property with pagination info to SLOCorrectionList endpoint response. See [#414](https://github.com/DataDog/datadog-api-client-ruby/pull/414).
* [Added] Add support for `treemap` widget. See [#409](https://github.com/DataDog/datadog-api-client-ruby/pull/409).
* [Added] Add missing properties `query_index` and `tag_set` to `MetricsQueryMetadata`. See [#385](https://github.com/DataDog/datadog-api-client-ruby/pull/385).
* [Added] Add missing fields `hasExtendedTitle`, `type`, `version` and `updateAuthorId` for Security Monitoring Rule endpoints. See [#398](https://github.com/DataDog/datadog-api-client-ruby/pull/398).
* [Added] Dashboard RBAC role support. See [#395](https://github.com/DataDog/datadog-api-client-ruby/pull/395).
* [Added] Add missing fields in usage billable summary keys. See [#393](https://github.com/DataDog/datadog-api-client-ruby/pull/393).
* [Added] [Synthetics] Add monitor name and priority options. See [#388](https://github.com/DataDog/datadog-api-client-ruby/pull/388).
* [Fixed] Fix `status` property name for browser error status in Synthetics. See [#428](https://github.com/DataDog/datadog-api-client-ruby/pull/428).
* [Fixed] Remove US only constraint for AWS tag filtering. See [#405](https://github.com/DataDog/datadog-api-client-ruby/pull/405).
* [Fixed] Add BDD tests to synthetics. See [#404](https://github.com/DataDog/datadog-api-client-ruby/pull/404).
* [Fixed] Handle null in query metrics unit. See [#401](https://github.com/DataDog/datadog-api-client-ruby/pull/401).
* [Changed] Add separate schema for deleting AWS account. See [#425](https://github.com/DataDog/datadog-api-client-ruby/pull/425).
* [Changed] Specify format of `report_id` parameter. See [#422](https://github.com/DataDog/datadog-api-client-ruby/pull/422).
* [Changed] Remove Synthetics tick interval enum. See [#403](https://github.com/DataDog/datadog-api-client-ruby/pull/403).
* [Removed] Remove deprecated endpoints `/api/v1/usage/traces` and `/api/v1/usage/tracing-without-limits`. See [#430](https://github.com/DataDog/datadog-api-client-ruby/pull/430).

## 1.1.0 / 2021-06-08

* [Added] Add CWS to usage metering endpoint. See [#376](https://github.com/DataDog/datadog-api-client-ruby/pull/376).
* [Added] Add endpoint to list Synthetics global variables. See [#377](https://github.com/DataDog/datadog-api-client-ruby/pull/377).
* [Added] Add monitors search endpoint. See [#373](https://github.com/DataDog/datadog-api-client-ruby/pull/373).
* [Added] Add `tag_config_source` to usage attribution response. See [#368](https://github.com/DataDog/datadog-api-client-ruby/pull/368).
* [Added] Add endpoints to configure Security Filters. See [#359](https://github.com/DataDog/datadog-api-client-ruby/pull/359).
* [Added] Add `active_child` nested downtime object to `Downtime` component for downtime APIs. See [#354](https://github.com/DataDog/datadog-api-client-ruby/pull/354).
* [Added] Add `override_label` and `is_hidden` attribute for `WidgetCustomLink`. See [#358](https://github.com/DataDog/datadog-api-client-ruby/pull/358).
* [Added] Add audit logs to usage endpoints. See [#384](https://github.com/DataDog/datadog-api-client-ruby/pull/384).
* [Fixed] Fix type of day/month response attribute in custom metrics usage. See [#387](https://github.com/DataDog/datadog-api-client-ruby/pull/387).
* [Fixed] Make `assertions` field optional for multistep synthetics tests, and add `global` config variable type. See [#375](https://github.com/DataDog/datadog-api-client-ruby/pull/375).
* [Fixed] Properly mark monitor required fields. See [#366](https://github.com/DataDog/datadog-api-client-ruby/pull/366).
* [Fixed] Rename `incident_integration_metadata` to `incident_integrations` to match API. See [#362](https://github.com/DataDog/datadog-api-client-ruby/pull/362).
* [Fixed] Properly mark several synthetics attributes as read only. See [#357](https://github.com/DataDog/datadog-api-client-ruby/pull/357).
* [Fixed] Fix paging attributes of usage attribution endpoints. See [#355](https://github.com/DataDog/datadog-api-client-ruby/pull/355).
* [Changed] Rename `compliance` to `CSPM` in usage endpoint. See [#384](https://github.com/DataDog/datadog-api-client-ruby/pull/384).

## 1.0.0 / 2021-05-12

* [Added] Notebooks Public API Documentation. See [#351](https://github.com/DataDog/datadog-api-client-ruby/pull/351).
* [Added] Add `logs_by_retention` usage property and `GetUsageLogsByRetention` endpoint. See [#345](https://github.com/DataDog/datadog-api-client-ruby/pull/345).
* [Added] Add anomaly detection method to `SecurityMonitoringRuleDetectionMethod` enum. See [#344](https://github.com/DataDog/datadog-api-client-ruby/pull/344).
* [Added] Add `with_configured_alert_ids` parameter to get a SLO details endpoint. See [#341](https://github.com/DataDog/datadog-api-client-ruby/pull/341).
* [Added] Add `setCookie`, `dnsServerPort`,  `allowFailure ` and `isCritical` fields for Synthetics tests. See [#338](https://github.com/DataDog/datadog-api-client-ruby/pull/338).
* [Added] Add `metadata` property with pagination info to `SLOList` endpoint response. See [#334](https://github.com/DataDog/datadog-api-client-ruby/pull/334).
* [Added] Add new properties to group widget, note widget and image widget. See [#331](https://github.com/DataDog/datadog-api-client-ruby/pull/331).
* [Added] Add support for a `rate` metric type in manage metric tags v2 endpoint. See [#329](https://github.com/DataDog/datadog-api-client-ruby/pull/329).
* [Added] Add support for ICMP Synthetics tests. See [#326](https://github.com/DataDog/datadog-api-client-ruby/pull/326).
* [Added] Add vSphere usage information. See [#323](https://github.com/DataDog/datadog-api-client-ruby/pull/323).
* [Added] Mark metric volumes and ingested tags endpoints as stable. See [#318](https://github.com/DataDog/datadog-api-client-ruby/pull/318).
* [Added] Add `filter[shared]` query parameter for searching dashboards. See [#310](https://github.com/DataDog/datadog-api-client-ruby/pull/310).
* [Added] Add profiling product fields in usage metering endpoint. See [#309](https://github.com/DataDog/datadog-api-client-ruby/pull/309).
* [Added] Add `title` and `background_color` properties to dashboard group widget. See [#308](https://github.com/DataDog/datadog-api-client-ruby/pull/308).
* [Added] Add `marker`, `xaxis` and `yaxis` properties on distribution widgets. See [#322](https://github.com/DataDog/datadog-api-client-ruby/pull/322).
* [Fixed] Remove default value of `is_column_break` layout property of dashboard. See [#350](https://github.com/DataDog/datadog-api-client-ruby/pull/350).
* [Changed] Enumerate accepted values for fields parameter in usage attribution requests. See [#348](https://github.com/DataDog/datadog-api-client-ruby/pull/348).
* [Changed] Add frequency and remove request as required field from synthetics test. See [#346](https://github.com/DataDog/datadog-api-client-ruby/pull/346).
* [Deprecated] Deprecate `legend_size` and `show_legend` properties on distribution widgets. See [#322](https://github.com/DataDog/datadog-api-client-ruby/pull/322).
* [Removed] Remove deprecated Synthetics methods `CreateTest` and `UpdateTest`. See [#324](https://github.com/DataDog/datadog-api-client-ruby/pull/324).

## v1.0.0.beta.3 / 2021-04-15

* [Added] Add `reflow_type` property to dashboard object. See [#294](https://github.com/DataDog/datadog-api-client-ruby/pull/294).
* [Added] Add security track and formulas and functions support for geomap dashboard widget. See [#292](https://github.com/DataDog/datadog-api-client-ruby/pull/292).
* [Added] Generate intake endpoints. See [#289](https://github.com/DataDog/datadog-api-client-ruby/pull/289).
* [Added] Add endpoint for listing all downtimes for the specified monitor. See [#282](https://github.com/DataDog/datadog-api-client-ruby/pull/282).
* [Added] Add `modified_at` attribute to user response v2 schema. See [#273](https://github.com/DataDog/datadog-api-client-ruby/pull/273).
* [Added] Add default environment loading in clients. See [#271](https://github.com/DataDog/datadog-api-client-ruby/pull/271).
* [Added] Add `passed`, `noSavingResponseBody`, `noScreenshot`, and `disableCors` fields to Synthetics. See [#270](https://github.com/DataDog/datadog-api-client-ruby/pull/270).
* [Added] Expose user-friendly `api_key=`/`application_key=` setters for authentication. See [#266](https://github.com/DataDog/datadog-api-client-ruby/pull/266).
* [Added] Add compliance usage endpoint and compliance host statistics. See [#265](https://github.com/DataDog/datadog-api-client-ruby/pull/265).
* [Added] Add tag filter options for `/api/v{1,2}/metrics`. See [#264](https://github.com/DataDog/datadog-api-client-ruby/pull/264).
* [Added] Add usage fields for Heroku and OpenTelemetry. See [#261](https://github.com/DataDog/datadog-api-client-ruby/pull/261).
* [Added] Add `global_time_target` field to SLO widget. See [#259](https://github.com/DataDog/datadog-api-client-ruby/pull/259).
* [Added] Add method to export an API test in Synthetics. See [#258](https://github.com/DataDog/datadog-api-client-ruby/pull/258).
* [Added] Add metadata to usage top average metrics response. See [#257](https://github.com/DataDog/datadog-api-client-ruby/pull/257).
* [Added] Add median as valid aggregator for formulas and functions. See [#252](https://github.com/DataDog/datadog-api-client-ruby/pull/252).
* [Added] Add legend_layout and legend_columns to timeseries widget definition [VIZZ-1211]. See [#247](https://github.com/DataDog/datadog-api-client-ruby/pull/247).
* [Added] Update the spec for GetSLOHistory. See [#246](https://github.com/DataDog/datadog-api-client-ruby/pull/246).
* [Added] Add support for multistep tests in Synthetics. See [#239](https://github.com/DataDog/datadog-api-client-ruby/pull/239).
* [Added] [Synthetics] Add core web vitals to browser results. See [#234](https://github.com/DataDog/datadog-api-client-ruby/pull/234).
* [Added] Add v2 metric tags and metric volumes endpoints. See [#233](https://github.com/DataDog/datadog-api-client-ruby/pull/233).
* [Added] Add new endpoints for browser API tests in Synthetics. See [#230](https://github.com/DataDog/datadog-api-client-ruby/pull/230).
* [Added] add groupby_simple_monitor option to monitor spec. See [#229](https://github.com/DataDog/datadog-api-client-ruby/pull/229).
* [Added] [dashboards formula & function] Allow formula and functions in query value requests. See [#228](https://github.com/DataDog/datadog-api-client-ruby/pull/228).
* [Added] [dashboards formula & function] Allow formula and functions in toplist requests. See [#226](https://github.com/DataDog/datadog-api-client-ruby/pull/226).
* [Added] Generate slack resource for clients. See [#218](https://github.com/DataDog/datadog-api-client-ruby/pull/218).
* [Added] Add detectionMethod and newValueOptions fields to security monitoring rules. See [#217](https://github.com/DataDog/datadog-api-client-ruby/pull/217).
* [Added] Expose "event-v2 alert" monitor type. See [#216](https://github.com/DataDog/datadog-api-client-ruby/pull/216).
* [Added] Add new US3 region. See [#215](https://github.com/DataDog/datadog-api-client-ruby/pull/215).
* [Added] Add org_name field to usage attribution response. See [#214](https://github.com/DataDog/datadog-api-client-ruby/pull/214).
* [Added] Add profile_metrics_query properties to dashboard widget requests. See [#211](https://github.com/DataDog/datadog-api-client-ruby/pull/211).
* [Added] Add geomap widget to dashboards v1. See [#207](https://github.com/DataDog/datadog-api-client-ruby/pull/207).
* [Added] Add v2 API for metric tag configuration. See [#206](https://github.com/DataDog/datadog-api-client-ruby/pull/206).
* [Added] Add Lambda invocations usage to response. See [#205](https://github.com/DataDog/datadog-api-client-ruby/pull/205).
* [Added] Remove unstable flag for logs apis. See [#199](https://github.com/DataDog/datadog-api-client-ruby/pull/199).
* [Added] [monitor] Add restricted roles to update. See [#187](https://github.com/DataDog/datadog-api-client-ruby/pull/187).
* [Added] Add endpoint for IoT billing usage. See [#184](https://github.com/DataDog/datadog-api-client-ruby/pull/184).
* [Added] Add query parameters for SLO search endpoint. See [#182](https://github.com/DataDog/datadog-api-client-ruby/pull/182).
* [Added] Add fields for formula and function query definition and widget formulas. See [#179](https://github.com/DataDog/datadog-api-client-ruby/pull/179).
* [Added] Add global_time to time_window slo widget. See [#177](https://github.com/DataDog/datadog-api-client-ruby/pull/177).
* [Added] Update required fields in create and update requests . See [#171](https://github.com/DataDog/datadog-api-client-ruby/pull/171).
* [Added] Add docs for log index creation (POST). See [#168](https://github.com/DataDog/datadog-api-client-ruby/pull/168).
* [Fixed] Browser Test message required. See [#254](https://github.com/DataDog/datadog-api-client-ruby/pull/254).
* [Fixed] rule: all nested objects in arrays must be defined on top-level. See [#208](https://github.com/DataDog/datadog-api-client-ruby/pull/208).
* [Fixed] Add support for DD_SITE in examples. See [#202](https://github.com/DataDog/datadog-api-client-ruby/pull/202).
* [Fixed] [dashboards] Change analyzed_spans -> spans. See [#201](https://github.com/DataDog/datadog-api-client-ruby/pull/201).
* [Fixed] Fix AWS tag filter delete request. See [#197](https://github.com/DataDog/datadog-api-client-ruby/pull/197).
* [Fixed] [dashboards] Remove unnecessary field from TimeSeriesFormulaAndFunctionEventQuery. See [#196](https://github.com/DataDog/datadog-api-client-ruby/pull/196).
* [Fixed] Fix unit format in SLO history response. See [#191](https://github.com/DataDog/datadog-api-client-ruby/pull/191).
* [Fixed] [formulas and functions ] Change group_by from object -> list of objects. See [#190](https://github.com/DataDog/datadog-api-client-ruby/pull/190).
* [Fixed] [monitor] Fix location of restricted roles.. See [#185](https://github.com/DataDog/datadog-api-client-ruby/pull/185).
* [Fixed] Fix paging parameter names for logs aggregate queries. See [#181](https://github.com/DataDog/datadog-api-client-ruby/pull/181).
* [Fixed] Add additionalProperties: false to synthetics target field. See [#165](https://github.com/DataDog/datadog-api-client-ruby/pull/165).
* [Changed] Return correct object in `GetBrowserTest` endpoint. See [#281](https://github.com/DataDog/datadog-api-client-ruby/pull/281).
* [Changed] Add agent rules in security monitoring rules queries. See [#260](https://github.com/DataDog/datadog-api-client-ruby/pull/260).
* [Changed] Use strings as keys to configure server variables. See [#244](https://github.com/DataDog/datadog-api-client-ruby/pull/244).
* [Changed] [formulas and functions] Make query name required. See [#237](https://github.com/DataDog/datadog-api-client-ruby/pull/237).
* [Changed] [dashboards formula and functions] Rename objects for formula and functions to be more generic. See [#220](https://github.com/DataDog/datadog-api-client-ruby/pull/220).
* [Changed] Fix some integer/number formats in Logs and Synthetics endpoints. See [#166](https://github.com/DataDog/datadog-api-client-ruby/pull/166).

## 1.0.0.beta.2 / 2021-01-14

* [Added] Add SLO Corrections endpoint. See [#161](https://github.com/DataDog/datadog-api-client-ruby/pull/161).
* [Added] Add new live and rehydrated logs breakdowns for Usage API. See [#159](https://github.com/DataDog/datadog-api-client-ruby/pull/159).
* [Added] Add support for Synthetics variables from test. See [#150](https://github.com/DataDog/datadog-api-client-ruby/pull/150).
* [Added] Add filters to rule endpoints in security monitoring API. See [#145](https://github.com/DataDog/datadog-api-client-ruby/pull/145).
* [Added] Add Azure app services fields to Usage API. See [#144](https://github.com/DataDog/datadog-api-client-ruby/pull/144).
* [Added] Add mobile RUM OS types usage fields. See [#143](https://github.com/DataDog/datadog-api-client-ruby/pull/143).
* [Added] Add config variables for synthetics API tests. See [#142](https://github.com/DataDog/datadog-api-client-ruby/pull/142).
* [Added] Add endpoints for the public API of Logs2Metrics. See [#140](https://github.com/DataDog/datadog-api-client-ruby/pull/140).
* [Added] Add endpoints for API Keys v2. See [#137](https://github.com/DataDog/datadog-api-client-ruby/pull/137).
* [Added] Add javascript value to synthetics browser variable types. See [#134](https://github.com/DataDog/datadog-api-client-ruby/pull/134).
* [Added] Add synthetics assertion operator. See [#121](https://github.com/DataDog/datadog-api-client-ruby/pull/121).
* [Fixed] Require version.rb in v1 and v2 submodule to allow individual import. See [#133](https://github.com/DataDog/datadog-api-client-ruby/pull/133).
* [Changed] Extract enum to specific schema in incidents endpoint. See [#158](https://github.com/DataDog/datadog-api-client-ruby/pull/158).
* [Changed] Extract key sorting enum to a specific schema in key management endpoints. See [#154](https://github.com/DataDog/datadog-api-client-ruby/pull/154).
* [Changed] Rename `list_sl_os` to `list_slos`. See [#151](https://github.com/DataDog/datadog-api-client-ruby/pull/151).
* [Removed] Remove Synthetic resources property. See [#138](https://github.com/DataDog/datadog-api-client-ruby/pull/138).

## 1.0.0-beta.1 / 2020-12-09

* [Added] First beta release of the Ruby datadog-api-client library
