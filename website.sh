#!/bin/bash

set -e
set -x

for repo in https://github.com/common-workflow-language/common-workflow-language \
            https://github.com/common-workflow-language/cwl-v1.1 \
            https://github.com/common-workflow-language/cwl-v1.2 \
	    https://github.com/common-workflow-language/user_guide \
	    https://github.com/lunacodes/cwl-staging ; do
    bn=$(basename $repo)
    if [[ -d $bn ]] ; then
	(cd $bn && git fetch origin && git reset --hard origin/$(git rev-parse --abbrev-ref HEAD))
    else
	git clone $repo
    fi
done

ln -sf common-workflow-language/draft-3 draft-3
ln -sf common-workflow-language/v1.0 v1.0
ln -sf cwl-v1.1 v1.1
ln -sf cwl-v1.2 v1.2

cwltool $@ --cache cache --relax-path-checks --outdir common-workflow-language.github.io site/cwlsite.cwl site/cwlsite-job.yaml
