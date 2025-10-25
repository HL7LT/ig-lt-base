Profile: LTBaseOrganization
Parent: Organization
Id: lt-organization
Title: "LT Base Organization"
Description: "Lithuanian Base Organization profile, used to define healthcare organizations and sub-units"
* ^experimental = true
* ^status = #active

* identifier 1.. MS
* identifier ^short = "Įstaigos identifikatorius"
* identifier.system from LTBaseOrganizationIdentifier (extensible)

* active 1.. MS
* active ^short = "Ar įstaiga yra veikianti / Whether the organization's record is still in active use"

* name 1.. MS
* name ^short = "Įstaigos pavadinimas / Title"
* insert MultilingualName(organizations)

* contact 1.. MS
* contact ^short = "Įstaigos kontaktinė informacija / Official contact details for the Organization"
* contact.telecom 1..
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom ^short = "Contact details (phone/email and more)"
* contact.telecom.value 1..
* contact.telecom contains
    Phone 0..* MS and
    Email 0..* MS
* contact.telecom[Phone] ^short = "Telefono numeris / Phone number"
* contact.telecom[Phone].system = #phone (exactly)
* contact.telecom[Email] ^short = "Elektroninio pašto adresas / Email"
* contact.telecom[Email].system = #email (exactly)
* contact.address 1.. MS
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
  * telecom[Phone]
    * value = "+37061234567"
    * use = #work
  * address
    * use = #work
    * type = #both
    * line = "Vilniaus g. 1"
    * city = "Vilnius"
    * postalCode = "12345"
    * country = "LT"

