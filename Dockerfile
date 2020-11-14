FROM  debian:buster-slim as base

# Install the dependenceis
RUN apt-get update && apt-get install -y curl libgomp1

# Download the verus daemon
RUN mkdir ./verus
RUN curl -sL https://github.com/VerusCoin/VerusCoin/releases/download/v0.7.2-4/Verus-CLI-Linux-v0.7.2-4-amd64.tgz | tar xvzO --exclude='*.txt' | tar xvz -C ./verus
WORKDIR ./verus/verus-cli

ENV VERUSD_RPCUSER=testuser
ENV VERUSD_RPCPASSWORD=testpassword
ENV VERUSD_RPCPORT=18184

COPY ./entrypoint.sh ./entrypoint.sh

CMD ./entrypoint.sh