#!/bin/bash

# variables
BASE_DIRECTORY=.
CHARTS_DIRECTORY="${BASE_DIRECTORY}/charts"

# ensure our charts directory exists
if [ ! -d "${CHARTS_DIRECTORY}" ]; then
  mkdir -p $CHARTS_DIRECTORY
fi

# begin generating the charts
for DIRECTORY in `ls $BASE_DIRECTORY`;do
  if [ -d "${BASE_DIRECTORY}/${DIRECTORY}" ]; then
    helm lint "${BASE_DIRECTORY}/${DIRECTORY}"
    helm package "${BASE_DIRECTORY}/${DIRECTORY}" -d $CHARTS_DIRECTORY --debug
  fi
done

# create the index.yaml
if [ -f "${BASE_DIRECTORY}/index.yaml" ]; then
  helm repo index --merge "${$CHARTS_DIRECTORY}/index.yaml" $CHARTS_DIRECTORY
else
  helm repo index $CHARTS_DIRECTORY
fi
