Alias: $SNOMED = http://snomed.info/sct

ValueSet: LocationMedicationCollection
Id: location-medication-collection
Title: "Medication collection location"
Description: "The physical location where the medication can be collected on prior to administration - eg a pharmacy"

* ^url = "http:clinfhir.com/fhir/ValueSet/location-medication-collection"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $SNOMED#284748001 "Pharmacy shop"
