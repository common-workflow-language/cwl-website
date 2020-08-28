---
layout: home
title: Common Workflow Language
permalink: '/'
---

<div class="social-bar">
	<a href="https://gitter.im/common-workflow-language/common-workflow-language?utm_source=badge&amp;utm_medium=badge&amp;utm_campaign=pr-badge&amp;utm_content=badge" style="padding-right: 1em"><img src="https://badges.gitter.im/Join%20Chat.svg" alt="Gitter" width="99" height="20"></a>
	<a href="https://github.com/common-workflow-language/common-workflow-language/stargazers" style="padding-right: 1em"><img src="https://img.shields.io/github/stars/common-workflow-language/common-workflow-language.svg" alt="GitHub stars" height="20"></a>
	<a href="{{ site.url }}/#Support" class="cwl-support"><b>CWL Community Support</b></a>
	<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top" style="display:inline;">
		<input type="hidden" name="cmd" value="_s-xclick">
		<input type="hidden" name="hosted_button_id" value="Z55VS5LBBSZTJ">
		<input type="image" class="paypal-btn" src="{{ "/assets/img/donate-button2.png" | relative_url }}" name="submit" alt="Donate to Common Workflow Language via PayPal">
	</form>
</div>

{%- include nav_toc.html -%}

<p><a href="https://open-stand.org/about-us/principles"><picture><source srcset="https://github.com/common-workflow-language/cwl-website/raw/main/openstand-128x128-blue.webp" type="image/webp"><img align="right" src="./Common Workflow Language_files/openstand-128x128-blue.png" alt="Open Stand badge" width="128" height="128"></picture></a></p>

The Common Workflow Language (CWL) is an open standard for describing analysis workflows and tools in a way that makes them portable and scalable across a variety of software and hardware environments, from workstations to cluster, cloud, and high performance computing (HPC) environments. CWL is designed to meet the needs of data-intensive science, such as Bioinformatics, Medical Imaging, Astronomy, High Energy Physics, and Machine Learning.

CWL is developed by a multi-vendor working group consisting of organizations and individuals aiming to enable scientists to share data analysis workflows. [The CWL project is maintained on Github](https://github.com/common-workflow-language/common-workflow-language) and we follow the [Open-Stand.org principles for collaborative open standards development](https://open-stand.org/about-us/principles/). Legally CWL is a member project of [Software Freedom Conservancy](https://sfconservancy.org/news/2018/apr/11/cwl-new-member-project/) and is formally managed by the elected [CWL leadership team]({{ site.url }}/#Leadership_Team), however every-day project decisions are made by the [CWL community]({{ site.url }}/#Support) which is open for participation by anyone.

{% comment %}
<!-- Dynamic version attempt - not yet working -->
{% for section in site.home-sections %}
  <p>{{ section.name }}</p>
  <p>{{ section.content }}</p>
{% endfor %}

{% for section in site.collections.home-sections %}
  <p>{{ section.name }}</p>
  <p>{{ section.content }}</p>
{% endfor %}

{% for collection in site.collections[0] %}
  <p>{{ collection.label }}</p>
{% endfor %}
{% endcomment %}

{% include home/getting-started.html %}

<div class="twitter-feed"><a class="twitter-timeline" data-width="280" data-height="600" data-dnt="true" data-theme="light" href="https://twitter.com/commonwl?ref_src=twsrc%5Etfw">Tweets by commonwl</a></div> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

{% include home/support-community-contributing.html %}
{% include home/specification.html %}
{% include home/implementation.html %}
{% include home/repositories.html %}
{% include home/software-for-working-with-cwl.html %}
{% include home/projects.html %}
{% include home/contributers-and-governance.html %}
