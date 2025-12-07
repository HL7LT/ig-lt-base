Profile: LTBaseImagingStudy
Parent: ImagingStudy
Id: lt-imagingstudy 
Title: "LT Base Imaging Study"
Description: "Lithuanian Base Imaging Study profile, used for documenting general imaging studies and their characteristics."
* ^experimental = true
* ^status = #active
* identifier 1.. MS
* status MS
* modality MS
* subject 1.. MS
* subject only Reference(LTBasePatient or Device or Group)
* encounter MS
* encounter only Reference(LTBaseEncounter)
* basedOn only Reference(LTBaseServiceRequest or LTBaseAppointment or CarePlan or Task)
* referrer MS
* referrer only Reference(LTBasePractitioner or LTBasePractitionerRole)
* partOf only Reference(LTBaseProcedure)
* reason MS
* reason only CodeableReference(LTBaseCondition or LTBaseObservation or LTBaseDiagnosticReport or LTBaseDocumentReference)
* series.performer.actor only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization or Device or LTBaseRelatedPerson or LTBasePatient or LTBaseCareTeam or LTBaseHealthcareService)
* note MS