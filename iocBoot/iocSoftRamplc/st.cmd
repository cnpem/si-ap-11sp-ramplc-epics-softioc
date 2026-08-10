#!/opt/si-ap-11sp-ramplc-epics-softioc/bin/linux-x86_64/SoftRamplc

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/SoftRamplc.dbd"
SoftRamplc_registerRecordDeviceDriver pdbbase

## Load record instances

cd "${TOP}/iocBoot/${IOC}"
iocInit
