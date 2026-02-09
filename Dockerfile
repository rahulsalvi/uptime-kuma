FROM louislam/uptime-kuma:2.1.0

RUN apt-get update \
  && apt-get install -y ca-certificates \
  && rm -rf /var/lib/apt/lists/*
COPY ext/pki/tls/*.crt /usr/local/share/ca-certificates
RUN update-ca-certificates

ENV NODE_OPTIONS=--use-openssl-ca
