#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow

inputs:
  render:
    type:
      type: array
      items:
        type: record
        fields:
          source: File
          renderlist: string[]?
          redirect: string[]?
          target: string
          brandlink: string
          brandimg: string
          primtype: string?
          extra: File
  schemas:
    type:
      type: array
      items:
        type: record
        fields:
          schema_in: File
          context_target: string
          rdfs_target: string
          graph_target: string
  empty:
    type: string
    default: ""
  jekyll-site: Directory
  user_guide: Directory
  user_guide_targetdir:
    type: string
    default: "user_guide"
  novice-tutorial: Directory
  novice-tutorial-targetdir:
    type: string
    default: "novice-tutorial"
  rnaseq-training: Directory
  rnaseq-training-targetdir:
    type: string
    default: "rnaseq-training"

outputs:
  doc_out:
    type: File
    outputSource: merge/dir
  report:
    type: File
    outputSource: generate_report/report

requirements:
  ScatterFeatureRequirement: {}
  StepInputExpressionRequirement: {}
  SubworkflowFeatureRequirement: {}
  MultipleInputFeatureRequirement: {}
  InlineJavascriptRequirement: {}

hints:
  DockerRequirement:
    dockerPull: commonworkflowlanguage/cwltool_module

steps:
  make_rdfs:
    scatter: [ schema, target_path ]
    scatterMethod: dotproduct
    in:
      schema:
        source: schemas
        valueFrom: $(self.schema_in)
      target_path:
        source: schemas
        valueFrom: $(self.rdfs_target)
    out: [rdfs, targetdir]
    run: makerdfs.cwl

  make_context:
    scatter: [ schema, target_path ]
    scatterMethod: dotproduct
    in:
      schema:
        source: schemas
        valueFrom: $(self.schema_in)
      target_path:
        source: schemas
        valueFrom: $(self.context_target)
    out: [jsonld_context, targetdir]
    run: makecontext.cwl

  graph_inheritance:
    scatter: [ schema, target_path ]
    scatterMethod: dotproduct
    in:
      schema: { source: schemas, valueFrom: $(self.schema_in) }
      target_path: { source: schemas, valueFrom: $(self.graph_target) }
    out: [svg, targetdir]
    run: inheritance.cwl

  docs:
    scatter:
      - source
      - target
      - renderlist
      - redirect
      - brandlink
      - brand
      - primtype
      - extra
    scatterMethod: dotproduct
    in:
      source:     { source: render, valueFrom: $(self.source) }
      target:     { source: render, valueFrom: $(self.target) }
      renderlist: { source: render, valueFrom: $(self.renderlist) }
      redirect:   { source: render, valueFrom: $(self.redirect) }
      brandlink:  { source: render, valueFrom: $(self.brandlink) }
      brand:      { source: render, valueFrom: $(self.brandimg) }
      primtype:   { source: render, valueFrom: $(self.primtype) }
      extra:      { source: render, valueFrom: $(self.extra) }
      brandstyle:
        default: |
          <link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css integrity=sha384-604wwakM23pEysLJAhja8Lm42IIwYrJ0dEAqzFsj9pJ/P5buiujjywArgPCi8eoz crossorigin="anonymous" />
          <link rel="stylesheet" href=/assets/styles-fix.css />
          <link rel="shortcut icon"
          href="https://www.commonwl.org/user_guide/assets/favicons/cwl/favicon-96x96.png" />
          <link rel="cite-as" href="https://doi.org/10.6084/m9.figshare.3115156.v2" />
    out: [html, targetdir, extra_out]
    run:  makedoc.cwl

  jekyll:
    in: {site: jekyll-site}
    out: [generated]
    run: cwl-jekyll.cwl

  jekyll_user_guide:
    in: {site: user_guide}
    out: [generated]
    run: cwl-jekyll.cwl

  jekyll-rnaseq-training:
    in: {site: rnaseq-training}
    out: [generated]
    run: cwl-jekyll.cwl

#  jekyll-novice-tutorial:
#    in: {site: novice-tutorial}
#    out: [generated]
#    run: cwl-jekyll.cwl

  merge:
    in:
      primary: jekyll/generated
      secondary:
        source:
          - docs/html
          - make_rdfs/rdfs
          - make_context/jsonld_context
          - docs/extra_out
          - graph_inheritance/svg
          - jekyll_user_guide/generated
          - jekyll-rnaseq-training/generated
#          - jekyll-novice-tutorial/generated
        linkMerge: merge_flattened
      dirs:
        source:
          - docs/targetdir
          - make_rdfs/targetdir
          - make_context/targetdir
          - docs/targetdir
          - graph_inheritance/targetdir
          - user_guide_targetdir
          - rnaseq-training-targetdir
#          - novice-tutorial-targetdir
        linkMerge: merge_flattened
    out: [dir]
    run: mergesecondary.cwl

  generate_report:
    in:
      inp: merge/dir
    out: [report]
    run: linkchecker.cwl
