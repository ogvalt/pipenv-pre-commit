#!/bin/bash

if  ! (pipenv requirements --dev-only > dev-requirements.txt); then
    echo 'Trying legacy "pipenv lock -r" function.'
    pipenv lock --dev-only -r > dev-requirements.txt
fi
