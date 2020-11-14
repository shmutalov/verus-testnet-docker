#!/bin/bash

set -e

# We need to fetch ZCash params first
./fetch-params

# Build verusd command line arguments
VRSC_ARGS=""

if [[ -n "${VERUSD_RPCUSER}" ]]; then VRSC_ARGS+=" -rpcuser=${VERUSD_RPCUSER}"; fi
if [[ -n "${VERUSD_RPCPASSWORD}" ]];then VRSC_ARGS+=" -rpcpassword=${VERUSD_RPCPASSWORD}";fi
if [[ -n "${VERUSD_RPCPORT}" ]];then VRSC_ARGS+=" -rpcport=${VERUSD_RPCPORT}";fi

# Start the verusd with vrsctest chain
./verusd -chain=VRSCTEST $VRSC_ARGS