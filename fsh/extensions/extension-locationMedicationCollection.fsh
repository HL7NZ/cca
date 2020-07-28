Extension: LocationMedicationCollection
Id: location-medication-collection
Description: "The Location where the medication can be collection prior to collection"

* ^url = "http://clinfhir.com/fhir/StructureDefinition/location-medication-collection"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "ActivityDefinition"

* value[x] only CodeableConcept or Reference(Location)
* valueCodeableConcept from http:clinfhir.com/fhir/ValueSet/location-medication-collection



