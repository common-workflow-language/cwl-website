# CWL Website 2.0

The in-progress redesign of the CWL Website

The preview build of the site is currently found at [https://deploy-preview-75--cwl-website.netlify.app/](https://deploy-preview-75--cwl-website.netlify.app/)

## To-Do

* Check `a { word-break: keep-all }` in Firefox and Safari, to confirm it's behaving properly
* Check Accessibility
* Add mobile nav close on click/touch outside
  * This should already be working?!
* ~~Add GH & Twitter icons to nav ul??~~
* Create class for red bullet points
  - Or make all bullet points on site red by default??
* Add "Back to Top" button on mobile, for long pages

### Cleanup & Deployment

* Ensure hypothes.is is off for live site

### Colors

About pg is the only one that doesn't have h3 as red. Can I just make it consistent??

```scss
h3 {
  color: $cwl-red;
}
```

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
