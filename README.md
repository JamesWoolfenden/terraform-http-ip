# terraform-http-ip

[![Build Status](https://github.com/JamesWoolfenden/terraform-http-ip.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-http-ip)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-http-ip.svg)](https://github.com/JamesWoolfenden/terraform-http-ip/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-http-ip/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-http-ip&benchmark=INFRASTRUCTURE+SECURITY)

This `terraform-http-ip` is designed to return the public ip of the box running terraform, its designed for use in a security group.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Expecting a minimal usage.

```terraform
module "data" {
   source = "jameswoolfenden/ip/http"
   version= "0.3.2"
}

It has an output of ip so in your code e.g.
```tf
master_authorized_networks_config {
  cidr_blocks {
    cidr_block = "${module.data.ip}/32"
    }
}
```

or as a CIDR

```tf
master_authorized_networks_config {
  cidr_blocks {
    cidr_block = module.data.cidr
    }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [http_http.ip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cidr"></a> [cidr](#output\_cidr) | n/a |
| <a name="output_ip"></a> [ip](#output\_ip) | Your IP |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-http-ip/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-http-ip/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-http-ip&url=https://github.com/JamesWoolfenden/terraform-http-ip
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-http-ip&url=https://github.com/JamesWoolfenden/terraform-http-ip
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-http-ip
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-http-ip
[share_email]: mailto:?subject=terraform-http-ip&body=https://github.com/JamesWoolfenden/terraform-http-ip
