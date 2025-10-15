RuleSet: MultilingualName(entityType)
* name 1..1 MS
  * ^short = "Name {entityType} (in Lithuanian)"
  * extension contains translation named translation 0..* MS
    * ^short = "Name {entityType} (in English)"

RuleSet: HumanName
* name MS
  * use and text and family and given and suffix and period MS

RuleSet: OriginalCodeSystemDraft(id)
* ^url = "https://hl7.lt/fhir/CodeSystem/{id}"
* ^status = #draft
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #lt
* ^experimental = true

RuleSet: OriginalCodeSystem(id)
* ^url = "https://hl7.lt/fhir/CodeSystem/{id}"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #lt
* ^experimental = false

RuleSet: SupplementCodeSystemDraft(id, supplements, version)
* ^url = "https://hl7.lt/fhir/CodeSystem/{id}"
* ^status = #draft
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = true

RuleSet: SupplementCodeSystem(id, supplements, version)
* ^url = "https://hl7.lt/fhir/CodeSystem/{id}"
* ^status = #active
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = false
