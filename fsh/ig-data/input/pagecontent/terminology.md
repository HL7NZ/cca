### ValueSets

<div>
Valuesets are selectors of concepts (represented as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.
</div>

<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>
<tr><td width='20%'>Cancer type</td><td>The type of Cancer</td><td><a href='ValueSet-cancer-type.html'>http:clinfhir.com/fhir/ValueSet/cancer-type</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
<tr><td width='20%'>Administration location</td><td>The physical location where the administration occurred - eg at home or in a clinic</td><td><a href='ValueSet-location-administration.html'>http:clinfhir.com/fhir/ValueSet/location-administration-code</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
<tr><td width='20%'>Medication collection location</td><td>The physical location where the medication can be collected on prior to administration - eg a pharmacy</td><td><a href='ValueSet-location-medication-collection.html'>http:clinfhir.com/fhir/ValueSet/location-medication-collection</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
<tr><td width='20%'>PlanDefinition additional status</td><td>Other codes used for the PlanDefinition status</td><td><a href='ValueSet-plandefinition-status.html'>http://clinfhir.com/fhir/ValueSet/plandefinition-status</a></td><td><div><a href='CodeSystem-plandefinition-status.html'>http://clinfhir.com/fhir/CodeSystem/plandefinition-status</a></div></td></tr>
<tr><td width='20%'>Regimen type</td><td>The type of regimen - eg FOLFOX</td><td><a href='ValueSet-regimen-type.html'>http:clinfhir.com/fhir/ValueSet/regimen-type</a></td><td><div><a href='undefined'>http://snomed.info/sct</a></div></td></tr>
<tr><td width='20%'>Treatment intent</td><td>The intent of the regimen - what is its purpose</td><td><a href='ValueSet-treatment-intent.html'>http://clinfhir.com/fhir/ValueSet/treatment-intent</a></td><td><div><a href='CodeSystem-treatment-intent.html'>http://clinfhir.com/fhir/CodeSystem/treatment-intent</a></div></td></tr>
</table>
<br/><br/>
### ValueSet by path
<em>Coded bindings - even for terminology defined elsewhere</em>
<table class='table table-bordered table-condensed'>
<tr><th>Path</th><th>ValueSet</th><th>Notes</th></tr>
<tr>
<td>PlanDefinition.useContext.valueCodeableConcept</td>
<td><a href='ValueSet-cancer-type.html'>http:clinfhir.com/fhir/ValueSet/cancer-type</a></td>
<td></td>
</tr>
<tr>
<td>Extension.valueCodeableConcept</td>
<td><a href='ValueSet-location-administration.html'>http:clinfhir.com/fhir/ValueSet/location-administration-code</a></td>
<td></td>
</tr>
<tr>
<td>Extension.valueCodeableConcept</td>
<td><a href='ValueSet-location-medication-collection.html'>http:clinfhir.com/fhir/ValueSet/location-medication-collection</a></td>
<td></td>
</tr>
<tr>
<td>Extension.valueCode</td>
<td><a href='ValueSet-plandefinition-status.html'>http://clinfhir.com/fhir/ValueSet/plandefinition-status</a></td>
<td></td>
</tr>
<tr>
<td>Extension.valueCodeableConcept</td>
<td><a href='ValueSet-treatment-intent.html'>http://clinfhir.com/fhir/ValueSet/treatment-intent</a></td>
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
<tr><td width='20%'>PlanDefinition additional status</td><td>Other codes used for the PlanDefinition status</td><td><a href='CodeSystem-plandefinition-status.html'>http://clinfhir.com/fhir/CodeSystem/plandefinition-status</a></td></tr>
<tr><td width='20%'>Treatment intent</td><td>The intent of the regimen - what is its purpose</td><td><a href='CodeSystem-treatment-intent.html'>http://clinfhir.com/fhir/CodeSystem/treatment-intent</a></td></tr>