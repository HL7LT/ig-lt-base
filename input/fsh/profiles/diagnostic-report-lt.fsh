Profile: DiagnosticReportLt
Parent: DiagnosticReport
Id: diagnostic-report-lt
Title: "DiagnosticReportLt"
Description: "Lithuanian Base DiagnosticReport profile, used for interpretation of diagnostic tests."
* ^url = $diagnostic-report-lt-url
* ^status = #active

* identifier MS
* basedOn MS
* basedOn only Reference(ServiceRequestLt or CarePlanLt or 	ImmunizationRecommendation or MedicationRequest or NutritionOrder)
* status MS
* category MS
* category from $v2-0074-vs (preferred)
* code MS
* code from ReportCode (preferred)
* subject 1..1 MS
* subject only Reference($patient-lt-url or $EuPatientAnimalUrl or Group or Device or LocationLt or OrganizationLt or PractitionerLt or Medication or Substance or BiologicallyDerivedProduct)
* encounter MS
* encounter only Reference(EncounterLt)
* effective[x] 1..1 MS
* issued MS
* performer MS
* performer only Reference(OrganizationLt or PractitionerRoleLt or PractitionerLt or CareTeamLt)
* resultsInterpreter MS
* resultsInterpreter only Reference(OrganizationLt or PractitionerRoleLt or PractitionerLt or CareTeamLt)
* result MS
* result only Reference(ObservationLt)
* note MS
* study MS
* study only Reference(ImagingStudyLt or GenomicStudy)
* composition MS
* composition only Reference(CompositionLt)
* conclusion MS
* conclusionCode MS
* supportingInfo MS
* supportingInfo.reference only Reference(ObservationLt or ProcedureLt or DiagnosticReportLt or Citation)
