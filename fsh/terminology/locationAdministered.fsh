Alias: $SNOMED = http://snomed.info/sct

ValueSet: LocationAdministration
Id: location-administration
Title: "Administration location"
Description: "The physical location where the administration occurred - eg at home or in a clinic"

* ^url = "http://standards.digital.health.nz/fhir/ValueSet/location-administration-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $SNOMED#264362003 "Home"
