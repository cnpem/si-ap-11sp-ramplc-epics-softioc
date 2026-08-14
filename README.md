# EPICS SoftIOC to ramp the current of Long Coils

[![Continuous Integration
Status](https://github.com/cnpem/si-ap-11sp-ramplc-epics-softioc/actions/workflows/build.yml/badge.svg)](https://github.com/cnpem/si-ap-11sp-ramplc-epics-softioc/actions)

This repository contains the EPICS Soft Input/Output Controller (IOC) used at
LNLS for ramping the Long Coils current till a target value.

The desired value could be set through the `TargetCurrent-SP` PV, and the step
is configurable using `CurrentStep-SP`. The `Start-Cmd` PV must be set to 1 in
order to enable the writing. The writing is also disabled if the feedforward
loop is enabled.

## Running the IOC

You can use the following command to run it in the background using the default
start-up script from
[epics-in-docker](https://github.com/cnpem/epics-in-docker).

```bash
TAG={latest} docker compose up -d
```

## Building the IOC image

This project uses [epics-in-docker](https://github.com/cnpem/epics-in-docker)
for building container images.
