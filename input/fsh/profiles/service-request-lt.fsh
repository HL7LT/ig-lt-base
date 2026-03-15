Profile: ServiceRequestLt
Parent: ServiceRequest
Id: service-request-lt 
Title: "ServiceRequestLt"
Description: "Lithuanian Base Service Request profile, used for documenting general, symptoms, conditions, and their characteristics."
* ^url = $service-request-lt-url
* ^status = #active

* identifier MS
* basedOn only Reference(CarePlanLt or ServiceRequestLt or MedicationRequest)
* status MS
* intent MS
* priority MS
* category MS
* code MS
* code from http://hl7.org/fhir/ValueSet/procedure-code (example)
* subject 1.. MS
* subject only Reference(PatientLt or Group or Device or LocationLt)
* encounter MS
* encounter only Reference(EncounterLt)
* occurrence[x] MS
* authoredOn MS
* requester MS
* requester only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt)
* performerType MS
* performer only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt or CareTeamLt or HealthcareServiceLt or Device or RelatedPersonLt or PatientLt)
* reason MS
* reason only CodeableReference(ConditionLt or ObservationLt or DiagnosticReportLt or DocumentReferenceLt or DetectedIssue)
* bodySite MS
* bodyStructure MS
* bodyStructure only Reference(BodyStructureEuCore)
* note MS
* patientInstruction MS
* patientInstruction.instruction[x] only Reference(DocumentReferenceLt)
