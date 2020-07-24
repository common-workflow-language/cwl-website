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
  brandimg: File
  empty:
    type: string
    default: ""

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
          <link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css integrity=sha384-604wwakM23pEysLJAhja8Lm42IIwYrJ0dEAqzFsj9pJ/P5buiujjywArgPCi8eoz crossorigin="anonymous">
          <link rel="shortcut icon"
          href="https://www.commonwl.org/user_guide/assets/favicons/cwl/favicon-96x96.png">
    out: [html, targetdir, extra_out]
    run:  makedoc.cwl

  merge:
    in:
      primary:
        source: docs/html
        valueFrom: $(self[0])
      secondary:
        source:
          - docs/html
          - make_rdfs/rdfs
          - make_context/jsonld_context
          - brandimg
          - docs/extra_out
          - graph_inheritance/svg
        linkMerge: merge_flattened
        valueFrom: $(self.slice(1))
      dirs:
        source:
          - docs/targetdir
          - make_rdfs/targetdir
          - make_context/targetdir
          - empty
          - docs/targetdir
          - graph_inheritance/targetdir
        linkMerge: merge_flattened
        valueFrom: $(self.slice(1))
    out: [dir]
    run: mergesecondary.cwl

  generate_report:
    in:
      inp: merge/dir
    out: [report]
    run: linkchecker.cwl
