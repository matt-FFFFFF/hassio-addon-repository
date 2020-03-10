# TeslaMate Addon for Home Assistant

This addon builds on the excellent work of [Adrian Kumpf](https://github.com/adriankumpf/teslamate). See his repo for information regarding the TeslaMate application.

## No Ingress Support

TeslaMate does not currently support a base path, so it expects all requests to be generated from the URL root ```/```.
See https://github.com/adriankumpf/teslamate/issues/494.

This means we cannot implement Ingress and must expose TeslaMate to the network.
I recommend you only do this to configure TeslaMate and you then remove the external port mapping.

## Uploading Grafana Dashboards

This must be done manually for now. You must use a Linux terminal and have ```curl``` available.

- Use the Grafana addon from the community repository.

- Expose the Grafana UI on an external port and restart it

- Making  note of the admin username and password (see the addon container logs), clone the [teslamate repo](https://github.com/adriankumpf/teslamate)

```bash
git clone https://github.com/adriankumpf/teslamate.git
```

- Open a terminal and navigate to the ./grafana directory

- Edit the ```dashboards.sh``` file and change the URL, LOGIN and DASHBOARDS_DIRECTORY to reflect your installation.

e.g.

```bash
readonly URL=${URL:-"http://my-homeassistant-host:3000"}
readonly LOGIN=${LOGIN:-"admin:mysecretpassword"}
readonly DASHBOARDS_DIRECTORY=${DASHBOARDS_DIRECTORY:-"./dashboards"}
```

- Run the dashboards script

```bash
./dashboards.sh
```

- Finally remove the port mapping from Grafana and restart the addon
