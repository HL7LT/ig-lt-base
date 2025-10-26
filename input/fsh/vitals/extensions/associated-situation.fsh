Extension: AssociatedSituationExt
Id: AssociatedSituationExt
Title: "Associated Situation"
Description: "Situations that may affect the measurement or assessment."
* ^version = "2.0.0"
* ^status = #draft
* ^url = "http://hl7.org/fhir/us/vitals/StructureDefinition/AssociatedSituationExt"
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* . ^short = "Associated Situation"
* . ^definition = "Situations that may affect the measurement or assessment."
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"


