Profile: LTBaseProcedure
Parent: Procedure
Id: lt-procedure
Title: "LT Base Procedure"
Description: "Lithuanian Base Procedure profile, used for documenting healthcare procedures."
* ^experimental = true
* ^status = #active

* status MS
* category MS
* code MS
* subject 1.. MS
* subject only Reference(LTBasePatient or Group or Device or LTBaseLocation or LTBasePractitioner or LTBaseOrganization)
* encounter MS
* encounter only Reference(LTBaseEncounter)
* occurrence[x] MS
* performer MS
* performer.actor MS
* performer.actor only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization or LTBasePatient or LTBaseRelatedPerson or LTBaseCareTeam or LTBaseHealthcareService or Device)
* performer.onBehalfOf only Reference(LTBaseOrganization)
* location only Reference(LTBaseLocation)
* reason MS
* reason only CodeableReference(LTBaseCondition or LTBaseObservation or LTBaseDiagnosticReport or LTBaseDocumentReference)
* bodySite MS
* outcome MS
* note MS
* report only Reference(LTBaseDiagnosticReport or LTBaseDocumentReference or LTBaseComposition)
