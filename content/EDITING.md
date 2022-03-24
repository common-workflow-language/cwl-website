# Editing the CWL Website

Instructions for editing specific pages and site components.

<!-- MarkdownTOC -->

* [Navigation Menus](#navigation-menus)
  * [Editing the Nav Menus](#editing-the-nav-menus)
  * [Left Nav Menus](#left-nav-menus)
* [Links & Redirects](#links-and-redirects)
* [Short Pages](#short-pages)
* [Specific Pages](#specific-pages)
  * [Homepage](#homepage)
    * [Features Boxes](#features-boxes)
    * [Mini Gallery](#mini-gallery)
  * [About Page - Timeline](#about-page---timeline)
  * [Code of Conduct Syncing](#code-of-conduct-syncing)
  * [User Gallery](#user-gallery)
    * [Left Nav Menu](#left-nav-menu)
    * [user-gallery.yml](#user-galleryyml)
* [Foreign Languages](#foreign-languages)
* [Tables](#tables)
* [Developer Notes](#developer-notes)
  * [Dependencies](#dependencies)
  * [Bootstrap](#bootstrap)
    * [Media Query Grid Breakpoints](#media-query-grid-breakpoints)
  * [Code of Conduct Regeneration](#code-of-conduct-regeneration)
  * [Hypothes.is Annotation Config](#hypothesis-annotation-config)
  * [Plugins](#plugins)
  * [Video Player](#video-player)
    * [Initializing the Video Player](#initializing-the-video-player)
    * [Customizing the Video Player](#customizing-the-video-player)

<!-- /MarkdownTOC -->

<a id="navigation-menus"></a>
## Navigation Menus

There are two nav menu templates currently available: 

* `_includes/top_nav.html` - the main site nav
  * Data: `_data/navigation.yml`
  * Syles: `_sass/partials/_nav.scss`
* `_includes/left_nav.html` - left nav on an individual page
  * Data: `_data/navigation.yml` by default
    * Can also pull data from a page-specific file, e.g. `gallery.html` previously used `_data/user-gallery.yml` for its left nav
  * Styles: `_sass/partials/_left-nav.scss`

<a id="editing-the-nav-menus"></a>
### Editing the Nav Menus

**Top Nav:**

Simply edit the data in `_data/navigation.yml`

**Left Nav:**

The Left Nav data may be found in either `_data/navigation.yml` or a page-specific file like `_data/user-gallery.yml` (no longer used by the left nav)

**Left Nav Structure:**
The Left Nav should always have `nav_header` as the first item. This is the title displayed at the top of the nav menu:

```yaml
left_nav:
  - nav_header: Shortcuts
  - title: Cross-Domain
    url: "#cross-domain"
    submenu:
      - title: The [Netherlands] National Plan Open Science
        url: "#"
      - title: University of Manchester, eScience Lab
        url: "#"
```

<a id="left-nav-menus"></a>
### Left Nav Menus

To add a left nav menu to a page:

1. Add a `left_nav_slug` value and `class: has-left-nav` to the page's front matter
2. Optionally specify a `nav_data` variable in the include, e.g. `{% include left_nav.html nav_data=path_to_nav_data_here %}`

Example using `left_nav_slug`:

```html
---
layout: page
permalink: /link-name/
title: Some Page
left_nav_slug: user_gallery_left
class: page-class-name has-left-nav
---

<!-- The include below will automatically set the menu to site.data.navigation[user_gallery_left] -->
{% include left_nav.html %}
```

**Note:** Any page with a left nav must specify a page-specific class, before `has-left-nav` (e.g. `class: user-gallery has-left-nav`). Otherwise, the page will generate `<body class="body-has-left-nav">` instead of `<body class="body-page-class-name has-left-nav">`, and the proper styles won't be applied.

Example using page-specific file, instead of `left_nav_slug`:

```html
---
layout: page
permalink: /gallery/
title: CWL Users Gallery
class: user-gallery has-left-nav
---

<!-- The include below would get the data from _data/user-gallery.yml -->
{% assign nav_data = site.data.user-gallery.left_nav %}
{% include left_nav.html nav_data=site.data.user-gallery.left_nav %}
```

<a id="links-and-redirects"></a>
## Links & Redirects

Prefer trailing slashes e.g. `/community/` over `/community`

<a id="short-pages"></a>
## Short Pages

Any page with minimal content should add `class: page-short` to the front matter, so that the footer stays at the bottom of the screen. If adding a page-specific class, keep `page-short` at the beginning, e.g. `class: page-short body-page-class`, or write it as `class: page-class body-page-short`.

Example:

```yaml
---
layout: page
permalink: /donate/
title: Donate
class: page-short body-donate
# can also be class: donate body-page-short
---
```

The first version will generate `<body class="body-page-short">`, and the second will generate `<body class="body-donate body-page-short">`

<a id="specific-pages"></a>
## Specific Pages

<a id="homepage"></a>
### Homepage

**Relevant Files:**

* `index.md` - main file that imports the other files
* `_includes/home/intro.html` - contains the intro paragraph and imports the video player
* `_includes/home/features.html` - template for the "Features" boxes section. Relies on `_data/home.yml`
* `_includes/home/users-mini-gallery.html` - the bottom gallery of logos. Relies on data in `_data/user-gallery.html`
* `_includes/home/video-player.html` - template code for the video player ([Plyr](https://plyr.io/)). See [Video Player](#video-player) section for more info. 

<a id="features-boxes"></a>
#### Features Boxes

These can be edited via in `_data/home.yml`. The general structure looks like this:

```yaml
features:
  - title: INTEROPERABILITY AND PORTABILITY
    icon: noun_Interoperability_181229.svg
    icon-alt: Interoperability icon - a triangle composed of arrows, with a triangle, square, and circle as the 3 points
    text: Portable and interoperable across a [variety of software and deployment environments](/implementations/)
```

Image files must be located in `assets/img/` (e.g. `assets/img/noun_Interoperability_181229.svg`).

<a id="mini-gallery"></a>
#### Mini Gallery

**Relevant Files:**

* `_includes/home/mini-gallery.html` - Generates the mini gallery. Relies on data from `_data/user-gallery.yml`
* `_sass/partials/home/_mini-gallery.scss` - Contains the data for the Left Nav, and the Users Gallery list
* `_data/user-gallery.yml` - contains the data used by the mini gallery.

For general info on `_data/user-gallery.yml`, see the [user-gallery.yml](#user-gallery.yml) section, under [Users Gallery](#user-gallery).

**Duplicate Logos:**

In order to prevent a duplicate logo from being displayed, add `duplicate_logo: true` to the logo's section in `_data/user-gallery.yml`

**Logo Tweaking:**
The mini-gallery data is in `_data/user-gallery.yml`. Some logos may need individual adjustment, for optimal display. This can be accomplished by adding an `image_id: name-here` property to the respective image. The image's styles can then be modified in `_sass/partials/home/_mini-gallery.scss`.

<a id="about-page---timeline"></a>
### About Page - Timeline

**Relevant files:**

* `timeline.md` - main file for the page. Imports `_includes/timeline.html`
* `_includes/timeline.html` - timeline template file. Relies on `_data/timeline.yml` and `_sass/partials/timeline.scss`
* `_data/timeline.yml` - data for the timeline events
* `_sass/partials/timeline.scss` - timeline styles

To edit the events displayed, use `_data/timeline.yml`. The general structure is:

```yaml
timeline_events:
  - year: 2014
    event: "Initial Draft created <span class='no-bold'>at Bioinformatics Open Source Conference CodeFest</span>"
  - year: 2015
    event: "CWL “draft-2” version<br>
      Commercial vendor (SBG) releases product <span class='no-bold'>in December</span>"
```

<a id="code-of-conduct-syncing"></a>
### Code of Conduct Syncing

Relevant files:

* `code-of-conduct.md` - Code of Conduct page
* `_plugins/coc-generator.rb` - Regenerates the Code of Conduct
* [CWL Repo - Code of Conduct](https://github.com/common-workflow-language/common-workflow-language/blob/main/CODE_OF_CONDUCT.md)

The Code of Conduct page is setup to automatically pull the content from the [CWL Repo's Code of Conduct](https://github.com/common-workflow-language/common-workflow-language/blob/main/CODE_OF_CONDUCT.md). After the CWL repo file has been updated, run `bundle exec jekyll serve` to automatically rebuild `code-of-conduct.md`. Then commit and push the updated Code of Conduct, via `git push origin main`.

<a id="user-gallery"></a>
### User Gallery

**Relevant Files:**

* `gallery.html` - the User Gallery page itself.
* `_data/user-gallery.yml` - Data for the Users Gallery list
* `_data/navigation.yml` - Data for the Left Nav
* `_includes/user-gallery.html` - Generates the list of users from `_data/user-gallery.yml`
* `_includes/left_nav.html` - Generates the left nav menu from `_data/user-gallery.yml`

<a id="left-nav-menu"></a>
#### Left Nav Menu

The User's Gallery generates the left nav from the `user_gallery_left` section of `_data/navigation.yml`. See [Editing the Nav Menus](#editing-the-nav-menus) and [Nav Menus - Left Nav Menus](#left-nav-menus) sections above more specifics about left nav menus.

<a id="user-galleryyml"></a>
#### user-gallery.yml

Contains the gallery section data. The gallery data should follow this format:

```yaml
gallery:
  - section:
    title: Cross-Domain
    adopters:
      - name: The [Netherlands] National Plan Open Science
        url: https://www.openscience.nl/files/openscience/2019-02/nationalplanopenscience_en.pdf#page=16
        description: "description here"
        image: /assets/img/logo_openscience.svg
        image_id: netherlands
      - name: University of Manchester, eScience Lab
        url: https://esciencelab.org.uk/activities/cwl/
        description: null
```

**Note:** empty descriptions can either be left out, or should be specified as `null`.

The subsections will look like this (the ... represents the previous code section):

```yaml
gallery:
  ...
  - section:
    subsection:
      - sub_title: US National Institutes of Health (NIH)
        description: null
      - name: RAPT
        url: https://ncbiinsights.ncbi.nlm.nih.gov/2020/11/24/read-assembly-and-annotation-pipeline-tool-rapt-is-available-for-use-and-testing/
      - name: NCI Cancer Genomics Cloud
        link_text: NCI Cancer Genomics Cloud
        url: https://www.cancergenomicscloud.org/
        description: “Within the 15 months since the launch of the CGC, over 1,900 researchers have registered on the platform, representing 150 institutions across 30 countries. In total, CGC users have deployed more than 5,000 tools or workflows and performed 80,000 executions, representing over 97 years of total computation. There is significant collaboration among users, with an average of seven members per project on the platform.”
```

**Urls:** the `link_text` field is optional. If unspecified, the link will be the same as the url - e.g. <https://ncbiinsights.ncbi.nlm.nih.gov/2020/11/24/read-assembly-and-annotation-pipeline-tool-rap> vs [NCI Cancer Genomics Cloud](https://www.cancergenomicscloud.org/). `m_link` can be specified in place of `url` and `link text`, if you'd prefer to enter in in a markdown format

**Multiline strings:** Some entries use the `>` operator for multiline strings. The `>` will treat all lines after it as a single string, until the next `- name:` field. Example:

```yaml
  ...
  other: >
    <ul>
    <li><a href='https://elixir-europe.org/communities/marine-metagenomics'>Marine Metagenomics Community</a><br></li>
    <li>2018 Implementation Study: <a href='https://elixir-europe.org/about-us/implementation-studies/cwl-2018'>Enabling the reuse, extension, scaling, and reproducibility of scientific workflows</a><br></li>
    <li>2018 Implementation Study: <a href='https://elixir-europe.org/about-us/implementation-studies/compatible-cloud-2018'>Compatible Cloud Analysis Platform</a><br></li>
    <li>ELIXIR Cloud <a href='https://github.com/elixir-cloud-aai/cwl-WES'>CWL-WES</a><br></li>
    </ul>
- name: Wellcome Trust Sanger Institute
  link_text: Human Genetics Informatics
  url: https://github.com/wtsi-hgi/arvados-pipelines/tree/master/cwl

```

Quotes: items with double quotes in them should be wrapped in single quotes, otherwise Jekyll will balk at you

```yml
- '<a href="https://www.sanger.ac.uk/science/groups/cellular-genetics-informatics">Cellular Genetics Informatics, Cellular Genetics</a>'
```

Items containing special characters (colons, brackets, etc) may need to be wrapped in double quotes.

<a id="foreign-languages"></a>
## Foreign Languages

Text in foreign language should be entered in HTML and include the `lang` and `hreflang` attributes. Subtitles should include the `srclang` code Here's a list of [common language subtags](https://en.wikipedia.org/wiki/IETF_language_tag#List_of_subtags) You can also search via [the Language Subtag Lookup](https://r12a.github.io/app-subtags/) or check whether a tag is valid (e.g. `en-us` is valid, while `en_us` is not). 

Example usage:

```html

<!-- Japanese includes hreflang attribute, since the
linked content is in Japanese -->
<a href="https://github.com/pitagora-galaxy/cwl/wiki/CWL-Start-Guide-JP" lang="ja" hreflang="ja">

<!-- Russian link doesn't have hreflang, since the linked 
website auto-translates the content, based on the user's
region -->
<a href="https://stepik.org/course/1612/syllabus" lang="ru">

<!-- Chinese subtitles example -->
<track src="{{ "/assets/video/subtitles/chinese_simplified.vtt" | relative_url }}" label="Chinese (Simplified)" kind="subtitles" srclang="zh-Hans">

<!-- These can be mixed in with Markdown code -->
* A series of <a href="https://stepik.org/lesson/35918/step/1?unit=15070"lang="ru" hreflang="ru"> is available 
in Russian as part of the <a href="https://stepik.org/course/1612/syllabus" lang="ru">Управление вычислениями</a
> (Computation Management) free online course.
```

Currently the site has some Japanese & Russian links. The corresponding codes are `ja` and `ru`.

<a id="tables"></a>
## Tables

For any markdown tables, prepend the following classes: `.table`, `.table-striped`, `.cols-2` or `.cols-3`:

2 Column Table Example: 

```markdown
{: .table .table-striped .cols-2 }
|Name|Details|
|--- |--- |
|[Bio-compute objects](https://osf.io/h59uh/)|"a step towards evaluation and validation of bio-medical scientific computations", CWL and researchobject.org participants are cooperating with this effort|
```
For 3 column table, change `.cols-2` to `.cols-3`. i.e. `{: .table .table-striped .cols-2 }`

<a id="developer-notes"></a>
## Developer Notes

<a id="dependencies"></a>
### Dependencies

* Bootstrap 5.1.3
  * Site styles are built on top of Bootstrap 5.1.3
  * Nav menu relies on `/assets/js/bootstrap.min.js`
* jQuery 3.5.1 
  * Mobile Nav relies on this in `/assets/js/navCloseFix.js`, due to a bug where it wasn't closing properly
  * Back to the Top button relies on this

<a id="bootstrap"></a>
### Bootstrap

The site uses [Bootstrap 5](https://getbootstrap.com/docs/5.0/getting-started/introduction/) (specifically v5.0.0-beta3) for the base styles, and the nav menus. 

Relevant folders & files:

* `_sass/bootstrap` contains the bootstrap SCSS code
* `assets/js/bootstrap.min.js` contains the JS code

The styles are loaded as the first import in `style.scss`. The JS code is loaded in `footer-scripts.html`

<a id="media-query-grid-breakpoints"></a>
#### Media Query Grid Breakpoints

Bootstrap grid breakpoints are originally found in ``_sass/bootstrap/_variables.scss`, and can be overriden in `_sass/partials/_variables.scss`

The following breakpoints and max-widths are used for responsive design:

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

$container-max-widths: (
  sm: 540px,
  md: 720px,
  lg: 960px,
  xl: 1140px,
  xxl: 1320px
) !default;
```

Breakpoints can be used in SCSS files as follows:

```scss
// becomes @media (min-width: 425px)
@include media-breakpoint-up(xxs) {
  .timeline {
    margin: 0 0 1rem;
  }
}
```

Media Queries for a specific element or component are usually grouped together:

```scss
// Adjusting for the .post-content padding
.timeline {
  left: -2px;
  margin: 0 0 1.5rem;
  position: relative;
  width: calc(100% + 4px);
}

// min-width: 425px
@include media-breakpoint-up(xxs) {
  .timeline {
    margin: 0 0 1rem;
  }
}

// min-width: 576px
@include media-breakpoint-up(sm) {
  .timeline {
    position: static;
    width: initial;
    left: initial;
  }
}

// min-width: 768px
@include media-breakpoint-up(md) {
  .timeline {
    margin: 0 0 1.5rem;
  }
}

// min-width: 992px
@include media-breakpoint-up(lg) {
  .timeline {
    margin: 1.5rem;
  }
}
```

<a id="code-of-conduct-regeneration"></a>
### Code of Conduct Regeneration

`code-of-conduct.md` is automatically synced with <https://github.com/common-workflow-language/common-workflow-language/blob/main/CODE_OF_CONDUCT.md> via `_plugins/coc-generator.rb`. To pull the new content, after the remote file's been updated, run `bundle exec jekyll serve` locally, and push the changes.


<a id="hypothesis-annotation-config"></a>
### Hypothes.is Annotation Config

The following config options are available for hypothes.is (see [https://h.readthedocs.io/projects/client/en/latest/publishers/config/](https://h.readthedocs.io/projects/client/en/latest/publishers/config/) for more detail):

```
openSidebar
showHighlights
theme
enableExperimentalNewNoteButton
usernameUrl
services
apiUrl
authority
grantToken
allowLeavingGroups
enableShareLinks
groups
icon
onLoginRequest
onLogoutRequest
onSignupRequest
onProfileRequest
onHelpRequest
branding
accentColor
appBackgroundColor
ctaBackgroundColor
ctaTextColor
selectionFontFamily
annotationFontFamily
onLayoutChange
expanded
height
width
externalContainerSelector
focus
requestConfigFromFrame
assetRoot
sidebarAppUrl
```

<a id="plugins"></a>
### Plugins

* `_plugins/coc-generator.rb` - regenerates the Code of Conduct page, after it's been updated on the main [CWL Repo - Code of Conduct](https://github.com/common-workflow-language/common-workflow-language/blob/main/CODE_OF_CONDUCT.md)
* `_plugins/jekyll-autolink_email.rb` - renders email addresses as clickable links, e.g. `email@domain.com` becomes `<a href="mailto:name@domain.com">name@domain.com</a>`

<a id="video-player"></a>
### Video Player

The video player is [Plyr](https://plyr.io/), and the GitHub repo for it is [sampotts/plyr](https://github.com/sampotts/plyr). It works by extending the normal HTML5 `<video>` or `<audio>` tags (see [Initializing the Video Player](initializing-the-video-player) section).

Relevant Folders & Files:

* `assets/plyr/` - contains the core JS and CSS files for the video player
  * `assets/plyr/plyr.css` - core CSS styles
  * `assets/plyr/plyr.min.js` - minified core JS code
* `_sass/partials/home/_video.scss` - custom styles for the video player

<a id="initializing-the-video-player"></a>
#### Initializing the Video Player

Plyr works by extending the normal HTML5 `<video>` or `<audio>` tags, which looks something like this:

```html
<div class="youtube-container" width="560" height="315">
  <div class="youtube-container" width="560" height="315">
    <video id="player" class="cwl-intro-video" controls poster="{{ "/assets/img/intro_video_poster.png" | relative_url }}">
      <source src="{{ "/assets/video/cwl-intro-video.mp4" | relative_url }}" type="video/mp4">

      <track src="{{ "/assets/video/subtitles/chinese_simplified.vtt" | relative_url }}" label="Chinese (Simplified)" kind="subtitles" srclang="zh-Hans">
      <!-- Additional subtitles here -->

      <!-- Fallback for older browsers -->
      Your browser does not support the video tag.
    </video>
  </div>
</div>
```

In order to display the Plyr video player, add the following below the normal HTML 5 code:

```html
<script src="{{ "assets/plyr/plyr.min.js" | relative_url }}"></script>
<script>
  const player = new Plyr('#player', {
    controls: [
      'play-large',
      'play',
      'mute',
      'volume',
      'progress',
      'current-time',
      'duration',
      // 'restart',
      'fullscreen',
      'captions',
      'settings'
    ],
    title: 'Common Workflow Language explained in 64 seconds',
    options: ['captions', 'quality', 'speed', 'loop'],
  });
</script>
```

Note: the element in `const player = new Plyr('#player)` must match the id of the `<video>` tag on the page (in this case `<video id="player" class="...">`)

<a id="customizing-the-video-player"></a>
#### Customizing the Video Player

**Javascript:**

The video player can be passed a variety of options during initialization. These affect the player controls, video title, options for captions, speed, quality, etc. For a full list, see <https://github.com/sampotts/plyr#options>

**CSS Styles:**

The default CSS styles for the video player are customized via `_sass/partials/home/_video.scss`
