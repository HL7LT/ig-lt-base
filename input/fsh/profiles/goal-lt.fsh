Profile: GoalLt
Parent: Goal
Id: goal-lt
Title: "GoalLt"
Description: "Lithuanian Base Goal profile, used for describing goals."
* ^url = $goal-lt-url
* ^status = #active

* lifecycleStatus MS
* achievementStatus MS
* category MS
* priority MS
* description MS
* category MS
* subject MS
* subject only Reference(PatientLt or Group or OrganizationLt)
* start[x] MS
* target MS
* source only Reference(PatientLt or PractitionerLt or PractitionerRoleLt or RelatedPersonLt or CareTeamLt)
* addresses only Reference(ConditionLt or ObservationLt or ServiceRequestLt or ProcedureLt or MedicationStatement or MedicationRequest or NutritionOrder or RiskAssessment)
* outcome MS
* outcome only CodeableReference(ObservationLt)
* note MS
