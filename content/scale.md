---
layout: page
permalink: /scale/
title: Parallelization and Scale 
---

CWL tasks are isolated and you must be explicit about your inputs and outputs. The benefit of explicitness and isolation are flexibility, portability, and scalability: tools and workflows described with CWL can transparently leverage technologies such as Docker and be used with CWL implementations from different vendors. CWL is well suited for describing large-scale workflows in cluster, cloud and high performance computing environments where tasks are scheduled in parallel across many nodes.

### Parallelization

The steps section in a CWL workflow describes the actual steps of the workflow with explict inputs and outputs specified for each step.  Workflow steps in CWL are not necessarily run in the order they are listed, instead the order is determined by the dependencies between steps. Workflow steps which do not depend on one another may run in parallel.

Additionally, the scatter construct in CWL allows the repeated execution of a CWL step(perhaps overlapping in time,depending on the resources available) where most of the inputs are the same except for one or more inputs that vary. This is done without requiring the modification of the underlying tool description. 

### Scale

By design, the CWL standards do not impose any technical limitations to the size of files processed or to the number of tasks run in parallel. The major scalability bottlenecks are hardware-related — not having enough machines with enough memory, compute or disk space to process more and more data at a larger scale. As these boundaries move in the future with technological advances, the CWL standards should be able to keep up and not be a cause of limitations. 

Different implementations of the CWL standards can provide different capabilities in terms of scaling and access to HPC resources. 
Different implementations of the CWL standards can provide different levels of scability  
