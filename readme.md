# esphome repo

## purpose

* used to host the templates of my devices
* quickly falling out of favor for tasmota, which will not be hosted in this repo
  
## definitions, explanations and style guide

* def(inition)s are reusable snippets, named after the common device
* defs/common.yaml is to be reused in every device, should be imported in the def
* device name:
  * {where}-{what}-{last 6 mac(hex only)}
* symlink secrets.yaml to defs/secrets.yaml
* 1pass cli is used for secrets
* there is a local dhcp/dyndns server

## workflow

* copy an existing device file
* modify as per your suit
* run build.sh