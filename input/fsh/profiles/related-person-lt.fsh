Profile: RelatedPersonLt
Parent: RelatedPerson
Id: related-person-lt
Title: "RelatedPersonLt"
Description: "Lithuanian Base Related Person profile, used to define persons related to a patient"
* ^url = $related-person-lt-url
* ^status = #active 

* identifier MS
* patient MS
* patient only Reference(PatientLt)
* relationship MS
// * relationship only CodeableConcept (RelatedPersonRelationshipVS)
* name MS
