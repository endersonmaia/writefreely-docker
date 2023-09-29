target "docker-metadata-action" {}
target "docker-platforms" {}

variable "WRITEFREELY_VERSION" {
     default = "0.14.0"
}

target "default" {
  inherits = ["docker-metadata-action", "docker-platforms"]
  args = {
    WRITEFREELY_VERSION = "${WRITEFREELY_VERSION}"
  }
}
