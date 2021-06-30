# CWL Website 2.0

The in-progress redesign of the CWL Website

## To-Do

* Add Home logo on left side of nav
* Homepage: consider adding a max-height query for the header graphic
* Remove unnecessary img files from assets/img/ once final icons are decided on
* Check `a { word-break: keep-all }` in Firefox and Safari, to confirm it's behaving properly
* Tables
  - Add outer border?
  - Implementations - increase width of left-column?
* Ecosystem - increase vert. padding btwn headers & tables
  - Esp h2 & h3
* Reduce Mobile Menu left padding on very small screens

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

