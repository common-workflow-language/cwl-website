Common Workflow Language
========================

<div style="margin-bottom: 1em">
<a href="https://gitter.im/common-workflow-language/common-workflow-language?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge" style="padding-right: 1em"><img src="https://badges.gitter.im/Join%20Chat.svg" alt="Gitter"></a>
<a href="https://github.com/common-workflow-language/common-workflow-language/stargazers" style="padding-right: 1em"><img src="https://img.shields.io/github/stars/common-workflow-language/common-workflow-language.svg" alt="GitHub stars"></a>
<a href="#Support" style="padding-right: 1em"><b>CWL Community Support</b></a>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top" style="display:inline;">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="Z55VS5LBBSZTJ">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" width="92" height="26" name="submit" alt="Donate to Common Workflow Language via PayPal" style="position: relative; bottom: -6px;">
</form>
</div>

<div style="float: left;
border: 5px;
background-color: #f5ecdf;
border-style: solid;
padding: 1em;
border-width: 1px;
border-radius: 6px;
margin-right: 1.5em;
margin-bottom: 1em;">
<div><a href="#Getting_Started">Getting Started</a></div>
<div><a href="#Support">Support, Community and Contributing</a></div>
<div><a href="#Specification">Specification</a></div>
<div><a href="#Implementations">Implementations</a></div>
<div><a href="#Repositories_of_CWL_Tools_and_Workflows">Repositories of CWL Tools and Workflows</a></div>
<div><a href="#Software_for_working_with_CWL">Software for working with CWL</a></div>
<div><a href="#Projects_the_CWL_community_is_participating_in">Projects the CWL community is participating in</a></div>
<div><a href="#Contributers_and_Governance">Contributers and Governance</a></div>
</div>

<a href="https://open-stand.org/about-us/principles"><picture><source srcset="https://github.com/common-workflow-language/cwl-website/raw/master/openstand-128x128-blue.webp" type="image/webp"><img align="right"
src="https://github.com/common-workflow-language/cwl-website/raw/master/openstand-128x128-blue.png" alt="Open Stand badge"></picture></a>

The Common Workflow Language (CWL) is an open standard for describing analysis
workflows and tools in a way that makes them portable and scalable across a
variety of software and hardware environments, from workstations to cluster,
cloud, and high performance computing (HPC) environments.  CWL is designed to
meet the needs of data-intensive science, such as Bioinformatics, Medical
Imaging, Astronomy, High Energy Physics, and Machine Learning.


