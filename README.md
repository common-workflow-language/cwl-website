# Common Workflow Language Website 2.0

Rewrite and expansion of the CWL Website in Jekyll

## Tasks & Ideas

* Split website into multiple pages
* Create video player for embedded vids
  * Subtitles
  * Full screen button
* Explanatory button(?)
* Nicer PayPal Button
* Donations sub-page
* Footer
* Latest Tweets
* Accessibility & Performance Checks
* Setup proper staging site
* Add top nav

## Improvements (Code)

* Organize homepage sections as jekyll collection, instead of includes
* Reorganize SCSS code and filenames 
* Convert content from HTML to Markdown, where practical
  * Homepage sections
* Reorganize assets files, to ensure no broken links on deployment
		* Otherwise setup 301 Redirects
* Generate proper favicon files
* Fill in SEO info
* Improve Footer
* Improve 404 Page(?)
* Rename implementation.html to implementations.html
* Remove incorrect links like `<p><a name="Leadership_Team"></a></p>`

## Notes

* Homepage sections retain the `.html` extension instead of `.md`, so the `§` symbol behaves properly