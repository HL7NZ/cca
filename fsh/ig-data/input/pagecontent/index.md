# Te Aho o Te Kahu, Cancer Control Agency Implementation Guide

### Background
This Implementation Guide describes the representaton of cancer treatment regimens (primarily chemotherapy created by the Cancer Control Agency). A regimen describbes the treratment for a parrticularr type of cancer and consists of a variablle number of cycles, with
each cycle defining one or more medication administrations on specific days within that cycle.

The guide defines profiles on [PlanDefinition](http://hl7.org/fhir/plandefinition.html) and [ActivityDefinition](http://hl7.org/fhir/activitydefinition.html) resource types.

These are complex resource types, and have been significantly constrained for this usage. In particular, the ['action'](http://hl7.org/fhir/plandefinition-definitions.html#PlanDefinition.action) element of the PlanDefinion resource is used in a specific manner. It has 2 levels of nesting.

The top level action represents a cycle and contains information like the cycle description, length, repeats (if any) and so forth. Each cycle contains any number of sub-actions representing the individual actions within that cycle - generally a medication administration


For example, a regimen that had 2 cycles, each of which defined the administration of 2 medications would be structured as folllows:

* action: first cycle 
  * sub-action: drug 1
  * sub-action: drug 2
* action: second cycle
  * sub-action: drug 3
  * sub-action: drug 4

Details of each administration is found in the sub-action, which has an extension called [timing-of-days](StructureDefinition-timing-of-days.html) that indicates the specific
days within the cycle when the medication is to be administered. Note that the extension is actually a modifierExtension as
it must be understood by the recipient for safe use of the resource. If it were to be ignored, then the wrong administration could be made.


The sub-action contains a reference to an [ActivityDefinition](http://hl7.org/fhir/ActivityDefinition) resource 
which has the details of the medication (drug name, dose etc ). 


<!--
* The top level represents regimen options. This allows there to be different 'versions' of the regimen to be selected - potentially based on trigger criteria within the action. In this IG, only a single version is supported, but the pattern is maintained to suport future enhancement. 
* The second level represents the parts of the regimen - for example chemotherapy and radiotherapy. In this IG, only a single part is supported, but the pattern is maintained to suport future enhancement. 
* The third level represents the different defined cycles that are included in each regimen part. Each cycle type will have a separate action element at this level. A single cycle may repeat multiple times.
* The fourth level represents the components of a single cycle - for example each drug will have a separate action element that describes the rules for administration. In most cases, the fourth level action will contain a reference (via canonical url) to a separate [ActivityDefinition](http://hl7.org/fhir/ActivityDefinition) resource (commonly contained within the PlanDefinition). This resource provides the detailed information to allow a client system to generate the particular 'action' resources if needed - for example a [MedicationRequest](http://hl7.org/fhir/medicationrequest.html) resource for a drug administration.

Refer to the spec for details on how a client might consume a PlanDefinition.

-->

### Logical model
The [Logical model](StructureDefinition-CancerRegimensLM.html#tabs-snap) describes the 'business level' or information model for the data in the guide. It helps to understand the information being represented in a simpler way than the profiles. It is does *not* represent the way the resource instances are structured or shared, but does have mappings to the profile (though these are intended to aid implementer understanding rather than being machine readible.)

### Examples
Examples are found at the top of each resource, and listed in the [artifact index](artifacts.html). 

### Canonical Urls
Most of the resources defined in this guide (StructureDefinition, ValueSet, CodeSystem) have what is termed a 'canonical' url - an element with the name url. This functions as a globally unique identifier for these resources. At the time of writing, these url's should be considered provisional. New Zealand does not yet have a consistent way to define them, so they are subject to change. Hopefully this will be resolved before too much longer. 

### Replacing regimens
It is common that regimens are deprecated over time and replaced by others. It is necessary to continue to make the deprecated guide available for historic purposes, but to indicate that it is no longer actively used. This is achieved by setting the [status](StructureDefinition-CcaPlanDefinition-definitions.html#PlanDefinition.status) to "retired". 

There is an extension - [replaced-by](StructureDefinition-replaced-by.html) that allows the deprecated plan to refer to the one that replaces it. Thus a user retrieving the deprecated plan can easily find the new one. This is a direct FHIR reference.

There is currently no reference from the new Plan back to the one that it has replaced.

### Contained resources
In this implementation, ActivityDefinition resources will be contained within the PlanDefinition and there uisn't a separate API for them (the only API is against PlanDefinition)

### Using this guide

* The [Profiles](profiles.html) tab contains the profiles defined by this IG
* The [Extensions](extensions.html) tab contains the Extension Definition resources defined by this IG
* [Examples](examples.html) has the PlanDefinition examples
* [Terminology]() has the ValueSets and CodeSystems
* [Artifact Index](artifacts.html) has a list of all artifacts (including Examples, Profiles and Extensions)
* There will be an API tab to describe the external interface supported by the system. It is also feasible to 'bundle' the resources into a separate package for direct distribution to specific clients.
