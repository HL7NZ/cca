Alias: $SNOMED = http://snomed.info/sct

ValueSet: RegimenType
Id: regimen-type
Title: "Regimen type"
Description: "The type of regimen - eg FOLFOX"

* ^url = "http:clinfhir.com/fhir/ValueSet/regimen-type"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $SNOMED#dummy "FOLFOX"
