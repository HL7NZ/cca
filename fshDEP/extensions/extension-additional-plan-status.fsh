Extension: AdditionalPlanStatus
Id: sact-additional-plan-status
Title: "Regimen under review"
Description: "Additional status values for PlanDefinition. Currently only a single value - review - indicating that a regimen is published and available to be used, but there is still a review being performed, so could change. 
In most situations the value of the status element itself will be 'active'"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/sact-additional-plan-status"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition.status"

//todo - need to create the valueset
* value[x] only code
* valueCode from https://standards.digital.health.nz/fhir/ValueSet/sact-plan-definition-status-code

CodeSystem:  PlanDefinitionStatus
Id: sact-plan-definition-status-code
Title: "PlanDefinition additional status"
Description:  "Other codes used for the PlanDefinition status"

* ^url = "https://standards.digital.health.nz/ns/sact-plan-definition-status-code"

* #review "Under review"


ValueSet : PlanDefinitionStatus
Id: sact-plan-definition-status-code
Title: "PlanDefinition additional status"
Description:  "Other codes used for the PlanDefinition status"


* ^url = "https://standards.digital.health.nz/fhir/ValueSet/sact-plan-definition-status-code"

* codes from system https://standards.digital.health.nz/ns/sact-plan-definition-status-code