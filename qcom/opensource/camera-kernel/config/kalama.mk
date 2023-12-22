# SPDX-License-Identifier: GPL-2.0-only

# Localized KCONFIG settings
CONFIG_SPECTRA_ISP := y
CONFIG_SPECTRA_ICP := y
CONFIG_SPECTRA_JPEG := y
CONFIG_SPECTRA_CUSTOM := y
CONFIG_SPECTRA_SENSOR := y
CONFIG_USE_RPMH_DRV_API := y

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),dm1q dm2q dm3q q5q b5q v5q e5q))
CONFIG_SAMSUNG_OIS_MCU_STM32 := y
CONFIG_CAMERA_SYSFS_V2 := y
CONFIG_CAMERA_FRAME_CNT_DBG := y
CONFIG_CAMERA_RF_MIPI := y
CONFIG_SAMSUNG_DEBUG_SENSOR_I2C := y
CONFIG_SAMSUNG_DEBUG_SENSOR_FPS := y
CONFIG_SAMSUNG_DEBUG_HW_INFO := y
CONFIG_CAMERA_HYPERLAPSE_300X := y
CONFIG_SAMSUNG_DEBUG_SENSOR_TIMING_REC := y
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),gts9 gts9p gts9u gts9wifi gts9pwifi gts9uwifi))
CONFIG_CAMERA_SYSFS_V2 := y
CONFIG_CAMERA_FRAME_CNT_DBG := y
CONFIG_CAMERA_RF_MIPI := y
CONFIG_SAMSUNG_DEBUG_SENSOR_I2C := y
CONFIG_SAMSUNG_DEBUG_SENSOR_FPS := y
CONFIG_SAMSUNG_DEBUG_HW_INFO := y
CONFIG_SAMSUNG_PMIC_FLASH := y
CONFIG_SAMSUNG_ACTUATOR_HW_SOFTLANDING := y
CONFIG_CAMERA_CDR_TEST := y
CONFIG_CAMERA_HW_ERROR_DETECT := y
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),dm1q))
CONFIG_SEC_DM1Q_PROJECT := y
CONFIG_SENSOR_RETENTION := y
CONFIG_CAMERA_ADAPTIVE_MIPI := y
CONFIG_CAMERA_CDR_TEST := y
CONFIG_CAMERA_HW_ERROR_DETECT := y
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),dm2q))
CONFIG_SEC_DM2Q_PROJECT := y
CONFIG_SENSOR_RETENTION := y
CONFIG_CAMERA_ADAPTIVE_MIPI := y
CONFIG_CAMERA_CDR_TEST := y
CONFIG_CAMERA_HW_ERROR_DETECT := y
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),dm3q))
CONFIG_SEC_DM3Q_PROJECT := y
CONFIG_SAMSUNG_ACTUATOR_PREVENT_SHAKING := y
CONFIG_SENSOR_RETENTION := y
CONFIG_CAMERA_ADAPTIVE_MIPI := y
CONFIG_CAMERA_CDR_TEST := y
CONFIG_SAMSUNG_WACOM_NOTIFIER := y
CONFIG_CAMERA_HW_ERROR_DETECT := y
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),q5q v5q))
CONFIG_SEC_Q5Q_PROJECT := y
CONFIG_SENSOR_RETENTION := y
CONFIG_CAMERA_ADAPTIVE_MIPI := y
CONFIG_CAMERA_CDR_TEST := y
CONFIG_CAMERA_HW_ERROR_DETECT := y
CONFIG_SAMSUNG_FRONT_TOP :=y
CONFIG_SAMSUNG_FRONT_TOP_EEPROM :=y
CONFIG_SAMSUNG_OIS_ADC_TEMPERATURE_SUPPORT :=y
CONFIG_SOF_FREEZE_FRAME_CNT_READ :=y
CONFIG_ACTUATOR_RETRY_SUPPORT :=y
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),b5q e5q))
CONFIG_SEC_B5Q_PROJECT := y
CONFIG_SENSOR_RETENTION := y
CONFIG_CAMERA_ADAPTIVE_MIPI := y
CONFIG_CAMERA_CDR_TEST := y
CONFIG_CAMERA_HW_ERROR_DETECT := y
CONFIG_SAMSUNG_PMIC_FLASH := y
CONFIG_SAMSUNG_OIS_ADC_TEMPERATURE_SUPPORT :=y
CONFIG_SAMSUNG_CAMERA_SENSOR_FLIP :=y
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),gts9u gts9uwifi))
CONFIG_SEC_GTS9U_PROJECT := y
CONFIG_SAMSUNG_FRONT_DUAL := y
CONFIG_HI847_OTP := y
CONFIG_SAMSUNG_FRONT_TOP_EEPROM := y
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),gts9p gts9pwifi))
CONFIG_SEC_GTS9P_PROJECT := y
CONFIG_HI847_OTP := y
CONFIG_HI1337_OTP := y
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),gts9 gts9wifi))
CONFIG_SEC_GTS9_PROJECT := y
CONFIG_HI1337_OTP := y
endif

