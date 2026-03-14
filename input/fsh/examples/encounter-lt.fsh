Instance: encounter-psychiatric-example
InstanceOf: EncounterLt
Title: "Encounter: Psychiatric (example)"
Description: "Example of an psychiatric encounter"
Usage: #example
* status = #completed "Completed"
* class = $v3-ActCode#IMP "Inpatient encounter"
* priority = $v3ActPriority#EM "Emergency"
//* type[0] = encounter-type-cs#mserv-0001-00004  "Treatment services"
// * serviceType[0] = Reference(healthcare-service-lt)
* subject = Reference(patient-example)
// * subjectStatus = encounter-subject-status-cs#gencl-0003-00001 "Awake"

* participant.type = $v3-ParticipationType#ATND "attender"
* participant.period
  * start = "2024-01-01T10:00:00Z"
  * end = "2024-01-01T11:00:00Z"

* reason[0]
  // * use = encounter-reason-use-cs#mserv-0002-00001 "Disease"
  * value = Reference(condition-cancer-example)

* actualPeriod
  * start = "2024-01-01T10:00:00Z"
  * end = "2024-01-01T11:00:00Z"

* plannedStartDate = "2024-01-01T10:00:00Z"
* plannedEndDate = "2024-01-01T11:00:00Z" 

* diagnosis[0].condition = Reference(condition-cancer-example)

* admission
  * admitSource = $encounter-admit-source#psych "From psychiatric hospital"
  * reAdmission = $v2-admission#R "Re-admission"
  * dischargeDisposition = $encounter-discharge-disposition#home "Home"
