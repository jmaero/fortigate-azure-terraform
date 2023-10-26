#!/bin/bash
#

if [[ "${AZUREPS_HOST_ENVIRONMENT}" =~ ^cloud-shell.* ]]; then
	if [[ ! -d ~/.local/bin ]]; then
		mkdir -p ~/.local/bin
	fi
	wget -q https://github.com/cli/cli/releases/download/v2.35.0/gh_2.35.0_linux_amd64.tar.gz -O ~/gh.tar.gz
	tar --strip-components=2 -C ~/.local/bin/ -zxf ~/gh.tar.gz gh_2.35.0_linux_amd64/bin/gh
	wget -q https://releases.hashicorp.com/terraform/1.6.2/terraform_1.6.2_linux_amd64.zip -O ~/terraform.zip
	unzip ~/terraform.zip -d ~/.local/bin && chmod ~/.local/bin/terraform
fi
