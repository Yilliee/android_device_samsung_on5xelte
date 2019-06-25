/* paths of input devices */
#define TOUCHSCREEN_POWER_PATH "/sys/class/input/input3/enabled"

/* paths of interactive governor */
#define INTERACTIVE_PATH_L_ABOVE_HISPEED_DELAY "/sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay"
#define INTERACTIVE_PATH_L_BOOSTPULSE "/sys/devices/system/cpu/cpu0/cpufreq/interactive/boostpulse"
#define INTERACTIVE_PATH_L_GO_HISPEED_LOAD "/sys/devices/system/cpu/cpu0/cpufreq/interactive/go_hispeed_load"
#define INTERACTIVE_PATH_L_HISPEED_FREQ "/sys/devices/system/cpu/cpu0/cpufreq/interactive/hispeed_freq"
#define INTERACTIVE_PATH_L_IO_IS_BUSY "/sys/devices/system/cpu/cpu0/cpufreq/interactive/io_is_busy"
#define INTERACTIVE_PATH_L_TARGET_LOADS "/sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads"
#define INTERACTIVE_PATH_B_ABOVE_HISPEED_DELAY "/sys/devices/system/cpu/cpu4/cpufreq/interactive/above_hispeed_delay"
#define INTERACTIVE_PATH_B_BOOSTPULSE "/sys/devices/system/cpu/cpu4/cpufreq/interactive/boostpulse"
#define INTERACTIVE_PATH_B_GO_HISPEED_LOAD "/sys/devices/system/cpu/cpu4/cpufreq/interactive/go_hispeed_load"
#define INTERACTIVE_PATH_B_HISPEED_FREQ "/sys/devices/system/cpu/cpu4/cpufreq/interactive/hispeed_freq"
#define INTERACTIVE_PATH_B_IO_IS_BUSY "/sys/devices/system/cpu/cpu4/cpufreq/interactive/io_is_busy"
#define INTERACTIVE_PATH_B_TARGET_LOADS "/sys/devices/system/cpu/cpu4/cpufreq/interactive/target_loads"

#define CPU_FREQ_MAX_0 "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"
#define CPU_FREQ_MAX_4 "/sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq"
#define CPU_FREQ_MIN_0 "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"
#define CPU_FREQ_MIN_4 "/sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq"
#define CPU_HIGH_SPEED_0 "/sys/devices/system/cpu/cpu0/cpufreq/CPU/hispeed_freq"
#define CPU_HIGH_SPEED_4 "/sys/devices/system/cpu/cpu4/cpufreq/CPU/hispeed_freq"




/* interactive normal profile */
#define INTERACTIVE_NORMAL_L_ABOVE_HISPEED_DELAY "19000 1274000:39000"
#define INTERACTIVE_NORMAL_L_GO_HISPEED_LOAD "85"
#define INTERACTIVE_NORMAL_L_HISPEED_FREQ "1500000"
#define INTERACTIVE_NORMAL_L_TARGET_LOADS "75 1170000:85"
#define INTERACTIVE_NORMAL_B_ABOVE_HISPEED_DELAY "59000 1248000:79000 1430000:19000"
#define INTERACTIVE_NORMAL_B_GO_HISPEED_LOAD "89"
#define INTERACTIVE_NORMAL_B_HISPEED_FREQ "1500000"
#define NORM_MIN_FR "300000"
#define INTERACTIVE_NORMAL_B_TARGET_LOADS "80 1040000:81 1352000:87 1430000:90"
#define NR_POSS_CORES_NORM "6"

/* interactive power-save profile */
#define INTERACTIVE_LOW_L_ABOVE_HISPEED_DELAY "19000 1274000:39000"
#define INTERACTIVE_LOW_L_GO_HISPEED_LOAD "85"
#define INTERACTIVE_LOW_L_HISPEED_FREQ "1000000"
#define INTERACTIVE_LOW_L_TARGET_LOADS "75 1170000:85"
#define INTERACTIVE_LOW_B_ABOVE_HISPEED_DELAY "79000 1248000:99000 1430000:19000"
#define INTERACTIVE_LOW_B_GO_HISPEED_LOAD "99"
#define INTERACTIVE_LOW_B_HISPEED_FREQ "500000"
#define LOW_MIN_FR "300000"
#define INTERACTIVE_LOW_B_TARGET_LOADS "87 1664000:90"
#define NR_POSS_CORES_LOW "3"

/* interactive high-performance profile */
#define INTERACTIVE_HIGH_L_ABOVE_HISPEED_DELAY "19000"
#define INTERACTIVE_HIGH_L_GO_HISPEED_LOAD "75"
#define INTERACTIVE_HIGH_L_HISPEED_FREQ "1600000"
#define INTERACTIVE_HIGH_L_TARGET_LOADS "60"
#define INTERACTIVE_HIGH_B_ABOVE_HISPEED_DELAY "19000"
#define INTERACTIVE_HIGH_B_GO_HISPEED_LOAD "75"
#define INTERACTIVE_HIGH_B_HISPEED_FREQ "1600000"
#define PERF_MIN_FR "600000"
#define NR_POSS_CORES_PERF "8"

#define INTERACTIVE_HIGH_B_TARGET_LOADS "70 1378000:80"
