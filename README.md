# docker-pproxy

[![](https://img.shields.io/docker/cloud/build/mateumann/pproxy.svg)](https://cloud.docker.com/repository/docker/mateumann/pproxy/builds/) [![](https://images.microbadger.com/badges/version/mateumann/pproxy.svg)](https://microbadger.com/images/mateumann/pproxy) [![](https://images.microbadger.com/badges/commit/mateumann/pproxy.svg)](https://microbadger.com/images/mateumann/pproxy) [![](https://images.microbadger.com/badges/image/mateumann/pproxy.svg)](https://microbadger.com/images/mateumann/pproxy) [![](https://img.shields.io/docker/stars/mateumann/pproxy.svg)](https://hub.docker.com/r/mateumann/pproxy)  [![License: MIT](https://img.shields.io/badge/License-MIT-lightgrey.svg)](https://opensource.org/licenses/MIT)

**Small docker container for Tor/Privoxy/Squid network proxy daemons.**

The image is based on great [Alpine Linux](https://alpinelinux.org/) distribution so it is has extremely low size (less than 5 MB).


## Ports

* `3128`
* `9050`

## Volumes

* `/var/lib/tor` data dir.

