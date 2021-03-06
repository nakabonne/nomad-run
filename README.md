## Prerequisite

- Move the built `generic-device` plugin binary to `plugins/`
- Connect devices to your machine and replace the device paths in `docker-compose.yml` and `client/client-1.hcl` with actual path

Download the nomad binary

```
$ make ./bin/nomad
```

## Run

```
$ make run
```

### Run with docker-compose
NOTE: `docker-compose` is required.

Run Nomad server and client

```
$ make restart-compose
```

## Play

Ensure it can connect

```
$ ./bin/nomad node status
```

Run the job

```
$ make -i job
```

