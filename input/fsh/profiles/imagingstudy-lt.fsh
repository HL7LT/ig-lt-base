Profile: ImagingStudyLt
Parent: ImagingStudy
Id: imagingstudy-lt 
Title: "ImagingStudyLt"
Description: "Lithuanian Base Imaging Study profile, used for documenting general imaging studies and their characteristics."
* ^url = $imagingstudy-lt-url
* ^status = #active
* identifier 1.. MS
* status MS
* modality MS
* subject 1.. MS
* subject only Reference(PatientLt or Device or Group)
* encounter MS
* encounter only Reference(EncounterLt)
* basedOn only Reference(ServiceRequestLt or AppointmentLt or CarePlan or Task)
* referrer MS
* referrer only Reference(PractitionerLt or PractitionerRoleLt)
* partOf only Reference(ProcedureLt)
* reason MS
* reason only CodeableReference(ConditionLt or ObservationLt or DiagnosticReportLt or DocumentReferenceLt)
* series.performer.actor only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt or Device or RelatedPersonLt or PatientLt or CareTeamLt or HealthcareServiceLt)
* note MS
