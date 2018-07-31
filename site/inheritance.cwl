cwlVersion: v1.0
class: CommandLineTool
requirements:
  ShellCommandRequirement: {}
inputs:
  schema:
    type: File
  target: string
outputs:
  svg: stdout
  targetdir:
    type: string
    outputBinding:
      outputEval: $(inputs.target.match(/^([^/]+)\/[^/]/)[1])
stdout: $(inputs.target)
baseCommand: schema-salad-tool
arguments:
  - "--print-inheritance-dot"
  - $(inputs.schema)
  - {valueFrom: "|", shellQuote: false}
  - dot
  - "-Tsvg"
