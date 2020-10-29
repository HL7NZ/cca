Alias: $SNOMED = http://snomed.info/sct

ValueSet: CancerType
Id: cca-cancer-type
Title: "Cancer type"
Description: "The type of Cancer"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/cca-cancer-type"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* include codes from system $SNOMED where concept is-a #77465005 "Transplantation"
* include codes from system $SNOMED where concept is-a #363346000 "Malignant neoplastic disease"


