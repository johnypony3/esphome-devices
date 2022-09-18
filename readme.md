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

## notes

* a secrets.yaml file is necessary in the root of the directory
  * the current contents are:
    * wifi_ssid
    * wifi_password
    * ota_password
    * api_password
    * ap_ppassword
    * mqtt_password
  * stored in 1pass
    * op document get git_esphome_secret --vault personal --output secret.yaml
  * i symlink the root dir to the defs and devices dirs
    * ln -s $HOME/git/esphome/secrets.yaml $HOME/git/esphome/devices/ 
    * ln -s $HOME/git/esphome/secrets.yaml $HOME/git/esphome/defs/ 