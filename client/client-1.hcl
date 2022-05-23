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
      vendor = "qualcomm"
      type = "ecu"
      model = "6155"
      device_path = "/dev/bus/usb/001/010"
    }

    device {
      vendor = "iodata"
      type = "usb-drive"
      device_path = "/dev/sdc1"
    }
  }
}

