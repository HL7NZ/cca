Alias: $SNOMED = http://snomed.info/sct

ValueSet: LocationMedicationCollection
Id: sact-location-medication-collection-code
Title: "Medication collection location"
Description: "The physical location where the medication can be collected on prior to administration - eg a pharmacy"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/sact-location-medication-collection-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $SNOMED#22232009 "Hospital"
* $SNOMED#284748001 "Pharmacy shop"
