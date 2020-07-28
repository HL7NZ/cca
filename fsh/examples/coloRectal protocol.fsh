
Alias: $SNOMED = http://snomed.info/sct
Alias: $NZMT = https://nzulm.org.nz/nzmt


Instance:   coloRectal
InstanceOf: CcaPlanDefinition
Description: "Example Plan definition"
Usage: #example

* status = #draft
* version = "3.0.3"
* title = "Colorectal Adjuvant FOLFOX (a7)"

* type.coding.system = "http://terminology.hl7.org/CodeSystem/plan-definition-type"
* type.coding.code = #order-set

* publisher = "New Zealand Medicines Formulary LP"
* date = "2020-06-29T20:14:18.417+12:00"

//Cabergoline admin
* contained = ActCabergoline

//Tragacanth
* contained = ActTragacanth


//support factors

//at risk of diarrhoea
* extension[support-factor].extension[factor].valueCodeableConcept = $SNOMED#TOUPDATE-SUPPORT4 "Diarrhoea risk"
* extension[support-factor].extension[value].valueCodeableConcept.text = "low"

//Needs anti-fungal support
* extension[support-factor][1].extension[factor].valueCodeableConcept = $SNOMED#TOUPDATE-SUPPORT8 "AntiFungal Prophylaxis"
* extension[support-factor][1].extension[value].valueCodeableConcept.text = "low"

//Infusion related risk
* extension[support-factor][2].extension[factor].valueCodeableConcept = $SNOMED#TOUPDATE-SUPPORT2 "Hypersensitivity / Infusion related reaction ris"
* extension[support-factor][2].extension[value].valueCodeableConcept.text = "low"

//the focus of the plan is on colorectal cancer
* useContext.code = #focus
* useContext.code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext.valueCodeableConcept = http://snomed.info/sct#781382000 "Colorectal cancer"

//the type of regimen - ?Is the code really a snomed code??
* useContext[1].code = #program
* useContext[1].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[1].valueCodeableConcept = http://snomed.info/sct#FOLFOX "FOLFOX"

//relatedArtifacts
* relatedArtifact.type = #citation
* relatedArtifact.display = "test"
* relatedArtifact.url = "http://www.ncbi.nlm.nih.gov/pubmed/23434"

* relatedArtifact[1].type = #citation
* relatedArtifact[1].display = "test2"
* relatedArtifact[1].url = "http://www.ncbi.nlm.nih.gov/pubmed/34324"


//Uses the '3 level' representation of actions suggested by the example in the spec
//top level: Regimen options. Allows different 'versions' of the rregimen to be selected based on trigger criteria. Only 1 supported
//next level: Represents the different defined cycles. May be more than one
//third level: the components of a single cycle

* action.description = "Describes the single cycle in this regimen. Cycle length 14 days"
* action.selectionBehavior = #exactly-one    //explicit that only 1 top level action is chosen (there is only 1)

//Cycle description
* action.action.description = "Administration of Cabergoline and Tragacanth daily "

//the Cabergoline admin within the cycle
* action.action.action.description = "2mg of Cabergoline daily on days 1 and 4 by IV Infusion over 20 minutes"

//details of the first administration on day 1
* action.action.action.extension[timing-of-days].extension[day].valueInteger = 1
* action.action.action.extension[timing-of-days].extension[instructions].valueString = "Specific instructions for the first administration"

//details of the second administration on day 4
* action.action.action.extension[timing-of-days][1].extension[day].valueInteger = 4
* action.action.action.extension[timing-of-days][1].extension[instructions].valueString = "Specific instructions for the second administration"


//the detailed activity definition. This is enough information to generate a MedicationRequest resource for a specific patient
* action.action.action.definitionCanonical = "#act-cabergoline"

//the Tragacanth admin within the cycle
* action.action.action[1].definitionCanonical = "#act-tragacanth"
* action.action.action[1].description = "3mg of Tragacanth daily on days 2,3 and 4 by IV Infusion over 3 hours"

//details of the first administration on day 2
* action.action.action.extension[timing-of-days].extension[day].valueInteger = 2
* action.action.action.extension[timing-of-days].extension[instructions].valueString = "Specific instructions for the first administration"

//details of the second administration on day 3
* action.action.action.extension[timing-of-days][1].extension[day].valueInteger = 3
* action.action.action.extension[timing-of-days][1].extension[instructions].valueString = "Specific instructions for the second administration"

//details of the third administration on day 4
* action.action.action.extension[timing-of-days][2].extension[day].valueInteger = 4
* action.action.action.extension[timing-of-days][2].extension[instructions].valueString = "Specific instructions for the third administration"


Instance:   ActCabergoline
InstanceOf: CcaActivityDefinition
Description: "Cabergoline Administration"
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Cabergoline administration, 2mg over 20 minutes</div>"
* text.status = #additional

* extension[location-medication-collection].valueCodeableConcept = $SNOMED#284748001 "Pharmacy shop"
* extension[location-medication-collection].valueCodeableConcept.text = "Collect medication from Pharmacy shop"
* extension[location-administration].valueCodeableConcept = $SNOMED#264362003 "Home"
* extension[location-medication-collection].valueCodeableConcept.text = "Administration takes place at the patients home"

* status = #draft

* productCodeableConcept = $NZMT#10250021000116102 "Cabergoline"
* dosage.text = "2 mg over 20 minutes by IV infusion"

* dosage.route = $SNOMED#180177004 "Continuous infusion of therapeutic substance"

* dosage.doseAndRate.doseQuantity.value = 2 
* dosage.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.code = #mg

* dosage.doseAndRate.rateQuantity.value = 2 
* dosage.doseAndRate.rateQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateQuantity.code = #min




Instance:   ActTragacanth
InstanceOf: CcaActivityDefinition
Description: "Tragacanth Administration"
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Tragacanth administration, 3mg over 3 hours by continuous IV infusion</div>"
* text.status = #additional

* productCodeableConcept = $NZMT#10711851000116105 "Tragacanth"
* dosage.text = "3 mg over 3 hours by IV infusion"

* dosage.route = $SNOMED#180177004 "continuous intravenous infusion"

* dosage.doseAndRate.doseQuantity.value = 3 
* dosage.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.code = #mg

* dosage.doseAndRate.rateQuantity.value = 3 
* dosage.doseAndRate.rateQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateQuantity.code = #h


* status = #draft