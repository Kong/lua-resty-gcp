package = "lua-resty-gcp"
version = "0.0.4-1"
source = {
   url = "git+https://github.com/Kong/lua-resty-gcp",
   tag = "0.0.4"
}
description = {
  summary = "GCP SDK for OpenResty",
  detailed = [[
    GCP SDK generated from the GCP Discovery API.
  ]],
  license = "Apache 2.0",
}
dependencies = {
   "lua-resty-jwt == 0.2.3"
}
build = {
   type = "builtin",
   modules = {
      ["resty.gcp.init"]                                = "src/resty/gcp/init.lua",
      ["resty.gcp.request.http.http"]                   = "src/resty/gcp/request/http/http.lua",
      ["resty.gcp.request.http.socket"]                 = "src/resty/gcp/request/http/socket.lua",
      ["resty.gcp.request.credentials.accesstoken"]     = "src/resty/gcp/request/credentials/accesstoken.lua",
	  ["resty.gcp.request.discovery"]     				= "src/resty/gcp/request/discovery.lua",
--START-MARKER--
		["resty.gcp.api.abusiveexperiencereport_v1"]="src/resty/gcp/api/abusiveexperiencereport_v1.lua",
		["resty.gcp.api.acceleratedmobilepageurl_v1"]="src/resty/gcp/api/acceleratedmobilepageurl_v1.lua",
		["resty.gcp.api.accessapproval_v1"]="src/resty/gcp/api/accessapproval_v1.lua",
		["resty.gcp.api.accesscontextmanager_v1beta"]="src/resty/gcp/api/accesscontextmanager_v1beta.lua",
		["resty.gcp.api.accesscontextmanager_v1"]="src/resty/gcp/api/accesscontextmanager_v1.lua",
		["resty.gcp.api.adexchangebuyer2_v2beta1"]="src/resty/gcp/api/adexchangebuyer2_v2beta1.lua",
		["resty.gcp.api.adexperiencereport_v1"]="src/resty/gcp/api/adexperiencereport_v1.lua",
		["resty.gcp.api.admin_datatransfer_v1"]="src/resty/gcp/api/admin_datatransfer_v1.lua",
		["resty.gcp.api.admin_directory_v1"]="src/resty/gcp/api/admin_directory_v1.lua",
		["resty.gcp.api.admin_reports_v1"]="src/resty/gcp/api/admin_reports_v1.lua",
		["resty.gcp.api.admob_v1beta"]="src/resty/gcp/api/admob_v1beta.lua",
		["resty.gcp.api.admob_v1"]="src/resty/gcp/api/admob_v1.lua",
		["resty.gcp.api.adsense_v2"]="src/resty/gcp/api/adsense_v2.lua",
		["resty.gcp.api.adsensehost_v4p1"]="src/resty/gcp/api/adsensehost_v4p1.lua",
		["resty.gcp.api.alertcenter_v1beta1"]="src/resty/gcp/api/alertcenter_v1beta1.lua",
		["resty.gcp.api.analytics_v3"]="src/resty/gcp/api/analytics_v3.lua",
		["resty.gcp.api.analyticsadmin_v1alpha"]="src/resty/gcp/api/analyticsadmin_v1alpha.lua",
		["resty.gcp.api.analyticsdata_v1beta"]="src/resty/gcp/api/analyticsdata_v1beta.lua",
		["resty.gcp.api.analyticshub_v1beta1"]="src/resty/gcp/api/analyticshub_v1beta1.lua",
		["resty.gcp.api.analyticsreporting_v4"]="src/resty/gcp/api/analyticsreporting_v4.lua",
		["resty.gcp.api.androiddeviceprovisioning_v1"]="src/resty/gcp/api/androiddeviceprovisioning_v1.lua",
		["resty.gcp.api.androidenterprise_v1"]="src/resty/gcp/api/androidenterprise_v1.lua",
		["resty.gcp.api.androidmanagement_v1"]="src/resty/gcp/api/androidmanagement_v1.lua",
		["resty.gcp.api.androidpublisher_v3"]="src/resty/gcp/api/androidpublisher_v3.lua",
		["resty.gcp.api.apigateway_v1beta"]="src/resty/gcp/api/apigateway_v1beta.lua",
		["resty.gcp.api.apigateway_v1"]="src/resty/gcp/api/apigateway_v1.lua",
		["resty.gcp.api.apigee_v1"]="src/resty/gcp/api/apigee_v1.lua",
		["resty.gcp.api.apigeeregistry_v1"]="src/resty/gcp/api/apigeeregistry_v1.lua",
		["resty.gcp.api.apikeys_v2"]="src/resty/gcp/api/apikeys_v2.lua",
		["resty.gcp.api.appengine_v1alpha"]="src/resty/gcp/api/appengine_v1alpha.lua",
		["resty.gcp.api.appengine_v1beta"]="src/resty/gcp/api/appengine_v1beta.lua",
		["resty.gcp.api.appengine_v1"]="src/resty/gcp/api/appengine_v1.lua",
		["resty.gcp.api.area120tables_v1alpha1"]="src/resty/gcp/api/area120tables_v1alpha1.lua",
		["resty.gcp.api.artifactregistry_v1beta1"]="src/resty/gcp/api/artifactregistry_v1beta1.lua",
		["resty.gcp.api.artifactregistry_v1beta2"]="src/resty/gcp/api/artifactregistry_v1beta2.lua",
		["resty.gcp.api.artifactregistry_v1"]="src/resty/gcp/api/artifactregistry_v1.lua",
		["resty.gcp.api.assuredworkloads_v1"]="src/resty/gcp/api/assuredworkloads_v1.lua",
		["resty.gcp.api.authorizedbuyersmarketplace_v1"]="src/resty/gcp/api/authorizedbuyersmarketplace_v1.lua",
		["resty.gcp.api.baremetalsolution_v1alpha1"]="src/resty/gcp/api/baremetalsolution_v1alpha1.lua",
		["resty.gcp.api.baremetalsolution_v1"]="src/resty/gcp/api/baremetalsolution_v1.lua",
		["resty.gcp.api.baremetalsolution_v2"]="src/resty/gcp/api/baremetalsolution_v2.lua",
		["resty.gcp.api.beyondcorp_v1alpha"]="src/resty/gcp/api/beyondcorp_v1alpha.lua",
		["resty.gcp.api.beyondcorp_v1"]="src/resty/gcp/api/beyondcorp_v1.lua",
		["resty.gcp.api.bigquery_v2"]="src/resty/gcp/api/bigquery_v2.lua",
		["resty.gcp.api.bigqueryconnection_v1beta1"]="src/resty/gcp/api/bigqueryconnection_v1beta1.lua",
		["resty.gcp.api.bigquerydatatransfer_v1"]="src/resty/gcp/api/bigquerydatatransfer_v1.lua",
		["resty.gcp.api.bigqueryreservation_v1beta1"]="src/resty/gcp/api/bigqueryreservation_v1beta1.lua",
		["resty.gcp.api.bigqueryreservation_v1"]="src/resty/gcp/api/bigqueryreservation_v1.lua",
		["resty.gcp.api.bigtableadmin_v2"]="src/resty/gcp/api/bigtableadmin_v2.lua",
		["resty.gcp.api.billingbudgets_v1beta1"]="src/resty/gcp/api/billingbudgets_v1beta1.lua",
		["resty.gcp.api.billingbudgets_v1"]="src/resty/gcp/api/billingbudgets_v1.lua",
		["resty.gcp.api.binaryauthorization_v1beta1"]="src/resty/gcp/api/binaryauthorization_v1beta1.lua",
		["resty.gcp.api.binaryauthorization_v1"]="src/resty/gcp/api/binaryauthorization_v1.lua",
		["resty.gcp.api.blogger_v2"]="src/resty/gcp/api/blogger_v2.lua",
		["resty.gcp.api.blogger_v3"]="src/resty/gcp/api/blogger_v3.lua",
		["resty.gcp.api.books_v1"]="src/resty/gcp/api/books_v1.lua",
		["resty.gcp.api.businessprofileperformance_v1"]="src/resty/gcp/api/businessprofileperformance_v1.lua",
		["resty.gcp.api.calendar_v3"]="src/resty/gcp/api/calendar_v3.lua",
		["resty.gcp.api.certificatemanager_v1"]="src/resty/gcp/api/certificatemanager_v1.lua",
		["resty.gcp.api.chat_v1"]="src/resty/gcp/api/chat_v1.lua",
		["resty.gcp.api.chromemanagement_v1"]="src/resty/gcp/api/chromemanagement_v1.lua",
		["resty.gcp.api.chromepolicy_v1"]="src/resty/gcp/api/chromepolicy_v1.lua",
		["resty.gcp.api.chromeuxreport_v1"]="src/resty/gcp/api/chromeuxreport_v1.lua",
		["resty.gcp.api.civicinfo_v2"]="src/resty/gcp/api/civicinfo_v2.lua",
		["resty.gcp.api.classroom_v1"]="src/resty/gcp/api/classroom_v1.lua",
		["resty.gcp.api.cloudasset_v1p1beta1"]="src/resty/gcp/api/cloudasset_v1p1beta1.lua",
		["resty.gcp.api.cloudasset_v1p5beta1"]="src/resty/gcp/api/cloudasset_v1p5beta1.lua",
		["resty.gcp.api.cloudasset_v1p7beta1"]="src/resty/gcp/api/cloudasset_v1p7beta1.lua",
		["resty.gcp.api.cloudasset_v1beta1"]="src/resty/gcp/api/cloudasset_v1beta1.lua",
		["resty.gcp.api.cloudasset_v1"]="src/resty/gcp/api/cloudasset_v1.lua",
		["resty.gcp.api.cloudbilling_v1"]="src/resty/gcp/api/cloudbilling_v1.lua",
		["resty.gcp.api.cloudbuild_v1alpha1"]="src/resty/gcp/api/cloudbuild_v1alpha1.lua",
		["resty.gcp.api.cloudbuild_v1alpha2"]="src/resty/gcp/api/cloudbuild_v1alpha2.lua",
		["resty.gcp.api.cloudbuild_v1beta1"]="src/resty/gcp/api/cloudbuild_v1beta1.lua",
		["resty.gcp.api.cloudbuild_v1"]="src/resty/gcp/api/cloudbuild_v1.lua",
		["resty.gcp.api.cloudchannel_v1"]="src/resty/gcp/api/cloudchannel_v1.lua",
		["resty.gcp.api.clouddebugger_v2"]="src/resty/gcp/api/clouddebugger_v2.lua",
		["resty.gcp.api.clouddeploy_v1"]="src/resty/gcp/api/clouddeploy_v1.lua",
		["resty.gcp.api.clouderrorreporting_v1beta1"]="src/resty/gcp/api/clouderrorreporting_v1beta1.lua",
		["resty.gcp.api.cloudfunctions_v2alpha"]="src/resty/gcp/api/cloudfunctions_v2alpha.lua",
		["resty.gcp.api.cloudfunctions_v2beta"]="src/resty/gcp/api/cloudfunctions_v2beta.lua",
		["resty.gcp.api.cloudfunctions_v1"]="src/resty/gcp/api/cloudfunctions_v1.lua",
		["resty.gcp.api.cloudfunctions_v2"]="src/resty/gcp/api/cloudfunctions_v2.lua",
		["resty.gcp.api.cloudidentity_v1beta1"]="src/resty/gcp/api/cloudidentity_v1beta1.lua",
		["resty.gcp.api.cloudidentity_v1"]="src/resty/gcp/api/cloudidentity_v1.lua",
		["resty.gcp.api.cloudiot_v1"]="src/resty/gcp/api/cloudiot_v1.lua",
		["resty.gcp.api.cloudkms_v1"]="src/resty/gcp/api/cloudkms_v1.lua",
		["resty.gcp.api.cloudprofiler_v2"]="src/resty/gcp/api/cloudprofiler_v2.lua",
		["resty.gcp.api.cloudresourcemanager_v1beta1"]="src/resty/gcp/api/cloudresourcemanager_v1beta1.lua",
		["resty.gcp.api.cloudresourcemanager_v2beta1"]="src/resty/gcp/api/cloudresourcemanager_v2beta1.lua",
		["resty.gcp.api.cloudresourcemanager_v1"]="src/resty/gcp/api/cloudresourcemanager_v1.lua",
		["resty.gcp.api.cloudresourcemanager_v2"]="src/resty/gcp/api/cloudresourcemanager_v2.lua",
		["resty.gcp.api.cloudresourcemanager_v3"]="src/resty/gcp/api/cloudresourcemanager_v3.lua",
		["resty.gcp.api.cloudscheduler_v1beta1"]="src/resty/gcp/api/cloudscheduler_v1beta1.lua",
		["resty.gcp.api.cloudscheduler_v1"]="src/resty/gcp/api/cloudscheduler_v1.lua",
		["resty.gcp.api.cloudsearch_v1"]="src/resty/gcp/api/cloudsearch_v1.lua",
		["resty.gcp.api.cloudshell_v1"]="src/resty/gcp/api/cloudshell_v1.lua",
		["resty.gcp.api.cloudsupport_v2beta"]="src/resty/gcp/api/cloudsupport_v2beta.lua",
		["resty.gcp.api.cloudtasks_v2beta2"]="src/resty/gcp/api/cloudtasks_v2beta2.lua",
		["resty.gcp.api.cloudtasks_v2beta3"]="src/resty/gcp/api/cloudtasks_v2beta3.lua",
		["resty.gcp.api.cloudtasks_v2"]="src/resty/gcp/api/cloudtasks_v2.lua",
		["resty.gcp.api.cloudtrace_v2beta1"]="src/resty/gcp/api/cloudtrace_v2beta1.lua",
		["resty.gcp.api.cloudtrace_v1"]="src/resty/gcp/api/cloudtrace_v1.lua",
		["resty.gcp.api.cloudtrace_v2"]="src/resty/gcp/api/cloudtrace_v2.lua",
		["resty.gcp.api.composer_v1beta1"]="src/resty/gcp/api/composer_v1beta1.lua",
		["resty.gcp.api.composer_v1"]="src/resty/gcp/api/composer_v1.lua",
		["resty.gcp.api.compute_alpha"]="src/resty/gcp/api/compute_alpha.lua",
		["resty.gcp.api.compute_beta"]="src/resty/gcp/api/compute_beta.lua",
		["resty.gcp.api.compute_v1"]="src/resty/gcp/api/compute_v1.lua",
		["resty.gcp.api.connectors_v1"]="src/resty/gcp/api/connectors_v1.lua",
		["resty.gcp.api.contactcenterinsights_v1"]="src/resty/gcp/api/contactcenterinsights_v1.lua",
		["resty.gcp.api.container_v1beta1"]="src/resty/gcp/api/container_v1beta1.lua",
		["resty.gcp.api.container_v1"]="src/resty/gcp/api/container_v1.lua",
		["resty.gcp.api.containeranalysis_v1alpha1"]="src/resty/gcp/api/containeranalysis_v1alpha1.lua",
		["resty.gcp.api.containeranalysis_v1beta1"]="src/resty/gcp/api/containeranalysis_v1beta1.lua",
		["resty.gcp.api.containeranalysis_v1"]="src/resty/gcp/api/containeranalysis_v1.lua",
		["resty.gcp.api.content_v2p1"]="src/resty/gcp/api/content_v2p1.lua",
		["resty.gcp.api.customsearch_v1"]="src/resty/gcp/api/customsearch_v1.lua",
		["resty.gcp.api.datacatalog_v1beta1"]="src/resty/gcp/api/datacatalog_v1beta1.lua",
		["resty.gcp.api.datacatalog_v1"]="src/resty/gcp/api/datacatalog_v1.lua",
		["resty.gcp.api.dataflow_v1b3"]="src/resty/gcp/api/dataflow_v1b3.lua",
		["resty.gcp.api.datafusion_v1beta1"]="src/resty/gcp/api/datafusion_v1beta1.lua",
		["resty.gcp.api.datafusion_v1"]="src/resty/gcp/api/datafusion_v1.lua",
		["resty.gcp.api.datalabeling_v1beta1"]="src/resty/gcp/api/datalabeling_v1beta1.lua",
		["resty.gcp.api.datamigration_v1beta1"]="src/resty/gcp/api/datamigration_v1beta1.lua",
		["resty.gcp.api.datamigration_v1"]="src/resty/gcp/api/datamigration_v1.lua",
		["resty.gcp.api.datapipelines_v1"]="src/resty/gcp/api/datapipelines_v1.lua",
		["resty.gcp.api.dataplex_v1"]="src/resty/gcp/api/dataplex_v1.lua",
		["resty.gcp.api.dataproc_v1"]="src/resty/gcp/api/dataproc_v1.lua",
		["resty.gcp.api.datastore_v1beta1"]="src/resty/gcp/api/datastore_v1beta1.lua",
		["resty.gcp.api.datastore_v1beta3"]="src/resty/gcp/api/datastore_v1beta3.lua",
		["resty.gcp.api.datastore_v1"]="src/resty/gcp/api/datastore_v1.lua",
		["resty.gcp.api.datastream_v1alpha1"]="src/resty/gcp/api/datastream_v1alpha1.lua",
		["resty.gcp.api.datastream_v1"]="src/resty/gcp/api/datastream_v1.lua",
		["resty.gcp.api.deploymentmanager_alpha"]="src/resty/gcp/api/deploymentmanager_alpha.lua",
		["resty.gcp.api.deploymentmanager_v2beta"]="src/resty/gcp/api/deploymentmanager_v2beta.lua",
		["resty.gcp.api.deploymentmanager_v2"]="src/resty/gcp/api/deploymentmanager_v2.lua",
		["resty.gcp.api.dfareporting_v3p5"]="src/resty/gcp/api/dfareporting_v3p5.lua",
		["resty.gcp.api.dfareporting_v4"]="src/resty/gcp/api/dfareporting_v4.lua",
		["resty.gcp.api.dialogflow_v2beta1"]="src/resty/gcp/api/dialogflow_v2beta1.lua",
		["resty.gcp.api.dialogflow_v3beta1"]="src/resty/gcp/api/dialogflow_v3beta1.lua",
		["resty.gcp.api.dialogflow_v2"]="src/resty/gcp/api/dialogflow_v2.lua",
		["resty.gcp.api.dialogflow_v3"]="src/resty/gcp/api/dialogflow_v3.lua",
		["resty.gcp.api.digitalassetlinks_v1"]="src/resty/gcp/api/digitalassetlinks_v1.lua",
		["resty.gcp.api.discovery_v1"]="src/resty/gcp/api/discovery_v1.lua",
		["resty.gcp.api.displayvideo_v1"]="src/resty/gcp/api/displayvideo_v1.lua",
		["resty.gcp.api.dlp_v2"]="src/resty/gcp/api/dlp_v2.lua",
		["resty.gcp.api.dns_v1beta2"]="src/resty/gcp/api/dns_v1beta2.lua",
		["resty.gcp.api.dns_v1"]="src/resty/gcp/api/dns_v1.lua",
		["resty.gcp.api.docs_v1"]="src/resty/gcp/api/docs_v1.lua",
		["resty.gcp.api.documentai_v1beta2"]="src/resty/gcp/api/documentai_v1beta2.lua",
		["resty.gcp.api.documentai_v1beta3"]="src/resty/gcp/api/documentai_v1beta3.lua",
		["resty.gcp.api.documentai_v1"]="src/resty/gcp/api/documentai_v1.lua",
		["resty.gcp.api.domains_v1alpha2"]="src/resty/gcp/api/domains_v1alpha2.lua",
		["resty.gcp.api.domains_v1beta1"]="src/resty/gcp/api/domains_v1beta1.lua",
		["resty.gcp.api.domains_v1"]="src/resty/gcp/api/domains_v1.lua",
		["resty.gcp.api.domainsrdap_v1"]="src/resty/gcp/api/domainsrdap_v1.lua",
		["resty.gcp.api.doubleclickbidmanager_v1p1"]="src/resty/gcp/api/doubleclickbidmanager_v1p1.lua",
		["resty.gcp.api.doubleclickbidmanager_v2"]="src/resty/gcp/api/doubleclickbidmanager_v2.lua",
		["resty.gcp.api.doubleclicksearch_v2"]="src/resty/gcp/api/doubleclicksearch_v2.lua",
		["resty.gcp.api.drive_v2"]="src/resty/gcp/api/drive_v2.lua",
		["resty.gcp.api.drive_v3"]="src/resty/gcp/api/drive_v3.lua",
		["resty.gcp.api.driveactivity_v2"]="src/resty/gcp/api/driveactivity_v2.lua",
		["resty.gcp.api.essentialcontacts_v1"]="src/resty/gcp/api/essentialcontacts_v1.lua",
		["resty.gcp.api.eventarc_v1beta1"]="src/resty/gcp/api/eventarc_v1beta1.lua",
		["resty.gcp.api.eventarc_v1"]="src/resty/gcp/api/eventarc_v1.lua",
		["resty.gcp.api.factchecktools_v1alpha1"]="src/resty/gcp/api/factchecktools_v1alpha1.lua",
		["resty.gcp.api.fcm_v1"]="src/resty/gcp/api/fcm_v1.lua",
		["resty.gcp.api.fcmdata_v1beta1"]="src/resty/gcp/api/fcmdata_v1beta1.lua",
		["resty.gcp.api.file_v1beta1"]="src/resty/gcp/api/file_v1beta1.lua",
		["resty.gcp.api.file_v1"]="src/resty/gcp/api/file_v1.lua",
		["resty.gcp.api.firebase_v1beta1"]="src/resty/gcp/api/firebase_v1beta1.lua",
		["resty.gcp.api.firebaseappcheck_v1beta"]="src/resty/gcp/api/firebaseappcheck_v1beta.lua",
		["resty.gcp.api.firebaseappcheck_v1"]="src/resty/gcp/api/firebaseappcheck_v1.lua",
		["resty.gcp.api.firebasedatabase_v1beta"]="src/resty/gcp/api/firebasedatabase_v1beta.lua",
		["resty.gcp.api.firebasedynamiclinks_v1"]="src/resty/gcp/api/firebasedynamiclinks_v1.lua",
		["resty.gcp.api.firebasehosting_v1beta1"]="src/resty/gcp/api/firebasehosting_v1beta1.lua",
		["resty.gcp.api.firebasehosting_v1"]="src/resty/gcp/api/firebasehosting_v1.lua",
		["resty.gcp.api.firebaseml_v1beta2"]="src/resty/gcp/api/firebaseml_v1beta2.lua",
		["resty.gcp.api.firebaseml_v1"]="src/resty/gcp/api/firebaseml_v1.lua",
		["resty.gcp.api.firebaserules_v1"]="src/resty/gcp/api/firebaserules_v1.lua",
		["resty.gcp.api.firebasestorage_v1beta"]="src/resty/gcp/api/firebasestorage_v1beta.lua",
		["resty.gcp.api.firestore_v1beta1"]="src/resty/gcp/api/firestore_v1beta1.lua",
		["resty.gcp.api.firestore_v1beta2"]="src/resty/gcp/api/firestore_v1beta2.lua",
		["resty.gcp.api.firestore_v1"]="src/resty/gcp/api/firestore_v1.lua",
		["resty.gcp.api.fitness_v1"]="src/resty/gcp/api/fitness_v1.lua",
		["resty.gcp.api.forms_v1"]="src/resty/gcp/api/forms_v1.lua",
		["resty.gcp.api.games_v1"]="src/resty/gcp/api/games_v1.lua",
		["resty.gcp.api.gamesConfiguration_v1configuration"]="src/resty/gcp/api/gamesConfiguration_v1configuration.lua",
		["resty.gcp.api.gamesManagement_v1management"]="src/resty/gcp/api/gamesManagement_v1management.lua",
		["resty.gcp.api.gameservices_v1beta"]="src/resty/gcp/api/gameservices_v1beta.lua",
		["resty.gcp.api.gameservices_v1"]="src/resty/gcp/api/gameservices_v1.lua",
		["resty.gcp.api.genomics_v2alpha1"]="src/resty/gcp/api/genomics_v2alpha1.lua",
		["resty.gcp.api.gkebackup_v1"]="src/resty/gcp/api/gkebackup_v1.lua",
		["resty.gcp.api.gkehub_v1alpha"]="src/resty/gcp/api/gkehub_v1alpha.lua",
		["resty.gcp.api.gkehub_v1alpha2"]="src/resty/gcp/api/gkehub_v1alpha2.lua",
		["resty.gcp.api.gkehub_v2alpha"]="src/resty/gcp/api/gkehub_v2alpha.lua",
		["resty.gcp.api.gkehub_v1beta"]="src/resty/gcp/api/gkehub_v1beta.lua",
		["resty.gcp.api.gkehub_v1beta1"]="src/resty/gcp/api/gkehub_v1beta1.lua",
		["resty.gcp.api.gkehub_v1"]="src/resty/gcp/api/gkehub_v1.lua",
		["resty.gcp.api.gmail_v1"]="src/resty/gcp/api/gmail_v1.lua",
		["resty.gcp.api.gmailpostmastertools_v1beta1"]="src/resty/gcp/api/gmailpostmastertools_v1beta1.lua",
		["resty.gcp.api.gmailpostmastertools_v1"]="src/resty/gcp/api/gmailpostmastertools_v1.lua",
		["resty.gcp.api.groupsmigration_v1"]="src/resty/gcp/api/groupsmigration_v1.lua",
		["resty.gcp.api.groupssettings_v1"]="src/resty/gcp/api/groupssettings_v1.lua",
		["resty.gcp.api.healthcare_v1beta1"]="src/resty/gcp/api/healthcare_v1beta1.lua",
		["resty.gcp.api.healthcare_v1"]="src/resty/gcp/api/healthcare_v1.lua",
		["resty.gcp.api.homegraph_v1"]="src/resty/gcp/api/homegraph_v1.lua",
		["resty.gcp.api.iam_v2beta"]="src/resty/gcp/api/iam_v2beta.lua",
		["resty.gcp.api.iam_v1"]="src/resty/gcp/api/iam_v1.lua",
		["resty.gcp.api.iamcredentials_v1"]="src/resty/gcp/api/iamcredentials_v1.lua",
		["resty.gcp.api.iap_v1beta1"]="src/resty/gcp/api/iap_v1beta1.lua",
		["resty.gcp.api.iap_v1"]="src/resty/gcp/api/iap_v1.lua",
		["resty.gcp.api.ideahub_v1alpha"]="src/resty/gcp/api/ideahub_v1alpha.lua",
		["resty.gcp.api.ideahub_v1beta"]="src/resty/gcp/api/ideahub_v1beta.lua",
		["resty.gcp.api.identitytoolkit_v3"]="src/resty/gcp/api/identitytoolkit_v3.lua",
		["resty.gcp.api.ids_v1"]="src/resty/gcp/api/ids_v1.lua",
		["resty.gcp.api.indexing_v3"]="src/resty/gcp/api/indexing_v3.lua",
		["resty.gcp.api.jobs_v3p1beta1"]="src/resty/gcp/api/jobs_v3p1beta1.lua",
		["resty.gcp.api.jobs_v3"]="src/resty/gcp/api/jobs_v3.lua",
		["resty.gcp.api.jobs_v4"]="src/resty/gcp/api/jobs_v4.lua",
		["resty.gcp.api.keep_v1"]="src/resty/gcp/api/keep_v1.lua",
		["resty.gcp.api.kgsearch_v1"]="src/resty/gcp/api/kgsearch_v1.lua",
		["resty.gcp.api.language_v1beta1"]="src/resty/gcp/api/language_v1beta1.lua",
		["resty.gcp.api.language_v1beta2"]="src/resty/gcp/api/language_v1beta2.lua",
		["resty.gcp.api.language_v1"]="src/resty/gcp/api/language_v1.lua",
		["resty.gcp.api.libraryagent_v1"]="src/resty/gcp/api/libraryagent_v1.lua",
		["resty.gcp.api.licensing_v1"]="src/resty/gcp/api/licensing_v1.lua",
		["resty.gcp.api.lifesciences_v2beta"]="src/resty/gcp/api/lifesciences_v2beta.lua",
		["resty.gcp.api.localservices_v1"]="src/resty/gcp/api/localservices_v1.lua",
		["resty.gcp.api.logging_v2"]="src/resty/gcp/api/logging_v2.lua",
		["resty.gcp.api.managedidentities_v1alpha1"]="src/resty/gcp/api/managedidentities_v1alpha1.lua",
		["resty.gcp.api.managedidentities_v1beta1"]="src/resty/gcp/api/managedidentities_v1beta1.lua",
		["resty.gcp.api.managedidentities_v1"]="src/resty/gcp/api/managedidentities_v1.lua",
		["resty.gcp.api.manufacturers_v1"]="src/resty/gcp/api/manufacturers_v1.lua",
		["resty.gcp.api.memcache_v1beta2"]="src/resty/gcp/api/memcache_v1beta2.lua",
		["resty.gcp.api.memcache_v1"]="src/resty/gcp/api/memcache_v1.lua",
		["resty.gcp.api.metastore_v1alpha"]="src/resty/gcp/api/metastore_v1alpha.lua",
		["resty.gcp.api.metastore_v1beta"]="src/resty/gcp/api/metastore_v1beta.lua",
		["resty.gcp.api.ml_v1"]="src/resty/gcp/api/ml_v1.lua",
		["resty.gcp.api.monitoring_v1"]="src/resty/gcp/api/monitoring_v1.lua",
		["resty.gcp.api.monitoring_v3"]="src/resty/gcp/api/monitoring_v3.lua",
		["resty.gcp.api.mybusinessaccountmanagement_v1"]="src/resty/gcp/api/mybusinessaccountmanagement_v1.lua",
		["resty.gcp.api.mybusinessbusinesscalls_v1"]="src/resty/gcp/api/mybusinessbusinesscalls_v1.lua",
		["resty.gcp.api.mybusinessbusinessinformation_v1"]="src/resty/gcp/api/mybusinessbusinessinformation_v1.lua",
		["resty.gcp.api.mybusinesslodging_v1"]="src/resty/gcp/api/mybusinesslodging_v1.lua",
		["resty.gcp.api.mybusinessnotifications_v1"]="src/resty/gcp/api/mybusinessnotifications_v1.lua",
		["resty.gcp.api.mybusinessplaceactions_v1"]="src/resty/gcp/api/mybusinessplaceactions_v1.lua",
		["resty.gcp.api.mybusinessqanda_v1"]="src/resty/gcp/api/mybusinessqanda_v1.lua",
		["resty.gcp.api.mybusinessverifications_v1"]="src/resty/gcp/api/mybusinessverifications_v1.lua",
		["resty.gcp.api.networkconnectivity_v1alpha1"]="src/resty/gcp/api/networkconnectivity_v1alpha1.lua",
		["resty.gcp.api.networkconnectivity_v1"]="src/resty/gcp/api/networkconnectivity_v1.lua",
		["resty.gcp.api.networkmanagement_v1beta1"]="src/resty/gcp/api/networkmanagement_v1beta1.lua",
		["resty.gcp.api.networkmanagement_v1"]="src/resty/gcp/api/networkmanagement_v1.lua",
		["resty.gcp.api.networksecurity_v1beta1"]="src/resty/gcp/api/networksecurity_v1beta1.lua",
		["resty.gcp.api.networksecurity_v1"]="src/resty/gcp/api/networksecurity_v1.lua",
		["resty.gcp.api.networkservices_v1beta1"]="src/resty/gcp/api/networkservices_v1beta1.lua",
		["resty.gcp.api.networkservices_v1"]="src/resty/gcp/api/networkservices_v1.lua",
		["resty.gcp.api.notebooks_v1"]="src/resty/gcp/api/notebooks_v1.lua",
		["resty.gcp.api.oauth2_v2"]="src/resty/gcp/api/oauth2_v2.lua",
		["resty.gcp.api.ondemandscanning_v1beta1"]="src/resty/gcp/api/ondemandscanning_v1beta1.lua",
		["resty.gcp.api.ondemandscanning_v1"]="src/resty/gcp/api/ondemandscanning_v1.lua",
		["resty.gcp.api.orgpolicy_v2"]="src/resty/gcp/api/orgpolicy_v2.lua",
		["resty.gcp.api.osconfig_v1alpha"]="src/resty/gcp/api/osconfig_v1alpha.lua",
		["resty.gcp.api.osconfig_v1beta"]="src/resty/gcp/api/osconfig_v1beta.lua",
		["resty.gcp.api.osconfig_v1"]="src/resty/gcp/api/osconfig_v1.lua",
		["resty.gcp.api.oslogin_v1alpha"]="src/resty/gcp/api/oslogin_v1alpha.lua",
		["resty.gcp.api.oslogin_v1beta"]="src/resty/gcp/api/oslogin_v1beta.lua",
		["resty.gcp.api.oslogin_v1"]="src/resty/gcp/api/oslogin_v1.lua",
		["resty.gcp.api.pagespeedonline_v5"]="src/resty/gcp/api/pagespeedonline_v5.lua",
		["resty.gcp.api.paymentsresellersubscription_v1"]="src/resty/gcp/api/paymentsresellersubscription_v1.lua",
		["resty.gcp.api.people_v1"]="src/resty/gcp/api/people_v1.lua",
		["resty.gcp.api.playcustomapp_v1"]="src/resty/gcp/api/playcustomapp_v1.lua",
		["resty.gcp.api.playdeveloperreporting_v1alpha1"]="src/resty/gcp/api/playdeveloperreporting_v1alpha1.lua",
		["resty.gcp.api.playdeveloperreporting_v1beta1"]="src/resty/gcp/api/playdeveloperreporting_v1beta1.lua",
		["resty.gcp.api.playintegrity_v1"]="src/resty/gcp/api/playintegrity_v1.lua",
		["resty.gcp.api.policyanalyzer_v1beta1"]="src/resty/gcp/api/policyanalyzer_v1beta1.lua",
		["resty.gcp.api.policyanalyzer_v1"]="src/resty/gcp/api/policyanalyzer_v1.lua",
		["resty.gcp.api.policysimulator_v1beta1"]="src/resty/gcp/api/policysimulator_v1beta1.lua",
		["resty.gcp.api.policysimulator_v1"]="src/resty/gcp/api/policysimulator_v1.lua",
		["resty.gcp.api.policytroubleshooter_v1beta"]="src/resty/gcp/api/policytroubleshooter_v1beta.lua",
		["resty.gcp.api.policytroubleshooter_v1"]="src/resty/gcp/api/policytroubleshooter_v1.lua",
		["resty.gcp.api.poly_v1"]="src/resty/gcp/api/poly_v1.lua",
		["resty.gcp.api.privateca_v1beta1"]="src/resty/gcp/api/privateca_v1beta1.lua",
		["resty.gcp.api.privateca_v1"]="src/resty/gcp/api/privateca_v1.lua",
		["resty.gcp.api.prod_tt_sasportal_v1alpha1"]="src/resty/gcp/api/prod_tt_sasportal_v1alpha1.lua",
		["resty.gcp.api.pubsub_v1beta1a"]="src/resty/gcp/api/pubsub_v1beta1a.lua",
		["resty.gcp.api.pubsub_v1beta2"]="src/resty/gcp/api/pubsub_v1beta2.lua",
		["resty.gcp.api.pubsub_v1"]="src/resty/gcp/api/pubsub_v1.lua",
		["resty.gcp.api.pubsublite_v1"]="src/resty/gcp/api/pubsublite_v1.lua",
		["resty.gcp.api.realtimebidding_v1alpha"]="src/resty/gcp/api/realtimebidding_v1alpha.lua",
		["resty.gcp.api.realtimebidding_v1"]="src/resty/gcp/api/realtimebidding_v1.lua",
		["resty.gcp.api.recaptchaenterprise_v1"]="src/resty/gcp/api/recaptchaenterprise_v1.lua",
		["resty.gcp.api.recommendationengine_v1beta1"]="src/resty/gcp/api/recommendationengine_v1beta1.lua",
		["resty.gcp.api.recommender_v1beta1"]="src/resty/gcp/api/recommender_v1beta1.lua",
		["resty.gcp.api.recommender_v1"]="src/resty/gcp/api/recommender_v1.lua",
		["resty.gcp.api.redis_v1beta1"]="src/resty/gcp/api/redis_v1beta1.lua",
		["resty.gcp.api.redis_v1"]="src/resty/gcp/api/redis_v1.lua",
		["resty.gcp.api.reseller_v1"]="src/resty/gcp/api/reseller_v1.lua",
		["resty.gcp.api.resourcesettings_v1"]="src/resty/gcp/api/resourcesettings_v1.lua",
		["resty.gcp.api.retail_v2alpha"]="src/resty/gcp/api/retail_v2alpha.lua",
		["resty.gcp.api.retail_v2beta"]="src/resty/gcp/api/retail_v2beta.lua",
		["resty.gcp.api.retail_v2"]="src/resty/gcp/api/retail_v2.lua",
		["resty.gcp.api.run_v1alpha1"]="src/resty/gcp/api/run_v1alpha1.lua",
		["resty.gcp.api.run_v1"]="src/resty/gcp/api/run_v1.lua",
		["resty.gcp.api.run_v2"]="src/resty/gcp/api/run_v2.lua",
		["resty.gcp.api.runtimeconfig_v1beta1"]="src/resty/gcp/api/runtimeconfig_v1beta1.lua",
		["resty.gcp.api.runtimeconfig_v1"]="src/resty/gcp/api/runtimeconfig_v1.lua",
		["resty.gcp.api.safebrowsing_v4"]="src/resty/gcp/api/safebrowsing_v4.lua",
		["resty.gcp.api.sasportal_v1alpha1"]="src/resty/gcp/api/sasportal_v1alpha1.lua",
		["resty.gcp.api.script_v1"]="src/resty/gcp/api/script_v1.lua",
		["resty.gcp.api.searchconsole_v1"]="src/resty/gcp/api/searchconsole_v1.lua",
		["resty.gcp.api.secretmanager_v1beta1"]="src/resty/gcp/api/secretmanager_v1beta1.lua",
		["resty.gcp.api.secretmanager_v1"]="src/resty/gcp/api/secretmanager_v1.lua",
		["resty.gcp.api.securitycenter_v1beta1"]="src/resty/gcp/api/securitycenter_v1beta1.lua",
		["resty.gcp.api.securitycenter_v1beta2"]="src/resty/gcp/api/securitycenter_v1beta2.lua",
		["resty.gcp.api.securitycenter_v1"]="src/resty/gcp/api/securitycenter_v1.lua",
		["resty.gcp.api.serviceconsumermanagement_v1beta1"]="src/resty/gcp/api/serviceconsumermanagement_v1beta1.lua",
		["resty.gcp.api.serviceconsumermanagement_v1"]="src/resty/gcp/api/serviceconsumermanagement_v1.lua",
		["resty.gcp.api.servicecontrol_v1"]="src/resty/gcp/api/servicecontrol_v1.lua",
		["resty.gcp.api.servicecontrol_v2"]="src/resty/gcp/api/servicecontrol_v2.lua",
		["resty.gcp.api.servicedirectory_v1beta1"]="src/resty/gcp/api/servicedirectory_v1beta1.lua",
		["resty.gcp.api.servicedirectory_v1"]="src/resty/gcp/api/servicedirectory_v1.lua",
		["resty.gcp.api.servicemanagement_v1"]="src/resty/gcp/api/servicemanagement_v1.lua",
		["resty.gcp.api.servicenetworking_v1beta"]="src/resty/gcp/api/servicenetworking_v1beta.lua",
		["resty.gcp.api.servicenetworking_v1"]="src/resty/gcp/api/servicenetworking_v1.lua",
		["resty.gcp.api.serviceusage_v1beta1"]="src/resty/gcp/api/serviceusage_v1beta1.lua",
		["resty.gcp.api.serviceusage_v1"]="src/resty/gcp/api/serviceusage_v1.lua",
		["resty.gcp.api.sheets_v4"]="src/resty/gcp/api/sheets_v4.lua",
		["resty.gcp.api.siteVerification_v1"]="src/resty/gcp/api/siteVerification_v1.lua",
		["resty.gcp.api.slides_v1"]="src/resty/gcp/api/slides_v1.lua",
		["resty.gcp.api.smartdevicemanagement_v1"]="src/resty/gcp/api/smartdevicemanagement_v1.lua",
		["resty.gcp.api.sourcerepo_v1"]="src/resty/gcp/api/sourcerepo_v1.lua",
		["resty.gcp.api.spanner_v1"]="src/resty/gcp/api/spanner_v1.lua",
		["resty.gcp.api.speech_v1p1beta1"]="src/resty/gcp/api/speech_v1p1beta1.lua",
		["resty.gcp.api.speech_v2beta1"]="src/resty/gcp/api/speech_v2beta1.lua",
		["resty.gcp.api.speech_v1"]="src/resty/gcp/api/speech_v1.lua",
		["resty.gcp.api.sqladmin_v1beta4"]="src/resty/gcp/api/sqladmin_v1beta4.lua",
		["resty.gcp.api.sqladmin_v1"]="src/resty/gcp/api/sqladmin_v1.lua",
		["resty.gcp.api.storage_v1"]="src/resty/gcp/api/storage_v1.lua",
		["resty.gcp.api.storagetransfer_v1"]="src/resty/gcp/api/storagetransfer_v1.lua",
		["resty.gcp.api.streetviewpublish_v1"]="src/resty/gcp/api/streetviewpublish_v1.lua",
		["resty.gcp.api.sts_v1beta"]="src/resty/gcp/api/sts_v1beta.lua",
		["resty.gcp.api.sts_v1"]="src/resty/gcp/api/sts_v1.lua",
		["resty.gcp.api.tagmanager_v1"]="src/resty/gcp/api/tagmanager_v1.lua",
		["resty.gcp.api.tagmanager_v2"]="src/resty/gcp/api/tagmanager_v2.lua",
		["resty.gcp.api.tasks_v1"]="src/resty/gcp/api/tasks_v1.lua",
		["resty.gcp.api.testing_v1"]="src/resty/gcp/api/testing_v1.lua",
		["resty.gcp.api.texttospeech_v1beta1"]="src/resty/gcp/api/texttospeech_v1beta1.lua",
		["resty.gcp.api.texttospeech_v1"]="src/resty/gcp/api/texttospeech_v1.lua",
		["resty.gcp.api.toolresults_v1beta3"]="src/resty/gcp/api/toolresults_v1beta3.lua",
		["resty.gcp.api.tpu_v1alpha1"]="src/resty/gcp/api/tpu_v1alpha1.lua",
		["resty.gcp.api.tpu_v2alpha1"]="src/resty/gcp/api/tpu_v2alpha1.lua",
		["resty.gcp.api.tpu_v1"]="src/resty/gcp/api/tpu_v1.lua",
		["resty.gcp.api.trafficdirector_v2"]="src/resty/gcp/api/trafficdirector_v2.lua",
		["resty.gcp.api.transcoder_v1"]="src/resty/gcp/api/transcoder_v1.lua",
		["resty.gcp.api.translate_v3beta1"]="src/resty/gcp/api/translate_v3beta1.lua",
		["resty.gcp.api.translate_v2"]="src/resty/gcp/api/translate_v2.lua",
		["resty.gcp.api.translate_v3"]="src/resty/gcp/api/translate_v3.lua",
		["resty.gcp.api.vault_v1"]="src/resty/gcp/api/vault_v1.lua",
		["resty.gcp.api.verifiedaccess_v1"]="src/resty/gcp/api/verifiedaccess_v1.lua",
		["resty.gcp.api.verifiedaccess_v2"]="src/resty/gcp/api/verifiedaccess_v2.lua",
		["resty.gcp.api.versionhistory_v1"]="src/resty/gcp/api/versionhistory_v1.lua",
		["resty.gcp.api.videointelligence_v1p1beta1"]="src/resty/gcp/api/videointelligence_v1p1beta1.lua",
		["resty.gcp.api.videointelligence_v1p2beta1"]="src/resty/gcp/api/videointelligence_v1p2beta1.lua",
		["resty.gcp.api.videointelligence_v1p3beta1"]="src/resty/gcp/api/videointelligence_v1p3beta1.lua",
		["resty.gcp.api.videointelligence_v1beta2"]="src/resty/gcp/api/videointelligence_v1beta2.lua",
		["resty.gcp.api.videointelligence_v1"]="src/resty/gcp/api/videointelligence_v1.lua",
		["resty.gcp.api.vision_v1p1beta1"]="src/resty/gcp/api/vision_v1p1beta1.lua",
		["resty.gcp.api.vision_v1p2beta1"]="src/resty/gcp/api/vision_v1p2beta1.lua",
		["resty.gcp.api.vision_v1"]="src/resty/gcp/api/vision_v1.lua",
		["resty.gcp.api.vmmigration_v1alpha1"]="src/resty/gcp/api/vmmigration_v1alpha1.lua",
		["resty.gcp.api.vmmigration_v1"]="src/resty/gcp/api/vmmigration_v1.lua",
		["resty.gcp.api.webfonts_v1"]="src/resty/gcp/api/webfonts_v1.lua",
		["resty.gcp.api.webrisk_v1"]="src/resty/gcp/api/webrisk_v1.lua",
		["resty.gcp.api.websecurityscanner_v1alpha"]="src/resty/gcp/api/websecurityscanner_v1alpha.lua",
		["resty.gcp.api.websecurityscanner_v1beta"]="src/resty/gcp/api/websecurityscanner_v1beta.lua",
		["resty.gcp.api.websecurityscanner_v1"]="src/resty/gcp/api/websecurityscanner_v1.lua",
		["resty.gcp.api.workflowexecutions_v1beta"]="src/resty/gcp/api/workflowexecutions_v1beta.lua",
		["resty.gcp.api.workflowexecutions_v1"]="src/resty/gcp/api/workflowexecutions_v1.lua",
		["resty.gcp.api.workflows_v1beta"]="src/resty/gcp/api/workflows_v1beta.lua",
		["resty.gcp.api.workflows_v1"]="src/resty/gcp/api/workflows_v1.lua",
		["resty.gcp.api.youtube_v3"]="src/resty/gcp/api/youtube_v3.lua",
		["resty.gcp.api.youtubeAnalytics_v2"]="src/resty/gcp/api/youtubeAnalytics_v2.lua",
		["resty.gcp.api.youtubereporting_v1"]="src/resty/gcp/api/youtubereporting_v1.lua",

--END-MARKER--
   }
}