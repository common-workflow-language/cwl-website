# CWL Website 2.0

The in-progress redesign of the CWL Website

The preview build of the site is currently found at [https://deploy-preview-75--cwl-website.netlify.app/](https://deploy-preview-75--cwl-website.netlify.app/)

## To-Do

* Add Home logo on left side of nav
* Homepage: consider adding a max-height query for the header graphic
* Check `a { word-break: keep-all }` in Firefox and Safari, to confirm it's behaving properly
* Tables
  - Add outer border?
    - Alternately, remove this from `_structure.scss`? `.table > :not(:last-child) > :last-child > * {border-bottom: 2px solid $table-border-light; }`
    - That adds a line under the table heading
  - Implementations - increase width of left-column?
* Are GitHub & Twitter nav icons too big on mobile??

### Cleanup

* Remove unnecessary img files from assets/img/ once final icons are decided on


## Reference

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

