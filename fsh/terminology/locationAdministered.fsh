Alias: $SNOMED = http://snomed.info/sct

ValueSet: LocationAdministration
Id: location-administration
Title: "The location where the administration occurred"
Description: "The location where the administration occurred"

* ^url = "http:clinfhir.com/fhir/ValueSet/location-administration-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $SNOMED#264362003 "Home"
