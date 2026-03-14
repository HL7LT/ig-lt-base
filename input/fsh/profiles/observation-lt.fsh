Profile: ObservationLt
Parent: Observation
Id: observation-lt 
Title: "ObservationLt"
Description: "Lithuanian Base Observation profile, used to represent vitals, demographic, clinical and laboratory observations"
* ^url = $observation-lt-url
* ^status = #active
//rules
* identifier MS
* instantiates[x] MS
* basedOn 0..1 MS
* triggeredBy MS
* triggeredBy.observation only Reference(ObservationLt)
// * triggeredBy.type from TriggeredByTypeVS (required)
* triggeredBy.reason MS
* partOf MS
// * partOf only Reference(MedicationAdministration or MedicationDispense or Procedure or Immunization or ImagingStudy)
* status MS 
// * status from ObservationStatusVS (required)
* category MS
// * category from ObservationCategoryVS
* code MS 
// * code from $observation-codes
* subject MS
* subject only Reference(PatientLt or LocationLt or OrganizationLt or Procedure or PractitionerLt or Medication)
//* subject only Reference(PatientLt)
* focus MS
* encounter MS
* encounter only Reference(EncounterLt)
* effective[x] MS
* issued MS
* performer MS
* performer only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt)
* value[x] MS
* dataAbsentReason MS
// * dataAbsentReason from DataAbsentReasonVS (extensible)
// * interpretation from ObservationInterpretationVS
* note MS
// * bodySite from $bodysite
* bodyStructure MS
* bodyStructure only Reference(BodyStructure)
// * method from $observation-methods
* specimen MS
* device MS
* referenceRange MS
* referenceRange.low MS
* referenceRange.high MS
* referenceRange.normalValue MS
// * referenceRange.normalValue from ObservationNormalValueVS (extensible)
// * referenceRange.type from ReferenceRangeMeaningVS (preferred)
* referenceRange.age MS
* referenceRange.text MS
* hasMember MS
* hasMember only Reference(ObservationLt or QuestionnaireResponse)
* derivedFrom MS
* derivedFrom only Reference(DocumentReference or ImagingStudy or QuestionnaireResponse or ObservationLt)
* component MS
* component.code MS
// * component.code from $observation-codes
* component.value[x] MS
* dataAbsentReason MS
// * component.interpretation from ObservationInterpretationVS (extensible)
