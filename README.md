# gae-waf-update-tool

A Shell Script/CLI Tool to automatically update Google App Engine's Application Firewall Entries

## Motivation

I manage a lot of GCP projects ranging from many environments, and because its fairly difficult to just copy-n-paste and that Google Cloud has no 'import list' tool, I decided to automate it.

## Scripts

- [waf-gcp.sh](./waf-gcp.sh) is the original script that I wrote in 10 minutes, this script applies an allow the [Incapsula](https://www.incapsula.com/) IP range and denies all requests
- [waf-gcp-v2.py](waf-gcp-v2.py) - is still in progress but the idea is build a generic tool, where a user can feed in a file and that is automatically applied to the GCP project

## LICENSE

This repo is licensed under `MIT`, see [./LICENSE](./LICENSE) for more info.
