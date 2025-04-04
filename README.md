# Nimbus Deployment

A lightweight, experimental deployment setup for Nimbus Ethereum clients.
This project provides Docker configurations for running both execution (eth1) and consensus (eth2) Nimbus clients.

## Download era files

> Downloading may take several hours to more than a day depending on your network connection, as these files are quite large.

```
mkdir -p ./data/execution/era1
cd ./data/execution/era1
curl -s https://mainnet.era1.nimbus.team/ | grep -oP 'href="\K[^"]+' > era_files.txt
sed -i 's|^|https://mainnet.era1.nimbus.team/|' era_files.txt
aria2c -j 30 -i era_files.txt
```

## Import

> Importing may take several hours to more than a day depending on your system performance.

```
docker compose run execution --data-dir=/data import
```

## Set Env

```
cp .env.exmaple .env
vi .env
```

## Run

```
docker compose up -d
```
