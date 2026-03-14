Profile: CarePlanLt
Parent: CarePlanEu
Id: care-plan-lt
Title: "CarePlanLt"
Description: "Lithuanian Base CarePlan profile, used for describing care plans."
* ^url = $care-plan-lt-url
* ^status = #active

* identifier MS
* basedOn MS
* basedOn only Reference(ServiceRequestLt or CarePlanLt or RequestOrchestration or NutritionOrder)
* replaces MS
* replaces only Reference(CarePlanLt)
* status MS
* intent MS
* category MS
* title MS
  * extension contains translation named translation 0..* MS
* description MS
* subject MS
* subject only Reference(PatientLt or Group)
* encounter MS
* encounter only Reference(EncounterLt)
// OrganizationLt and PractitionerLt are removed because of limitation of the EU profile
* custodian only Reference(PractitionerRoleLt or CareTeamLt or PatientLt or RelatedPersonLt or Device)
* contributor MS
// OrganizationLt and PractitionerLt are removed because of limitation of the EU profile
* contributor only Reference(PractitionerRoleLt or CareTeamLt or PatientLt or RelatedPersonLt or Device)
* careTeam only Reference(CareTeamLt)
* addresses only CodeableReference(ConditionLt)
* goal only Reference(GoalLt)
* activity MS
* activity.plannedActivityReference MS
* activity.plannedActivityReference only Reference(AppointmentLt or CommunicationRequest or DeviceRequest or MedicationRequest or NutritionOrder or Task or ServiceRequestLt or VisionPrescription or RequestOrchestration or ImmunizationRecommendation or SupplyRequest)
* note MS
