### ValueSets

<div>
Valuesets are selectors of concepts (represented as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.
</div>

<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>
<tr><td width='20%'>Cancer type</td><td>The type of Cancer</td><td><a href='ValueSet-cca-cancer-type.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-cancer-type</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
<tr><td width='20%'>Administration location</td><td>The physical location where the administration occurred - eg at home or in a clinic</td><td><a href='ValueSet-cca-location-administration.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-location-administration-code</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
<tr><td width='20%'>Medication collection location</td><td>The physical location where the medication can be collected on prior to administration - eg a pharmacy</td><td><a href='ValueSet-cca-location-medication-collection.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-location-medication-collection</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
<tr><td width='20%'>Regimen type</td><td>The type of regimen - eg FOLFOX</td><td><a href='ValueSet-cca-regimen-type.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-regimen-type</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
<tr><td width='20%'>Support Factors</td><td>The set of possible support factors (not their values)</td><td><a href='ValueSet-cca-support-factor.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-support-factor</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
<tr><td width='20%'>Treatment intent</td><td>The intent of the regimen - what is its purpose</td><td><a href='ValueSet-cca-treatment-intent.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-treatment-intent</a></td><td><div><a href='undefined'>https://standards.digital.health.nz/ns/treatment-intent</a></div></td></tr>
<tr><td width='20%'>PlanDefinition additional status</td><td>Other codes used for the PlanDefinition status</td><td><a href='ValueSet-plandefinition-status.html'>https://standards.digital.health.nz/fhir/ValueSet/plandefinition-status</a></td><td><div><a href='CodeSystem-plandefinition-status.html'>https://standards.digital.health.nz/ns/plandefinition-status</a></div></td></tr>
<tr><td width='20%'>Possible values for Support Factors</td><td>The set of all possible support factors values (not specific to any one factor)</td><td><a href='ValueSet-support-factor-value.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-support-factor-value</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
</table>
<br/><br/>
### ValueSet by path
<em>Coded bindings - even for terminology defined elsewhere</em>
<table class='table table-bordered table-condensed'>
<tr><th>Path</th><th>ValueSet</th><th>Notes</th></tr>
<tr>
<td>ActivityDefinition.language</td>
<td>http://hl7.org/fhir/ValueSet/languages</td>
<td>Not defined here</td>
</tr>
<tr>
<td>ActivityDefinition.status</td>
<td>http://hl7.org/fhir/ValueSet/publication-status|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>ActivityDefinition.jurisdiction</td>
<td>http://hl7.org/fhir/ValueSet/jurisdiction</td>
<td>Not defined here</td>
</tr>
<tr>
<td>ActivityDefinition.kind</td>
<td>http://hl7.org/fhir/ValueSet/request-resource-types|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>ActivityDefinition.code</td>
<td>http://hl7.org/fhir/ValueSet/procedure-code</td>
<td>Not defined here</td>
</tr>
<tr>
<td>ActivityDefinition.intent</td>
<td>http://hl7.org/fhir/ValueSet/request-intent|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>ActivityDefinition.participant.type</td>
<td>http://hl7.org/fhir/ValueSet/action-participant-type|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>ActivityDefinition.participant.role</td>
<td>http://hl7.org/fhir/ValueSet/action-participant-role</td>
<td>Not defined here</td>
</tr>
<tr>
<td>ActivityDefinition.product[x]</td>
<td>http://hl7.org/fhir/ValueSet/medication-codes</td>
<td>Not defined here</td>
</tr>
<tr>
<td>ActivityDefinition.bodySite</td>
<td>http://hl7.org/fhir/ValueSet/body-site</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.language</td>
<td>http://hl7.org/fhir/ValueSet/languages</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.type</td>
<td>http://hl7.org/fhir/ValueSet/plan-definition-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.status</td>
<td>http://hl7.org/fhir/ValueSet/publication-status|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.subject[x]</td>
<td>http://hl7.org/fhir/ValueSet/subject-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.useContext.code</td>
<td>http://hl7.org/fhir/ValueSet/usage-context-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.useContext.value[x]</td>
<td>http://hl7.org/fhir/ValueSet/use-context</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.useContext.code</td>
<td>http://hl7.org/fhir/ValueSet/usage-context-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.useContext.value[x]</td>
<td>http://hl7.org/fhir/ValueSet/use-context</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.useContext.value[x]</td>
<td>http://standards.digital.health.nz/fhir/ValueSet/cancer-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.jurisdiction</td>
<td>http://hl7.org/fhir/ValueSet/jurisdiction</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.topic</td>
<td>http://hl7.org/fhir/ValueSet/definition-topic</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.goal.category</td>
<td>http://hl7.org/fhir/ValueSet/goal-category</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.goal.description</td>
<td>http://hl7.org/fhir/ValueSet/clinical-findings</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.goal.priority</td>
<td>http://hl7.org/fhir/ValueSet/goal-priority</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.goal.start</td>
<td>http://hl7.org/fhir/ValueSet/goal-start-event</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.goal.addresses</td>
<td>http://hl7.org/fhir/ValueSet/condition-code</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.goal.target.measure</td>
<td>http://hl7.org/fhir/ValueSet/observation-codes</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.condition.kind</td>
<td>http://hl7.org/fhir/ValueSet/action-condition-kind|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.relatedAction.relationship</td>
<td>http://hl7.org/fhir/ValueSet/action-relationship-type|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.participant.type</td>
<td>http://hl7.org/fhir/ValueSet/action-participant-type|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.participant.role</td>
<td>http://hl7.org/fhir/ValueSet/action-participant-role</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.groupingBehavior</td>
<td>http://hl7.org/fhir/ValueSet/action-grouping-behavior|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.selectionBehavior</td>
<td>http://hl7.org/fhir/ValueSet/action-selection-behavior|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.requiredBehavior</td>
<td>http://hl7.org/fhir/ValueSet/action-required-behavior|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.priority</td>
<td>http://hl7.org/fhir/ValueSet/request-priority|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.subject[x]</td>
<td>http://hl7.org/fhir/ValueSet/subject-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.condition.kind</td>
<td>http://hl7.org/fhir/ValueSet/action-condition-kind|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.relatedAction.relationship</td>
<td>http://hl7.org/fhir/ValueSet/action-relationship-type|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.participant.type</td>
<td>http://hl7.org/fhir/ValueSet/action-participant-type|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.participant.role</td>
<td>http://hl7.org/fhir/ValueSet/action-participant-role</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.type</td>
<td>http://hl7.org/fhir/ValueSet/action-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.groupingBehavior</td>
<td>http://hl7.org/fhir/ValueSet/action-grouping-behavior|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.selectionBehavior</td>
<td>http://hl7.org/fhir/ValueSet/action-selection-behavior|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.requiredBehavior</td>
<td>http://hl7.org/fhir/ValueSet/action-required-behavior|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.precheckBehavior</td>
<td>http://hl7.org/fhir/ValueSet/action-precheck-behavior|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PlanDefinition.action.action.cardinalityBehavior</td>
<td>http://hl7.org/fhir/ValueSet/action-cardinality-behavior|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Extension.value[x]</td>
<td>http://clinfhir.com/fhir/ValueSet/plandefinition-status</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Extension.value[x]</td>
<td><a href='ValueSet-cca-location-administration.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-location-administration-code</a></td>
<td></td>
</tr>
<tr>
<td>Extension.value[x]</td>
<td><a href='ValueSet-cca-location-medication-collection.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-location-medication-collection</a></td>
<td></td>
</tr>
<tr>
<td>Extension.value[x]</td>
<td><a href='ValueSet-cca-regimen-type.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-regimen-type</a></td>
<td></td>
</tr>
<tr>
<td>Extension.extension.value[x]</td>
<td><a href='ValueSet-support-factor-value.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-support-factor-value</a></td>
<td></td>
</tr>
<tr>
<td>Extension.value[x]</td>
<td><a href='ValueSet-cca-treatment-intent.html'>https://standards.digital.health.nz/fhir/ValueSet/cca-treatment-intent</a></td>
<td></td>
</tr>
</table>
<br/><br/>
### CodeSystems

These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>CodeSystem Url</th></tr>
<tr><td width='20%'>Treatment intent</td><td>The intent of the regimen - what is its purpose</td><td><a href='CodeSystem-cca-treatment-intent.html'>http:s//standards.digital.health.nz/ns/cca-treatment-intent</a></td></tr>
<tr><td width='20%'>PlanDefinition additional status</td><td>Other codes used for the PlanDefinition status</td><td><a href='CodeSystem-plandefinition-status.html'>https://standards.digital.health.nz/ns/plandefinition-status</a></td></tr>