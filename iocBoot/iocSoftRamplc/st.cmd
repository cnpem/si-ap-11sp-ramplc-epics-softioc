#!/opt/si-ap-11sp-ramplc-epics-softioc/bin/linux-x86_64/SoftRamplc

< envPaths

cd "${TOP}"

epicsEnvSet("P", "SI-11SP:")
epicsEnvSet("R", "AP-RampLC:")

## Register all support components
dbLoadDatabase "$(TOP)/dbd/SoftRamplc.dbd"
SoftRamplc_registerRecordDeviceDriver pdbbase

## Load record instances

dbLoadRecords("$(TOP)/db/global-ramp-config.db", "P=$(P), R=$(R)")
dbLoadRecords("$(TOP)/db/vertical-coils.db", "P=$(P), R=$(R)")
dbLoadRecords("$(TOP)/db/coils.db", "P=$(P), R=$(R)")

cd "${TOP}/iocBoot/${IOC}"
iocInit
