# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TOP_LOCAL_PATH:= $(call my-dir)

# Build application

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := tests

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PROGUARD_ENABLED := disabled

LOCAL_PACKAGE_NAME := SampleBrowserPlugin

LOCAL_JNI_SHARED_LIBRARIES := libsampleplugin

WITH_DEXPREOPT := false

# TODO: doesn't compile with this set
#LOCAL_SDK_VERSION := current

include $(BUILD_PACKAGE)

# ============================================================

# Also build all of the sub-targets under this one: the shared library.
include $(call all-makefiles-under,$(LOCAL_PATH))
