job "exec-play" {
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
        args = ["-c", "/bin/mkdir -p /mnt/usb-flash-drive-test && chmod 774 /mnt/usb-flash-drive-test && /bin/mount /dev/sdc1 && ls /mnt/usb-flash-drive-test ; /bin/umount /dev/sdc1"]
      }
    }
  }
}
