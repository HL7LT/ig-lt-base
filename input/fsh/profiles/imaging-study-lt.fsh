Profile: ImagingStudyLt
Parent: $ImagingStudyEuImagingUrl
Id: imaging-study-lt 
Title: "ImagingStudyLt"
Description: "Lithuanian Base Imaging Study profile, used for documenting general imaging studies and their characteristics."
* ^url = $imaging-study-lt-url
* ^status = #active
* identifier 1.. MS
* status MS
* modality MS
* subject 1.. MS
//* subject only Reference(PatientLt or Device or Group)
* subject only Reference(PatientLt or Device)
* encounter MS
* encounter only Reference(EncounterLt)
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.ordered = false
* basedOn ^slicing.rules = #open
* basedOn contains other 0..1
* basedOn[other] only Reference(ServiceRequestLt or AppointmentLt or CarePlanLt or Task)
* referrer MS
* referrer only Reference(PractitionerLt or PractitionerRoleLt)
* partOf only Reference(ProcedureLt)
* reason MS
* reason only CodeableReference(ConditionLt or ObservationLt or DiagnosticReportLt or DocumentReferenceLt)
// * series.performer.actor only Reference(PractitionerLt or PractitionerRoleLt or RelatedPersonLt or PatientLt or CareTeamLt or HealthcareServiceLt)
* series.performer[performer].actor only Reference(PractitionerRoleLt)
* series.performer[device].actor only Reference($ImagingDeviceEuImagingUrl)
* series.performer[custodian].function = $v3-ParticipationType#CST
* series.performer[custodian].actor only Reference(OrganizationLt)

* note MS
