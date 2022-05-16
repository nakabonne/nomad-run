job "play" {
  datacenters = ["dc1"]
  type = "batch"

  group "play-group" {
    task "play-task" {
      driver = "exec"

      resources {
        #device "qualcomm/ecu" {
        #  count = 1
        #}
        device "iodata/usb-drive" {
          count = 1
        }
      }

      config {
        command = "/bin/bash"
        #args = ["-c", "/bin/mount UUID=\"0000-039E\" && ls /mnt/usb-flash-drive-test ; /bin/umount UUID=\"0000-039E\""]
        #args = ["-c", "/bin/ls"]
        args = ["-c", "/bin/mkdir -p /alloc/mnt/usb-flash-drive-test && chmod 774 /alloc/mnt/usb-flash-drive-test && /bin/mount ${HWAPI_DEVICE_PATH_IODATA_USB_DRIVE_0} && ls /alloc/mnt/usb-flash-drive-test ; /bin/umount ${HWAPI_DEVICE_PATH_IODATA_USB_DRIVE_0}"]
      }
    }

    task "play-task-docker" {
      driver = "docker"

      resources {
        device "qualcomm/ecu" {
          count = 1
        }
      }

      config {
        image = "nakabonne/adb:0.2"
        command = "/bin/bash"
        args = ["-c", "adb devices"]
        #args = ["-c", "adb -s 913f8ab shell ls -l"]
      }
    }
  }
}
