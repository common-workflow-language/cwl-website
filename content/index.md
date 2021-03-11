---
layout: home
title: Common Workflow Language
permalink: '/'
---

{%- include social_stats.html -%}
{%- include nav_toc.html -%}

<!-- Debug
  Site Url: {{ site.url }} 
  Base Url: {{ site.baseurl }}
-->

<div class="intro-container">
  <a href="https://open-stand.org/about-us/principles" class="open-stand"><picture><source srcset="https://github.com/common-workflow-language/cwl-website/raw/main/openstand-128x128-blue.webp" type="image/webp"><img src="./Common Workflow Language_files/openstand-128x128-blue.png" alt="Open Stand badge" width="128" height="128"></picture></a>

{% capture intro_paragraphs %}
The Common Workflow Language (CWL) is an open standard for describing analysis workflows and tools in a way that makes them portable and scalable across a variety of software and hardware environments, from workstations to cluster, cloud, and high performance computing (HPC) environments. CWL is designed to meet the needs of data-intensive science, such as Bioinformatics, Medical Imaging, Astronomy, High Energy Physics, and Machine Learning.

CWL is developed by a multi-vendor working group consisting of organizations and individuals aiming to enable scientists to share data analysis workflows. [The CWL project is maintained on Github](https://github.com/common-workflow-language/common-workflow-language) and we follow the [Open-Stand.org principles for collaborative open standards development](https://open-stand.org/about-us/principles/). Legally CWL is a member project of [Software Freedom Conservancy](https://sfconservancy.org/news/2018/apr/11/cwl-new-member-project/) and is formally managed by the elected [CWL leadership team]({{ site.url }}/#Leadership_Team), however every-day project decisions are made by the [CWL community]({{ site.url }}/#Support) which is open for participation by anyone.
{% endcapture %}

{{ intro_paragraphs | markdownify }}
</div>

{% include home/announcements.html %}
{% include home/getting-started.html %}
{% include home/support-community-contributing.html %}
{% include home/specification.html %}
{% include home/implementations.html %}
{% include home/repositories.html %}
{% include home/software-for-working-with-cwl.html %}
{% include home/projects.html %}
{% include home/contributers-and-governance.html %}
