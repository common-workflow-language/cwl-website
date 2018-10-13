#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
requirements:
  InlineJavascriptRequirement: {}
inputs:
  schema:
    type: File
    inputBinding: {position: 1}
  target_path: string
outputs:
  jsonld_context: stdout
  targetdir:
    type: string
    outputBinding:
      outputEval: $(inputs.target_path.match(/^([^/]+)\/[^/]/)[1])
baseCommand: [python, "-mschema_salad", "--print-jsonld-context"]
stdout: $(inputs.target_path)
