#!/bin/bash

# Make data folder relative to script location
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir -p $SCRIPT_DIR/../data

# Download HIVE training data
/google-cloud-sdk/bin/gsutil -m cp -r gs://sfr-hive-data-research/data/training $SCRIPT_DIR/../data/

# Download HIVE evaluation data

/google-cloud-sdk/bin/gcloud storage cp gs://sfr-hive-data-research/data/test.jsonl $SCRIPT_DIR/../data/test.jsonl
/google-cloud-sdk/bin/gsutil -m cp -r gs://sfr-hive-data-research/data/evaluation $SCRIPT_DIR/../data/
