[private]
default:
	@just --list --justfile {{justfile()}}

merge user:
    sing-box merge config.json -c ./private/config-{{user}}.json -c ./config/route-rules.json
