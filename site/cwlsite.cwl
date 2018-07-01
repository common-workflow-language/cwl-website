#!/usr/bin/env cwl-runner
cwlVersion: cwl:v1.0

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
  brandimg: File
  empty:
    type: string?
    default: ""

outputs:
  doc_out:
    type: File
    outputSource: merge/dir
  report:
    type: File
    outputSource: generate_report/out

requirements:
  - class: ScatterFeatureRequirement
  - class: StepInputExpressionRequirement
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
  - class: InlineJavascriptRequirement

hints:
  - class: DockerRequirement
    dockerPull: commonworkflowlanguage/cwltool_module

steps:
  rdfs:
    scatter: [schema, target]
    scatterMethod: dotproduct
    in:
      schema: { source: schemas, valueFrom: $(self.schema_in) }
      target: { source: schemas, valueFrom: $(self.rdfs_target) }
    out: [out, targetdir]
    run: makerdfs.cwl

  context:
    scatter: [schema, target]
    scatterMethod: dotproduct
    in:
      schema: { source: schemas, valueFrom: $(self.schema_in) }
      target: { source: schemas, valueFrom: $(self.context_target) }
    out: [out, targetdir]
    run: makecontext.cwl

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
      source: { source: render, valueFrom: $(self.source) }
      target: { source: render, valueFrom: $(self.target) }
      renderlist: { source: render, valueFrom: $(self.renderlist) }
      redirect: { source: render, valueFrom: $(self.redirect) }
      brandlink: { source: render, valueFrom: $(self.brandlink) }
      brand: { source: render, valueFrom: $(self.brandimg) }
      primtype: { source: render, valueFrom: $(self.primtype) }
      extra: { source: render, valueFrom: $(self.extra) }
    out: [out, targetdir, extra_out]
    run:  makedoc.cwl

  merge:
    in:
      primary:
        source: docs/out
        valueFrom: $(self[0])
      secondary:
        source: [docs/out, rdfs/out, context/out, brandimg, docs/extra_out]
        linkMerge: merge_flattened
        valueFrom: $(self.slice(1))
      dirs:
        source: [docs/targetdir, rdfs/targetdir, context/targetdir, empty, docs/targetdir]
        linkMerge: merge_flattened
        valueFrom: $(self.slice(1))
    out: [dir]
    run: mergesecondary.cwl

  generate_report:
    in:
      inp: merge/dir
      target: { default: "linkchecker-report.txt"}
    out: [out]
    run: linkchecker.cwl
