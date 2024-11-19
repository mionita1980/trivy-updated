#!/bin/sh

#must be numeric and at least 1
attempts=10

while : ; do
    echo "Attempt left: ${attempts}"
    attempts=$((attempts-1))
    trivy fs --download-db-only
    trivy fs --download-java-db-only
    if [ $? == 0 ]; then
        break
    fi
    if [ ${attempts} == 0 ]; then
        break
    fi
    sleep 2
done
