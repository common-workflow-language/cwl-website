---
layout: page
permalink: /implementations/
title: Implementations
columns: 10
class: has-black-h2s has-red-h3s
---

## What can execute CWL descriptions?
CWL provides a
solution to describing portable, re-usable workflows while also
being workflow-engine and vendor-neutral.
CWL has gained much traction and is currently widely
supported in practice. In addition to the Free and Open Source implementations, certain platforms/engines have in-development or partial support for CWL as well.

Some workflow users require the maintenance and risk-mitigation
guarantees offered by commercial operations. There are multiple
commercially supported systems that support CWL for executing
workflows and they are available from vendors such as Curii
([Arvados](https://arvados.org/)), [DNAnexus](https://www.dnanexus.com/), [IBM (IBM® Spectrum LSF)](https://www.ibm.com/analytics/spectrum-computing), [Illumina
(Illumina Connected Analytics)](https://www.illumina.com/products/by-type/informatics-products/connected-analytics.html?scid=2021-269ECL4851), and [Seven Bridges Genomics](https://www.sevenbridges.com/).

Wide adoption benefits from our principles: CWL offers
conformance tests, but the CWL community does not yet test or certify
CWL implementations, or specific technology stacks. Instead,
platform/service providers self-certify support for CWL, based on a
particular technology configuration they deploy and maintain.

{:.cwl-red}
### In Production

{: .table .cols-3}
|Software|Description| Self-Reported Compliance | Platform support|
|--- |--- |--- |--- |
|[cwltool](https://github.com/common-workflow-language/cwltool)|Reference implementation of CWL|CWL v1.0 - v1.2|Linux, OS X, Windows, local execution only|
|[Arvados](https://arvados.org/)|Distributed computing platform for data analysis on massive data sets. [Using CWL on Arvados](https://doc.arvados.org/user/cwl/cwl-runner.html)|[CWL v1.0 - v1.2 ![Required](https://badgen.net/https/jutro-4zz18-ytx3kamvs9vo8q5.collections.jutro.arvadosapi.com/required.json?icon=commonwl)](https://dev.arvados.org/projects/arvados/wiki/CWL_Conformance)|AWS, GCP, Azure, Slurm, LSF|
|[Toil](https://github.com/BD2KGenomics/toil)|Toil is a workflow engine entirely written in Python.|CWL v1.0 - v1.2|AWS, GCP, Grid Engine, HTCondor, LSF, Slurm, PBS/Torque|
|[StreamFlow](https://streamflow.di.unito.it/)|Workflow Management System for hybrid HPC-Cloud infrastructures|[CWL v1.0 - v1.2 ![Required](https://badgen.net/https/streamflow.di.unito.it/cwl-conformance/v1.2/required.json?icon=commonwl)](https://github.com/alpha-unito/streamflow#cwl-compatibility)<br />(and [nearly all optional features](https://github.com/alpha-unito/streamflow#cwl-compatibility))|Kubernetes, HPC with Singularity (PBS, Slurm), [Occam](https://c3s.unito.it/index.php/super-computer), multi-node SSH, local-only (Docker, Singularity)|
|[Calrissian](https://github.com/Duke-GCB/calrissian)|CWL Engine built for Kubernetes|[CWL v1.0 - v1.2 ![Required](https://flat.badgen.net/https/raw.githubusercontent.com/Duke-GCB/calrissian/master/conformance/badges/1.0.2/required.json?icon=commonwl)](https://github.com/Duke-GCB/calrissian/tree/master/conformance#readme)<br />(and much of the optional features) |[Kubernetes](https://kubernetes.io/)|
|[CWL-Airflow](https://github.com/Barski-lab/cwl-airflow)|Package to run CWL workflows in Apache-Airflow (supported by BioWardrobe Team, CCHMC)|CWL v1.0 - v1.1|Linux, OS X|

{:.cwl-red}
### In Production for CommandLineTools only

{: .table .cols-3}
|Software|Description| Self-Reported Compliance | Platform support|
|--- |--- |--- |--- |
|[shaft](https://github.com/tom-tan/shaft)|A workflow engine for CWL CommandLineTool|[CWL v1.0 ![Required](https://badgen.net/https/raw.githubusercontent.com/tom-tan/conformance/master/shaft/cwl_v1.0/shaft_latest/required.json?icon=commonwl)](https://github.com/tom-tan/shaft#conformance-tests-for-cwl-v10)| local |

{:.cwl-red}
### Partial implementations

{: .table .cols-3}
|Software|Description| Self-Reported Compliance | Platform support|
|--- |--- |--- |--- |
|[ep3](https://github.com/tom-tan/ep3)|Extremely Pluggable Pipeline Processor|[CWL v1.0 ![Required](https://badgen.net/https/raw.githubusercontent.com/tom-tan/conformance/master/ep3/cwl_v1.0/ep3_latest/required.json?icon=commonwl)](https://github.com/tom-tan/ep3#conformance-tests-for-cwl-v10-for-the-latest-release)| local |
|[REANA](https://docs.reana.io/)|RE usable ANAlyses|[CWL v1.0 ![Required](https://badgen.net/https/raw.githubusercontent.com/reanahub/reana-workflow-engine-cwl/master/badges/v1.0/required.json?icon=commonwl)](https://github.com/reanahub/reana-workflow-engine-cwl#cwl-v10)|Kubernetes|
|[Xenon](https://nlesc.github.io/Xenon/)|Run CWL workflows using Xenon| <a href="https://github.com/xenon-middleware/xenonflow#cwl-compliance-v10">CWL v1.0 <img src="https://badgen.net/https/raw.githubusercontent.com/xenon-middleware/xenon-flow/gh-pages/badges/required.json?icon=commonwl" alt="Xenon Conformance Required Percentage"></a> |[any Xenon backend](https://nlesc.github.io/Xenon/): local, ssh, SLURM, Torque, Grid Engine |
|[Galaxy](https://galaxyproject.org/)|Web-based platform for data intensive biomedical research. | |&#8211;|
|[cwl-tes](https://github.com/ohsu-comp-bio/cwl-tes)|CWL engine backended by the [GA4GH Task Execution API](https://github.com/ga4gh/task-execution-schemas) | |Alicloud, AWS, Google, HPC, local, Spark, TES|
|[Pegasus](https://pegasus.isi.edu/documentation/reference-guide/cwl-support.html)|Pegasus Workflow Management System| Partial support for importing CWL workflows is [under development](https://pegasus.isi.edu/documentation/manpages/pegasus-cwl-converter.html) | |
|[Weaver](https://github.com/crim-ca/weaver)|Workflow Execution Management Service (EMS) and Application, Deployment and Execution Service (ADES) that can interact and chain [OGC API - Processes][OAPIP], [Web Processing Service][WPS] (WPS) and [Earth System Grid Federation][ESGF] (ESGF) [Compute API][ESGF-CWT] processes using CWL. | CWL v1.0 - v1.2 <br> Partial support according to possible conversions between processes (see [Application Package][AppPkg] for details). | Docker, CUDA GPU, [OGC API - Procsses][OAPIP], [WPS][WPS], [ESGF-CWT][ESGF-CWT], remote Web API, local CLI |

[AppPkg]: https://pavics-weaver.readthedocs.io/en/latest/package.html
[ESGF]: https://esgf.llnl.gov/
[ESGF-CWT]: https://github.com/ESGF/esgf-compute-api
[OAPIP]: https://github.com/opengeospatial/ogcapi-processes
[WPS]: https://www.ogc.org/standard/wps/

See also: [an ongoing analysis of CWL Implementations](https://docs.bioexcel.eu/cwl-engine-guide/about.html#summary-of-engines) by the BioExcel Center of Excellence.
