#!/usr/bin/env bash
# Code that lives in the PR branch. Benign in revision 1.
echo "PR_CODE v1 head=$(git rev-parse HEAD) actor=${GITHUB_ACTOR}"
