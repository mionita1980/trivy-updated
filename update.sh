#!/bin/sh

#must be numeric and at least 1
attempts=10

while : ; do
    echo "Attempt left: ${attempts}"
    attempts=$((attempts-1))
    trivy image --download-db-only
    if [ $? == 0 ]; then
        break
    fi
    if [ ${attempts} == 0 ]; then
        break
    fi
    sleep 2
done
