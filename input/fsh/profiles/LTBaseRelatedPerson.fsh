Profile: LTBaseRelatedPerson
Parent: RelatedPerson
Id: lt-related-person
Title: "LT Base Related Person"
Description: "Lithuanian Base Related Person profile, used to define persons related to a patient"
* ^experimental = true
* ^status = #active 

* identifier MS
* patient MS
* patient only Reference(LTBasePatient)
* relationship MS
// * relationship only CodeableConcept (RelatedPersonRelationshipVS)
* name MS