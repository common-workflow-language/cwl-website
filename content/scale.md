---
layout: page
permalink: /scale/
title: Parallelization and Scale 
---

Benefits of CWL including flexibility, portability, and scalability. CWL is well suited for describing large-scale workflows in cluster, cloud and high performance computing environments where tasks are scheduled in parallel across many nodes.  

### Parallelization

CWL workflows describe each step with explict inputs and outputs.  Workflow steps in CWL are not necessarily run in the order they are listed, instead the order is determined by the dependencies between steps. Workflow steps which do not depend on one another may run in parallel.

Additionally, the **[scatter](https://www.commonwl.org/user_guide/23-scatter-workflow/index.html)** feature in CWL allows the repeated execution of a CWL step(perhaps overlapping in time,depending on the resources available) over a list of inputs.  This can be done without requiring the modification of the underlying tool description. 

### Scale

By design, the CWL standards do not impose any technical limitations to the size of files processed or to the number of tasks run in parallel. The major scalability bottlenecks are hardware-related — not having enough machines with enough memory, compute or disk space to process more and more data at a larger scale. As these boundaries move in the future with technological advances, the CWL standards should be able to keep up and not be a cause of limitations. 

Different implementations of the CWL standards can provide different capabilities in terms of scaling and access to HPC resources. 
Different implementations of the CWL standards can provide different levels of scability  
