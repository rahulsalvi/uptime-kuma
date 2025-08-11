# Uptime Kuma stack

## Usage

```sh
# set these variables first
#   TS_API_CLIENT_ID
#   TS_API_CLIENT_SECRET
#   INFISICAL_TOKEN
./pre-deploy.sh
docker compose up -d
```

## Development

```sh
# install pre-commit hooks
pre-commit install
# use dev environment
export INFISICAL_ENV=dev
# build container
docker build -t uptime-kuma .
# view complete compose file
docker compose config | bat --language yaml
# deploy application (see Usage section)
./pre-deploy.sh
docker compose up -d
```

## Licenses

- [LICENSE](LICENSE)
- [Uptime Kuma](https://github.com/louislam/uptime-kuma/blob/master/LICENSE)
