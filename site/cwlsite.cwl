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
          graph_target: string
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
    scatter: ver
    in:
      ver: schemas
      schema: { valueFrom: $(inputs.ver.schema_in) }
      target: { valueFrom: $(inputs.ver.rdfs_target) }
    out: [out, targetdir]
    run: makerdfs.cwl

  context:
    scatter: ver
    in:
      ver: schemas
      schema: { valueFrom: $(inputs.ver.schema_in) }
      target: { valueFrom: $(inputs.ver.context_target) }
    out: [out, targetdir]
    run: makecontext.cwl

  inheritance:
    scatter: ver
    in:
      ver: schemas
      schema: { valueFrom: $(inputs.ver.schema_in) }
      target: { valueFrom: $(inputs.ver.graph_target) }
    out: [svg, targetdir]
    run: inheritance.cwl

  docs:
    scatter: ver
    in:
      ver: render
      source:     { valueFrom: $(inputs.ver.source) }
      target:     { valueFrom: $(inputs.ver.target) }
      renderlist: { valueFrom: $(inputs.ver.renderlist) }
      redirect:   { valueFrom: $(inputs.ver.redirect) }
      brandlink:  { valueFrom: $(inputs.ver.brandlink) }
      brand:      { valueFrom: $(inputs.ver.brandimg) }
      primtype:   { valueFrom: $(inputs.ver.primtype) }
      extra:      { valueFrom: $(inputs.ver.extra) }
    out: [out, targetdir, extra_out]
    run:  makedoc.cwl

  merge:
    in:
      primary:
        source: docs/out
        valueFrom: $(self[0])
      secondary:
        source: [docs/out, rdfs/out, context/out, brandimg, docs/extra_out, inheritance/svg]
        linkMerge: merge_flattened
        valueFrom: $(self.slice(1))
      dirs:
        source: [docs/targetdir, rdfs/targetdir, context/targetdir, empty, docs/targetdir, inheritance/targetdir]
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
