cwlVersion: v1.2
class: ExpressionTool
requirements:
  InlineJavascriptRequirement: {}
inputs:
  fq: File[]
  bams: File[]
  qc: File[]
outputs:
  dirs: Directory[]
expression: |-
  ${
  var dirs = [];
  for (var i = 0; i < inputs.bams.length; i++) {
    dirs.push({
      "class": "Directory",
      "basename": inputs.fq[i].nameroot,
      "listing": [inputs.bams[i], inputs.qc[i]]
    });
  }
  return {"dirs": dirs};
  }
