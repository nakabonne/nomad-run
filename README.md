

## Prerequisite

- `docker-compose` is installed
- Move the built `generic-device` plugin binary to `client/`
- Connect devices to your machine and replace the device paths in `docker-compose.yml` and `client/client-1.hcl` with actual path

## Usage
Run Nomad server and client

```
$ make restart
```

Download the nomad CLI

```
$ make ./bin/nomad
```

Ensure it can connect

```
$ ./bin/nomad node status
```

Run the job

```
$ make -i job
```

