### Release notes

v0.3.0 - xx.xx.2026

#### Updated Policies and Naming Conventions

* Updated policy.md with corrected naming conventions aligned with the FHIR migration guide
* Fixed resource ID suffix rules: all resources use `-lt` suffix (or `-lt-{ig}` for other IGs), ValueSets do not use `-vs` in IDs
* Clarified business name suffix rules: `Lt` is required, optional `VS` prefix before `Lt` for ValueSets (e.g., `VSLt`, not `LtVS`)
* Corrected profile naming examples: `PractitionerLt`, `PathologyOrderLtLab` with proper PascalCase
* Updated instance naming pattern to use `(example)` in parentheses
* Fixed terminology naming to include mandatory `Lt` suffix in all CodeSystem and ValueSet names
* Corrected all broken URLs and removed Google redirect links from tables
* Fixed various typos and grammatical errors in policy documentation

