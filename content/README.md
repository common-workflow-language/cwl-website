# CWL Website 2.0

The in-progress redesign of the CWL Website

The preview build of the site is currently found at [https://deploy-preview-75--cwl-website.netlify.app/](https://deploy-preview-75--cwl-website.netlify.app/)

## To-Do

* Check Accessibility
* Make all bullet points red by default?
  * CWL Adoption Red Bullets.
* Mobile nav should close when you tap outside of it
* Add "Back to Top" button on mobile, for long pages
* Sort & condense table white-space styles
* Remove hover icon from from Features headers on homepage

### WebAIM Accessibility Test

* Improve icon alt text

#### Ecosystem

Suspicious Link Text

```md
|[argparse2tool](https://github.com/erasche/argparse2tool#cwl-specific-functionality) |Generate CWL CommandLineTool wrappers (and/or Galaxy tool descriptions) from Python programs that use argparse.  Also supports the [click](http://click.pocoo.org/5/) argument parser.|
```
#### Projects

Ambiguous link text:

```md
[Here](/FAIR) is a qualitative analysis of CWL and the FAIR principles.
```

WebAIM: "Links, which are often read out of context, should clearly describe the destination or function of the link. Ambiguous text, text that does not make sense out of context, and extraneous text (such as "click here") can cause confusion and should be avoided."

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

### Cleanup & Deployment

* Ensure hypothes.is is off for live site

## Reference

### Bootstrap Grid Points

Bootstrap Grid Breakpoints are as follows:

```scss
$grid-breakpoints: (
  xs: 0,
  xxs: 425px,
  sm: 576px,
  md: 768px,
  lg: 992px,
  xl: 1200px,
  xxl: 1400px
) !default;
// scss-docs-end grid-breakpoints
```

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
