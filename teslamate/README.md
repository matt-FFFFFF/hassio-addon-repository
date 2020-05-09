# TeslaMate Addon for Home Assistant

This addon builds on the excellent work of [Adrian Kumpf](https://github.com/adriankumpf/teslamate). See his repo for information regarding the TeslaMate application.

## DB Connection

If using the Postgres addon from this repo, the database host is ```29b65938-postgres```

## No Ingress Support

TeslaMate does not currently support a base path, so it expects all requests to be generated from the URL root ```/```.
See https://github.com/adriankumpf/teslamate/issues/494.

This means we cannot implement Ingress and must expose TeslaMate to the network.
I recommend you only do this to configure TeslaMate and you then remove the external port mapping.

## Grafana Configuration

> I recommend you use the existing Grafana addon from the community addons

**NEW - Automatic dashboard uploading!**

### Data Source

Configure a PostgreSQL data source as follows:

![Grafana Postgres data source](media/grafana-postgres.png)

### Uploading Dashboards

Configure the **Grafana** addon and set the admin username and password:

```yml
env_vars:
  - name: GF_SECURITY_ADMIN_USER
    value: admin
  - name: GF_SECURITY_ADMIN_PASSWORD
    value: mysecretpassword
```

Now configure the **Teslamate** addon:

```yaml
grafana_import_dashboards: true
grafana_folder_name: "TeslaMate"
grafana_host: "a0d7b954-grafana" # this is correct if you use the community addon
grafana_port: 3000               # this is correct if you use the community addon
grafana_user: "admin"
grafana_pass: "pass"
```
