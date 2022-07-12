#!/bin/sh -l

echo $1 && \
while read -d $'\t' -r key value; do
if [[ $key == *$'\n'* ]]; then
    echo $key
elif [[ ! -z $key ]]; then
    echo $key
fi
done< <(jq -j 'to_entries|.[] | "\(.key) \(.value)\t"' <<< "$1")

# echo "Hello $1"
# time=$(date)
# echo "::set-output name=time::$time"

# echo "action_state=blue" >> $GITHUB_ENV

# curl \
#   -H "Accept: application/vnd.github+json" \
#   https://api.github.com/orgs/LeiaInc/actions/secrets \
# > secrets.txt

# gh auth refresh -h github.com -s admin:org && \
# gh api -H "Accept: application/vnd.github.v3+json" /orgs/LeiaInc/actions/secrets?page=1&per_page=100 \
# > secrets.txt

# echo $(cat secrets.txt)


echo "Test"
