# phore-docker

Phore docker image used for app dev-ing. The config file defaults to `regtest=1`

    # Fire up the daemon
    docker-compose up -d

    # Watch phore logs
    docker-compose logs -f phore

    # Create a bunch of coins, and send them off
    ./phore-cli setgenerate true 101
    ./phore-cli getbalance
    ./phore-cli sendtoaddress $(./phore-cli getnewaddress) 10.0
    ./phore-cli setgenerate true 1

[regtest]: https://bitcoin.org/en/developer-examples#regtest-mode
