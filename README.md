# Common Workflow Language Website 2.0

A Rewrite and expansion of the [CWL Website](https://commonwl.org), using Jekyll

## Staging Issues

* Top Nav needs to re-integrate logic checks for http and https

## Future Tasks & Ideas

* [ ] Custom Video Player & Twitter Feeds
* [ ] Make Search field functional
* [ ] Split website into multiple pages
* [ ] Create video player for embedded vids
  * [ ] Subtitles
  * [ ] Full screen button
* [ ] Explanatory button(?)
* [ ] Donations sub-page
* [x] Setup staging site
	* [ ] Setup non-GitHub Pages staging site
* [ ] GDPR - Waiting for content from Sarah for this

### Twitter

* Twitter's official embed offers [Opt-out of tailoring Twitter](https://developer.twitter.com/en/docs/twitter-for-websites/privacy). Is this sufficient, privacy-wise?
  * Check what data it actually collects

### Content Needed

* Explanatory Button(?)
* Page Divisions
* Donations Page?
* GDPR if relevant

#### GDPR Resources

* https://www.solodev.com/blog/web-design/gdpr-and-informed-consent-cookies-bar.stml
* https://www.webtoffee.com/sample-css-code-snippets-for-customizing-pre-defined-templates/
* https://cookie-script.com/

## Staging Site

* Currently setup at [lunacodes.github.io/cwl-staging](https://lunacodes.github.io/cwl-staging/). Need to migrate off of GitHub Pages.

## Deployment

* Setup Google Analytics
* Double-check Aria Roles and other accessibility
* Minor: Revert Table of Contents nav links to old style
  * Old style: `#Repositories_of_CWL_Tools_and_Workflows`
  * New style: `#repos`
  * The Header Nav properly uses the new style

### SEO Tags

See [Jekyll SEO Tag - Usage](https://github.com/jekyll/jekyll-seo-tag/blob/master/docs/usage.md) for more info.

We could add any of the following SEO tags to `_config.yml`:

* tagline
* google_site_verification
* webmaster_verification (only necessary if we verify on more than google)

```yaml
# Example for webmaster verification

webmaster_verifications:
  google: 1234
  bing: 1234
  alexa: 1234
  yandex: 1234
  baidu: 1234
```

locale: en_US

## Notes

* Any URLs to the User Guide site have been left with the full `https://commonwl.org/` stem instead of `{{ site.url }}`, since the User Guide isn't mirrored on the staging server (and thus the links would break)

