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

Instance: example-related-person
InstanceOf: LTBaseRelatedPerson // Links this instance to the specific profile
Usage: #example
Title: "Rūta Petrauskienė - LT Base Related Person Example"
Description: "An example Related Person conforming to the Lithuanian Base Profile."

* patient = Reference(example-patient) 
* relationship = 	http://terminology.hl7.org/CodeSystem/v3-RoleClass#ECON "emergency contact"

// Name (Assumed to be required via 'insert HumanName')
* name[0].family = "Petrauskienė"
* name[0].given[0] = "Rūta"
* name[0].text = "Rūta Petrauskienė"
