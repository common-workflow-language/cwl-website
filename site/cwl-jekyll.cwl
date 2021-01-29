class: CommandLineTool
cwlVersion: v1.2
inputs:
  site: Directory

hints:
  InplaceUpdateRequirement:
    inplaceUpdate: true
  DockerRequirement:
    dockerFile: |
      FROM debian:buster
      RUN apt-get update && apt-get install -yq bundler nodejs locales && gem install bundler
      RUN echo en_US.UTF-8 UTF-8 > /etc/locale.gen && locale-gen
      ENV LANG en_US.UTF-8
      ENV LANGUAGE en_US:en
      ENV LC_ALL en_US.UTF-8

    dockerImageId: cwl-jekyll-image

requirements:

  InitialWorkDirRequirement:
    listing:
      - entryname: site
        entry: $(inputs.site)
        writable: true

  EnvVarRequirement:
    envDef:
      BUNDLE_PATH: "$(runtime.outdir)/site/vendor/bundle"

  ShellCommandRequirement: {}

arguments: [cd, site,
            {shellQuote: false, valueFrom: "&&"},
            bundle, install,
            {shellQuote: false, valueFrom: "&&"},
            bundle, exec, jekyll, build, --disable-disk-cache, --trace, --destination, "../generated"]

outputs:
  generated:
    type: File
    outputBinding:
      glob: "generated"
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
