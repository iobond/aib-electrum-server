mkdir -p /root/TRASH
curl -LOk https://github.com/iobond/aib-explorer-docker/releases/download/aib-1224912/aib-1224912.tgz -o /root/TRASH/aib-blockdata.tgz
mkdir -p /home/electrum.aib.one
tar xf /root/TRASH/aib-blockdata.tgz -C /home/electrum.aib.one/
curl -LOk https://github.com/iobond/aib-explorer-docker/releases/download/aibd-v5.13.3.13/aibd.tgz -o aibd.tgz 
tar xf aibd.tgz -C /home/electrum.aib.one/.aib/

docker run  --restart=always -v /home/electrum.aib.one:/home/blockdata -v /home/.logs:/root/.logs -d -p 5037:5037 -p 31415 --name electrum.AIB.one canadianbitcoin/electrum.aib.one:v2 /root/start.sh
#docker run  --restart=always -v /home/electrum.aib.one:/home/blockdata -v /home/.logs:/root/.logs -d -p 5037:5037 -p 31415  -p 53722:22 --name electrum.AIB.one canadianbitcoin/electrum.aib.one:v2 /root/start.sh

