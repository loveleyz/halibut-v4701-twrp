LOCAL_PATH := $(call my-dir)

ifneq ($(TARGET_DEVICE),V4701_I01)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif
