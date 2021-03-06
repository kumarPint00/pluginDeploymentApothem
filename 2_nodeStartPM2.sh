echo "<<<<<<<<<------------------STARTING PLUGIN NODE--------------------->>>>>>>>>"
. ~/.profile
echo "export ETH_CHAIN_ID=51
export ETH_URL=wss://ws.apothem.network
export MIN_OUTGOING_CONFIRMATIONS=2
export PLI_CONTRACT_ADDRESS=0x33f4212b027e22af7e6ba21fc572843c0d701cd1
export PLUGIN_TLS_PORT=0
export SECURE_COOKIES=false
export ALLOW_ORIGINS=*
export DATABASE_TIMEOUT=0
export FEATURE_EXTERNAL_INITIATORS=true
export PLUGIN_DEV=true
export DATABASE_URL=postgresql://postgres:postgres@127.0.0.1:5432/plugin_apothem_db?sslmode=disable
export ENABLE_EXPERIMENTAL_ADAPTERS=true" >> ~/.tmp_profile
. ~/.tmp_profile
plugin node start -d -p password.txt -a apicredentials.txt
echo "<<<<<<<<<<<-------------------Plugin node is running .. use "pm2 status" to check the status-------->>>>>>>>>>>"
