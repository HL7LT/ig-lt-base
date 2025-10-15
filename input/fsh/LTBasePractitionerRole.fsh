Profile: LTBasePractitionerRole
Parent: PractitionerRole
Id: lt-opractitioner-role
Title: "LT Base Practitioner Role"
Description: "Lithuanian Base Practitioner Role profile, used to define roles of the healthcare practitioner in the healthcare facilities"
* ^experimental = true
* ^status = #active

* practitioner MS
* practitioner only Reference(LTBasePractitioner)
* organization MS
* organization only Reference(LTBaseOrganization)
* code MS
//* code from PractitionerRoleCodeVS (required)