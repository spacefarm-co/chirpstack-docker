import-lorawan-devices:
	docker compose run -e RUST_BACKTRAC=1 --rm --entrypoint sh --user root chirpstack -c '\
		apk add --no-cache git && \
		git clone https://github.com/spacefarm-co/sooksook-lorawan-device.git /tmp/lorawan-devices && \
		chirpstack -c /etc/chirpstack import-legacy-lorawan-devices-repository -d /tmp/lorawan-devices'
