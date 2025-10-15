Profile: LTBaseCondition
Parent: Condition
Id: lt-condition 
Title: "LT Base Condition"
Description: "Lithuanian Base Condition profile, used for documenting general, symptoms, conditions, and their characteristics."
* ^experimental = true
* ^status = #active
* clinicalStatus MS
* verificationStatus MS
* severity MS
* code MS
* subject MS
* subject only Reference(LTBasePatient)
* encounter MS
* encounter only Reference(LTBaseEncounter)
* onset[x] MS
* abatement[x] MS
* recordedDate MS

* participant  0..1 MS
* participant.actor  only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBasePatient or LTBaseRelatedPerson or Device)
* participant.function MS
* note MS

Instance: example-cancer
InstanceOf: LTBaseCondition
Title: "Example LT Base Condition - Cancer"
Description: "Example instance of a cancer diagnosis documented during a patient encounter"
Usage: #example
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $sct#254837009 "Malignant neoplasm of breast"
// * extension[diagnosisType].valueCodeableConcept = diagnosis-type-cs#gencl-0001-00003 "Main diagnosis"
* bodySite = $sct#76752008 "Breast structure"
* subject = Reference(example-patient)
* onsetDateTime = "2025-08-15"
* recordedDate = "2025-09-01"
* participant
  * actor = Reference(example-practitioner)
  * function = $provenance-participant-type#author "Author"
* note
  * text = "Patient diagnosed with breast cancer. Staging and treatment plan to be determined."

// Instance: example-disability
//  InstanceOf: LTBaseCondition
// Title: "Example LT Base Condition - Disability Group I"
// Description: "Example instance of a disability condition with Group I classification"
// Usage: #example
// * language = #uz
// * clinicalStatus = $condition-clinical#active "Faol"
// * verificationStatus = $condition-ver-status#confirmed "Tasdiqlangan"
// * code = $sct#21134002 "Disability"
// * severity = DisabilityCS#regis0011.00001 "I guruh"
// * subject = Reference(example-salim)
// * onsetDateTime = "2020-03-10"
// * recordedDate = "2025-09-17"
// * participant
//   * actor = Reference(example-practitioner)
//   * function = $provenance-participant-type#author "Muallif"
// * note
//   * text = "Patient has been classified with Group I disability status following medical evaluation."
