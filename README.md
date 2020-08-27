# Common Workflow Language Website 2.0

Rewrite and expansion of the CWL Website in Jekyll

## Tasks & Ideas

* Split website into multiple pages
* Create video player for embedded vids
  * Subtitles
  * Full screen button
* Explanatory button(?)
* ~~Nicer PayPal Button~~
* Donations sub-page
* Footer
* Latest Tweets
* Accessibility & Performance Checks
* Setup proper staging site
* Add top nav

### Video Player

* Should this link back to the actual YT Channel? If so, how?
* Wait - they currently have a YT Vid player up already?? I thought they didn't want that?!

### PayPal Button

* Edit with GIMP to make it 92px wide

## Improvements (Code)

* Organize homepage sections as jekyll collection, instead of includes
* Reorganize SCSS code and filenames 
	* Either integrate into Minima's structure, or get rid of Minima entirely
* Reorganize assets files, to ensure no broken links on deployment
	* Otherwise setup 301 Redirects
* Generate proper favicon files
* Fill in SEO info
* Improve Footer
* Improve 404 Page. Make sure Footer stays on bottom
* Rename implementation.html to implementations.html
* Remove incorrect links like `<p><a name="Leadership_Team"></a></p>`
* Fix content width btwn 576-768px

## Deployment

* Reactivate `jekyll-seo-tag`

## Notes

* The include files for the homepage sections retain the `.html` extension instead of `.md`, so that the url associated with the `§` is generated properly
* Any URLs to the User Guide site have been left with the full `https://commonwl.org/` stem instead of `{{ site.url }}`, since the User Guide isn't mirrored on the staging server (and thus the links would break)
