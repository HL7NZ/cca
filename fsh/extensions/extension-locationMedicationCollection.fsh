Extension: LocationMedicationCollection
Id: location-medication-collection
Description: "The physical Location where the medication can be collection prior to collection"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/cca-location-medication-collection"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "ActivityDefinition"

* value[x] only CodeableConcept or Reference(Location)
* valueCodeableConcept from http://standards.digital.health.nz/fhir/ValueSet/location-medication-collection



