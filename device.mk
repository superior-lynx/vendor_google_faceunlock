#
# Copyright (C) 2023 The Evolution X Project
# SPDX-License-Identifier: Apache-2.0
#

# Do not include ROM side face unlock
TARGET_FACE_UNLOCK_SUPPORTED := false

# Face unlock
PRODUCT_PACKAGES += \
    SettingsGoogleFutureFaceEnroll

# Face Unlock
PRODUCT_PACKAGES += \
    FaceEnrollAndroid \
    FaceEnrollAppOverlay \
    FaceEnrollSettingsOverlay \
    FaceEnrollSystemUI

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.biometrics.face.xml

# Sepolicy
BOARD_SEPOLICY_DIRS += vendor/google/faceunlock/sepolicy
