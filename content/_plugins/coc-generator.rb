require 'open-uri'
require 'net/http'
require 'fileutils'

def scrape_page()
  url = "https://raw.githubusercontent.com/common-workflow-language/common-workflow-language/main/CODE_OF_CONDUCT.md"

  html = open(url)
  contents = html.read

  return contents
end

def generate_front_matter()
  front_matter = (<<~FRONT_MATTER)
  ---
  layout: page
  permalink: /codeofconduct/
  title: Code of Conduct
  class: page-short
  ---

  FRONT_MATTER

  return front_matter
end

def generate_coc_page(front_matter, contents)
  page_text = [front_matter, contents]

  File.open("code-of-conduct.md", "w", universal_newline: true) do |f|
    f.puts(page_text)
  end
end

coc_content = scrape_page()
front_matter = generate_front_matter()
generate_coc_page(front_matter, coc_content)

