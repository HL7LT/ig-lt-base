RuleSet: MultilingualName(entityType)
* name 1..1 MS
  * ^short = "Name {entityType} (in Lithuanian)"
  * extension contains translation named translation 0..* MS
    * ^short = "Name {entityType} (in English)"


RuleSet: OriginalCodeSystemDraft(id)
* ^url = "https://hl7.lt/fhir/tx/CodeSystem/{id}"
* ^status = #draft
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #lt
* ^experimental = true
* ^publisher = "HL7 Lithuania" 


RuleSet: OriginalCodeSystem(id)
* ^url = "https://hl7.lt/fhir/tx/CodeSystem/{id}"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #lt
* ^experimental = false
* ^publisher = "HL7 Lithuania" 


RuleSet: SupplementCodeSystemDraft(id, supplements, version)
* ^url = "https://hl7.lt/fhir/tx/CodeSystem/{id}"
* ^status = #draft
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = true
* ^publisher = "HL7 Lithuania" 


RuleSet: SupplementCodeSystem(id, supplements, version)
* ^url = "https://hl7.lt/fhir/tx/CodeSystem/{id}"
* ^status = #active
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = false
* ^publisher = "HL7 Lithuania" 

