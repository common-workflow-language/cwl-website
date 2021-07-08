---
layout: page
permalink: /FAIR/
title: FAIR principles for Workflows and CWL 
---


It is one of the goals of the CWL project to assist workflow engines/platforms and users in realizing the FAIR principles while not imposing a burden for lack of perfection or completion. When considering the FAIR & CWL we examine not just the context of the workflow and tool descriptions, but also the context of creating, sharing, and executing these descriptions; and finally the context not narrowing the adherence of inbound data to the FAIR principles and increasing the adherence of the FAIR principles for the outbound data.

Rather than attempting to conduct a quantitative study, we focus here on qualitative analysis as the FAIR Principles are just that, principles, and not specific metrics. For specific data types there are specific community led FAIR metrics, but there are no universal FAIR metrics (nor should there be, as “FAIR is not a standard”).

{:.cwl-red}
## To be Findable:


### F1. “(meta)data are assigned a globally unique and persistent identifier”

In CWL, all items of type File, Directory, Workflow, and CommandLineTool have an identifier which can be “globally unique and eternally persistent” if available, or just locally meaningful. For example, the CWL reference implementation’s use of CWLProv generates random UUIDs for inputs, outputs, and intermediate values, but a workflow platform or service would use registered identifiers. 


### F2. “data are described with rich metadata (defined by R1 below)”

The CWL standards prescribe how Workflow and CommandLineTool descriptions can have arbitrary embedded metadata in a structured way. For generic metadata it is recommend[^1] to use the schema.org vocabulary. While community or domain specific metadata is also allowed and encouraged, the CWL standards do not prescribe any particular metadata standard, as that is a decision for specific groups to develop and evolve. 


### F3. “metadata clearly and explicitly include the identifier of the data it describes”

This is automatic for CWL documents, as the metadata is embedded in the data it describes.


### F4. “(meta)data are registered or indexed in a searchable resource”

There are several registries of workflows, and one in particular (Workflow Hub[^2]) has chosen the CWL object model for their workflow metadata model, even for workflows not written using the CWL standards.

{:.cwl-red}
## To be Accessible


### A1. “(meta)data are retrievable by their identifier using a standardized communications protocol”

There is no official API for retrieving a CWL document via an identifier. Popular choices include HTTP and the “GA4GH Tool Registry API”[^3] (also known as GA4GH TRS). By retrieving a CWL description (data) one then has access to the embedded metadata (if any).

For retrieval of input data for the execution of a CWL workflow or tool, CWL allows for any URI scheme. HTTP(S) is available in all known CWL implementations (modulo local network policies) and many implementations support the relevant object storage protocols. GA4GH has an API specification (GA4GH DRS)[^4] for services that convert a data identifier into a platform (and perhaps region) specific URI. Using any of these protocols, their future versions, or entirely new protocols, requires no changes to the CWL standards as long as URI/IRIs are available.


#### A1.1 “the protocol is open, free, and universally implementable”

HTTP, GA4GH TRS, and GA4GH DRS all meet this requirement.


#### A1.2 “the protocol allows for an authentication and authorization procedure, where necessary”

HTTP meets this requirement. For GA4GH TRS they state that “GA4GH recommends the use of the OAuth 2.0 framework (RFC 6749) for authentication and authorization. It is also recommended that implementations of this standard implement and follow the GA4GH Authentication and Authorization Infrastructure (AAI) standard.

While the TRS standard itself does not define any behaviour specific to authorization, given that it hosts and shares publicly available workflows. For future expansion, we recommend that if authorization is needed, that it follows the OAuth 2.0 recommendations as defined above.”[^5]

For GA4GH DRS “The DRS implementation is responsible for defining and enforcing an authorization policy that determines which users are allowed to make which requests. GA4GH recommends that DRS implementations use an OAuth 2.0 bearer token, although they can choose other mechanisms if appropriate.”[^6]


### A2. “metadata are accessible, even when the data are no longer available”

Not a guarantee for GA4GH TRS, DRS, or plain HTTP. Possibly guaranteed for workflows registered with the Workflow Hub.

{:.cwl-red}
## To be Interoperable:


### I1. (meta)data use a formal, accessible, shared, and broadly applicable language for knowledge representation.

Tool and workflow descriptions that conform to the CWL standards are transformable (inclusive of any embedded metadata) to JSON-LD as a pleasant (and purposeful) side effect of the CWL standards being defined in Salad schema language[^7]. The reference implementation of CWL has such a capability[^8].

