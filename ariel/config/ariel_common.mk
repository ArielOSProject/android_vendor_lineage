

PRODUCT_COPY_FILES += \
    vendor/lineage/ariel/prebuilt/common/etc/default-permissions/ariel-permissions.xml:system/etc/default-permissions/ariel-permissions.xml \
    vendor/lineage/ariel/prebuilt/common/etc/permissions/privapp-permissions-ariel.xml:system/etc/permissions/privapp-permissions-ariel.xml \
    vendor/lineage/ariel/prebuilt/common/etc/permissions/com.arielos.android.xml:system/etc/permissions/com.arielos.android.xml \
    vendor/lineage/ariel/prebuilt/common/etc/permissions/com.arielos.firewall.xml:system/etc/permissions/com.arielos.firewall.xml \
    vendor/lineage/ariel/prebuilt/common/etc/permissions/com.arielos.security.xml:system/etc/permissions/com.arielos.security.xml \
    vendor/lineage/ariel/prebuilt/common/etc/permissions/com.arielos.adblock.xml:system/etc/permissions/com.arielos.adblock.xml \
    vendor/lineage/ariel/prebuilt/common/etc/sysconfig/ariel-sysconfig.xml:system/etc/sysconfig/ariel-sysconfig.xml


# Copy .rc files
PRODUCT_COPY_FILES += \
    vendor/lineage/ariel/prebuilt/common/etc/init/init.ariel.rc:system/etc/init/init.ariel.rc

# Make sure data roaming is off!
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false

# use this for user builds:
# ro.control_privapp_permissions=enforce
PRODUCT_PROPERTY_OVERRIDES += \
    ro.control_privapp_permission=log

# Bootanimation
#PRODUCT_PACKAGES += \
#    bootanimation.zip

# Copy IntentFirewall configuration file
#PRODUCT_COPY_FILES += \
#    vendor/ariel/firewall/ifw.config:data/system/ifw/ifw.config

# GAPPS_VARIANT := mini
# $(call inherit-product, vendor/google/build/opengapps-packages.mk)

include vendor/lineage/ariel/sepolicy/sepolicy.mk

include vendor/lineage/ariel/config/ariel_packages.mk

PRODUCT_PACKAGE_OVERLAYS :=  vendor/lineage/ariel/overlay $(PRODUCT_PACKAGE_OVERLAYS)
