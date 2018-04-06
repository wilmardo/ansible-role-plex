#!/bin/bash
url=$1
role=$(printenv TRAVIS_REPO_SLUG | rev | cut -d "-" -f1 | rev) #reverse cut leaves last part of repo name which is role name

echo "Received url: $url"
echo "Received role: $role"
exec 3>&1
if [ "$DEPLOY_CREDENTIALS" ]; then
    echo "DEPLOY_CREDENTIALS defined, sending basic auth request"
    http_status=$(curl -u $DEPLOY_CREDENTIALS -v -s -w "%{http_code}" -o >(cat >&3) $url/?$role)
else
    echo "DEPLOY_CREDENTIALS undefined, sending request"
    http_status=$(curl -v -s -w "%{http_code}" -o >(cat >&3) $url/?$role)
fi

echo "HTTP status: $http_status"
if [[ $http_status == 200 ]]; then
    exit 0
else
    exit 1
fi