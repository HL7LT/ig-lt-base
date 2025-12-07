Profile: LTBaseHealthcareService
Parent: HealthcareService
Id: lt-healthcare-service
Title: "LT Base HealthcareService"
Description: "Lithuanian Base HealthcareService profile, used for describing provided healthcare services."
* ^experimental = true
* ^status = #active

* providedBy MS
* providedBy only Reference(LTBaseOrganization)
* offeredIn only Reference(LTBaseHealthcareService)
* category MS
* type MS
* specialty MS
* location MS
* location only Reference(LTBaseLocation)
* insert MultilingualName(Healthcare Services)
* coverageArea only Reference(LTBaseLocation)
* contact MS
