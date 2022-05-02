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
      vendor = "cetibox"
      type = "ecu"
      # This will be mounted by the task
      host_path = "/dev/bus/usb/001/006"
    }

    device {
      vendor = "qualcomm"
      type = "ecu"
      # optional
      model = "snapdragon-888"
      host_path = "/dev/bus/usb/001/007"
    }
  }
}

