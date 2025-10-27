Profile: LTBaseEncounter
Parent: Encounter
Id: lt-encounter
Title: "LT Base Encounter"
Description: "Lithuanian Base Encounter profile, used to represent clinical encounters"
* ^experimental = true
* ^status = #active
* ^date = "2025-10-15"

* identifier 0..1 MS
* status MS
// * status from EncounterStatusVS (required)

* class MS
// * class from EncounterClassVS (required)

* priority MS
// * priority from EncounterPriorityVS (required)

* type MS
// * type from EncounterTypeVS (required)
* serviceType MS

* subject MS
* subject only Reference(LTBasePatient)

* subjectStatus MS
// * subjectStatus from EncounterSubjectStatusVS (required)

* episodeOfCare MS
* basedOn MS
* careTeam MS
* partOf MS
* serviceProvider MS

* participant MS
* participant.actor MS
* participant.period MS
* participant
  * type MS
  // * type from EncounterParticipantTypeVS (extensible)

* appointment MS

* reason MS
* reason.use MS
// * reason.use from EncounterReasonUseVS (preferred)

* reason.value MS
* reason.value only CodeableReference (LTBaseCondition or DiagnosticReport or Procedure or LTBaseObservation)
* virtualService MS
* actualPeriod MS
* plannedStartDate MS
* plannedEndDate MS
* length MS

* diagnosis MS
* diagnosis.condition MS
* diagnosis.use MS

* account MS

* admission MS
* admission.origin MS
* admission.admitSource MS
// * admission.admitSource from EncounterAdmitSourceVS (required)
* admission.reAdmission MS
// * admission.reAdmission from EncounterReAdmissionVS (required)
* admission.destination MS
* admission.dischargeDisposition MS
// * admission.dischargeDisposition from EncounterDischargeDispositionVS (required)

* location MS
* location.location 1..1 MS


// Instance for LTBaseEncounter

Instance: example-encounter
InstanceOf: LTBaseEncounter
Title: "Example Encounter"
Description: "Example of an psychiatric encounter"
Usage: #example
* status = #completed "Completed"
* class = $v3-ActCode#IMP "Inpatient encounter"
* priority = $v3ActPriority#EM "Emergency"
//* type[0] = encounter-type-cs#mserv-0001-00004  "Treatment services"
// * serviceType[0] = Reference(example-healthcareservice)
* subject = Reference(example-patient)
// * subjectStatus = encounter-subject-status-cs#gencl-0003-00001 "Awake"

* participant.type = $v3-ParticipationType#ATND "attender"
* participant.period
  * start = "2024-01-01T10:00:00Z"
  * end = "2024-01-01T11:00:00Z"

* reason[0]
  // * use = encounter-reason-use-cs#mserv-0002-00001 "Disease"
  * value = Reference(Condition/example-cancer)

* actualPeriod
  * start = "2024-01-01T10:00:00Z"
  * end = "2024-01-01T11:00:00Z"

* plannedStartDate = "2024-01-01T10:00:00Z"
* plannedEndDate = "2024-01-01T11:00:00Z" 

* diagnosis[0].condition = Reference(Condition/example-cancer)

* admission
  * admitSource = $encounter-admit-source#psych "From psychiatric hospital"
  * reAdmission = $v2-admission#R "Re-admission"
  * dischargeDisposition = $encounter-discharge-disposition#home "Home"

// * location[0].location = Reference(example-location)
// * location[0].status = #completed


Instance: example-pencounter
InstanceOf: LTBaseEncounter
Title: "Example Psychiatric Encounter"
Description: "Example of an psychiatric encounter"
Usage: #example
* status = #completed "Completed"
* class = $v3-ActCode#IMP "Inpatient encounter"
* priority = $v3ActPriority#EM "Emergency"
* subject = Reference(example-patient)
* participant
  * type = $v3-ParticipationType#ATND "attender"
  * period
    * start = "2024-02-01T09:00:00Z"
    * end = "2024-02-12T10:30:00Z"
  * actor = Reference(example-practitioner)
* actualPeriod
  * start = "2024-02-01T09:00:00Z"
  * end = "2024-02-12T10:30:00Z"
* serviceProvider = Reference(example-organization)

