Instance: organization-example
InstanceOf: OrganizationLt
Description: "Example of a LMB organization"
Title: "Organization: Medical Library (example)"
Usage: #example
* language = #lt
* identifier
  * use = #official
  * system = "http://esveikata.lt/classifiers/Identifier/JAR"
  * value = "200935935"
* active = true
* name = "Lietuvos Medicinos biblioteka"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #lt
    * extension[content][+]
      * valueString = "Lithuanian Medical Library"
* contact[0]
  * purpose = #work
  * telecom[phone]
    * value = "+37061234567"
    * use = #work
  * address
    * use = #work
    * type = #both
    * line = "Vilniaus g. 1"
    * city = "Vilnius"
    * postalCode = "12345"
    * country = "LT"

Instance: organization-vilnius-hospital-example
InstanceOf: OrganizationLt
Description: "Example of a healthcare organization"
Title: "Organization: Vilnius Hospital (example)"
Usage: #example
* language = #lt
* identifier
  * use = #official
  * system = "http://esveikata.lt/classifiers/Identifier/JAR"
  * value = "123456789"
* active = true
* name = "Vilniaus miesto ligoninė"
* contact[0]
  * purpose = #work
  * telecom[phone]
    * value = "+37061234567"
    * use = #work
  * address
    * use = #work
    * type = #both
    * line = "Gedimino pr. 1"
    * city = "Vilnius"
    * postalCode = "01103"
    * country = "LT"
