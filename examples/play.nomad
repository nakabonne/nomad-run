job "play-i" {
  datacenters = ["dc1"]
  type = "batch"

  #meta {
  #  run_uuid = "${uuidv4()}"
  #}

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
        args = ["-c", "printenv | grep DEVICE_PATH"]
        #command = "sleep"
        #args = ["70s"]
      }
    }
  }
}
