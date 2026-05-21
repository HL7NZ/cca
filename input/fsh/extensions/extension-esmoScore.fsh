Extension: EsmoScore
Id: sact-esmo-score
Title: "ESMO-MCBS Score"
Description: "The ESMO Magnitude of Clinical Benefit Scale (ESMO-MCBS) score for the regimen"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/sact-esmo-score"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"

* extension contains
    score 1..1 and
    evaluationForm 1..1 and
    esmoUrl 0..1

* extension[score].url = "score" (exactly)
* extension[score].value[x] only code
* extension[score] ^short = "The ESMO-MCBS score grade"

* extension[evaluationForm].url = "evaluationForm" (exactly)
* extension[evaluationForm].value[x] only Coding
* extension[evaluationForm].valueCoding from EsmoMcbsEvaluationForm (required)
* extension[evaluationForm] ^short = "The ESMO-MCBS evaluation form used"

* extension[esmoUrl].url = "esmoUrl" (exactly)
* extension[esmoUrl].value[x] only url
* extension[esmoUrl] ^short = "URL to the ESMO-MCBS scorecard"


CodeSystem: EsmoMcbsEvaluationForm
Id: sact-esmo-mcbs-evaluation-form
Title: "ESMO-MCBS Evaluation Form"
Description: "The evaluation forms used in the ESMO Magnitude of Clinical Benefit Scale"

* ^url = "https://standards.digital.health.nz/ns/sact-esmo-mcbs-evaluation-form"

* #ST-1a "Evaluation Form 1a: For RCTs evaluating new approaches to adjuvant therapy or new potentially curative therapies"
* #ST-1b "Evaluation Form 1b: For single arm de-escalation studies in the adjuvant setting"
* #ST-2a "Evaluation Form 2a: For therapies that are not likely to be curative with primary endpoint of OS"
* #ST-2b "Evaluation Form 2b: For therapies that are not likely to be curative with primary endpoint PFS"
* #ST-2c "Evaluation Form 2c: For therapies that are not likely to be curative with primary endpoint other than OS or PFS or equivalent (non-inferiority) studies"
* #ST-3 "Evaluation Form 3: For single-arm studies in orphan diseases and for diseases with high unmet need when primary outcome is PFS or ORR"
* #HM-1a "Evaluation Form 1a: For RCTs evaluating new approaches to new potentially curative therapies"
* #HM-1b "Evaluation Form 1b: For single arm therapies with curative intent and de-escalation studies"
* #HM-2a "Evaluation Form 2a: For therapies that are not likely to be curative with primary endpoint of OS"
* #HM-2b "Evaluation Form 2b: For therapies that are not likely to be curative with primary endpoint PFS"
* #HM-2c "Evaluation Form 2c: For therapies that are not likely to be curative with primary endpoint other than OS or PFS or equivalent (non-inferiority) studies"
* #HM-3 "Evaluation Form 3: For single-arm studies in orphan diseases and for diseases with high unmet need when primary outcome is PFS or ORR"


ValueSet: EsmoMcbsEvaluationForm
Id: sact-esmo-mcbs-evaluation-form
Title: "ESMO-MCBS Evaluation Form"
Description: "The evaluation forms used in the ESMO Magnitude of Clinical Benefit Scale"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/sact-esmo-mcbs-evaluation-form"

* codes from system https://standards.digital.health.nz/ns/sact-esmo-mcbs-evaluation-form
