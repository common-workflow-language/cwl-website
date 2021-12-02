# Editing the CWL Website

Instructions for editing specific pages and site components.

<!-- MarkdownTOC -->

* [Nav Menus](#nav-menus)
  * [Left Nav @mixin](#left-nav-mixin)
  * [Editing the Nav Menus](#editing-the-nav-menus)
* [Homepage](#homepage)
  * [Features Boxes](#features-boxes)
* [About page](#about-page)
* [Getting Started](#getting-started)
* [Users Gallery \(formerly CWL Adopters\)](#users-gallery-formerly-cwl-adopters)
  * [Left Nav Menu](#left-nav-menu)
  * [users-gallery.yml](#users-galleryyml)
* [Tables](#tables)
* [Developer Notes](#developer-notes)
  * [Bootstrap](#bootstrap)
    * [Media Query Breakpoints](#media-query-breakpoints)
  * [Hypothesi.is Annotation Config](#hypothesiis-annotation-config)
  * [jQuery](#jquery)
  * [Video Player](#video-player)
    * [Initializing the Video Player](#initializing-the-video-player)
    * [Customizing the Video Player](#customizing-the-video-player)

<!-- /MarkdownTOC -->

<a id="nav-menus"></a>
## Nav Menus

There are two nav templates currently available: 

* `_includes/top_nav.html` - the main site nav. Relies on data in `_data/navigation.yml`
* `_includes/left_nav.html` - left nav on an individual page. Relies on data in a page-specific file (e.g. `gallery.html` uses `_data/users-gallery.yml`)

Styles are found in `_sass/partials/_nav.scss` and `_sass/partials/_left-nav.scss`. 

<a id="left-nav-mixin"></a>
### Left Nav @mixin

The Left Nav styles can be included on any page via a Sass `@mixin`, which should be wrapped within the page-specific class. The responsive styles should be included within their respective breakpoints.

Example:

```scss
// Default styles for mobile and up
.page-gallery {
  // ... code here

  @include left-nav;
}

// min-width: 992px
@include media-breakpoint-up(lg) {
  // ... code here
  
  @include left-nav-lg;
}

// min-width: 1400px
@include media-breakpoint-up(xxl) {
  // ... code here
  
  @include left-nav-xxl;
}

```

<a id="editing-the-nav-menus"></a>
### Editing the Nav Menus

**Top Nav:**

Simply edit the data in `_data/navigation.yml`

**Left Nav:**

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

<a id="homepage"></a>
## Homepage

**Relevant Files:**

* `index.md` - main file that imports the other files
* `_includes/home/intro.html` - contains the intro paragraph and imports the video player
* `_includes/home/features.html` - template for the "Features" boxes section. Relies on `_data/home.yml`
* `_includes/home/community.html` - the bottom community section. Imports `_includes/social_stats.html` for the gitter bar.
* `_includes/home/video-player.html` - template code for the video player ([Plyr](https://plyr.io/)). See [Video Player](#video-player) section for more info. 
* `_includes/social_stats.html` - code for the gitter bar. Imports `_includes/paypal-button.html`


<a id="features-boxes"></a>
### Features Boxes

These can be edited via in `_data/home.yml`. The general structure looks like this:

```yaml
features:
  - title: INTEROPERABILITY AND PORTABILITY
    icon: noun_Interoperability_181229.svg
    icon-alt: Interoperability icon - a triangle composed of arrows, with a triangle, square, and circle as the 3 points
    text: Portable and interoperable across a [variety of software and deployment environments](/implementations/)
```

Image files must be located in `assets/img/` (e.g. `assets/img/noun_Interoperability_181229.svg`).

<a id="about-page"></a>
## About page

**Relevant files:**

* `about.md` - main code for the page. Imports `_includes/timeline.html`
* `_includes/timeline.html` - template file for the timeline. relies on `_data/timeline.yml` and `_sass/partials/timeline.scss`
* `_data/timeline.yml` - contains the events listed in the timeline
* `_sass/partials/timeline.scss` - contains the styles for the timeline.

To edit the events displayed, use `_data/timeline.yml`. The general structure is:

```yaml
timeline_events:
  - year: 2014
    event: "Initial Draft created <span class='no-bold'>at Bioinformatics Open Source Conference CodeFest</span>"
  - year: 2015
    event: "CWL “draft-2” version<br>
      Commercial vendor (SBG) releases product <span class='no-bold'>in December</span>"
```

<a id="getting-started"></a>
## Getting Started

Relevant files:

* `getting-started.html` - main code for page. imports `_includes/social_stats`
* `_includes/social_stats.html` - the gitter bar (also imported on Homepage)

<a id="users-gallery-formerly-cwl-adopters"></a>
## Users Gallery (formerly CWL Adopters)

**Relevant Files:**

* `gallery.html` - the page itself. Relies on all the following files:
* `_includes/users-gallery.html` - Generates the list of Users/Adopters. Relies on `_data/users-gallery.yml`
* `_data/users-gallery.yml` - Contains the data for the Left Nav, and the Users Gallery list
* `_includes/left_nav.html` - The code for the left nav menu. Relies on `_data/users-gallery.yml`

<a id="left-nav-menu"></a>
### Left Nav Menu

See [Nav Menus](#nav-menus) section above.

<a id="users-galleryyml"></a>
### users-gallery.yml

Contains the data for the left nav data, and the gallery section. The gallery data should follow this format:

```yaml
gallery:
  - section:
    title: Cross-Domain
    adopters:
      - name: The [Netherlands] National Plan Open Science
        url: https://www.openscience.nl/files/openscience/2019-02/nationalplanopenscience_en.pdf#page=16
        description: "description here"
        image: /assets/img/logo_openscience.svg
      - name: University of Manchester, eScience Lab
        url: https://esciencelab.org.uk/activities/cwl/
        description: null
```

Note: empty descriptions can either be left out, or should be specified as `null`.

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

Urls: the `link_text` field is optional. If unspecified, the link will be the same as the url - e.g. <https://ncbiinsights.ncbi.nlm.nih.gov/2020/11/24/read-assembly-and-annotation-pipeline-tool-rap> vs [NCI Cancer Genomics Cloud](https://www.cancergenomicscloud.org/). `m_link` can be specified in place of `url` and `link text`, if you'd prefer to enter in in a markdown format

Some entries will use the `>` operator for multiline strings. The `>` will treat all lines after it as a single string, until the next `- name:` field. Example:

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

<a id="bootstrap"></a>
### Bootstrap

The site uses [Bootstrap 5](https://getbootstrap.com/docs/5.0/getting-started/introduction/) (specifically v5.0.0-beta3) for the base styles, and the nav menus. 

Relevant folders & files:

* `_sass/bootstrap` contains the bootstrap SCSS code
* `assets/js/bootstrap.min.js` contains the JS code

The styles are loaded as the first import in `style.scss`. The JS code is loaded in `footer-scripts.html`

<a id="media-query-breakpoints"></a>
#### Media Query Breakpoints

To add or modify the Grid Breakpoints, edit `$grid-breakpoints` and `$container-max-widths` in `_sass/bootstrap/_variables.scss`

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

Generally styles for a single element or component are grouped together, rather than having an entire separate media queries section. e.g.:

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

<a id="hypothesiis-annotation-config"></a>
### Hypothesi.is Annotation Config

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

<a id="jquery"></a>
### jQuery

Both `assets/js/backToTop.js` and `assets/js/navCloseFix.js` rely on jQuery 3.5.1, which is loaded via `_includes/footer-scripts.html`

Plyr loads its own packaged version of jQuery.

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
