#!../../bin/linux-x86_64/SoftRamplc

#- You may have to change SoftRamplc to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/SoftRamplc.dbd"
SoftRamplc_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/SoftRamplc.db","user=gustavoreis")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=gustavoreis"
