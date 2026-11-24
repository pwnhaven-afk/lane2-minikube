#!/usr/bin/env bash
# Code that lives in the PR branch. Revision 1: benign.
echo "PR_CODE v1 head=$(git rev-parse HEAD) actor=${GITHUB_ACTOR}"
