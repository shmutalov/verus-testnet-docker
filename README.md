# Veruscoin TESTNET docker container

# Build

`docker build -t <tagname> .`

# Push

`docker push <tagname>`

# Run

`docker run --name verus-test -it -p 18184:18184 -v F:\Projects\other\verus-testnet\ZcashParams:/root/.zcash-params -v F:\Projects\other\verus-testnet\Komodo:/root/.komodo <tagname>`

Where `.\ZcashParams:/root/.zcash-params` and `.\Komodo:/root/.komodo` are volumes to map to the blockchain data.