Instance: observation-blood-pressure-example
InstanceOf: ObservationLt
Title: "Observation: Blood Pressure (example)"
Description: "Example instance of a blood pressure measurement for a patient"
Usage: #example

* status = #preliminary
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example)
* encounter = Reference(encounter-psychiatric-example)
* effectiveDateTime = "2025-08-01T10:00:00Z"
* issued = "2025-08-01T10:01:00Z"
* performer = Reference(practitioner-example)
//* device = Reference(device-lt)
//* specimen = Reference(specimen-lt)
* valueString = "Blood pressure within normal  limits"
* interpretation = $observation-interpretation#N "Normal"
* note.text = "Patient was calm and seated for 5 minutes before measurement."
//* dataAbsentReason = $observation-dataAbsentReason#not-applicable "Not Applicable"

* referenceRange
  * low.value = 90
  * low.unit = "mmHg"
  * high.value = 120
  * high.unit = "mmHg"
  * type = $reference-meaning#normal "Normal Range"
  * text = "Normal systolic blood pressure for adults"

* component[+].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity.value = 117
* component[=].valueQuantity.unit = "mmHg"
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #mm[Hg]
* component[=].interpretation = $observation-interpretation#N "Normal"

* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity.value = 78
* component[=].valueQuantity.unit = "mmHg"
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #mm[Hg]
* component[=].interpretation = $observation-interpretation#N "Normal"

Instance: observation-breast-density-fatty-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Breast Density Fatty (example)"
Description: "Breast Density Fatty example"
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#733851004 "Breast consistency (observable entity)"
* subject = Reference(patient-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#129716005
* bodySite = $sct#76752008 "Breast"
* note.text = "Mammography shows predominantly fatty breast density."
