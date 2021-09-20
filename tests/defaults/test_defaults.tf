terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    http = {
      source = "hashicorp/http"
    }
  }
}

module "main" {
  source = "../.."
}

resource "test_assertions" "outputs" {
  component = "outputs"

  check "ip" {
    description = "Checkout output is ip"
    condition   = can(regex("\\b((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\\.|$)){4}\\b", module.main.ip))
  }

  check "cidr" {
    description = "Check that cidr format is /32"
    condition   = can(regex("/32", module.main.cidr))
  }
}

output "outputs" {
  value = module.main
}
