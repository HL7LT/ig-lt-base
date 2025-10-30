Alias: $form = http://terminology.hl7.org/CodeSystem/location-physical-type

Profile: LTBaseLocation
Parent: LocationEuCore
Id: lt-location
Title: "LT Base Location"
Description: "Lithuanian Base Location profile, used for documenting healthcare locations."
* ^experimental = true
* ^status = #active

Instance: example-location
InstanceOf: LTBaseLocation
Title: "Example LT Base Location"
Description: "Example instance of a healthcare location"
Usage: #example
* language = #en
* status = #active "Active"
* name = "Vilniaus miesto ligoninė"
* description = "Pagrindinė Vilniaus miesto ligoninė, teikianti įvairias sveikatos priežiūros paslaugas."
* form = $form#bu "Building"
* address.line[0] = "Santariškių g. 2"
* address.city = "Vilnius"
* address.postalCode = "08661"
* address.country = "LT"
* form = #building "Building"
* managingOrganization = Reference(example-organization)