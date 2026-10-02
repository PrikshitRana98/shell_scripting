#!/bin/bash

set -e

<<usage

create folder
usage

mkdir josh || echo "folder already exists"
echo "do production work"