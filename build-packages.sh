#!/bin/bash -xe

# variables
BASE_DIRECTORY=.
CHARTS_DIRECTORY="${BASE_DIRECTORY}/charts"

# remove any previously generated charts
rm -rf $CHARTS_DIRECTORY

# ensure our charts directory exists
mkdir -p $CHARTS_DIRECTORY

# begin generating the charts
for DIRECTORY in `ls $BASE_DIRECTORY`;do
  if [ "$DIRECTORY" = "charts" ]; then
    continue;
  elif [ -d "${BASE_DIRECTORY}/${DIRECTORY}" ]; then
    helm package "${BASE_DIRECTORY}/${DIRECTORY}" -d $CHARTS_DIRECTORY --debug
  fi
done

# download the existing index.yaml file
curl http://helm.carldanley.com/index.yaml > $CHARTS_DIRECTORY/index.yaml

# re-index the repository (using the existing index.yaml as the base)
helm repo index --merge "${CHARTS_DIRECTORY}/index.yaml" $CHARTS_DIRECTORY
