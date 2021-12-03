# CWL Website 2.0

The in-progress redesign of the CWL Website

The preview build of the site is currently found at [https://deploy-preview-75--cwl-website.netlify.app/](https://deploy-preview-75--cwl-website.netlify.app/)

**Table of Contents:**
<!-- MarkdownTOC -->

* [Editing the Site](#editing-the-site)
* [To-Do](#to-do)
  * [Plugins Review](#plugins-review)
  * [Nav Menu Issues](#nav-menu-issues)
  * [Accessibility](#accessibility)
    * [Headings & Anchor Links](#headings--anchor-links)
  * [Video Player](#video-player)
  * [Users Gallery](#users-gallery)
    * [Organization Links](#organization-links)
  * [WebAIM Accessibility](#webaim-accessibility)
    * [Video Player](#video-player-1)
* [Reference](#reference)
  * [Bootstrap Grid Breakpoints](#bootstrap-grid-breakpoints)

<!-- /MarkdownTOC -->

<a id="editing-the-site"></a>
## Editing the Site

Instructions for editing specific parts of the site can be found in [EDITING.md](EDITING.md)

<a id="to-do"></a>
## To-Do

<a id="plugins-review"></a>
### Plugins Review

* Check if there are any necessary or useful Jekyll plugins that should be added

<a id="nav-menu-issues"></a>
### Nav Menu Issues

* Anchor links scroll past headings, due to sticky header 
* Top nav: Home link currently stays bolded, even though page not on homepage
* Left Nav: Submenu items should be collapsed under a caret. Relevant for Users Gallery page

<a id="accessibility"></a>
### Accessibility

* Needs further testing with Screen Reader. See discussion at <https://github.com/common-workflow-language/cwl-website/pull/75#discussion_r760642750>
  * Add `lang` attibutes to any text in foreign languages (Japanese, Russian, etc)
    * Currently being read by SR in very confusing manner (e.g. Orca reads Japanese as "CWL -japanese character- -chinese character- -chinese character-....")
  * Check Skip Link and Nav Menu behavior for consistency

<a id="headings--anchor-links"></a>
#### Headings & Anchor Links

* Some links to top or back(?) are announced with the headers of the page.
  * Relevant code is in `_sass/partials/_structure.scss`
  * Distracting for SR users, who may prefer to hit Home or reload the page instead

<a id="video-player"></a>
### Video Player

* Does it make sense to include video player styles in _custom-head.html?? It's only used on the homepage
* Wrap homepage vid player styles in page tag?? or move video player styles elsewhere?

<a id="users-gallery"></a>
### Users Gallery

<a id="organization-links"></a>
#### Organization Links

Prettify Organization Links:

Some organization links display as https links, while most display as Titles. eg: <https://www.openscience.nl/files/openscience/2019-02/nationalplanopenscience_en.pdf#page=16> vs [National Plan Open Science - Feb. 2019](https://www.openscience.nl/files/openscience/2019-02/nationalplanopenscience_en.pdf#page=16)

The following lines of code would need to be added, in their respective sections:

```yaml
- name: The [Netherlands] National Plan Open Science
  link_text: National Plan Open Science - Feb. 2019
  url: https://www.openscience.nl/files/openscience/2019-02/nationalplanopenscience_en.pdf#page=16
- name: University of Manchester, eScience Lab
  link_text: eScience Lab - Common Workflow Language
  url: https://esciencelab.org.uk/activities/cwl/
- name: RAPT
  link_text: "NCBI Insights : Read assembly and Annotation Pipeline Tool (RAPT) is available for use and testing"
  url: https://ncbiinsights.ncbi.nlm.nih.gov/2020/11/24/read-assembly-and-annotation-pipeline-tool-rapt-is-available-for-use-and-testing/
- name: Open Geospatial Consortium
  description: Integrated CWL as part of their Exploitation (data analytics) Platforms
  link_text: Open Geospatial Consortium
  url: https://www.ogc.org/
```

<a id="webaim-accessibility"></a>
### WebAIM Accessibility

<a id="video-player-1"></a>
#### Video Player

* The "broken ARIA menu" seems to be an error on the WebAIM tool's part...
  - It says that it has to have at least one item with `role="menuitem"` - which is satistfied...
  - Test with screenreader or emulator if possible

```html
<div id="plyr-settings-9859-home">
  <div role="menu">
    <button data-plyr="settings" type="button" class="plyr__control plyr__control--forward" role="menuitem" aria-haspopup="true">
      <span>Captions<span class="plyr__menu__value">Disabled</span>
      </span>
    </button>
    <button data-plyr="settings" type="button" class="plyr__control plyr__control--forward" role="menuitem" aria-haspopup="true" hidden="">
      <span>Quality<span class="plyr__menu__value">undefined</span>
      </span>
    </button>
    <button data-plyr="settings" type="button" class="plyr__control plyr__control--forward" role="menuitem" aria-haspopup="true">
      <span>Speed<span class="plyr__menu__value">Normal</span>
      </span>
    </button>
  </div>
</div>
```

These other errors come up, but are probably not significant, since the icons are provided:

* skipped heading level
* Small text

<a id="reference"></a>
## Reference

<a id="bootstrap-grid-breakpoints"></a>
### Bootstrap Grid Breakpoints

Bootstrap Grid Breakpoints are as follows:

```scss
$grid-breakpoints: (
  xs: 0,
  xxs: 425px,
  sm: 576px,
  md: 768px,
  lg: 992px,
  lg-2: 1024px,
  xl: 1200px,
  xl-13: 1330px,
  xxl: 1400px
) !default;
// scss-docs-end grid-breakpoints
```
