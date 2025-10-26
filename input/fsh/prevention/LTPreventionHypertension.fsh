ValueSet: LTHypertensionTreatmentStatus
Id: lt-hypertension-treatment-status
Title: "Hypertension Treatment Status"
Description: "Indicates whether the patient's hypertension is currently treated or not treated."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#182992009 "Treatment completed (situation)"
* $sct#183964008 "Treatment not indicated (situation)"


Profile: LTPreventionHypertension
Parent: LTBaseObservation
Id: lt-prevention-hypertension
Title: "LT Prevention Hypertension Status"
Description: "Records the patient's hypertension risk or status and whether treatment has been provided."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-26T09:00:00+03:00"
* ^publisher = "HL7 Lithuanian"
* category = $observation-category#social-history "Social History"
* code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* subject 1.. 
* subject only Reference(LTBasePatient)
* effective[x] 1.. 
* effective[x] only dateTime
* effectiveDateTime ^comment = "The date and time when hypertension status or risk was assessed."
// * value[x] only CodeableConcept
// * valueCodeableConcept from $risk-probability-vs (extensible)
// * valueCodeableConcept ^short = "Indicates the assessed probability or certainty of hypertension."
// * valueCodeableConcept ^comment = """
// Risk or likelihood of hypertension as assessed during the clinical evaluation.
// Examples:
// - 'negligible' → no hypertension
// - 'certain' → confirmed hypertension
// """
// * interpretation from LTHypertensionTreatmentStatus (extensible)
// * interpretation ^short = "Indicates whether the hypertension is treated or not treated."
// * interpretation ^comment = """
// Treatment status complements the assessed hypertension probability.
// - 'Treatment completed' → patient is receiving or has received antihypertensive therapy.
// - 'Treatment not indicated' → no treatment given or not required.
// """
* component 1..2
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains risk 1..1 MS and treatment 0..1 MS
* component[risk].code = $sct#80943009 "Risk factor"
* component[treatment].code = $sct#443938003 "Procedure carried out on subject"

* component[risk].value[x] only CodeableConcept
* component[risk].valueCodeableConcept from $risk-probability-vs (extensible)
* component[risk] ^short = "Indicates the assessed probability or certainty of hypertension."

* component[treatment].value[x] only CodeableConcept
* component[treatment].valueCodeableConcept from LTHypertensionTreatmentStatus (extensible)
* component[treatment] ^short = "Indicates whether the hypertension is treated or not treated."

// Example
Instance: example-hypertension-treated
InstanceOf: LTPreventionHypertension
Usage: #example
Title: "Example LT Hypertension - Treated"
Description: "Example showing a patient with confirmed hypertension currently under treatment."
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* component[risk]
  * valueCodeableConcept = $risk-probability#certain "Certain"
* component[treatment]
  * valueCodeableConcept = $sct#182992009 "Treatment completed (situation)"
* note.text = "Patient diagnosed with hypertension, currently treated with antihypertensive medication."
