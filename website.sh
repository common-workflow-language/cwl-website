#!/bin/bash

rm -Rf draft-3 v1.0 v1.1.0-dev1 env3 temp

git clone https://github.com/common-workflow-language/common-workflow-language.git \
	temp
mv temp/v1.0 ./
mv temp/draft-3 ./
git clone https://github.com/common-workflow-language/cwl-v1.1.git \
	v1.1.0-dev1


virtualenv -p python3 env3
source env3/bin/activate

pip install cwlref-runner

cwl-runner --cache cache --outdir www site/cwlsite.cwl site/cwlsite-job.yaml
