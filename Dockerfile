FROM  debian:buster-slim as base

# Install the dependenceis
RUN apt-get update && apt-get install -y curl libgomp1

# Download the verus daemon
RUN mkdir ./verus
RUN curl -sL https://github.com/VerusCoin/VerusCoin/releases/download/v0.7.2-4/Verus-CLI-Linux-v0.7.2-4-amd64.tgz | tar xvzO --exclude='*.txt' | tar xvz -C ./verus
WORKDIR ./verus/verus-cli

# RPC port
EXPOSE 18184
EXPOSE 27485
EXPOSE 27486

# set the volume mount to zcash params, if you do not want to download them from scratch
# VOLUME /.zcash-params

# set the volume mount to VRSCTEST (or to the child dirs), if you do not want to download blockchain from scratch
# VOLUME /.komodo/VRSCTEST

COPY ./entrypoint.sh ./entrypoint.sh

CMD ./entrypoint.sh