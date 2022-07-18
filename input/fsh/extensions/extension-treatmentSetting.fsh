Extension: TreatmentSetting
Id: sact-treatment-setting
Description: "The setting of the regimen - what is its purpose"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/sact-treatment-setting"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"

* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/sact-treatment-setting-code




