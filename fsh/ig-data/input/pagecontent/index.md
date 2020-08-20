# Te Aho o Te Kahu, Cancer Control Agency Implementation Guide

### Background
This Implementation Guide describes the representaton of cancer treatment regimens (primarily chemotherapy created by the Cancer Control Agency)

It defines profiles on [PlanDefinition](http://hl7.org/fhir/plandefinition.html) and [ActivityDefinition](http://hl7.org/fhir/activitydefinition.html) resource types.

These are complex resource types, and have been significantly constrained for this usage. In particular, the ['action'](http://hl7.org/fhir/plandefinition-definitions.html#PlanDefinition.action) element of the PlanDefinion resource is used in a specific manner. It has 4 levels of nesting.

* The top level represents regimen options. This allows there to be different 'versions' of the regimen to be selected - potentially based on trigger criteria within the action. In this IG, only a single version is supported, but the pattern is maintained to suport future enhancement. 
* The second level represents the parts of the regimen - for example chemotherapy and radiotherapy. In this IG, only a single part is supported, but the pattern is maintained to suport future enhancement. 
* The third level represents the different defined cycles that are included in each regimen part. Each cycle type will have a separate action element at this level. A single cycle may repeat multiple times.
* The fourth level represents the components of a single cycle - for example each drug will have a separate action element that describes the rules for administration. In most cases, the fourth level action will contain a reference (via canonical url) to a separate ActivityDefinition resource (commonly contained within the PlanDefinition). This resource provides the detailed information to allow a client system to generate the particular 'action' resources if needed - for example a [MedicationRequest](http://hl7.org/fhir/medicationrequest.html) resource for a drug administration.

Refer to the spec for details on how a client might consume a PlanDefinition.

### Examples
Examples are found at the top of each resource, and listed in the [artifact index](artifacts.html). 

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
