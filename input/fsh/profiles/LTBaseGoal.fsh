Profile: LTBaseGoal
Parent: Goal
Id: lt-goal
Title: "LT Base Goal"
Description: "Lithuanian Base Goal profile, used for describing goals."
* ^experimental = true
* ^status = #active

* lifecycleStatus MS
* achievementStatus MS
* category MS
* priority MS
* description MS
* category MS
* subject MS
* subject only Reference(LTBasePatient or Group or LTBaseOrganization)
* start[x] MS
* target MS
* source only Reference(LTBasePatient or LTBasePractitioner or LTBasePractitionerRole or LTBaseRelatedPerson or LTBaseCareTeam)
* addresses only Reference(LTBaseCondition or LTBaseObservation or LTBaseServiceRequest or LTBaseProcedure or MedicationStatement or MedicationRequest or NutritionOrder or RiskAssessment)
* outcome MS
* outcome only CodeableReference(LTBaseObservation)
* note MS