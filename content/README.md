# CWL Website 2.0

The in-progress redesign of the CWL Website

The preview build of the site is currently found at [https://deploy-preview-75--cwl-website.netlify.app/](https://deploy-preview-75--cwl-website.netlify.app/)

## To-Do

### Mobile

* Mobile nav should close when you tap outside of it
* Ensure "Back to Top" button shows up for long pages
* Users Gallery Submenus should be drop downs

### Broken Links

Users Gallery - Jekyll is inserting a blank link between US National Institutes of Health (NIH) & 
RAPT. The code renders like this:

```html
<div class="adopter-entry">
  <div class="adopter-row-top">
    <a href="" class="adopter-link"></a>
  </div>
</div>
```

### WebAIM Accessibility

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

### Cleanup & Deployment

* Ensure hypothes.is is off for live site

## Reference

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
