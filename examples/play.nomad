job "play" {
  datacenters = ["dc1"]
  type = "batch"

  group "play-group" {
    task "play-task" {
      driver = "exec"

      # Reserve one qualcomm board connected via USB.
      resources {
        device "qualcomm/ecu" {
          count = 1
        }
      }

      config {
        command = "echo"
        args = ["${DEVICE_PATH_QUALCOMM_ECU_0}"]
      }
    }
  }
}
