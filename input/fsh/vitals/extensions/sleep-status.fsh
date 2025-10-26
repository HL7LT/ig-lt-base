Alias: $sleepStatusVS = http://hl7.org/fhir/us/vitals/ValueSet/sleepStatusVS

Extension: SleepStatus
Id: SleepStatusExt
Title: "Sleep Status"
Description: "The state of wakefulness during the measurement."
* ^version = "2.0.0"
* ^status = #draft
* ^url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* . ^short = "Sleep Status"
* . ^definition = "The state of wakefulness during the measurement."
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $sleepStatusVS (extensible)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"


