Profile: DocumentReferenceLt
Parent: DocumentReferenceEu
Id: document-reference-lt
Title: "DocumentReferenceLt"
Description: "Lithuanian Base Document Reference profile, used for composing documents."
* ^url = $document-reference-lt-url
* ^status = #active

* identifier MS
* basedOn only Reference(AppointmentLt or ServiceRequestLt or CarePlan or Claim or CommunicationRequest or Contract or CoverageEligibilityRequest or DeviceRequest or EnrollmentRequest or ImmunizationRecommendation or MedicationRequest or NutritionOrder or RequestOrchestration or SupplyRequest or VisionPrescription)
* version MS
* status MS
* docStatus MS
* type MS
* category MS
* subject 1.. MS
* context MS
* context only Reference(EncounterLt or EpisodeOfCareLt or AppointmentLt)
* date MS
* author MS
* author only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt or PatientLt or RelatedPersonLt or Device or CareTeamLt)
* description MS
