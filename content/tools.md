---
layout: page
permalink: /tools/
title: Development Tools
redirect_from:
  - /ecosystem/
  - /development-tools/
columns: 10
class: has-black-h2s has-red-h3s
---

<!-- ## Development tools for working with CWL -->

Beyond releasing the CWL standards, the CWL community has developed many
tools, software libraries, connected specifications, and has shared CWL
descriptions for popular tools.
Other tools are also available in [Common Workflow Language Lab](https://github.com/common-workflow-lab).

**Table of contents**:

* [Editors and Viewers](#editors)
* [Execution frameworks](#execution)
* [Utilities](#utils)
* [Converters And Code Generators](#converters)
* [Code Libraries](#libs)
* [Related specifications and frameworks](#specs)

### Editors and Viewers {#editors}

{: .table .table-striped .cols-2}
|Software|Description|
|--- |--- |
|[Rabix Benten](https://github.com/rabix/benten)|A [language server](https://langserver.org/) for CWL. Provides CWL code intelligence for VS Code, vim/neovim, Emacs, Acme, IntelliJ/JetBrains, [and others](https://langserver.org/#implementations-client)|
|[CWLviewer](https://view.commonwl.org/)|A web application to view and share Common Workflow Language workflows|
|[ToolJig](https://srp33.github.io/ToolJig/tool.html)|Web forms for building CWL Tool and Workflow descriptions|
|[cwl-mode](https://github.com/tom-tan/cwl-mode)|CWL editing mode for Emacs (instructions [english](https://qiita.com/tm_tn/items/6c9653847412d115bec0), [日本語](https://qiita.com/tm_tn/items/79eec754338d152b092d))|
|[vue-cwl](https://github.com/TMiguelT/vue-cwl)|Visualizer of CWL workflows for the [Vue JavaScript framework](https://vuejs.org/) using [cwl-svg](https://github.com/rabix/cwl-svg)|
|[cwl-for-remote-container-template](https://github.com/tom-tan/cwl-for-remote-container-template)|A template to write CWL documents with VSCode with remote container extension|
|[atom language-cwl](https://github.com/manabuishii/language-cwl)|CWL editing mode for Atom|
|[vim-cwl](https://github.com/manabuishii/vim-cwl)|CWL editing mode for Vim|
|[vscode-cwl](https://github.com/manabuishii/vscode-cwl)|CWL support in Visual Studio Code|
|[bioSyntax](http://biosyntax.org/)|Includes CWL syntax highliting for [gedit](https://wiki.gnome.org/Apps/Gedit)|

### Execution frameworks {#execution}

While [CWL implementations](/implementations/) can execute workflows on different compute backends, the frameworks below
can be used to provide a programmatic API or user interface to orchestrate execution with an CWL implementation.

{: .table .table-striped .cols-2}
|Software|Description|
|--- |--- |
|[cwl-WES](https://github.com/elixir-cloud-aai/cwl-WES)|Microservice implementing GA4GH [Workflow Execution Service](https://github.com/ga4gh/workflow-execution-service-schemas) (WES) API specification to run CWL workflows|
|[SCHeMa](https://github.com/athenarc/schema)|Web interface for running CWL workflows on Kubernetes/minikube clusters, based on cwl-WES |
|[WfExS](https://github.com/inab/WfExS-backend)|Workflow Execution Service supporting GA4GH Tools Registry Service ([TRS](https://github.com/ga4gh/tool-registry-service-schemas)) API, [RO-Crate](https://w3id.org/ro/crate), Nextflow and CWL|
|[workflow-service](https://github.com/common-workflow-language/workflow-service)|An implementation of the [GA4GH Workflow Execution Service (WES)](https://github.com/ga4gh/workflow-execution-service-schemas) API to run CWL workflows on remote clusters|
|[workflUX](https://github.com/workflux/workflUX)|Web interface for simplified execution of CWL workflows|
|[Sapporo](https://github.com/sapporo-wes/sapporo)|An implementation of Workflow Execution Service (WES) standard or so-called Workflow-as-a-Service. Explicit CWL support using `cwltool` or `toil-cwl-runner`.|

### Utilities {#utils}

{: .table .table-striped .cols-2}
|Software|Description|
|--- |--- |
|[cwl-utils](https://github.com/common-workflow-language/cwl-utils)|Example scripts using the Python 3.6+ CWL parsing library|
|[looper](http://looper.databio.org/)| Job submitting engine with support for [CWL whole workflow/tool scattering](http://looper.databio.org/en/latest/pre-submission-hooks/#included-plugin-looperwrite_sample_yaml_cwl)|
|[cwltest](https://github.com/common-workflow-language/cwltest)|CWL testing framework,  automated testing of tools and workflows written with CWL|
|[cwl-inspector](https://github.com/tom-tan/cwl-inspector)|Tool to inspect properties of tools or workflows written in CWL|
|[cwldep](https://github.com/common-workflow-language/cwldep) |CWL dependency manager, for importing tool wrappers and workflows into your own project.|
|[cwlprov-py](http://github.com/common-workflow-language/cwlprov-py)|Command line tool and Python API to explore [CWLProv](https://w3id.org/cwl/prov/) Research Objects containing provenance of Common Workflow Language executions|
|[Cerise](https://github.com/MD-Studio/cerise)|A REST service for running CWL workflows on remote clusters|
|[cwl2zshcomp](https://github.com/kloetzl/cwl2zshcomp)|Generates ZSH auto completions from CWL command line tool descriptions|
|[CWL-metrics](https://inutano.github.io/cwl-metrics/)|Collect/analyze computational resource use of CWL workflow runs|


### Converters And Code Generators {#converters}

{: .table .table-striped .cols-2}
|Software|Description|
|--- |--- |
|[cwl-upgrader](https://github.com/common-workflow-language/cwl-upgrader)|Upgrade CWL documents from draft-3 to v1.0, v1.0 to v1.1, and v1.1 to v1.2.|
|[argparse2tool](https://github.com/erasche/argparse2tool#cwl-specific-functionality) |Generate CWL CommandLineTool wrappers (and/or Galaxy tool descriptions) from Python programs that use argparse.  Also supports the [click](http://click.pocoo.org/5/) argument parser.|
|[cwl2argparse](https://github.com/common-workflow-language/cwl2argparse)|Generate Python argparse code from CWL CommandLineTool description.|
|[pypi2cwl](https://github.com/common-workflow-language/pypi2cwl)|Automatically run argparse2cwl on any package in PyPi|
|[acd2cwl](https://github.com/common-workflow-language/acd2cwl)|ACD (EMBOSS) to CWL generator|
|[CTD converter](https://github.com/WorkflowConversion/CTDConverter)|Common Tool Definition (CTD) to CWL converter|
|[scriptcwl](https://github.com/NLeSC/scriptcwl)|Create CWL workflows by writing a simple Python script|
|[cwl-to-parsl](https://github.com/benhg/cwl-to-parsl)|Convert CWL to Parsl|
|[Beatrice](https://github.com/Parsoa/Beatrice)|Pipeline Assembler For CWL|
|[zatsu-cwl-generator](https://github.com/tom-tan/zatsu-cwl-generator)|A simple CWL document generator from given execution commands|
|[Janis](https://github.com/PMCC-BioinformaticsCore/janis)|A Python API that generates portable CWL and WDL workflows|
|[cwl-utils](https://github.com/common-workflow-language/cwl-utils)|Python 3.6+ CWL parsing library|
|[ipython2cwl](https://github.com/giannisdoukas/ipython2cwl)|A tool for converting IPython Jupyter Notebooks to CWL CommandLineTools via typing annotations|
|[pegasus-cwl-converter](https://pegasus.isi.edu/documentation/manpages/pegasus-cwl-converter.html)|Work in progress tool to convert a CWL workflow into a Pegasus workflow.|
|[galaxy2cwl](https://github.com/workflowhub-eu/galaxy2cwl)|Convert a Galaxy `.ga` workflow to [Abstract CWL](https://github.com/common-workflow-language/cwl-v1.2/pull/3)|
|[gxformat2](https://github.com/galaxyproject/gxformat2)|Converter for Galaxy's workflow formats, can generate [Abstract CWL](https://github.com/common-workflow-language/cwl-v1.2/pull/3)|
|[wdl-cwl-translator](https://github.com/common-workflow-lab/wdl-cwl-translator)|Translate WDL workflows to CWL|


### Code Libraries {#libs}

{: .table .table-striped .cols-2}
|Software|Description|
|--- |--- |
|[cwltool](https://github.com/common-workflow-language/cwltool)|cwltool (can be [imported as a Python module](https://github.com/common-workflow-language/cwltool#import-as-a-module) and [extended to create custom cwl runners](https://github.com/common-workflow-language/cwltool#extension-points))|
|[schema salad](https://github.com/common-workflow-language/schema_salad)|Python module and tools for working with the CWL schema.|
|[cwljava](https://github.com/common-workflow-lab/cwljava)|Java classes for loading, modifying, and creating CWL v1.2 documents|
|[cwlScala](https://github.com/dnanexus/cwlScala/)|A Scala wrapper around cwljava; Also included is an evaluation engine for CWL expressions.|
|[cwl-ts-auto](https://github.com/common-workflow-lab/cwl-ts-auto)|TypeScript objects and utilities for parsing and creating CWL v1.2 documents.|
|[Rcwl](https://doi.org/doi:10.18129/B9.bioc.Rcwl)|Build, read, write and run CWL in R|
|[tidycwl](https://sbg.github.io/tidycwl/)|Tidy (R) Common Workflow Language Tools and Workflows|
|[cwl-rs](https://github.com/onnovalkering/cwl-rs)|CWL object model for Rust|
|[CmdParser](https://github.com/CBICA/CmdParser)|Reading and Writing Common Workflow Language spec files from C++ applications. Includes a Command Line Parser|
|[buchanae/cwl](https://github.com/buchanae/cwl)|CWL document parsing and processing utilities in Go|
|[CWL for Go](https://github.com/otiai10/cwl.go)|Parser of CWL file and CWL input objects (JSON/YAML) files in Go|
|[cwl-proto](https://github.com/broadinstitute/cwl-proto)|Reading and writing Common Workflow Language to Protocol Buffers|
|[ro-crate-py](https://github.com/ResearchObject/ro-crate-py)|Create an [RO-Crate](https://w3id.org/ro/crate) of workflow, can generate Abstract CWL|

### Related specifications and frameworks {#specs}

{: .table .table-striped .cols-2}
|Software|Description|
|--- |--- |
|[CWLProv](https://github.com/common-workflow-language/cwlprov)|Profile of [Research Object](https://www.researchobject.org/) and [W3C PROV](https://www.w3.org/TR/prov-overview/) for provenance of a CWL workflow run|
|[RO-Crate](https://w3id.org/ro/crate)|Research Object Crate, packaging research data with schema.org metadata. Profiles for [workflows](https://w3id.org/workflowhub/workflow-ro-crate/) and [workflow runs](https://www.researchobject.org/workflow-run-crate/)|
|[EDAM](https://edamontology.org/)|Ontology for categorizing operations and formats, useful in [CWL metadata](https://www.commonwl.org/user_guide/17-metadata/). Primarily used in bioscientific domains.|
|[schema.org](https://schema.org/)|Vocabulary typically used in Web markup and in [CWL metadata](https://www.commonwl.org/user_guide/17-metadata/)|
|[bioschemas](https://bioschemas.org/)|[Profiles](https://bioschemas.org/profiles/) for annotating life science on the Web, including [ComputationalWorkflow](https://bioschemas.org/profiles/ComputationalWorkflow/1.0-RELEASE) and [ComputationalTool](https://bioschemas.org/profiles/ComputationalTool/1.0-RELEASE)|
|[GA4GH TRS](https://github.com/ga4gh/tool-registry-service-schemas)|Tool Registry Service API specification for discovering tools/workflows. Used by [workflow registries](/repos/) incl. WorkflowHub and Dockstore |
|[GA4GH TES](https://github.com/ga4gh/task-execution-schemas)|Task Execution Service API specification for batch run of container command line tools. Used by [cwl-tes](https://github.com/ohsu-comp-bio/cwl-tes) |
|[GA4GH WES](https://github.com/ga4gh/workflow-execution-service-schemas)|Workflow Execution Service API specification, see implementations [above](#execution)|
|[WDL](https://github.com/openwdl/wdl)|Workflow Description Language implemented by Cromwell & dxWDL. [Comparable](https://github.com/dnanexus/dxCompiler/blob/main/doc/CWL_v1.2.0_to_WDL_v1.md) to CWL, see the [WDL to CWL translator](https://github.com/common-workflow-lab/wdl-cwl-translator). |
|[IEEE 2791-2020](https://doi.org/10.1109/IEEESTD.2020.9094416)|Standard for [BioCompute Objects](https://biocomputeobject.org/), recommends CWL. See [preprint](https://www.research.manchester.ac.uk/portal/en/publications/ieee-standard-for-bioinformatics-analyses-generated-by-highthroughput-sequencing-hts-to-facilitate-communication(936de52b-ac53-4f0e-9927-77fd7073e88d).html)) |

