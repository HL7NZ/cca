Alias: $SNOMED = http://snomed.info/sct

ValueSet: LocationAdministration
Id: sact-administration-site-code
Title: "Administration location"
Description: "The physical location where the administration occurred - eg at home or in a clinic"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/sact-administration-site-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $SNOMED#264362003 "Home"
