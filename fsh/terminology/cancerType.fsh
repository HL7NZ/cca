Alias: $SNOMED = http://snomed.info/sct

ValueSet: CancerType
Id: cancer-type
Title: "Cancer type"
Description: "The type of Cancer"

* ^url = "http://standards.digital.health.nz/fhir/ValueSet/cancer-type"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* include codes from system $SNOMED where concept is-a #77465005 "Transplantation"
* include codes from system $SNOMED where concept is-a #363346000 "Malignant neoplastic disease"


