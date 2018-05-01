#!/bin/bash

set -eou pipefail

echo "--- Configure the Workspace"
aws-configure chef-cd
configure-github-account chef-ci
aws --profile chef-cd s3 cp s3://chef-cd-citadel/aws-accounts/training/automation-workstation /tmp/automation-workstion
chmod 0600 /tmp/automation-workstation

echo "Setting default AWS credentials to TRAINING credentials"
export AWS_ACCESS_KEY_ID="$TRAINING_AWS_ACCESS_KEY_ID"
export AWS_SECRET_ACCESS_KEY="$TRAINING_AWS_SECRET_ACCESS_KEY"

echo "Setting environment variables required by Packer"
export TRAINING_AWS_KEYPAIR_NAME=automation-workstation
export TRAINING_AWS_KEYPAIR=/tmp/automation-workstation

echo "+++ Exercise $WORKSTATION_DIRECTORY"
cd "$WORKSTATION_DIRECTORY" || exit 1
rake all
