#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

echo "action_state=blue" >> $GITHUB_ENV

gh auth refresh -h github.com -s admin:org && \
gh api -H "Accept: application/vnd.github.v3+json" /orgs/LeiaInc/actions/secrets?page=1&per_page=100 \
>> secrets.txt

cat secrets.txt


echo "Test"
