
Instance:   CcaCapabilityStatement
InstanceOf: CapabilityStatement
Title:          "CapabilityStatement"
Description:    "Represents API exposed to retrieve plans"
Usage: #definition

* jurisdiction.coding = urn:iso:std:iso:3166#NZ

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>CCA capabilities</div>"

* name = "HPI_CapabilityStatement"
* title = "Capability Statement describing CCA FHIR APIs"
* description = """
This is the computable resource that describes the RESTful endpoint
"""

* date = "2020-04-01"
* status = #draft
* kind = #instance
* fhirVersion = #4.0.1
* format = #json

* implementation.description = "The regimen query endpoint"
* implementation.url = "http://moh.org.nz/hpi/fhir"

* rest.mode = #server

// ============== The PlanDefinition endpoint

* rest.resource.type = #PlanDefinition
* rest.resource.supportedProfile = "http://hl7.org.nz/fhir/StructureDefinition/CcaPlanDefinition"
* rest.resource.documentation = """
PlanDefinition query

"""

//read by id
* rest.resource.interaction.code = #read
* rest.resource.interaction.documentation = "Used to retrieve a PlanDefinition resource by Id."

