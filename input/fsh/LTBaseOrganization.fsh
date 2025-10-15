Profile: LTBaseOrganization
Parent: Organization
Id: lt-organization
Title: "LT Base Organization"
Description: "Lithuanian Base Organization profile, used to define healthcare organizations and sub-units"
* ^experimental = true
* ^status = #active

* identifier MS
* insert MultilingualName(organizations)
* contact MS

Instance: example-lmb
InstanceOf: LTBaseOrganization
Description: "Example of a LMB organization"
Usage: #example
* language = #lt
* identifier
  * use = #official
  * system = "https://hl7.lt/sid/org/lt/vatin"
  * value = "200935935"
* active = true
* name = "Lietuvos Medicinos biblioteka"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #lt
    * extension[content][+]
      * valueString = "Lithuanian Medical Library"
