Extension: ReplacedBy
Id: sact-replaced-by
Title: "Replaced by"
Description: "When a Plan has been deprecated (superceeded or discontinued), refers to the one that replaces it, if any"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/sact-replaced-by"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"

* value[x] only Reference(CcaPlanDefinition)