FROM busybox
# Set working directory
WORKDIR /etc/traefik
COPY ./acme.json .
COPY ./traefik.toml .