# Flags to pass into C preprocessor
ccflags-y += -DCONFIG_SPECTRA_ISP=1
ccflags-y += -DCONFIG_SPECTRA_ICP=1
ccflags-y += -DCONFIG_SPECTRA_JPEG=1
ccflags-y += -DCONFIG_SPECTRA_CUSTOM=1
ccflags-y += -DCONFIG_SPECTRA_SENSOR=1
ccflags-y += -DCONFIG_USE_RPMH_DRV_API=1

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),dm1q dm2q dm3q q5q b5q v5q e5q))
ccflags-y += -DCONFIG_SAMSUNG_OIS_MCU_STM32=1
ccflags-y += -DCONFIG_CAMERA_SYSFS_V2=1
ccflags-y += -DCONFIG_CAMERA_FRAME_CNT_DBG=1
ccflags-y += -DCONFIG_CAMERA_FRAME_CNT_CHECK=1
ccflags-y += -DCONFIG_SAMSUNG_FRONT_EEPROM=1
ccflags-y += -DCONFIG_SAMSUNG_REAR_DUAL=1
ifneq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),b5q e5q))
ccflags-y += -DCONFIG_SAMSUNG_REAR_TRIPLE=1
endif
ccflags-y += -DCONFIG_CAMERA_HYPERLAPSE_300X=1
ccflags-y += -DCONFIG_USE_CAMERA_HW_BIG_DATA=1
#ccflags-y += -DCONFIG_CAMERA_SKIP_SECURE_PAGE_FAULT=1
ccflags-y += -DCONFIG_SAMSUNG_ACTUATOR_READ_HALL_VALUE=1
ccflags-y += -DCONFIG_CAMERA_RF_MIPI=1
ccflags-y += -DCONFIG_SAMSUNG_DEBUG_SENSOR_I2C=1
ccflags-y += -DCONFIG_SAMSUNG_DEBUG_SENSOR_FPS=1
ccflags-y += -DCONFIG_SAMSUNG_DEBUG_HW_INFO=1
ccflags-y += -DCONFIG_SAMSUNG_DEBUG_SENSOR_TIMING_REC=1
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),gts9 gts9p gts9u gts9wifi gts9pwifi gts9uwifi))
ccflags-y += -DCONFIG_CAMERA_SYSFS_V2=1
ccflags-y += -DCONFIG_CAMERA_FRAME_CNT_DBG=1
ccflags-y += -DCONFIG_CAMERA_FRAME_CNT_CHECK=1
ccflags-y += -DCONFIG_SAMSUNG_FRONT_EEPROM=1
ccflags-y += -DCONFIG_USE_CAMERA_HW_BIG_DATA=1
ccflags-y += -DCONFIG_CAMERA_RF_MIPI=1
ccflags-y += -DCONFIG_SAMSUNG_DEBUG_SENSOR_I2C=1
ccflags-y += -DCONFIG_SAMSUNG_DEBUG_SENSOR_FPS=1
ccflags-y += -DCONFIG_SAMSUNG_DEBUG_HW_INFO=1
ccflags-y += -DCONFIG_SAMSUNG_PMIC_FLASH=1
ccflags-y += -DCONFIG_SAMSUNG_ACTUATOR_HW_SOFTLANDING=1
ccflags-y += -DCONFIG_CAMERA_CDR_TEST=1
ccflags-y += -DCONFIG_CAMERA_HW_ERROR_DETECT=1
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),dm1q))
ccflags-y += -DCONFIG_SEC_DM1Q_PROJECT=1
ccflags-y += -DCONFIG_SENSOR_RETENTION=1
ccflags-y += -DCONFIG_CAMERA_ADAPTIVE_MIPI=1
ccflags-y += -DCONFIG_CAMERA_CDR_TEST=1
ccflags-y += -DCONFIG_CAMERA_HW_ERROR_DETECT=1
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),dm2q))
ccflags-y += -DCONFIG_SEC_DM2Q_PROJECT=1
ccflags-y += -DCONFIG_SENSOR_RETENTION=1
ccflags-y += -DCONFIG_CAMERA_ADAPTIVE_MIPI=1
ccflags-y += -DCONFIG_CAMERA_CDR_TEST=1
ccflags-y += -DCONFIG_CAMERA_HW_ERROR_DETECT=1
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),dm3q))
ccflags-y += -DCONFIG_SEC_DM3Q_PROJECT=1
ccflags-y += -DCONFIG_SAMSUNG_REAR_QUADRA=1
ccflags-y += -DCONFIG_SAMSUNG_ACTUATOR_PREVENT_SHAKING=1
ccflags-y += -DCONFIG_SENSOR_RETENTION=1
ccflags-y += -DCONFIG_CAMERA_ADAPTIVE_MIPI=1
ccflags-y += -DCONFIG_SAMSUNG_READ_BPC_FROM_OTP=1
ccflags-y += -DCONFIG_CAMERA_CDR_TEST=1
ccflags-y += -DCONFIG_SAMSUNG_WACOM_NOTIFIER=1
ccflags-y += -DCONFIG_CAMERA_HW_ERROR_DETECT=1
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),q5q v5q))
ccflags-y += -DCONFIG_SEC_Q5Q_PROJECT=1
ccflags-y += -DCONFIG_SENSOR_RETENTION=1
ccflags-y += -DCONFIG_CAMERA_ADAPTIVE_MIPI=1
ccflags-y += -DCONFIG_CAMERA_CDR_TEST=1
ccflags-y += -DCONFIG_CAMERA_HW_ERROR_DETECT=1
ccflags-y += -DCONFIG_SAMSUNG_FRONT_TOP=1
ccflags-y += -DCONFIG_SAMSUNG_FRONT_TOP_EEPROM=1
ccflags-y += -DCONFIG_SAMSUNG_OIS_ADC_TEMPERATURE_SUPPORT=1
ccflags-y += -DCONFIG_SOF_FREEZE_FRAME_CNT_READ=1
ccflags-y += -DCONFIG_ACTUATOR_RETRY_SUPPORT=1
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),b5q e5q))
ccflags-y += -DCONFIG_SEC_B5Q_PROJECT=1
ccflags-y += -DCONFIG_SENSOR_RETENTION=1
ccflags-y += -DCONFIG_CAMERA_ADAPTIVE_MIPI=1
ccflags-y += -DCONFIG_CAMERA_CDR_TEST=1
ccflags-y += -DCONFIG_CAMERA_HW_ERROR_DETECT=1
ccflags-y += -DCONFIG_SAMSUNG_PMIC_FLASH=1
ccflags-y += -DCONFIG_SAMSUNG_OIS_ADC_TEMPERATURE_SUPPORT=1
ccflags-y += -DCONFIG_SAMSUNG_CAMERA_SENSOR_FLIP=1
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),gts9u gts9uwifi))
ccflags-y += -DCONFIG_SEC_GTS9U_PROJECT=1
ccflags-y += -DCONFIG_SAMSUNG_REAR_DUAL=1
ccflags-y += -DCONFIG_SAMSUNG_FRONT_TOP_EEPROM=1
ccflags-y += -DCONFIG_SAMSUNG_FRONT_DUAL=1
ccflags-y += -DCONFIG_HI847_OTP=1
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),gts9p gts9pwifi))
ccflags-y += -DCONFIG_SEC_GTS9P_PROJECT=1
ccflags-y += -DCONFIG_SAMSUNG_REAR_DUAL=1
ccflags-y += -DCONFIG_HI847_OTP=1
ccflags-y += -DCONFIG_HI1337_OTP=1
endif

ifeq ($(PROJECT_NAME), $(filter $(PROJECT_NAME),gts9 gts9wifi))
ccflags-y += -DCONFIG_SEC_GTS9_PROJECT=1
ccflags-y += -DCONFIG_HI1337_OTP=1
endif

# External Dependencies
KBUILD_CPPFLAGS += -DCONFIG_MSM_MMRM=1
ifeq ($(CONFIG_QCOM_VA_MINIDUMP), y)
KBUILD_CPPFLAGS += -DCONFIG_QCOM_VA_MINIDUMP=1
endif

