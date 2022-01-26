# CWL Website 2.0

The in-progress redesign of the CWL Website

The preview build of the site is currently found at [https://deploy-preview-75--cwl-website.netlify.app/](https://deploy-preview-75--cwl-website.netlify.app/)

**Table of Contents:**
<!-- MarkdownTOC -->

* [Editing the Site](#editing-the-site)
* [To-Do](#to-do)
  * [General](#general)
  * [Code Refactoring](#code-refactoring)
  * [Plugins Review](#plugins-review)
  * [Accessibility](#accessibility)
    * [Headings & Anchor Links](#headings--anchor-links)
  * [WebAIM Accessibility](#webaim-accessibility)
    * [Video Player](#video-player)
* [Reference](#reference)
  * [Bootstrap Grid Breakpoints](#bootstrap-grid-breakpoints)

<!-- /MarkdownTOC -->

<a id="editing-the-site"></a>
## Editing the Site

Instructions for editing specific parts of the site can be found in [EDITING.md](EDITING.md)

<a id="to-do"></a>
## To-Do

<a id="general"></a>
### General

* Mini Gallery:
  * Logo heights
  * Logic check to avoid repeated logos
* Make homepage feature boxes clickable
* Tables: Content check should be done to make sure tables on Implementations page and elsewhere are up to date
* Reusability pg image caption
  - Doesn't center properly, due to the image needing to be cropped, on the right side
  - Improve the look
* Should `_includes/social_stats.html` be removed?

<a id="code-refactoring"></a>
### Code Refactoring

* Refactor User's Gallery left nav to automatically parse from `_data/users-gallery.yml`, instead of having to manually update `_data/navigation.yml`?
* Check units in SCSS files - px vs em

<a id="plugins-review"></a>
### Plugins Review

* Check if there are any necessary or useful Jekyll plugins that should be added

<a id="accessibility"></a>
### Accessibility

* Needs further testing with Screen Reader. See discussion at <https://github.com/common-workflow-language/cwl-website/pull/75#discussion_r760642750>
  * Check how SR reads Japanese & Russian text on Getting Started pg, now that `lang` & `hreflang` have been added
  * Check Skip Link and Nav Menu behavior for consistency

<a id="headings--anchor-links"></a>
#### Headings & Anchor Links

* Some links to top or back(?) are announced with the headers of the page.
  * Relevant code is in `_sass/partials/_structure.scss`
  * Distracting for SR users, who may prefer to hit Home or reload the page instead

<a id="webaim-accessibility"></a>
### WebAIM Accessibility

<a id="video-player"></a>
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
