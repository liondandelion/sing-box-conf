[private]
default:
	@just --list --justfile {{justfile()}}

[working-directory: "rules"]
mkrules:
	sing-box rule-set compile geosite-anvyko.json
