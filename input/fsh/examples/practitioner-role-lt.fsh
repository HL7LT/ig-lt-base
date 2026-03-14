Instance: practitioner-role-doctor-vilnius-hospital-example
InstanceOf: PractitionerRoleLt
Usage: #example
Title: "PractitionerRole: Doctor Vilnius Hospital (example)"
Description: "An example Practitioner Role conforming to the Lithuanian Base Profile."

* practitioner = Reference(practitioner-example)
* organization = Reference(organization-example)
* code[0] = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* active = true
