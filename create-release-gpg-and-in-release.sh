#!/bin/bash

if [ "${KEYID}" = "" ]; then
    echo "KEYID is required"
    exit 1
fi

cd ubuntu
gpg --default-key "${KEYID}" -abs -o - Release > Release.gpg
gpg --default-key "${KEYID}" --clearsign -o - Release > InRelease
