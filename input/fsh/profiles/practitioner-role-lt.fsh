Profile: PractitionerRoleLt
Parent: PractitionerRoleEuCore
Id: practitioner-role-lt
Title: "PractitionerRoleLt"
Description: "Lithuanian Base Practitioner Role profile, used to define roles of the healthcare practitioner in the healthcare facilities"
* ^url = $practitioner-role-lt-url
* ^status = #active

* practitioner MS
* practitioner only Reference(PractitionerLt)
* organization MS
* organization only Reference(OrganizationLt)
* code MS
//* code from PractitionerRoleCodeVS (required)
* location MS
* location only Reference(LocationLt)
* specialty MS
