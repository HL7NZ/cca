Alias: $SNOMED = http://snomed.info/sct

ValueSet: LocationMedicationCollection
Id: location-medication-collection
Title: "The location where the medication can be collected on prior to administration"
Description: "The location where the medication can be collected on prior to administration"

* ^url = "http:clinfhir.com/fhir/ValueSet/location-medication-collection"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $SNOMED#284748001 "Pharmacy shop"
