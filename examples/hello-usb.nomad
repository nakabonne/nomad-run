job "hello-usb" {
  datacenters = ["dc1"]
  type = "batch"

  group "pc-1" {
    task "usb-check" {
      driver = "exec"

      # Reserve one qualcomm board connected via USB.
      resources {
        device "generic-device" {
          constraint {
            attribute = "${device.type}"
            value = "ecu"
          }
          constraint {
            attribute = "${device.vendor}"
            value = "qualcomm"
          }
          count = 1
        }
      }

      config {
        command = "lsusb"
      }
    }
  }
}