“There are three parts to [the CWLProv] profile:
* CWLProv BagIt, how the resources of an execution are packaged using BagIt

* CWLProv Research Object, how the resources of an execution are related in an RO

* CWLProv PROV, how the workflow execution provenance is modelled in W3C PROV“[^9]

### I2. (meta)data use vocabularies that follow FAIR principles

The vocabularies used in CWL are RDF schema[^10], Salad (which uses Dublin Core terms[^11], RDF[^12], XML[^13], and XSD[^14]). Examining these vocabularies in the context of the FAIR principles is out of scope for this paper. The vocabularies used in CWLProv are CWL, ResearchObject, BagIt, and the PROV-Data Model (PROV-DM). User provided vocabularies, such as identifiers for data format types (like the EDAM Ontology), or CWL document metadata (like schema.org), may or may not meet the FAIR principles.


### I3. (meta)data include qualified references to other (meta)data

All references in the CWL and CWLProv object models are qualified.

{:.cwl-red}
## To be Reusable:


### R1. meta(data) are richly described with a plurality of accurate and relevant attributes

The CWL standards explicitly support user provided metadata and specifically using the schema.org ontology. There are a number of other specific attributes available in CWL documents as well: ‘label’, ‘doc’, ‘SoftwareRequirement’.


#### R1.1. (meta)data are released with a clear and accessible data usage license

	The CWL standards and schemas are released under the Apache 2.0 open source license; likewise the CWLProv profile. Individual CWL documents can embed a license reference using a schema.org annotation which is picked up and propagated by Workflow Hub and DockStore


#### R1.2. (meta)data are associated with detailed provenance

This is not required by the CWL standards. The CWLProv profile is one way for workflow engines/platforms to represent the provenance of a CWL workflow execution, its inputs, and the results.


#### R1.3. (meta)data meet domain-relevant community standards

For many (sub)domains, CWL is the relevant standard for workflow and tool description.

{:.cwl-red}
## Areas of improvement:

F1. A default source for identifiers of CWL tools and workflows could be decided upon and standardized. Likewise there could be an agreed upon registration method and lookup mechanism for these identifiers. This could be a single source or federated.

F2. Pass through of metadata related to workflow inputs: For data types that can’t embed metadata, or the metadata was provided separately, there is not yet a standardized construct to pass along metadata through a workflow and attach it (entirely, or by parts) to one or more of the outputs.  In 2018-2019 there was a proposal[^15] to accomplish this in the context of CWLProv, but it has yet to be implemented. Note, that this proposal does not require the modification of the CWL standards as it uses CWL’s extensible metadata feature.

A1. A future version of the GA4GH Tool Discovery API (or a different API) could support metadata retrieval for a given identifier. Using HTTP Content Negotiation one could imagine a simple standard for getting the metadata for a given identifier if an agreement was made and there was wide adoption. 

Neither the CWL standards nor the CWLProv profile requires that metadata about workflow/tool inputs is acquired at/before execution time. However any CWL/CWLProv system could do such a thing without needing to amend either the CWL standards or the CWLProv profile.


<!-- Footnotes themselves at the bottom. -->
## Notes

[^1]:
     https://www.commonwl.org/v1.1/Workflow.html#Extensions_and_metadata

[^2]:
     https://workflowhub.eu/

[^3]:
     https://github.com/ga4gh/tool-registry-service-schemas/releases/tag/2.0.0

[^4]:
     https://github.com/ga4gh/data-repository-service-schemas/releases/tag/drs-1.0.0

[^5]:
     https://ga4gh.github.io/tool-registry-service-schemas/DataModel/#authentication-and-authorization

[^6]:
     https://ga4gh.github.io/data-repository-service-schemas/preview/release/drs-1.0.0/docs/#_making_drs_requests

[^7]:
     https://www.commonwl.org/v1.1/SchemaSalad.html#Introduction

[^8]:
     https://github.com/common-workflow-language/cwltool#modeling-a-cwl-document-as-rdf

[^9]:
     https://w3id.org/cwl/prov/0.6.0#overview

[^10]:
     http://www.w3.org/2000/01/rdf-schema

[^11]:
     http://purl.org/dc/terms/

[^12]:
     http://www.w3.org/1999/02/22-rdf-syntax-ns

[^13]:
     http://www.w3.org/XML/1998/namespace

[^14]:
     http://www.w3.org/2001/XMLSchema

[^15]:
     https://github.com/common-workflow-language/cwlprov/issues/2

