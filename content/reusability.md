---
layout: page
permalink: /reusability/
title: Reusability  
---

## Reusability and Reproduciblity with CWL
CWL workflows are portable, reusable, and flexible.  Reproduction, reuse, and replication of computational methods requires a complete description of what computer applications were used, how exactly they were used, and how they were connected to each other. To this end, CWL enables portability by being explicit about inputs/outputs to form the data flow, data locations and execution models. CWL supports using software container technologies, such as Docker and Singularity, to enable portability. For increased flexiblity, individual CWL tool definitions can be reused in any new workflow.  

<figure>
  <img
  src="/assets/img/cwlportable.png"
  alt="">
  <figcaption> Example of CWL portablity. The same CWL workflow description can run on a laptop,
on any batch production-environment, and on any common public or private cloud. </figcaption>
</figure>

