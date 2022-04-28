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
        #command = "ls"
        #args = ["${DEVICE_PATH_QUALCOMM_ECU_0}"]
        command = "sleep"
        args = ["70s"]
      }
    }
  }
}
