CodeSystem: LTBaseIdentifierDomain
Id: identifier-domain
Title: "Identifier Domain"
Description: "Identifier Domain with translations in Lithuanian"
* insert OriginalCodeSystemDraft(identifier-domain)
* #http://esveikata.lt/Identifier/SVEIDRAID "SVEIDRA identifier" "SVEIDRA identifier"
  * ^designation[0].language = #lt
  * ^designation[=].value = "SVEIDRA identifikatorius"
* #http://esveikata.lt/classifiers/Identifier/JAR "JAR code" "JAR code"
  * ^designation[0].language = #lt
  * ^designation[=].value = "JAR kodas"
* #http://esveikata.lt/Identifier/ESPBI "ESPBI id" "ESPBI id"
  * ^designation[0].language = #lt
  * ^designation[=].value = "ESPBI id"
* #http://esveikata.lt/Identifier/VAPRIS "VAPRIS" "VAPRIS"
  * ^designation[0].language = #lt
  * ^designation[=].value = "VAPRIS"
* #http://esveikata.lt/Identifier/SPILIS "SPĮLIS" "SPĮLIS veiklos vietos identifikatorius"
  * ^designation[0].language = #lt
  * ^designation[=].value = "SPĮLIS veiklos vietos identifikatorius"
* #http://esveikata.lt/Identifier/PersonalCode "Personal Code" "Personal Code"
  * ^designation[0].language = #lt
  * ^designation[=].value = "Asmens kodas"
* #http://esveikata.lt/Identifier/Patient/ESI "ESI code" "ESI code"
  * ^designation[0].language = #lt
  * ^designation[=].value = "ESI code"
* #http://esveikata.lt/Identifier/Patient/DIK "DIK" "DIK"
  * ^designation[0].language = #lt
  * ^designation[=].value = "DIK"
* #http://esveikata.lt/Identifier/Patient/SveidraID "SveidraID" "SveidraID"
  * ^designation[0].language = #lt
  * ^designation[=].value = "SveidraID"
* #http://esveikata.lt/Identifier/Patient/eFormNumber "eFormNumber" "eFormNumber"
  * ^designation[0].language = #lt
  * ^designation[=].value = "eFormNumber"
* #http://esveikata.lt/Identifier/Patient/ForeignPersonalCode "ForeignPersonalCode" "ForeignPersonalCode"
  * ^designation[0].language = #lt
  * ^designation[=].value = "ForeignPersonalCode"
* #http://esveikata.lt/Identifier/eDelivery "eDelivery" "eDelivery"
  * ^designation[0].language = #lt
  * ^designation[=].value = "eDelivery"
* #http://esveikata.lt/classifiers/IdentityDocument/SerieNumber "SerieNumber" "SerieNumber"
  * ^designation[0].language = #lt
  * ^designation[=].value = "SerieNumber"

ValueSet: LTBaseOrganizationIdentifier
Id: organization-identifier
Title: "Organization Identifier"
Description: "A curated list of identifier systems for organizations."
* ^language = #en
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Lithuania" 

* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/SVEIDRAID
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/SPILIS
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/ESPBI
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/VAPRIS


ValueSet: PatientIdentifier
Id: patient-identifier
Title: "Patient Identifier"
Description: "A curated list of identifier systems for patients."
* ^language = #en
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Lithuania" 

* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/ESPBI
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/PersonalCode
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/Patient/ESI
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/Patient/DIK
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/Patient/SveidraID
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/Patient/eFormNumber
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/Patient/ForeignPersonalCode
* LTBaseIdentifierDomain#http://esveikata.lt/Identifier/eDelivery
* LTBaseIdentifierDomain#http://esveikata.lt/classifiers/IdentityDocument/SerieNumber
