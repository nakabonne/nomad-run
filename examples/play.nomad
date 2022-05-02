job "play" {
  datacenters = ["dc1"]
  type = "batch"

  group "play-group" {
    task "play-task" {
      driver = "exec"

      # Reserve a qualcomm board and a cetibox board connected via USB.
      resources {
        device "cetibox/ecu" {
          count = 1
        }
        device "qualcomm/ecu" {
          count = 1
        }
      }

      config {
        command = "/bin/bash"
        args = ["-c", "printenv | grep HWAPI_DEVICE_PATH"]
        #command = "sleep"
        #args = ["70s"]
      }
    }
  }
}
