import-lorawan-devices:
	docker compose run -e RUST_BACKTRAC=1 -v $(HOME)/.ssh:.ssh --rm --entrypoint sh --user root chirpstack -c '\
		apk add --no-cache git && \
		eval $(ssh-agent -s) && \
		ssh-add .ssh/sooksook-edge-id-rsa && \
		git clone github.com/spacefarm-co/sooksook-lorawan-devices.git /tmp/lorawan-devices && \
		chirpstack -c /etc/chirpstack import-legacy-lorawan-devices-repository -d /tmp/lorawan-devices'
