Profile: LTBaseDiagnosticReport
Parent: DiagnosticReport
Id: lt-diagnostic-report
Title: "LT Base DiagnosticReport"
Description: "Lithuanian Base DiagnosticReport profile, used for interpretation of diagnostic tests."
* ^experimental = true
* ^status = #active

* identifier MS
* basedOn MS
* basedOn only Reference(LTBaseServiceRequest or LTBaseCarePlan or 	ImmunizationRecommendation or MedicationRequest or NutritionOrder)
* status MS
* category MS
* code MS
* subject 1..1 MS
* subject only Reference(LTBasePatient or Group or Device or LTBaseLocation or LTBaseOrganization or LTBasePractitioner or Medication or Substance or BiologicallyDerivedProduct)
* encounter MS
* encounter only Reference(LTBaseEncounter)
* effective[x] 1..1 MS
* issued MS
* performer MS
* performer only Reference(LTBaseOrganization or LTBasePractitionerRole or LTBasePractitioner or LTBaseCareTeam)
* resultsInterpreter MS
* resultsInterpreter only Reference(LTBaseOrganization or LTBasePractitionerRole or LTBasePractitioner or LTBaseCareTeam)
* result MS
* result only Reference(LTBaseObservation)
* note MS
* study MS
* study only Reference(LTBaseImagingStudy or GenomicStudy)
* composition MS
* composition only Reference(LTBaseComposition)
* conclusion MS
* conclusionCode MS
* supportingInfo MS
* supportingInfo.reference only Reference(LTBaseObservation or LTBaseProcedure or LTBaseDiagnosticReport or Citation)