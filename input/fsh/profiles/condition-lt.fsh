Profile: ConditionLt
Parent: ConditionEu
Id: condition-lt 
Title: "ConditionLt"
Description: "Lithuanian Base Condition profile, used for documenting general, symptoms, conditions, and their characteristics."
* ^url = $condition-lt-url
* ^status = #active
* clinicalStatus MS
* verificationStatus MS
* severity MS
* code MS
* subject MS
* subject only Reference(PatientLt)
* encounter MS
* encounter only Reference(EncounterLt)
* onset[x] MS
* abatement[x] MS
* recordedDate MS

* participant MS
* participant.actor  only Reference(PractitionerLt or PractitionerRoleLt or PatientLt or RelatedPersonLt or Device)
* participant.function MS
* note MS
