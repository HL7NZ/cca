Extension: RegimenUnderReview
Id: regimen-under-review
Title: "Regimen under review"
Description: "Indicates that a regimen is published and available to be used, but there is still a review being performed, so could change. 
In most situations the value of the status element will be 'active'"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/cca-regimen-under-review"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition.status"

//todo - need to create the valueset
* value[x] only code
* valueCode from http://clinfhir.com/fhir/ValueSet/plandefinition-status

CodeSystem:  PlanDefinitionStatus
Id: plandefinition-status
Title: "PlanDefinition additional status"
Description:  "Other codes used for the PlanDefinition status"

* ^url = "http://standards.digital.health.nz/ns/plandefinition-status"

* #review "Under review"


ValueSet : PlanDefinitionStatus
Id: plandefinition-status
Title: "PlanDefinition additional status"
Description:  "Other codes used for the PlanDefinition status"


* ^url = "http://standards.digital.health.nz/fhir/ValueSet/plandefinition-status"

* codes from system http://standards.digital.health.nz/ns/plandefinition-status