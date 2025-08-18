[private]
default:
	@just --list --justfile {{justfile()}}

[working-directory: "rules"]
mkrules:
	sing-box rule-set compile geosite-anvyko.json

regenerate-and-install-config:
    ./scripts/ucgen anvyko main
    sing-box check -c private/configs/anvyko.json
    sudo cp private/configs/anvyko.json /etc/sing-box/config.json
    sudo systemctl restart sing-box.service

journalctl:
    journalctl -r -u sing-box.service
