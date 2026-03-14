Profile: HealthcareServiceLt
Parent: HealthcareService
Id: healthcare-service-lt
Title: "HealthcareServiceLt"
Description: "Lithuanian Base HealthcareService profile, used for describing provided healthcare services."
* ^url = $healthcare-service-lt-url
* ^status = #active

* providedBy MS
* providedBy only Reference(OrganizationLt)
* offeredIn only Reference(HealthcareServiceLt)
* category MS
* type MS
* specialty MS
* location MS
* location only Reference(LocationLt)
* insert MultilingualName(Healthcare Services)
* coverageArea only Reference(LocationLt)
* contact MS
