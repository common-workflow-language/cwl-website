# CWL Website 2.0

The in-progress redesign of the CWL Website

The preview build of the site is currently found at [https://deploy-preview-75--cwl-website.netlify.app/](https://deploy-preview-75--cwl-website.netlify.app/)

## To-Do

* Homepage: consider adding a max-height query for the header graphic
* Check `a { word-break: keep-all }` in Firefox and Safari, to confirm it's behaving properly
* Tables
  - Add outer border?
    - Alternately, remove this from `_structure.scss`? `.table > :not(:last-child) > :last-child > * {border-bottom: 2px solid $table-border-light; }`
    - That adds a line under the table heading
  - Implementations - increase width of left-column?
  - Why is table margin repeated in both _structure.scss and _type.scss??
  - Create Two-Col & Three-Col Fixed Width Tables
* Add mobile nav close on click/touch outside
* Add GH & Twitter icons to nav ul??
* Accesibility: Skip links
* Improve Open Stand logo markdown Community section
* Add in class for red bullet points


### Cleanup & Deployment

* Remove unnecessary img files from assets/img/ once final icons are decided on
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
