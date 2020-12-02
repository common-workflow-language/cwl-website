class: CommandLineTool
cwlVersion: v1.2
inputs:
  site:
    type: Directory
    loadListing: shallow_listing
  gemdir: Directory
requirements:
  InlineJavascriptRequirement:
    expressionLib:
      - |
        function find_file(items, name) {
          for (var i = 0; i < items.length; i++) {
            if (items[i].basename == name) { return items[i]; }
          }
          return null;
        }

  InitialWorkDirRequirement:
    listing:
      - entryname: ".gem"
        entry: $(inputs.gemdir)

      - entryname: vendor
        entry: $(find_file(inputs.site.listing, "vendor"))

      - entryname: Gemfile
        entry: $(find_file(inputs.site.listing, "Gemfile"))

      - entryname: Gemfile.lock
        entry: $(find_file(inputs.site.listing, "Gemfile.lock"))

      - entryname: .bundle/config
        entry: |
          ---
          BUNDLE_PATH: "vendor/bundle"
  EnvVarRequirement:
    envDef:
      LANG: en_US.UTF-8
outputs:
  generated:
    type: File
    outputBinding:
      glob: "_site"
      loadListing: shallow_listing
      outputEval: |-
        ${
        var primary;
        for (var i = 0; i < self[0].listing.length; i++) {
          if (self[0].listing[i].basename == "index.html") {
             primary = self[0].listing[i];
             primary.secondaryFiles = self[0].listing;
             primary.secondaryFiles.splice(i, 1);
             return primary;
          }
        }
        }
arguments: [bundle, exec, jekyll, build, --trace, --source, $(inputs.site), --destination, "_site"]
