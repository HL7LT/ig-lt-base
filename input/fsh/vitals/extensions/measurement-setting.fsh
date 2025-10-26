Alias: $MeasSettingVS = http://hl7.org/fhir/us/vitals/ValueSet/MeasSettingVS

Extension: MeasurementSettingExt
Id: MeasurementSettingExt
Title: "Measurement Setting"
Description: "The location or setting the subject was in when the measurement was obtained. For example, home, clinic, hospital. etc."
* ^version = "2.0.0"
* ^status = #draft
* ^url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = $m49.htm#001 "World"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* . ^short = "Measurement Setting"
* . ^definition = "The location or setting the subject was in when the measurement was obtained. For example, home, clinic, hospital. etc."
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $MeasSettingVS (extensible)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"

