ifneq ($(ANDROID_PRODUCT_OUT),)

#########################################################################
# Create Folder Structure
#########################################################################

$(shell rm -rf $(ANDROID_PRODUCT_OUT)/system/rfs/)

#To be enabled when prepopulation support is needed for the read_write folder
$(shell rm -rf  $(ANDROID_PRODUCT_OUT)/system/rfs/)
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/msm/mpss/)
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/msm/adsp/)
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/mpss/)
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/adsp/)

#########################################################################
# MSM Folders
#########################################################################
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/msm/mpss/readonly)
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/msm/adsp/readonly)

$(shell ln -s /data/tombstones/modem $(ANDROID_PRODUCT_OUT)/system/rfs/msm/mpss/ramdumps)
$(shell ln -s /persist/rfs/msm/mpss $(ANDROID_PRODUCT_OUT)/system/rfs/msm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/msm/mpss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/msm/mpss/hlos)
$(shell ln -s /firmware $(ANDROID_PRODUCT_OUT)/system/rfs/msm/mpss/readonly/firmware)

$(shell ln -s /data/tombstones/lpass $(ANDROID_PRODUCT_OUT)/system/rfs/msm/adsp/ramdumps)
$(shell ln -s /persist/rfs/msm/adsp $(ANDROID_PRODUCT_OUT)/system/rfs/msm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/msm/adsp/shared)
$(shell ln -s /persist/hlos_rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/msm/adsp/hlos)
$(shell ln -s /firmware $(ANDROID_PRODUCT_OUT)/system/rfs/msm/adsp/readonly/firmware)

#########################################################################
# MDM Folders
#########################################################################
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/mpss/readonly)
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/adsp/readonly)
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/sparrow/readonly)

$(shell ln -s /data/tombstones/modem $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/mpss/ramdumps)
$(shell ln -s /persist/rfs/mdm/mpss $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/mpss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/mpss/hlos)
$(shell ln -s /firmware $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/mpss/readonly/firmware)

$(shell ln -s /data/tombstones/lpass $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/adsp/ramdumps)
$(shell ln -s /persist/rfs/mdm/adsp $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/adsp/shared)
$(shell ln -s /persist/hlos_rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/adsp/hlos)
$(shell ln -s /firmware $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/adsp/readonly/firmware)

$(shell ln -s /data/tombstones/sparrow $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/sparrow/ramdumps)
$(shell ln -s /persist/rfs/mdm/sparrow $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/sparrow/readwrite)
$(shell ln -s /persist/rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/sparrow/shared)
$(shell ln -s /persist/hlos_rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/sparrow/hlos)
$(shell ln -s /firmware $(ANDROID_PRODUCT_OUT)/system/rfs/mdm/sparrow/readonly/firmware)

#########################################################################
# APQ Folders
#########################################################################
$(shell mkdir -p $(ANDROID_PRODUCT_OUT)/system/rfs/apq/gnss/readonly)

$(shell ln -s /data/tombstones/modem $(ANDROID_PRODUCT_OUT)/system/rfs/apq/gnss/ramdumps)
$(shell ln -s /persist/rfs/apq/gnss $(ANDROID_PRODUCT_OUT)/system/rfs/apq/gnss/readwrite)
$(shell ln -s /persist/rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/apq/gnss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(ANDROID_PRODUCT_OUT)/system/rfs/apq/gnss/hlos)
$(shell ln -s /firmware $(ANDROID_PRODUCT_OUT)/system/rfs/apq/gnss/readonly/firmware)

endif