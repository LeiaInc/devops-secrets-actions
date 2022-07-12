#!/bin/sh -l

while read -d $'\t' -r key value; do
if [[ $key == *$'\n'* ]]; then
    echo $key'<<EOF' >> $GITHUB_ENV
    echo "$value" >> $GITHUB_ENV
    echo 'EOF' >> $GITHUB_ENV
elif [[ ! -z $key ]]; then
    echo $key'='$value >> $GITHUB_ENV
fi
done < (jq -j 'to_entries|.[] | "\(.key) \(.value)\t"' <<< "$secrets")

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
