---
title: Links Debug
permalink: /debug/
layout: page
---

## Scripts Debug

Results: Only

* Absolute URL: {{ "/assets/plyr/plyr.css" | absolute_url }}
* Relative URL: {{ "assets/plyr/plyr.css" | relative_url }}
* no filter: <a href="{{ "assets/plyr/plyr.css" }}">assets/plyr/plyr.css</a> - should break

## Nav Debug

{%- for item in site.data.navigation.header -%}
  {%- if item.type contains "dropdown" -%}
  * Home: [#]("#")
    {% if item.subpages %}
      {%- for page in item.subpages -%}
      * {{ page.url | absolute_url }}
      {% endfor %}
    {% endif %}
  {% endif %}
{% endfor %}


<ul>
  {%- for item in site.data.navigation.header -%}
    <!-- Dropdown Menus -->
    {%- if item.type contains "dropdown" -%}
      <li><a href="#">{{ item.title}}<span class="caret"></span></a></li>
        {%- if item.subpages -%}
          <ul class="dropdown-menu">
          {%- for page in item.subpages -%}
            {%- if page.url contains "http" or "http" contains page.url -%}
              <!-- External Link -->
              <li><a href="{{ page.url | absolute_url }}">{{ page.title }}<i class="fad fa-external-link-alt"></i></a></li>
            {%- else -%}
              <!-- Internal Link -->
              <li><a href="{{ page.url | absolute_url }}">{{ page.title }}</a></li>
            {%- endif -%}
          {%- endfor -%}
        </ul>
        {%- endif -%}

      <!-- Dropdown Items -->
      {%- if item.subfolderitems[0] -%}
        <ul class="dropdown-menu">
          {%- for entry in item.subfolderitems -%}
            <li><a class="nav-link" href="{{ entry.url }}">{{ entry.page }}</a></li>
          {%- endfor -%}
        </ul>
      </li>
    <!-- End of Dropdown Menus -->
    {%- endif -%}

    <!-- Normal Menu Items-->
    {%- else -%}
      <!-- Current page -->
      {%- if page.title == item.title -%}
        <li><a class="is-current-page" href="{{ item.url }}">{{ item.title }}</a></li>
      {%- else -%}
      <!-- Normal Page -->
        <li class="nav-item"><a class="nav-link" href="{{ item.url }}">{{ item.title }}</a></li>
      {%- endif -%}
    <!-- End normal items -->
    {%- endif -%}
  <!-- End Nav Loop -->
  {%- endfor -%}
</ul>
