**Required**: `docker-compose`

## How to run
Prerequisite: Move the built `generic-device` plugin binary to `client/`

```
$ make restart
```

```
$ make ./bin/nomad
```

```
$ ./bin/nomad node status
```

```
$ ./bin/nomad run ./examples/hello-usb.nomad
```
