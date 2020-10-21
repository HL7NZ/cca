Extension: ReplacedBy
Id: replaced-by
Title: "Replaced by"
Description: "When a Plan has been deprecated (superceeded or discontinued), refers to the one that replaces it, if any"

* ^url = "http://standards.digital.health.nz/fhir/StructureDefinition/replaced-by"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"

* value[x] only Reference(CcaPlanDefinition)