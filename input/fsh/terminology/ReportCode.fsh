ValueSet: ReportCode
Id: report-code
Title: "Report Code"
Description: "Diagnostic report codes including all subtypes of Clinical procedure report, excluding the root concept itself."
* ^language = #en
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Lithuania"

// Use "descendent-of" to exclude the root code 371525003
* codes from system $sct where concept descendent-of #371525003