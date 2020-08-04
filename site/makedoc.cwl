#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
requirements:
  InlineJavascriptRequirement:
    expressionLib:
      - $include: cwlpath.js
hints:
  ResourceRequirement:
   ramMin: 2300
   ramMax: 2600
inputs:
  source:
    type: File
    inputBinding: {position: 1}
  renderlist:
    type:
      - "null"
      - type: array
        items: string
        inputBinding: {prefix: "--only"}
    inputBinding: {position: 2}
  redirect:
    type:
      - "null"
      - type: array
        items: string
        inputBinding: {prefix: "--redirect"}
    inputBinding: {position: 2}
  brand:
    type: string
    inputBinding: {prefix: "--brand"}
  brandlink:
    type: string
    inputBinding: {prefix: "--brandlink"}
  brandstyle:
    type: string
    inputBinding: {prefix: "--brandstyle"}
  target:
    type: string
  primtype:
    type: string?
    inputBinding: {prefix: "--primtype"}
  extra: File
outputs:
  html: stdout
  targetdir:
    type: string
    outputBinding:
      outputEval: |
        ${
          var m = inputs.target.match(/^([^/]+)\/[^/]/);
          if (m)
            return m[1];
          else
            return "";
        }
  extra_out:
    type: File
    outputBinding:
      outputEval: $(inputs.extra)
baseCommand: schema-salad-doc
stdout: $(inputs.target)
