data_dir = "/data/nomad"

client {
  enabled = true
  servers = ["nomad-server:4647"]
  node_class = "client-1"
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}

plugin "generic-device" {
  config {
    enabled = true
    fingerprint_period = "1m"
    device {
      type = "ecu"
      vendor = "qualcomm"
      task_path = "/dev/qualcomm-1"
      host_path = "/dev/bus/usb/001/001"
    }
    device {
      type = "ecu"
      vendor = "qualcomm"
      task_path = "/dev/qualcomm-2"
      host_path = "/dev/bus/usb/001/002"
    }
  }
}

vault {
  enabled = true
  address = "http://vault-server:8200/"
}



