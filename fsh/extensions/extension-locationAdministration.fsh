Extension: LocationAdministration
Id: location-administration
Description: "The physical Location where the medication administration occurs (eg home or clinic)"

* ^url = "http://standards.digital.health.nz/fhir/StructureDefinition/location-administration"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "ActivityDefinition"

* value[x] only CodeableConcept or Reference(Location)
* valueCodeableConcept from http://standards.digital.health.nz/fhir/ValueSet/location-administration-code



