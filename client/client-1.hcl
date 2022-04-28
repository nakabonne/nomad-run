data_dir = "/data/nomad"

client {
  enabled = true
  servers = ["nomad-server:4647"]
  node_class = "client-1"
}

plugin "generic-device" {
  config {
    enabled = true
    fingerprint_period = "1m"
    device {
      type = "ecu"
      vendor = "qualcomm"
      host_path = "/dev/bus/usb/001/004"
    }
  }
}

