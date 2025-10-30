Profile: LTBaseOrganization
Parent: OrganizationEuCore
Id: lt-organization
Title: "LT Base Organization"
Description: "Lithuanian Base Organization profile, used to define healthcare organizations and sub-units"
* ^experimental = true
* ^status = #active

* identifier 1.. MS
  * system and value MS
* identifier ^short = "Įstaigos identifikatorius"
* identifier.system from LTBaseOrganizationIdentifier (extensible)

* active 1.. MS
* active ^short = "Ar įstaiga yra veikianti / Whether the organization's record is still in active use"

* name MS
* name ^short = "Įstaigos pavadinimas / Title"
* insert MultilingualName(organizations)

* contact  MS
* contact ^short = "Įstaigos kontaktinė informacija / Official contact details for the Organization"
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom ^short = "Contact details (phone/email and more)"
* contact.telecom.system MS
* contact.telecom.use MS
* contact.telecom.value 1.. MS
* contact.telecom contains
    phone 0..* MS and
    email 0..* MS
* contact.telecom[phone] ^short = "Telefono numeris / Phone number"
* contact.telecom[phone].system = #phone (exactly)
* contact.telecom[email] ^short = "Elektroninio pašto adresas / Email"
* contact.telecom[email].system = #email (exactly)
* contact.address MS
* contact.address ^short = "Įstaigos adresas / Adress"

* partOf only Reference(LTBaseOrganization)
* partOf MS
* partOf ^short = "Įstaiga, kuriai priklausi ši įstaiga/padalinys / The organization of which this organization forms a part."


Instance: example-lmb
InstanceOf: LTBaseOrganization
Description: "Example of a LMB organization"
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

Instance: example-organization
InstanceOf: LTBaseOrganization
Description: "Example of a healthcare organization"
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