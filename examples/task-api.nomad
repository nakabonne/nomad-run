job "taskapi-example" {
  type = "batch"

  group "taskapi-example" {

    task "taskapi" {
      driver = "raw_exec"

      config {
        command = "/bin/bash"
        args = ["-c", "curl --unix-socket ${NOMAD_SECRETS_DIR}/api.sock -H Authorization: Bearer ${NOMAD_TOKEN} --verbose localhost/v1/client/metadata"]

      }

      identity {
        env = true
      }
    }
  }
}