CWL is developed by a multi-vendor working group consisting of
organizations and individuals aiming to enable scientists to share data
analysis workflows.  [The CWL project is maintained on
Github](https://github.com/common-workflow-language/common-workflow-language) and we follow the [Open-Stand.org principles for
collaborative open standards development](https://open-stand.org/about-us/principles/). Legally CWL is a member project of
[Software Freedom Conservancy](https://sfconservancy.org/news/2018/apr/11/cwl-new-member-project/) and is formally managed by
the elected [CWL leadership team](#Leadership_Team), however every-day project decisions are made by the
[CWL community](#Support) which is open for participation by anyone.


## Getting Started

<a href="https://www.youtube.com/watch?v=86eY8xs-Vo8"><picture><source srcset="https://github.com/common-workflow-language/logo/raw/master/intro_video_screenshot_413x193.webp" type="image/webp" ><img align="right" srcset="https://github.com/common-workflow-language/logo/raw/master/intro_video_screenshot_413x193.png"
alt="[Video] Common Workflow Language explained in 64 seconds"></picture></a>

The [CWL user guide](https://www.commonwl.org/user_guide/) provides a
gentle introduction to learning how to write CWL command line tool and workflow
descriptions.

Browse [CWL Implementations](#Implementations) to find a software package that's right for you.

[**CWL Recommended Practices**](http://www.commonwl.org/user_guide/rec-practices/)

[CWLの日本語での解説ドキュメント](https://github.com/pitagora-galaxy/cwl/wiki/CWL-Start-Guide-JP) is a 15 minute introduction to the
CWL project in Japanese.

A series of [video lessons about CWL](https://stepik.org/lesson/35918/step/1?unit=15070) is available in Russian as part of the [Управление вычислениями](https://stepik.org/course/1612/syllabus)(Computation Management) free online course.

<a name="Support"></a>
## Support, Community and Contributing

The recommended place to ask a question about all things CWL is on [the CWL Discourse Group](https://cwl.discourse.group/).
Previously we used [biostars.org](https://www.biostars.org/t/cwl/) where you can still read older responses.

If you are interested in learning more or contributing ideas or code,
[come chat with us on Gitter](https://gitter.im/common-workflow-language/common-workflow-language),
check out [#CommonWL on Twitter](https://twitter.com/search?q=%23CommonWL),
join the [mailing list common-workflow-language on Google Groups](https://groups.google.com/forum/#!forum/common-workflow-language) or
[fork the repository](https://github.com/common-workflow-language/common-workflow-language)
and send a pull request!

Besides the web interface for the mailing list, one can also join by sending a blank email to
common-workflow-language+subscribe@googlegroups.com and replying to the automated message.

### Code of Conduct

The CWL Project is dedicated to providing a harassment-free experience for
everyone, regardless of gender, gender identity and expression, sexual
orientation, disability, physical appearance, body size, age, race, or
religion. We do not tolerate harassment of participants in any form.
This code of conduct applies to all CWL Project spaces, including the Google
Group, the Gitter chat room, the Google Hangouts chats, both online and off.
Anyone who violates this code of conduct may be sanctioned or expelled from
these spaces at the discretion of the leadership team.

For more details, see our [Code of
Conduct](https://github.com/common-workflow-language/common-workflow-language/blob/master/CODE_OF_CONDUCT.md).

## Specification

For developers and advanced users, the current
[CWL Standard (v1.1)](https://www.commonwl.org/v1.1/) provides
authoritative documentation of the execution of CWL documents.  The previous version
of the [CWL Standard (v1.0.2)](https://www.commonwl.org/v1.0/) is also available.

### Citation

To reference the CWL standards in a scholary work, please use the following citation inclusive of the DOI:

Peter Amstutz, Michael R. Crusoe, Nebojša Tijanić (editors), Brad Chapman, John Chilton, Michael Heuer, Andrey Kartashov,
Dan Leehr, Hervé Ménager, Maya Nedeljkovich, Matt Scales, Stian Soiland-Reyes, Luka Stojanovic (2016):
**Common Workflow Language, v1.0**.
Specification, _Common Workflow Language working group_.
[https://w3id.org/cwl/v1.0/](https://w3id.org/cwl/v1.0/)
doi:[10.6084/m9.figshare.3115156.v2](https://doi.org/10.6084/m9.figshare.3115156.v2)

A collection of existing references to CWL can be found at [https://zotero.org/groups/cwl](https://www.zotero.org/groups/2294829/cwl/items)

## Implementations

In Production:

|Software|Description|Platform support|
|--------|-----------|----------------|
|[cwltool](https://github.com/common-workflow-language/cwltool)|Reference implementation of CWL|Linux, OS X, Windows, local execution only|
|[Arvados](https://arvados.org)|Distributed computing platform for data analysis on massive data sets. [Using CWL on Arvados](https://doc.arvados.org/user/cwl/cwl-runner.html)|AWS, GCP, Azure, Slurm|
|[Toil](https://github.com/BD2KGenomics/toil)|Toil is a workflow engine entirely written in Python.|AWS, Azure, GCP, Grid Engine, HTCondor, LSF, Mesos, OpenStack, Slurm, PBS/Torque|
|[CWL-Airflow](https://github.com/Barski-lab/cwl-airflow)|Package to run CWL workflows in Apache-Airflow (supported by BioWardrobe Team, CCHMC)|Linux, OS X|
|[REANA](https://reana.readthedocs.io/en/latest/index.html)|RE usable ANAlyses|Kubernetes, [CERN OpenStack](https://clouddocs.web.cern.ch/clouddocs/containers/) ([OpenStack Magnum](https://wiki.openstack.org/wiki/Magnum))|
|[Cromwell](https://github.com/broadinstitute/cromwell)|Cromwell workflow engine|Google, HTCondor, Local, LSF, PBS/Torque, SGE, Slurm, TES|
|[CWLEXEC](https://github.com/IBMSpectrumComputing/cwlexec)|Apache 2.0 licensed CWL executor for IBM Spectrum LSF, supported by IBM for customers with valid contracts.|[IBM Spectrum LSF](https://developer.ibm.com/storage/products/ibm-spectrum-lsf/#) 10.1.0.3+

In Development:

|Software|Description|Platform support|
|--------|-----------|----------------|
|[Galaxy](https://galaxyproject.org/)|Web-based platform for data intensive biomedical research.|-|
|[cwl-tes](https://github.com/ohsu-comp-bio/cwl-tes)|CWL engine backended by the [GA4GH Task Execution API](https://github.com/ga4gh/task-execution-schemas)|Alicloud, AWS, Google, HPC, Local, Spark, TES|
|[Xenon](https://nlesc.github.io/Xenon/)|Run CWL workflows using Xenon|[any Xenon backend](https://nlesc.github.io/Xenon/): local, ssh, SLURM, Torque, Grid Engine|
|[Consonance](https://github.com/Consonance/consonance)|orchestration tool for running SeqWare workflows and CWL tools|AWS, OpenStack, Azure|
|[Apache Taverna](https://taverna.incubator.apache.org/)|Domain-independent Workflow Management System|-|
|[AWE](https://github.com/MG-RAST/AWE)|Workflow and resource management system for bioinformatics data analysis.|-|
|[yacle](https://github.com/otiai10/yacle)|Yet Another CWL Engine| local |
|[Calrissian](https://github.com/Duke-GCB/calrissian)|CWL Engine built for Kubernetes|[Kubernetes](https://kubernetes.io)|


## Repositories of CWL Tools and Workflows

|Repository|Description|
|----|-----------|
|[Common Workflow Library](https://github.com/common-workflow-library)|Git organization for community maintenance of tools and workflows.|
|[Dockstore tool registry](https://dockstore.org)|An open platform for sharing Docker-based tools described with the Common Workflow Language used by the GA4GH.|
|[CWLviewer](https://view.commonwl.org/workflows)|A web application to view and share Common Workflow Language workflows|
|[cwl-source](https://github.com/xDBio-Inc/cwl-source)|Git repository for collections of tools, workflows, metadata, and input parameter files. Administered by xD Bio Inc. Integrates with [truwl.com](https://truwl.com/)|
|[GitHub](https://github.com/search?q=extension%3Acwl+cwlVersion)|Search for CWL documents using `extension:cwl cwlVersion + <your search terms>`, for example `extension:cwl cwlVersion picard`.|
|[Google](https://www.google.com/search?q=filetype%3Acwl+cwlVersion)|Search for CWL documents using `filetype:cwl cwlVersion + <your search terms>`, for example `filetype:cwl cwlVersion picard`.|

## Software for working with CWL

### Editors and viewers

|Software|Description|
|--------|-----------|
|[Rabix Composer](https://github.com/rabix/composer)|Graphical CWL editor|
|[CWLviewer](https://view.commonwl.org/)|A web application to view and share Common Workflow Language workflows|
|[atom-cwl](https://github.com/manabuishii/language-cwl)|CWL editing mode for Atom|
|[vim-cwl](https://github.com/manabuishii/vim-cwl)|CWL editing mode for Vim|
|[cwl-mode](https://github.com/tom-tan/cwl-mode)|CWL editing mode for Emacs (instructions [english](https://qiita.com/tm_tn/items/6c9653847412d115bec0), [日本語](https://qiita.com/tm_tn/items/79eec754338d152b092d)) |
|[vscode-cwl](https://github.com/manabuishii/vscode-cwl)|CWL support in Visual Studio Code|
|[IntelliJ CWL plugin](https://gitlab.com/AleksandrSl/cwl-plugin)|CWL plugin for [IntelliJ and other JetBrains editors](https://plugins.jetbrains.com/plugin/10040-cwl-plugin)|
|[bioSyntax](http://bioSyntax.org)|Includes CWL syntax highliting for [gedit](https://wiki.gnome.org/Apps/Gedit)|
|[Rabix Benten](https://github.com/rabix/benten)|\[Pre-alpha] A [language server](https://langserver.org/) for CWL, should support VS Code, vim/neovim, Emacs, Acme, IntelliJ/JetBrains, [and others](https://langserver.org/#implementations-client)|
|[vue-cwl](https://github.com/TMiguelT/vue-cwl)|Visualizer of CWL workflows for the [Vue JavaScript framework](https://vuejs.org/) using [cwl-svg](https://github.com/rabix/cwl-svg)|

### Utilities

|Software|Description|
|--------|-----------|
|[cwldep](https://github.com/common-workflow-language/cwldep)|CWL dependency manager, for importing tool wrappers and workflows into your own project.|
|[cwltest](https://github.com/common-workflow-language/cwltest)|CWL testing framework,  automated testing of tools and workflows written with CWL|
|[cwl2zshcomp](https://github.com/kloetzl/cwl2zshcomp)|generates ZSH auto completions from CWL command line tool descriptions|
|[Cerise](https://github.com/MD-Studio/cerise)|A REST service for running CWL workflows on remote clusters|
|[workflow-service](https://github.com/common-workflow-language/workflow-service)|An implementation of the [GA4GH Workflow Execution Service (WES)](https://github.com/ga4gh/workflow-execution-service-schemas) API to run CWL workflows on remote clusters|
|[cwl-inspector](https://github.com/tom-tan/cwl-inspector)|Tool to inspect properties of tools or workflows written in CWL|
|[cwlprov-py](http://github.com/common-workflow-language/cwlprov-py)|Command line tool and Python API to explore [CWLProv](https://w3id.org/cwl/prov/) Research Objects containing provenance of Common Workflow Language executions|
|[cwl-utils](https://github.com/common-workflow-language/cwl-utils)|Example scripts using the new Python 3.6+ CWL parsing library|


### Converters and code generators

|Software|Description|
|--------|-----------|
|[cwl-upgrader](https://github.com/common-workflow-language/cwl-upgrader)|Upgrade CWL documents from draft-3 to v1.0|
|[argparse2tool](https://github.com/erasche/argparse2tool#cwl-specific-functionality)|Generate CWL CommandLineTool wrappers (and/or Galaxy tool descriptions) from Python programs that use argparse.  Also supports the [click](http://click.pocoo.org/5/) argument parser.|
|[cwl2argparse](https://github.com/common-workflow-language/cwl2argparse)|Generate Python argparse code from CWL CommandLineTool description.|
|[pypi2cwl](https://github.com/common-workflow-language/pypi2cwl)|Automatically run argparse2cwl on any package in PyPi|
|[acd2cwl](https://github.com/common-workflow-language/acd2cwl)|ACD (EMBOSS) to CWL generator|
|[CTD converter](https://github.com/WorkflowConversion/CTDConverter)|Common Tool Definition (CTD) to CWL converter|
|[scriptcwl](https://github.com/NLeSC/scriptcwl)|Create CWL workflows by writing a simple Python script|
|[python-cwlgen](https://github.com/common-workflow-language/python-cwlgen)|Generate of CWL programmatically from Python.|
|[cwl-to-parsl](https://github.com/benhg/cwl-to-parsl)|Convert CWL to Parsl|
|[Beatrice](https://github.com/Parsoa/Beatrice)|Pipeline Assembler For CWL|

### Code libraries

|Software|Description|
|--------|-----------|
|[cwltool](https://github.com/common-workflow-language/cwltool)|cwltool (can be [imported as a Python module]((https://github.com/common-workflow-language/cwltool#import-as-a-module)) and [extended to create custom cwl runners](https://github.com/common-workflow-language/cwltool#extension-points)|
|[schema salad](https://github.com/common-workflow-language/schema_salad)|Python module and tools for working with the CWL schema.|
|[cwlavro](https://github.com/common-workflow-language/cwlavro)|Java classes for loading CWL documents|
|[CWL for R](https://github.com/jefferys/cwl)|Parse and work with CWL from R|
|[buchanae/cwl](https://github.com/buchanae/cwl)|CWL document parsing and processing utilities in Go.|
|[CWL for Go](https://github.com/otiai10/cwl.go)|-|
|[CWL for Scala](https://github.com/broadinstitute/cromwell/tree/develop/cwl/src/main/scala/cwl)|CWL object model for Scala|
|[cwl-proto](https://github.com/broadinstitute/cwl-proto)|Reading and writing Common Workflow Language to Protocol Buffers|
|[CmdParser](https://github.com/CBICA/CmdParser)|Reading and Writing Common Workflow Language spec files from C++ applications. Includes a Command Line Parser|
|[Rcwl](https://github.com/hubentu/Rcwl)|Build, read, write and run CWL in R|
|[tidycwl](https://sbg.github.io/tidycwl/)|Tidy (R) Common Workflow Language Tools and Workflows|

## Projects the CWL community is participating in

|Name|Details|
|-------|-----------|
|[Bio-compute objects](https://osf.io/h59uh/)|"a step towards evaluation and validation of bio-medical scientific computations", CWL and researchobject.org participants are cooperating with this effort|
|[European Open Science Cloud](https://www.eosc-portal.eu/about/eosc)|The CWL project is [signatory](https://www.eosc-portal.eu/about/eosc-doers) to the [EOSC Declaration](https://ec.europa.eu/research/openscience/pdf/eosc_declaration.pdf#view=fit&pagemode=none) and is a core enabling standard for two of the EOSCPilot Science Demonstrations:  [LOFAR - Astrophysics Data](https://eoscpilot.eu/lofar-data) and [eWaterCycle & SWITCH-ON – FAIR Data for Hydrology](https://eoscpilot.eu/earth-sciences-–-hydrology-switching-eosc-reproducible-computational-hydrology-fairifying)|
|[GA4GH Task Execution API](https://github.com/ga4gh/task-execution-schemas/)|a minimal common API for submitting a single job to a remote execution endpoint. Many contributions from CWL project participants.|
|[GA4GH Workflow Execution API](https://github.com/ga4gh/workflow-execution-schemas)|a minimal common API for submitting workflow requests to workflow execution systems in a standardized way. Many contributions from CWL project participants.|
|[ResearchObjects.org](http://www.researchobject.org/)|"an emerging approach to the publication, and exchange of scholarly information on the Web." CWL participants and RO enthusiasts have created [CWLProv](https://w3id.org/cwl/prov/), a profile for provenance research object of a CWL workflow run.|

## Contributers and Governance

### Participating Organizations

* [Arvados Project](https://arvados.org)
* [Veritas Genetics](https://veritasgenetics.com)
* [Seven Bridges Genomics](https://www.sevenbridges.com/)
* [Galaxy Project](https://galaxyproject.org/)
* [Apache Taverna](https://taverna.incubator.apache.org/)
* [Institut Pasteur](https://www.pasteur.fr/en)
* [Wellcome Trust Sanger Institute](https://www.sanger.ac.uk/)
* [University of California Santa Cruz](https://cbse.soe.ucsc.edu/research/bioinfo)
* [Harvard T.H. Chan School of Public Health](https://www.hsph.harvard.edu/)
* [Cincinnati Children's Hospital Medical Center](https://www.cincinnatichildrens.org/)
* [Broad Institute](https://www.broadinstitute.org)
* [University of Melbourne Center for Cancer Research](https://umccr.github.io/)
* [Netherlands eScience Center](https://www.esciencecenter.nl/)
* [Texas Advanced Computing Center Life Science Computing Group](https://www.tacc.utexas.edu/life-sciences-computing) / [Agave Platform](https://agaveapi.co/)
* [CyVerse](http://www.cyverse.org/)
* [Institute for Systems Biology](https://www.systemsbiology.org/)
* [ELIXIR Europe](https://www.elixir-europe.org/)
* [BioExcel CoE](https://bioexcel.eu/)
* [BD2K](https://commonfund.nih.gov/bd2k)
* [EMBL Australia Bioinformatics Resource](https://www.embl-abr.org.au/)
* [IBM Spectrum Computing](https://www.ibm.com/spectrum-computing)
* [DNAnexus](https://www.dnanexus.com/)
* [CERN](https://home.cern/)

### Individual Contributors

(Alphabetical)

* Peter Amstutz, Veritas Genetics / Arvados Project; https://orcid.org/0000-0003-3566-7705
* Robin Andeer; https://orcid.org/0000-0003-1132-5305
* Brad Chapman; https://orcid.org/0000-0002-3026-1856
* John Chilton, Pennsylvania State University / Galaxy Project; https://orcid.org/0000-0002-6794-0756
* Michael R. Crusoe, CWL Project Lead; https://orcid.org/0000-0002-2961-9670
* Roman Valls Guimerà; https://orcid.org/0000-0002-0034-9697
* Guillermo Carrasco Hernandez <guille.ch.88@gmail.com>
* Kenzo-Hugo Hillion; https://orcid.org/0000-0002-6517-6934
* Manabu Ishii, RIKEN; https://orcid.org/0000-0002-5843-4712
* Sinisa Ivkovic <sinisa.ivkovic@sbgenomics.com>
* Sehrish Kanwal; https://orcid.org/0000-0002-5044-4692
* Andrey Kartashov; https://orcid.org/0000-0001-9102-5681
* John Kern; https://orcid.org/0000-0001-6977-458X
* Farah Zaib Khan; https://orcid.org/0000-0002-6337-3037
* Dan Leehr; https://orcid.org/0000-0003-3221-9579
* Hervé Ménager, Institut Pasteur; https://orcid.org/0000-0002-7552-1009
* Maxim Mikheev <mikhmv@biodatomics.com>
* Michael Miller <mdmiller53@comcast.net>
* Tazro Ohta, DBCLS; http://orcid.org/0000-0003-3777-5945
* Tim Pierce <twp@unchi.org>
* Josh Randall; https://orcid.org/0000-0003-1540-203X
* Mark Robinson; https://orcid.org/0000-0002-8184-7507
* Janko Simonović <janko.simonovic@sbgenomics.com>
* Stian Soiland-Reyes, University of Manchester; https://orcid.org/0000-0001-9842-9718
* Luka Stojanovic <luka.stojanovic@sbgenomics.com>
* Tomoya Tanjo, NII; https://orcid.org/0000-0002-4421-9659
* Nebojša Tijanić <nebojsa.tijanic@sbgenomics.com>
* Hiromu Ochiai; [@otiai10](https://github.com/otiai10) https://orcid.org/0000-0001-6636-856X

### CWL Advisors

(Alphabetical)

* Peter Amstutz, Veritas Genetics / Arvados Project; https://orcid.org/0000-0003-3566-7705
* Artem Barski, Cincinnati Children's Hospital Medical Center / University of Cincinnati College of Medicine; https://orcid.org/0000-0002-1861-5316
* John Chilton, Pennsylvania State University / Galaxy Project; https://orcid.org/0000-0002-6794-0756
* Kyle Cranmer, New York University; https://orcid.org/0000-0002-5769-7094
* Michael R. Crusoe, CWL Project Lead; https://orcid.org/0000-0002-2961-9670
* Brandi Davis Dusenbery, Seven Bridges Genomics, Inc.; https://orcid.org/0000-0001-7811-8613
* Niels Drost, Netherland eScience Center; https://orcid.org/0000-0001-9795-7981
* Scott Edmunds, GigaScience; https://orcid.org/0000-0001-6444-1436
* Geet Duggal, DNAnexus; https://orcid.org/0000-0003-3485-359X
* Rob Finn, EMBL-EBI; https://orcid.org/0000-0001-8626-2148
* Marc Fiume, DNAstack; https://orcid.org/0000-0002-9769-375X
* Jeff Gentry, Foundation Medicine; https://orcid.org/0000-0001-5351-8442
* Kaushik Ghose, Seven Bridges Genomics, Inc; https://orcid.org/0000-0003-2933-1260
* Carole Goble, The University of Manchester; https://orcid.org/0000-0003-1219-2137
* Oliver Hofmann, University of Melbourne / bcbio-nextgen; https://orcid.org/0000-0002-7738-1513
* Hervé Ménager, Institut Pasteur; https://orcid.org/0000-0002-7552-1009
* Folker Meyer, Argonne / University of Chicago; https://orcid.org/0000-0003-1112-2284
* Tom Morris, Curoverse; https://orcid.org/0000-0003-0435-7851
* Anton Nekrutenko, The Pennsylvania State University / Galaxy Project; https://orcid.org/0000-0002-5987-8032
* Brian O'Connor, University of California Santa Cruz; https://orcid.org/0000-0002-7681-6415
* Tibor Simko, CERN, https://orcid.org/0000-0001-7202-5803
* Nihar Sheth, DNAnexus; https://orcid.org/0000-0003-4128-4364
* Stian Soiland-Reyes, University of Manchester; https://orcid.org/0000-0001-9842-9718
* James Taylor, Johns Hopkins University / Galaxy Project; https://orcid.org/0000-0001-5079-840X
* Nebojša Tijanić, Seven Bridges
* Ward Vandewege, Curoverse Inc. / Arvados; https://orcid.org/0000-0002-2527-6949
* Alexander Wait Zaranek, Curoverse Inc. / Arvados; https://orcid.org/0000-0002-0415-9655


<a name="Leadership_Team"></a>
### CWL Leadership Team

(Alphabetical)

* Peter Amstutz, Veritas Genetics / Arvados Project; https://orcid.org/0000-0003-3566-7705
* John Chilton, Pennsylvania State University / Galaxy Project; https://orcid.org/0000-0002-6794-0756
* Michael R. Crusoe, CWL Project Lead; https://orcid.org/0000-0002-2961-9670
* Brandi Davis Dusenbery, Seven Bridges Genomics, Inc.; https://orcid.org/0000-0001-7811-8613
* Jeff Gentry, Foundation Medicine; https://orcid.org/0000-0001-5351-8442
* Hervé Ménager, Institut Pasteur; https://orcid.org/0000-0002-7552-1009
* Stian Soiland-Reyes, University of Manchester; https://orcid.org/0000-0001-9842-9718
