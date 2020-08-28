# Common Workflow Language Website 2.0

Rewrite and expansion of the CWL Website in Jekyll

## Tasks & Ideas

Note: the majority of the checked-off items are stil scratch versions and are not the completed product.

* [x] Split website into multiple pages
* [x] Create video player for embedded vids
  * [x] Subtitles
  * [ ] Full screen button
* [ ] Explanatory button(?)
* [x] ~~Nicer PayPal Button~~
* [ ] Donations sub-page
* [x] ~~Footer~~
* [x] ~~Latest Tweets~~
* [ ] Accessibility & Performance Checks
* [ ] Setup proper staging site
* [x] Add top nav
	* Search Field is currently non-functional

### Video Player

* Need to check in about the details around this again

### Twitter

* Their official embed offers [Opt-out of tailoring Twitter](https://developer.twitter.com/en/docs/twitter-for-websites/privacy). Is this sufficient, privacy-wise?
	* Check what data it actually collects

### Staging Site

* Currently setup at [lunacodes.github.io/cwl-staging](https://lunacodes.github.io/cwl-staging/). Need to setup more proper staging server.
	* GitHub pages makes it a huge pain to run things

### Other

Note: *Implementations* should be plural

### Section/Page Divisions

1. Getting Started, Community Support, Specification
2. Implementations, Repos & Software
3. Projects, Contributers & Governance

Alternate Option:

1. Getting Started, Community Support, Specification
2. Implementations, Repos & Software, Projects
3. Contributers & Governance

### Top Nav

* top-nav.yml file not in use. top_nav.html file is in use

Alternate structures:

```yaml
header_extra:
  - title: Projects
    url: "#"
    type: dropdown
    subfolderitems:
      - page: About
        url: "/#about"
      - page: Overview
        url: "/#overview"
      - page: Guidelines
        url: "/#guidelines"
      - page: Project Websites
        type: "seperator"
        url: "sep"
      - page: Harvard PGP
        url: "https://pgp.med.harvard.edu/"
      - page: PGP Canada
        url: "https://personalgenomes.ca/"
      - page: PGP UK
        url: "https://www.personalgenomes.org.uk/"
      - page: Genom Austria
        url: "http://genomaustria.at/das-projekt/"
  - title: News
    url: "/news"
  - title: Blog
    url: "/blog"
  - title: Contact
    url: "/contact/"
```

```yaml
- title: Getting Started
  url: "/getting-started"
  type: dropdown
  sublinks:
    - title: Getting Started
      url: "/getting-started"
    - title: Support, Community and Contributing
      url: "/getting-started#support"
    - title: Specification
      url: "/getting-started#specification"
- title: Implementations
  url: "/Implementations"
  type: dropdown
  sublinks:
    - title: Implementations
      url: "/implementations"
    - title: Repositories
      url: "/implementations#repos"
    - title: Software
      url: "/implementations#software"
- title: Community Projects
  url: "/projects/"
  sublinks:
    - title: Projects
      url: "/projects"
    - title: Contributers & Governance
      url: "contributers-and-governance"
```

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
* Search field is non-functional

## Deployment

* Reactivate `jekyll-seo-tag`

## Notes

* The include files for the homepage sections retain the `.html` extension instead of `.md`, so that the url associated with the `§` is generated properly
* Any URLs to the User Guide site have been left with the full `https://commonwl.org/` stem instead of `{{ site.url }}`, since the User Guide isn't mirrored on the staging server (and thus the links would break)
