Profile: LTBaseCarePlan
Parent: CarePlan
Id: lt-care-plan
Title: "LT Base CarePlan"
Description: "Lithuanian Base CarePlan profile, used for describing care plans."
* ^experimental = true
* ^status = #active

* identifier MS
* basedOn MS
* basedOn only Reference(LTBaseServiceRequest or LTBaseCarePlan or RequestOrchestration or NutritionOrder)
* replaces MS
* replaces only Reference(LTBaseCarePlan)
* status MS
* intent MS
* category MS
* title MS
  * extension contains translation named translation 0..* MS
* description MS
* subject MS
* subject only Reference(LTBasePatient or Group)
* encounter MS
* encounter only Reference(LTBaseEncounter)
* custodian only Reference(LTBaseOrganization or LTBasePractitionerRole or LTBasePractitioner or LTBaseCareTeam or LTBasePatient or LTBaseRelatedPerson or Device)
* contributor MS
* contributor only Reference(LTBaseOrganization or LTBasePractitionerRole or LTBasePractitioner or LTBaseCareTeam or LTBasePatient or LTBaseRelatedPerson or Device)
* careTeam only Reference(LTBaseCareTeam)
* addresses only CodeableReference(LTBaseCondition)
* goal only Reference(LTBaseGoal)
* activity MS
* activity.plannedActivityReference MS
* activity.plannedActivityReference only Reference(LTBaseAppointment or CommunicationRequest or DeviceRequest or MedicationRequest or NutritionOrder or Task or LTBaseServiceRequest or VisionPrescription or RequestOrchestration or ImmunizationRecommendation or SupplyRequest)
* note MS
