Profile: LTBaseDocumentReference
Parent: DocumentReference
Id: lt-document-reference
Title: "LT Base Document Reference"
Description: "Lithuanian Base Document Reference profile, used for composing documents."
* ^experimental = true
* ^status = #active

* identifier MS
* basedOn only Reference(LTBaseAppointment or LTBaseServiceRequest or CarePlan or Claim or CommunicationRequest or Contract or CoverageEligibilityRequest or DeviceRequest or EnrollmentRequest or ImmunizationRecommendation or MedicationRequest or NutritionOrder or RequestOrchestration or SupplyRequest or VisionPrescription)
* version MS
* status MS
* docStatus MS
* type MS
* category MS
* subject 1.. MS
* context MS
* context only Reference(LTBaseEncounter or LTBaseEpisodeOfCare or LTBaseAppointment)
* date MS
* author MS
* author only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization or LTBasePatient or LTBaseRelatedPerson or Device or LTBaseCareTeam)
* description MS