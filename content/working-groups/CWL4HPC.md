---
layout: page
permalink: /working-groups/cwl4hpc
title: CWL4HPC Working Group
columns: 10
class: page-short
---


{:.black-text}
## CWL For High-Performance Computing (CWL4HPC)

The CWL4HPC Working group aims to identify workflow patterns capable of modelling large-scale scientific applications and implement the related CWL enhancement proposals. The main objective is to enable the CWL ecosystem to easily describe HPC workloads and orchestrate them at extreme scales without sacrificing the general and agnostic nature of the language.

The main activities of the group are listed in the table below. For each CWL enhancement proposal, the group aims to:
 - Motivate it with two real use cases that would benefit from the proposed feature;
 - Agree on a first draft of the syntax and semantics of the proposed feature;
 - Implement it as an extension on `cwltool` (the CWL reference implementation) and at least another CWL-compliant workflow system, together with a suite of conformance tests;
 - Validate it on at least two existing CWL workflows where the proposal is applied, or with new example workflows created on purpose.

The process just described is iterative. If some criticalities of further enhancements emerge during the implementation or validation phases, the syntax and semantics can be refined and the process restarts. After reaching a sufficient level of maturity, the group agrees to present the proposal to the CWL community for inclusion in the following standard version.

Domain experts, HPC administrators, workflow designers and maintainers, and workflow system implementers are welcome to join the discussion, but the group is open to anyone wanting to contribute. Click [here](https://matrix.to/#/!rnpqRUgCiUQaGeqAWG:matrix.org?via=matrix.org) to join the group's matrix channel and participate in the discussion.

### Leads

 - Iacopo Colonnelli, University of Torino, Italy (iacopo.colonnelli@unito.it)
 - Bruno P. Kinoshita, Barcelona Supercomputing Center, Spain (bruno.depaulakinoshita@bsc.es)

### Main ongoing activities

{: .table .table-striped .cols-2 }
|Feature|Status|
|--- |--- |
| Iterative patterns| A `cwltool:Loop` requirement has been [proposed](https://github.com/common-workflow-language/common-workflow-language/issues/495) and implemented as a CWL extension in [cwltool](https://github.com/common-workflow-language/cwltool) and [StreamFlow](https://streamflow.di.unito.it). Currently, its inclusion in the CWL v1.3 standard as a [native feature](https://github.com/common-workflow-language/cwltool/pull/1779) is under discussion |

### Publications

- I. Colonnelli, B. Casella, G. Mittone, Y. Arfat, B. Cantalupo, R. Esposito, A. R. Martinelli, D. Medić, and M. Aldinucci, “Federated Learning meets HPC and cloud,” in *Astrophysics and Space Science Proceedings*, Catania, Italy, 2023, p. 193–199. doi:[10.1007/978-3-031-34167-0_39](https://dx.doi.org/10.1007/978-3-031-34167-0_39)
