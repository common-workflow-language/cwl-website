#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: ExpressionTool
inputs:
  primary: File
  secondary:
    type:
      type: array
      items: [File, Directory]
  dirs: string[]
expression: |
  ${
    if (!inputs.primary.secondaryFiles) {
      inputs.primary.secondaryFiles = [];
    }
    for (var i = 0; i < inputs.secondary.length; i++) {
      var k = inputs.secondary[i];
      if (inputs.dirs[i] != "") {
        inputs.primary.secondaryFiles.push({
            class: "Directory",
            basename: inputs.dirs[i],
            listing: [k]
        });
      } else {
        inputs.primary.secondaryFiles.push(k);
      }
    }
    return {dir: inputs.primary};
  }
outputs:
  dir: File
