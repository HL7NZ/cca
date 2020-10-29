Alias: $SNOMED = http://snomed.info/sct

ValueSet: LocationAdministration
Id: cca-location-administration
Title: "Administration location"
Description: "The physical location where the administration occurred - eg at home or in a clinic"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/cca-location-administration-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $SNOMED#264362003 "Home"
