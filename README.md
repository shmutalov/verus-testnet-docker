# Veruscoin TESTNET docker container

# Build

`docker build -t <tagname> .`

# Push

`docker push <tagname>`

# Run

```
docker run --name verus-test -it \ 
  -p 18184:18184 \
  -v F:\Projects\other\verus-testnet\ZcashParams:/root/.zcash-params \
  -v F:\Projects\other\verus-testnet\Komodo:/root/.komodo \
  <tagname>
```

Where `.\ZcashParams:/root/.zcash-params` and `.\Komodo:/root/.komodo` are volumes to map to the blockchain data.

# Configure

To change default verusd RPC port/user/password, you need to set corresponding environment variables when starting docker container.


| Environment variable name | Description |
| --- | --- |
| `VERUSD_RPCUSER` | RPC username, default is `testuser` |
| `VERUSD_RPCPASSWORD` | RPC password, default is `testpassword` |
| `VERUSD_RPCPORT` | RPC password, default is `18184` |

For example:

```
docker run --name verus-test -it \
  -p 7777:7777 \
  -e VERUSD_RPCPORT=7777 \
  -e VERUSD_RPCUSER=lol \
  -e VERUSD_RPCPASSWORD=puk \
  <tagname>
```

will start verusd container listening 7777 port for RPC calls, where `lol` user can access it with password `puk`
