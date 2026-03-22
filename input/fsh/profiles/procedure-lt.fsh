Profile: ProcedureLt
Parent: ProcedureEu
//$ProcedureEuImagingUrl
Id: procedure-lt
Title: "ProcedureLt"
Description: "Lithuanian Base Procedure profile, used for documenting healthcare procedures."
* ^url = $procedure-lt-url
* ^status = #active

* status MS
* category MS
* code MS
* subject 1.. MS
// EU limitation: * subject only Reference(PatientLt or Group or Device or LocationLt or PractitionerLt or OrganizationLt)
* subject only Reference(PatientLt)
* encounter MS
* encounter only Reference(EncounterLt)
* occurrence[x] MS
* performer MS
* performer.actor MS
* performer.actor only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt or PatientLt or RelatedPersonLt or CareTeamLt or HealthcareServiceLt or Device)
* performer.onBehalfOf only Reference(OrganizationLt)
* location only Reference(LocationLt)
* reason MS
* reason only CodeableReference(ConditionLt or ObservationLt or DiagnosticReportLt or DocumentReferenceLt)
* bodySite MS
* outcome MS
* note MS
* report only Reference(DiagnosticReportLt or DocumentReferenceLt or CompositionLt)
