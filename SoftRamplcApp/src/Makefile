TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = SoftRamplc
# SoftRamplc.dbd will be created and installed
DBD += SoftRamplc.dbd

# SoftRamplc.dbd will be made up from these files:
SoftRamplc_DBD += base.dbd

# Include dbd files from all support applications:
#SoftRamplc_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#SoftRamplc_LIBS += xxx

# SoftRamplc_registerRecordDeviceDriver.cpp derives from SoftRamplc.dbd
SoftRamplc_SRCS += SoftRamplc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
SoftRamplc_SRCS_DEFAULT += SoftRamplcMain.cpp
SoftRamplc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#SoftRamplc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
SoftRamplc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

