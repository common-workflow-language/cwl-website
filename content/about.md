---
layout: page
permalink: /about/
title: About
class: about anchors-center-fix
---

The CWL Project began out of a need for a standard to 
describe analysis pipelines in a portable and reusable
manner. Common Workflow Language (CWL) is a family of standards
for the description of command line tools and of workflows made with these standards.
CWL is designed to meet the needs of data-intensive science, such as Bioinformatics, Medical Imaging, Astronomy, High Energy Physics, and Machine Learning.


The CWL project focus is on open standards, open-source code and an open community.


<div class="section-header">
  <img src="../assets/img/noun_Vision_3455591.svg" class="section-icon" alt="Vision Icon - two people stand together, with a 'thinking' cloud above their head">
  <h2 id="vision">Vision of the CWL Project</h2>
</div>

#### What this community hopes to have accomplished in the future

Researchers, scientists, and analysts share their batch data analysis workflows without technical barriers using an open standard. Sharing workflows this way is a usual occurrence and seen as a typical way of working. The workflows are complete and run on a variety of environments; and people re-use shared workflow descriptions and build new workflows from them. No vendor dominates the ecosystem

<div class="section-header">
  <img src="../assets/img/noun_Mission_2673795.svg" class="section-icon" alt="Mission Icon - a person holding a flag reaches the top of a mountain">
  <h2 id="vision">Mission of the CWL Project</h2>
</div>

#### How we plan to achieve our vision

The CWL project supports open consensus-based standards for command line data analysis workflows and tools.

Specifically, we support the
*    pre-standards process by providing a neutral place of convening to discuss, propose and test ideas about command-line tool based workflow standards and related topics
*    standardization process by stewarding the development and delivery of standards in accordance with the Open Stand principles.
*    post-standards life cycle by (1) promoting the released standards, (2) developing and maintaining related training and tools, and by (3) tracking deficits and other post-standardization feedback

<div class="section-header">
  <img src="../assets/img/noun_background_4073428.svg" class="section-icon" alt="Background Section Icon - a curved painting shows 3 mountains and a sun in the background">
  <h2 id="vision">Background</h2>
</div>

### Why Workfows?

Workflows and using workflow tools help make your computation methods portable, maintainable, reproducible and shareable. Often analysis methods contain many steps, perhaps in multiple languages and workflows help researchers document, run and maintain these complicated analyses. 

Using a workflow system rather than a series of scripts has a number of benefits including abstraction, scaling, automation, and provenance (ASAP). 

tWorkflows enable a clear abstraction about the components of your analysis, the relationship between the components and the inputs and outputs for each component allows for a well-labeled analysis with documented expectation. This abstraction helps enable the other benefits of scaling, automation and provenance. 

Workflow execution can be parallelized or distributed making use of cluster, cloud, and high performance computing (HPC) environments. This helps to solve larger problems and analyze larger datasets faster.

Automation helps when running repetitive pipelines for example when running parameter sweeps or the same analysis on different sets of data. Workflow engines can use the inherient abstraction of workflows to efficently track, plan and manage the executation of workflow components. 
  
Lastly, provenance tracking helps with auditing, tranparency, and validation. Ultimately, using workflows in the long run helps save time and effort and allows for easier scaling, tracking, sharing and reuse.   

### Why a Standard?

A standard for sharing and reusing workflows can provide a solution to describing portable,re-usable workflows while also being workflow-engine and vendor-neutral.

Although workflows are very popular, prior to the CWL standards every workflow system was incompatible with every other. This means, those users not using the CWL standards are required to express their computational workflows in a different way everytime they have to use another workflow system. This greatly hampers reuse and collaboration. 

### When to Use CWL?
The CWL standards were designed for a particular style of
command-line tool based data analysis. 

CwL is for dataflow style batch analysis consisting of command line programs. It is not designed for supporting safe interaction with stateful (web) services, real-time communication between workflow steps, or workflows that need particular steps run at or during a
specific day/time-frame. 

<div class="section-header">
  <img src="../assets/img/noun_Time_6732.svg" class="section-icon" alt="Timeline Icon - A clock with a circular arrow, progressing in a clockwise direction">
  <h2 id="vision">Timeline</h2>
</div>

{% include timeline.html %}

