# CWL Website 2.0

The in-progress redesign of the CWL Website

## To-Do

* Navbar needs box shadow or bottom border - esp on mobile
* Should Navbar use Home link, Only Site logo, or both?
  * Add Home logo on left side of nav
* Remove unnecessary img files from assets/img/ once final icons are decided on
* Check `a { word-break: keep-all }` in Firefox and Safari, to confirm it's behaving properly
* Since I'm doing `.page-short .site-footer`, does it even make sense to have the rest of the sticky footer fix??
  * I can probably just change the classes to `.page-short .class-name`, and have the rest of it behave normally
    * Need to ensure that doesn't lead to alignment inconsistencies
  * The `.page-short` class is a useful toggle. Easy to disable, if the page gets sufficient additional content, or enable for new pages.
