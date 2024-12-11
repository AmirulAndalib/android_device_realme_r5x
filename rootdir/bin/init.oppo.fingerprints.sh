#!/system/bin/sh

FP=$(cat /proc/fp_id | grep E_520)
if [ -z $FP = "E_520" ]; then
    setprop persist.vendor.fingerprint.fp_id E_520
fi

#16051 config
chown system:system /sys/bus/platform/devices/soc:fpc_fpc1020*/irq
chown system:system /sys/bus/platform/devices/soc:fpc_fpc1020*/irq_enable
chown system:system /sys/bus/platform/devices/soc:fpc_fpc1020*/wakelock_enable

#16037 config
chown system:system /sys/bus/platform/devices/fpc_fpc1020*/irq
chown system:system /sys/bus/platform/devices/fpc_fpc1020*/irq_enable
chown system:system /sys/bus/platform/devices/fpc_fpc1020*/wakelock_enable

#public config 
chown system:system /dev/homekey
chmod 0666 /dev/homekey
chown system:system /proc/fp_unlock/lcd_status
chmod 0666 /proc/fp_unlock/lcd_status
chown system:system /proc/fp_unlock/lcdoff_status
chmod 0666 /proc/fp_unlock/lcdoff_status

#add for silead
chown system:system /dev/silead_fp
chmod 0666 /dev/silead_fp
