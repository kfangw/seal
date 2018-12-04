#!/bin/bash
export SEAL_ORGANISATION="bosnet"
export GITHUB_TOKEN=""
export SLACK_WEBHOOK=""
export SLACK_CHANNEL="#code-review"
export GITHUB_MEMBERS="Geod24,Charleslee522,spikeekips,anarcher,kfangw,outsideris,soonkuk,zzim2x,cmcm2222"
export GITHUB_USE_LABELS=true
export GITHUB_EXCLUDE_LABELS="[DO NOT MERGE],[WIP]"
export GITHUB_EXCLUDE_REPOS="" # Ensure these projects are *NOT* included
export GITHUB_INCLUDE_REPOS="sebak" # Ensure *only* these projects will be included
export SEAL_QUOTES="Everyone should have the opportunity to learn. Don’t be afraid to pick up stories on things you don’t understand and ask for help with them.,Try to pair when possible."
docker run -it --rm --name seal \
  -e "SEAL_ORGANISATION=${SEAL_ORGANISATION}" \
  -e GITHUB_TOKEN=${GITHUB_TOKEN} \
  -e SLACK_WEBHOOK=${SLACK_WEBHOOK} \
  -e DYNO=${DYNO} \
  -e SLACK_CHANNEL=${SLACK_CHANNEL} \
  -e GITHUB_MEMBERS=${GITHUB_MEMBERS} \
  -e GITHUB_USE_LABELS=${GITHUB_USE_LABELS} \
  -e "GITHUB_EXCLUDE_LABELS=${GITHUB_EXCLUDE_LABELS}" \
  -e "SEAL_QUOTES=${SEAL_QUOTES}" \
  seal
