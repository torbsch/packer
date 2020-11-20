# Packer
This repository contains code that can build an debian buster image (virtualbox) with packer.

## Requirements
* packer
* virtualbox

## How to run
To build a vagrant virtualbox image without vagrant cloud upload:
``` shell
packer build virtualbox_debian.json
```

To build a vagrant virtualbox image with a vars file and vagrant cloud upload:
``` shell
packer build -var-file=vars.json virtualbox_debian.json
```

## User vars
To use the vagrant cloud provider you have to bypass the box_tag and access token to your vagrant cloud account.
### Example vars.json
``` json
{
    "box_tag": "user/boxname",
    "access_token": "123456"
}
```
