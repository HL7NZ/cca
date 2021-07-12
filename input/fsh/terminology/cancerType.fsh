Alias: $SNOMED = http://snomed.info/sct

ValueSet: CancerType
Id: cancer-type-code
Title: "Cancer type"
Description: "The type of Cancer"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/cancer-type-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* include codes from system $SNOMED where concept is-a #77465005 "Transplantation"
* include codes from system $SNOMED where concept is-a #363346000 "Malignant neoplastic disease"
* include codes from system $SNOMED where concept is-a #362965005 "Disorder of body system (disorder)" 

