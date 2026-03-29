Profile: ScreeningCarePlanLt
Parent: CarePlanLt
Id: screening-careplan-lt
Title: "Screening CarePlan (LT)"
Description: """
Base CarePlan for Lithuanian national screening programmes.
Captures programme enrollment, current status, scheduled screening activities,
and care recommendations. Disease-specific screening IGs extend this profile
with programme-specific category codes and activity details.
"""
* ^url = $screening-careplan-lt-url
* ^status = #active
* ^publisher = "HL7 Lithuania"
* status 1..1
* intent 1..1
* intent = #plan
* category 1..1
* title 1..1
* subject 1..1
* subject only Reference(PatientLt)
* period 0..1
* period ^short = "Programme participation period (enrollment to exit/completion)"
* addresses 0..*
* addresses ^short = "Reason for screening (e.g. age-based eligibility, risk factors)"
* activity 0..*
* activity ^short = "Scheduled screening activities"
* note 0..*
* note ^short = "Programme notes, recommendations, follow-up interval"
