job "play" {
  datacenters = ["dc1"]
  type = "batch"

  group "play-group" {
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
        #args = ["-c", "adb shell ls -l"]
        args = ["-c", "printenv | grep DEVICE"]
        #privileged = true
        #args = ["-c", "cat /etc/udev/rules.d/51-android.rules"]
        #args = ["-c", "lsusb"]
        #args = ["-c", "adb -s 913f8ab shell ls -l"]

        #devices = [
        #  {
        #    host_path = "/dev/bus/usb/001/010"
        #    container_path = "/dev/bus/usb/001/010"
        #    cgroup_permissions = "rwm"
        #  },
        #]
        #volumes = [
        #  "/etc/udev/rules.d/51-android.rules:/etc/udev/rules.d/51-android.rules",
        #]

      }
    }
  }
}
