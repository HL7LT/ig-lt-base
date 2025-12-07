Profile: LTBaseServiceRequest
Parent: ServiceRequest
Id: lt-service-request 
Title: "LT Base Service Request"
Description: "Lithuanian Base Service Request profile, used for documenting general, symptoms, conditions, and their characteristics."
* ^experimental = true
* ^status = #active

* identifier MS
* basedOn only Reference(LTBaseCarePlan or LTBaseServiceopRequest or MedicationRequest)
* status MS
* intent MS
* priority MS
* category MS
* code MS
* subject 1.. MS
* subject only Reference(LTBasePatient or Group or Device or LTBaseLocation)
* encounter MS
* encounter only Reference(LTBaseEncounter)
* occurrence[x] MS
* authoredOn MS
* requester MS
* requester only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization)
* performerType MS
* performer only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization or LTBaseCareTeam or LTBaseHealthcareService or Device or LTBaseRelatedPerson or LTBasePatient)
* reason MS
* reason only CodeableReference(LTBaseCondition or LTBaseObservation or LTBaseDiagnosticReport or LTBaseDocumentReference or DetectedIssue)
* bodySite MS
* bodyStructure MS
* bodyStructure only Reference(BodyStructureEuCore)
* note MS
* patientInstruction MS
* patientInstruction.instruction[x] only Reference(LTBaseDocumentReference)
