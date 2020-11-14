#!/bin/bash

set -e

# We need to fetch ZCash params first
./fetch-params

# Start the verusd with vrsctest chain
./verusd -chain=VRSCTEST 