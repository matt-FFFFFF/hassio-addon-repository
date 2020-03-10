# TeslaMate Addon for Home Assistant

This addon builds on the excellent work of [Adrian Kumpf](https://github.com/adriankumpf/teslamate). See his repo for information regarding the TeslaMate application.

## No Ingress Support

TeslaMate does not currently support a base path, so it expects all requests to be generated from the URL root ```/```.
See https://github.com/adriankumpf/teslamate/issues/494.

This means we cannot implement Ingress and must expose TeslaMate to the network.
I recommend you only do this to configure TeslaMate and you then remove the external port mapping.

