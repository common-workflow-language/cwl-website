#!/bin/bash

set -e
set -x

for repo in https://github.com/common-workflow-language/common-workflow-language \
            https://github.com/common-workflow-language/cwl-v1.1 \
            https://github.com/common-workflow-language/cwl-v1.2 \
	    https://github.com/common-workflow-language/user_guide \
	    https://github.com/common-workflow-lab/cwl-novice-tutorial \
	    https://github.com/common-workflow-library/rnaseq-cwl-training ; do
    bn=$(basename $repo)
    if [[ -d $bn ]] ; then
	(cd $bn && git fetch origin && git reset --hard origin/$(git rev-parse --abbrev-ref HEAD))
    else
	git clone $repo
    fi
done

rm -rf draft-3 v1.0 v1.1 v1.2
ln -s common-workflow-language/draft-3 draft-3
ln -s common-workflow-language/v1.0 v1.0
ln -s cwl-v1.1 v1.1
ln -s cwl-v1.2 v1.2

if [[ -z "$WORKSPACE" ]] ; then
    WORKSPACE=$PWD
fi

mkdir -p common-workflow-language.github.io
cd common-workflow-language.github.io
cwltool $@ --cache $WORKSPACE/cache --relax-path-checks $WORKSPACE/site/cwlsite.cwl $WORKSPACE/site/cwlsite-job.yaml
