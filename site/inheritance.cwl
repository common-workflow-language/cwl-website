#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
requirements:
  ShellCommandRequirement: {}
  InlineJavascriptRequirement: {}
inputs:
  schema: File
  target_path: string
outputs:
  svg: stdout
  targetdir:
    type: string
    outputBinding:
      outputEval: $(inputs.target_path.match(/^([^/]+)\/[^/]/)[1])
stdout: $(inputs.target_path)
baseCommand: schema-salad-tool
arguments:
  - "--print-inheritance-dot"
  - $(inputs.schema)
  - {valueFrom: "|", shellQuote: false}
  - dot
  - "-Tsvg"
