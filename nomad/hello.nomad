job "hello-devops" {
  datacenters = ["dc1"]
  type        = "batch"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "raw_exec"

      config {
        command = "cmd.exe"
        args    = ["/c", "echo Hello, DevOps!"]
      }

      resources {
        cpu    = 100
        memory = 64
      }
    }
  }
}
