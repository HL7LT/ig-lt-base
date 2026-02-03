Profile: LocationEuCore
Parent: Location
Id: location-eu-core
Title: "Location (EU core)"
Description: "This profile sets minimum expectations for the Location resource to be used for the purpose of this guide."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^version = "2.0.0-ballot"
* ^status = #active
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Copyright HL7 Europe. Licensed under creative commons public domain (CC0 1.0)."
* ^url = $EuLocationUrl
* identifier ^short = "Location identifier"
* name ^short = "Location name"
* contact ^short = "Location telecom"
* address only $EuAddressUrl
* type ^short = "Location type"
* managingOrganization ^short = "Managing organization"
* managingOrganization ^comment = "The managing organization is the organization responsible for the location, such as a hospital or clinic."
* partOf ^short = "Location this one is physically a part of"