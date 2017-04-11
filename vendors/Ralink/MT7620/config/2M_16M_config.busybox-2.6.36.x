#
# Automatically generated make config: don't edit
# Busybox version: 1.12.1
# Wed Sep 19 12:09:49 2012
#
CONFIG_HAVE_DOT_CONFIG=y

#
# Busybox Settings
#

#
# General Configuration
#
# CONFIG_DESKTOP is not set
# CONFIG_EXTRA_COMPAT is not set
# CONFIG_FEATURE_ASSUME_UNICODE is not set
CONFIG_FEATURE_BUFFERS_USE_MALLOC=y
# CONFIG_FEATURE_BUFFERS_GO_ON_STACK is not set
# CONFIG_FEATURE_BUFFERS_GO_IN_BSS is not set
CONFIG_SHOW_USAGE=y
# CONFIG_FEATURE_VERBOSE_USAGE is not set
# CONFIG_FEATURE_COMPRESS_USAGE is not set
# CONFIG_FEATURE_INSTALLER is not set
# CONFIG_LOCALE_SUPPORT is not set
# CONFIG_GETOPT_LONG is not set
CONFIG_FEATURE_DEVPTS=y
# CONFIG_FEATURE_CLEAN_UP is not set
# CONFIG_FEATURE_PIDFILE is not set
CONFIG_FEATURE_SUID=y
CONFIG_FEATURE_SUID_CONFIG=y
CONFIG_FEATURE_SUID_CONFIG_QUIET=y
# CONFIG_SELINUX is not set
# CONFIG_FEATURE_PREFER_APPLETS is not set
CONFIG_BUSYBOX_EXEC_PATH="/proc/self/exe"
CONFIG_FEATURE_SYSLOG=y
# CONFIG_FEATURE_HAVE_RPC is not set

#
# Build Options
#
# CONFIG_STATIC is not set
# CONFIG_PIE is not set
# CONFIG_NOMMU is not set
# CONFIG_BUILD_LIBBUSYBOX is not set
# CONFIG_FEATURE_INDIVIDUAL is not set
# CONFIG_FEATURE_SHARED_BUSYBOX is not set
# CONFIG_LFS is not set
CONFIG_CROSS_COMPILER_PREFIX=""
# CONFIG_BUILD_WITH_MIPS16 is not set

#
# Debugging Options
#
# CONFIG_DEBUG is not set
# CONFIG_DEBUG_PESSIMIZE is not set
# CONFIG_WERROR is not set
CONFIG_NO_DEBUG_LIB=y
# CONFIG_DMALLOC is not set
# CONFIG_EFENCE is not set
# CONFIG_INCLUDE_SUSv2 is not set
# CONFIG_PARSE is not set

#
# Installation Options
#
# CONFIG_INSTALL_NO_USR is not set
CONFIG_INSTALL_APPLET_SYMLINKS=y
# CONFIG_INSTALL_APPLET_HARDLINKS is not set
# CONFIG_INSTALL_APPLET_SCRIPT_WRAPPERS is not set
# CONFIG_INSTALL_APPLET_DONT is not set
# CONFIG_INSTALL_SH_APPLET_SYMLINK is not set
# CONFIG_INSTALL_SH_APPLET_HARDLINK is not set
# CONFIG_INSTALL_SH_APPLET_SCRIPT_WRAPPER is not set
CONFIG_PREFIX="../../romfs"

#
# Busybox Library Tuning
#
CONFIG_PASSWORD_MINLEN=6
CONFIG_MD5_SIZE_VS_SPEED=2
# CONFIG_FEATURE_FAST_TOP is not set
# CONFIG_FEATURE_ETC_NETWORKS is not set
CONFIG_FEATURE_EDITING=y
CONFIG_FEATURE_EDITING_MAX_LEN=1024
# CONFIG_FEATURE_EDITING_VI is not set
CONFIG_FEATURE_EDITING_HISTORY=8
# CONFIG_FEATURE_EDITING_SAVEHISTORY is not set
CONFIG_FEATURE_TAB_COMPLETION=y
# CONFIG_FEATURE_USERNAME_COMPLETION is not set
# CONFIG_FEATURE_EDITING_FANCY_PROMPT is not set
# CONFIG_FEATURE_VERBOSE_CP_MESSAGE is not set
CONFIG_FEATURE_COPYBUF_KB=4
# CONFIG_MONOTONIC_SYSCALL is not set
# CONFIG_IOCTL_HEX2STR_ERROR is not set
# CONFIG_FEATURE_HWIB is not set

#
# Applets
#

#
# Archival Utilities
#
# CONFIG_FEATURE_SEAMLESS_LZMA is not set
# CONFIG_FEATURE_SEAMLESS_BZ2 is not set
# CONFIG_FEATURE_SEAMLESS_GZ is not set
# CONFIG_FEATURE_SEAMLESS_Z is not set
# CONFIG_AR is not set
# CONFIG_FEATURE_AR_LONG_FILENAMES is not set
# CONFIG_BUNZIP2 is not set
# CONFIG_BZIP2 is not set
# CONFIG_CPIO is not set
# CONFIG_FEATURE_CPIO_O is not set
# CONFIG_DPKG is not set
# CONFIG_DPKG_DEB is not set
# CONFIG_FEATURE_DPKG_DEB_EXTRACT_ONLY is not set
# CONFIG_GUNZIP is not set
# CONFIG_GZIP is not set
# CONFIG_RPM2CPIO is not set
# CONFIG_RPM is not set
# CONFIG_TAR is not set
# CONFIG_FEATURE_TAR_CREATE is not set
# CONFIG_FEATURE_TAR_AUTODETECT is not set
# CONFIG_FEATURE_TAR_FROM is not set
# CONFIG_FEATURE_TAR_OLDGNU_COMPATIBILITY is not set
# CONFIG_FEATURE_TAR_OLDSUN_COMPATIBILITY is not set
# CONFIG_FEATURE_TAR_GNU_EXTENSIONS is not set
# CONFIG_FEATURE_TAR_LONG_OPTIONS is not set
# CONFIG_FEATURE_TAR_UNAME_GNAME is not set
# CONFIG_UNCOMPRESS is not set
# CONFIG_UNLZMA is not set
# CONFIG_FEATURE_LZMA_FAST is not set
# CONFIG_UNZIP is not set

#
# Coreutils
#
# CONFIG_BASENAME is not set
# CONFIG_CAL is not set
CONFIG_CAT=y
# CONFIG_CATV is not set
# CONFIG_CHGRP is not set
# CONFIG_CHMOD is not set
# CONFIG_CHOWN is not set
# CONFIG_CHROOT is not set
# CONFIG_CKSUM is not set
# CONFIG_COMM is not set
CONFIG_CP=y
# CONFIG_CUT is not set
CONFIG_DATE=y
CONFIG_FEATURE_DATE_ISOFMT=y
# CONFIG_DD is not set
# CONFIG_FEATURE_DD_SIGNAL_HANDLING is not set
# CONFIG_FEATURE_DD_IBS_OBS is not set
# CONFIG_DF is not set
# CONFIG_FEATURE_DF_INODE is not set
# CONFIG_DIRNAME is not set
# CONFIG_DOS2UNIX is not set
# CONFIG_UNIX2DOS is not set
# CONFIG_DU is not set
# CONFIG_FEATURE_DU_DEFAULT_BLOCKSIZE_1K is not set
CONFIG_ECHO=y
CONFIG_FEATURE_FANCY_ECHO=y
# CONFIG_ENV is not set
# CONFIG_FEATURE_ENV_LONG_OPTIONS is not set
# CONFIG_EXPAND is not set
# CONFIG_FEATURE_EXPAND_LONG_OPTIONS is not set
CONFIG_EXPR=y
# CONFIG_EXPR_MATH_SUPPORT_64 is not set
# CONFIG_FALSE is not set
# CONFIG_FOLD is not set
# CONFIG_HEAD is not set
# CONFIG_FEATURE_FANCY_HEAD is not set
# CONFIG_HOSTID is not set
# CONFIG_ID is not set
# CONFIG_INSTALL is not set
# CONFIG_FEATURE_INSTALL_LONG_OPTIONS is not set
# CONFIG_LENGTH is not set
# CONFIG_LN is not set
# CONFIG_LOGNAME is not set
CONFIG_LS=y
# CONFIG_FEATURE_LS_FILETYPES is not set
# CONFIG_FEATURE_LS_FOLLOWLINKS is not set
# CONFIG_FEATURE_LS_RECURSIVE is not set
# CONFIG_FEATURE_LS_SORTFILES is not set
# CONFIG_FEATURE_LS_TIMESTAMPS is not set
# CONFIG_FEATURE_LS_USERNAME is not set
# CONFIG_FEATURE_LS_COLOR is not set
# CONFIG_FEATURE_LS_COLOR_IS_DEFAULT is not set
# CONFIG_MD5SUM is not set
CONFIG_MKDIR=y
# CONFIG_FEATURE_MKDIR_LONG_OPTIONS is not set
# CONFIG_MKFIFO is not set
# CONFIG_MKNOD is not set
# CONFIG_MV is not set
# CONFIG_FEATURE_MV_LONG_OPTIONS is not set
# CONFIG_NICE is not set
# CONFIG_NOHUP is not set
# CONFIG_OD is not set
# CONFIG_PRINTENV is not set
CONFIG_PRINTF=y
CONFIG_PWD=y
# CONFIG_READLINK is not set
# CONFIG_FEATURE_READLINK_FOLLOW is not set
# CONFIG_REALPATH is not set
CONFIG_RM=y
# CONFIG_RMDIR is not set
# CONFIG_FEATURE_RMDIR_LONG_OPTIONS is not set
# CONFIG_SEQ is not set
# CONFIG_SHA1SUM is not set
CONFIG_SLEEP=y
# CONFIG_FEATURE_FANCY_SLEEP is not set
# CONFIG_FEATURE_FLOAT_SLEEP is not set
# CONFIG_SORT is not set
# CONFIG_FEATURE_SORT_BIG is not set
# CONFIG_SPLIT is not set
# CONFIG_FEATURE_SPLIT_FANCY is not set
# CONFIG_STAT is not set
# CONFIG_FEATURE_STAT_FORMAT is not set
# CONFIG_STTY is not set
# CONFIG_SUM is not set
# CONFIG_SYNC is not set
# CONFIG_TAC is not set
# CONFIG_TAIL is not set
# CONFIG_FEATURE_FANCY_TAIL is not set
# CONFIG_TEE is not set
# CONFIG_FEATURE_TEE_USE_BLOCK_IO is not set
CONFIG_TEST=y
# CONFIG_FEATURE_TEST_64 is not set
CONFIG_TOUCH=y
CONFIG_TR=y
# CONFIG_FEATURE_TR_CLASSES is not set
# CONFIG_FEATURE_TR_EQUIV is not set
# CONFIG_TRUE is not set
# CONFIG_TTY is not set
# CONFIG_UNAME is not set
# CONFIG_UNEXPAND is not set
# CONFIG_FEATURE_UNEXPAND_LONG_OPTIONS is not set
# CONFIG_UNIQ is not set
# CONFIG_USLEEP is not set
# CONFIG_UUDECODE is not set
# CONFIG_UUENCODE is not set
# CONFIG_WC is not set
# CONFIG_FEATURE_WC_LARGE is not set
# CONFIG_WHO is not set
# CONFIG_WHOAMI is not set
# CONFIG_YES is not set

#
# Common options for cp and mv
#
# CONFIG_FEATURE_PRESERVE_HARDLINKS is not set

#
# Common options for ls, more and telnet
#
CONFIG_FEATURE_AUTOWIDTH=y

#
# Common options for df, du, ls
#
# CONFIG_FEATURE_HUMAN_READABLE is not set
# CONFIG_FEATURE_MD5_SHA1_SUM_CHECK is not set

#
# Console Utilities
#
# CONFIG_CHVT is not set
# CONFIG_CLEAR is not set
# CONFIG_DEALLOCVT is not set
# CONFIG_DUMPKMAP is not set
# CONFIG_KBD_MODE is not set
# CONFIG_LOADFONT is not set
# CONFIG_LOADKMAP is not set
# CONFIG_OPENVT is not set
# CONFIG_RESET is not set
# CONFIG_RESIZE is not set
# CONFIG_FEATURE_RESIZE_PRINT is not set
# CONFIG_SETCONSOLE is not set
# CONFIG_FEATURE_SETCONSOLE_LONG_OPTIONS is not set
# CONFIG_SETFONT is not set
# CONFIG_SETKEYCODES is not set
# CONFIG_SETLOGCONS is not set
# CONFIG_SHOWKEY is not set

#
# Debian Utilities
#
# CONFIG_MKTEMP is not set
# CONFIG_PIPE_PROGRESS is not set
# CONFIG_RUN_PARTS is not set
# CONFIG_FEATURE_RUN_PARTS_LONG_OPTIONS is not set
# CONFIG_FEATURE_RUN_PARTS_FANCY is not set
# CONFIG_START_STOP_DAEMON is not set
# CONFIG_FEATURE_START_STOP_DAEMON_FANCY is not set
# CONFIG_FEATURE_START_STOP_DAEMON_LONG_OPTIONS is not set
# CONFIG_WHICH is not set

#
# Editors
#
# CONFIG_AWK is not set
# CONFIG_FEATURE_AWK_MATH is not set
# CONFIG_CMP is not set
# CONFIG_DIFF is not set
# CONFIG_FEATURE_DIFF_BINARY is not set
# CONFIG_FEATURE_DIFF_DIR is not set
# CONFIG_FEATURE_DIFF_MINIMAL is not set
# CONFIG_ED is not set
# CONFIG_PATCH is not set
CONFIG_SED=y
# CONFIG_VI is not set
CONFIG_FEATURE_VI_MAX_LEN=
# CONFIG_FEATURE_VI_8BIT is not set
# CONFIG_FEATURE_VI_COLON is not set
# CONFIG_FEATURE_VI_YANKMARK is not set
# CONFIG_FEATURE_VI_SEARCH is not set
# CONFIG_FEATURE_VI_USE_SIGNALS is not set
# CONFIG_FEATURE_VI_DOT_CMD is not set
# CONFIG_FEATURE_VI_READONLY is not set
# CONFIG_FEATURE_VI_SETOPTS is not set
# CONFIG_FEATURE_VI_SET is not set
# CONFIG_FEATURE_VI_WIN_RESIZE is not set
# CONFIG_FEATURE_VI_OPTIMIZE_CURSOR is not set
# CONFIG_FEATURE_ALLOW_EXEC is not set

#
# Finding Utilities
#
# CONFIG_FIND is not set
# CONFIG_FEATURE_FIND_PRINT0 is not set
# CONFIG_FEATURE_FIND_MTIME is not set
# CONFIG_FEATURE_FIND_MMIN is not set
# CONFIG_FEATURE_FIND_PERM is not set
# CONFIG_FEATURE_FIND_TYPE is not set
# CONFIG_FEATURE_FIND_XDEV is not set
# CONFIG_FEATURE_FIND_MAXDEPTH is not set
# CONFIG_FEATURE_FIND_NEWER is not set
# CONFIG_FEATURE_FIND_INUM is not set
# CONFIG_FEATURE_FIND_EXEC is not set
# CONFIG_FEATURE_FIND_USER is not set
# CONFIG_FEATURE_FIND_GROUP is not set
# CONFIG_FEATURE_FIND_NOT is not set
# CONFIG_FEATURE_FIND_DEPTH is not set
# CONFIG_FEATURE_FIND_PAREN is not set
# CONFIG_FEATURE_FIND_SIZE is not set
# CONFIG_FEATURE_FIND_PRUNE is not set
# CONFIG_FEATURE_FIND_DELETE is not set
# CONFIG_FEATURE_FIND_PATH is not set
# CONFIG_FEATURE_FIND_REGEX is not set
# CONFIG_FEATURE_FIND_CONTEXT is not set
CONFIG_GREP=y
# CONFIG_FEATURE_GREP_EGREP_ALIAS is not set
# CONFIG_FEATURE_GREP_FGREP_ALIAS is not set
# CONFIG_FEATURE_GREP_CONTEXT is not set
# CONFIG_XARGS is not set
# CONFIG_FEATURE_XARGS_SUPPORT_CONFIRMATION is not set
# CONFIG_FEATURE_XARGS_SUPPORT_QUOTES is not set
# CONFIG_FEATURE_XARGS_SUPPORT_TERMOPT is not set
# CONFIG_FEATURE_XARGS_SUPPORT_ZERO_TERM is not set

#
# Init Utilities
#
CONFIG_INIT=y
# CONFIG_DEBUG_INIT is not set
CONFIG_FEATURE_USE_INITTAB=y
# CONFIG_FEATURE_KILL_REMOVED is not set
CONFIG_FEATURE_KILL_DELAY=0
# CONFIG_FEATURE_INIT_SCTTY is not set
# CONFIG_FEATURE_INIT_SYSLOG is not set
# CONFIG_FEATURE_EXTRA_QUIET is not set
# CONFIG_FEATURE_INIT_COREDUMPS is not set
# CONFIG_FEATURE_INITRD is not set
CONFIG_HALT=y
# CONFIG_MESG is not set

#
# Login/Password Management Utilities
#
# CONFIG_FEATURE_SHADOWPASSWDS is not set
# CONFIG_USE_BB_PWD_GRP is not set
# CONFIG_USE_BB_SHADOW is not set
# CONFIG_USE_BB_CRYPT is not set
# CONFIG_ADDGROUP is not set
# CONFIG_FEATURE_ADDUSER_TO_GROUP is not set
# CONFIG_DELGROUP is not set
# CONFIG_FEATURE_DEL_USER_FROM_GROUP is not set
# CONFIG_FEATURE_CHECK_NAMES is not set
# CONFIG_ADDUSER is not set
# CONFIG_FEATURE_ADDUSER_LONG_OPTIONS is not set
# CONFIG_DELUSER is not set
# CONFIG_GETTY is not set
# CONFIG_FEATURE_UTMP is not set
# CONFIG_FEATURE_WTMP is not set
CONFIG_LOGIN=y
# CONFIG_PAM is not set
# CONFIG_LOGIN_SCRIPTS is not set
CONFIG_FEATURE_NOLOGIN=y
CONFIG_FEATURE_SECURETTY=y
# CONFIG_PASSWD is not set
# CONFIG_FEATURE_PASSWD_WEAK_CHECK is not set
# CONFIG_CRYPTPW is not set
CONFIG_CHPASSWD=y
# CONFIG_SU is not set
# CONFIG_FEATURE_SU_SYSLOG is not set
# CONFIG_FEATURE_SU_CHECKS_SHELLS is not set
# CONFIG_SULOGIN is not set
# CONFIG_VLOCK is not set

#
# Linux Ext2 FS Progs
#
# CONFIG_CHATTR is not set
# CONFIG_FSCK is not set
# CONFIG_LSATTR is not set

#
# Linux Module Utilities
#
# CONFIG_MODPROBE_SMALL is not set
# CONFIG_FEATURE_MODPROBE_SMALL_OPTIONS_ON_CMDLINE is not set
# CONFIG_FEATURE_MODPROBE_SMALL_CHECK_ALREADY_LOADED is not set
# CONFIG_DEPMOD is not set
# CONFIG_FEATURE_DEPMOD_PRUNE_FANCY is not set
# CONFIG_FEATURE_DEPMOD_ALIAS is not set
# CONFIG_INSMOD is not set
# CONFIG_FEATURE_INSMOD_VERSION_CHECKING is not set
# CONFIG_FEATURE_INSMOD_KSYMOOPS_SYMBOLS is not set
# CONFIG_FEATURE_INSMOD_LOADINKMEM is not set
# CONFIG_FEATURE_INSMOD_LOAD_MAP is not set
# CONFIG_FEATURE_INSMOD_LOAD_MAP_FULL is not set
# CONFIG_RMMOD is not set
# CONFIG_LSMOD is not set
# CONFIG_FEATURE_LSMOD_PRETTY_2_6_OUTPUT is not set
# CONFIG_MODPROBE is not set
# CONFIG_FEATURE_MODPROBE_MULTIPLE_OPTIONS is not set
# CONFIG_FEATURE_MODPROBE_FANCY_ALIAS is not set
# CONFIG_FEATURE_MODPROBE_BLACKLIST is not set
# CONFIG_FEATURE_CHECK_TAINTED_MODULE is not set
# CONFIG_FEATURE_2_4_MODULES is not set
# CONFIG_FEATURE_2_6_MODULES is not set
CONFIG_DEFAULT_MODULES_DIR=""
CONFIG_DEFAULT_DEPMOD_FILE=""
# CONFIG_FEATURE_QUERY_MODULE_INTERFACE is not set

#
# Linux System Utilities
#
# CONFIG_DMESG is not set
# CONFIG_FEATURE_DMESG_PRETTY is not set
# CONFIG_FBSET is not set
# CONFIG_FEATURE_FBSET_FANCY is not set
# CONFIG_FEATURE_FBSET_READMODE is not set
# CONFIG_FDFLUSH is not set
# CONFIG_FDFORMAT is not set
# CONFIG_FDISK is not set
# CONFIG_FDISK_SUPPORT_LARGE_DISKS is not set
# CONFIG_FEATURE_FDISK_WRITABLE is not set
# CONFIG_FEATURE_AIX_LABEL is not set
# CONFIG_FEATURE_SGI_LABEL is not set
# CONFIG_FEATURE_SUN_LABEL is not set
# CONFIG_FEATURE_OSF_LABEL is not set
# CONFIG_FEATURE_FDISK_ADVANCED is not set
# CONFIG_FINDFS is not set
# CONFIG_FREERAMDISK is not set
# CONFIG_FSCK_MINIX is not set
# CONFIG_MKFS_MINIX is not set
# CONFIG_FEATURE_MINIX2 is not set
# CONFIG_GETOPT is not set
# CONFIG_HEXDUMP is not set
# CONFIG_FEATURE_HEXDUMP_REVERSE is not set
# CONFIG_HD is not set
# CONFIG_HWCLOCK is not set
# CONFIG_FEATURE_HWCLOCK_LONG_OPTIONS is not set
# CONFIG_FEATURE_HWCLOCK_ADJTIME_FHS is not set
# CONFIG_IPCRM is not set
# CONFIG_IPCS is not set
# CONFIG_LOSETUP is not set
# CONFIG_MDEV is not set
# CONFIG_FEATURE_MDEV_CONF is not set
# CONFIG_FEATURE_MDEV_RENAME is not set
# CONFIG_FEATURE_MDEV_RENAME_REGEXP is not set
# CONFIG_FEATURE_MDEV_EXEC is not set
# CONFIG_FEATURE_MDEV_LOAD_FIRMWARE is not set
# CONFIG_MKSWAP is not set
# CONFIG_FEATURE_MKSWAP_V0 is not set
# CONFIG_MORE is not set
# CONFIG_FEATURE_USE_TERMIOS is not set
# CONFIG_VOLUMEID is not set
# CONFIG_FEATURE_VOLUMEID_EXT is not set
# CONFIG_FEATURE_VOLUMEID_REISERFS is not set
# CONFIG_FEATURE_VOLUMEID_FAT is not set
# CONFIG_FEATURE_VOLUMEID_HFS is not set
# CONFIG_FEATURE_VOLUMEID_JFS is not set
# CONFIG_FEATURE_VOLUMEID_XFS is not set
# CONFIG_FEATURE_VOLUMEID_NTFS is not set
# CONFIG_FEATURE_VOLUMEID_ISO9660 is not set
# CONFIG_FEATURE_VOLUMEID_UDF is not set
# CONFIG_FEATURE_VOLUMEID_LUKS is not set
# CONFIG_FEATURE_VOLUMEID_LINUXSWAP is not set
# CONFIG_FEATURE_VOLUMEID_CRAMFS is not set
# CONFIG_FEATURE_VOLUMEID_ROMFS is not set
# CONFIG_FEATURE_VOLUMEID_SYSV is not set
# CONFIG_FEATURE_VOLUMEID_OCFS2 is not set
# CONFIG_FEATURE_VOLUMEID_LINUXRAID is not set
CONFIG_MOUNT=y
# CONFIG_FEATURE_MOUNT_FAKE is not set
# CONFIG_FEATURE_MOUNT_VERBOSE is not set
# CONFIG_FEATURE_MOUNT_HELPERS is not set
# CONFIG_FEATURE_MOUNT_LABEL is not set
# CONFIG_FEATURE_MOUNT_NFS is not set
# CONFIG_FEATURE_MOUNT_CIFS is not set
# CONFIG_FEATURE_MOUNT_FLAGS is not set
CONFIG_FEATURE_MOUNT_FSTAB=y
# CONFIG_PIVOT_ROOT is not set
# CONFIG_RDATE is not set
# CONFIG_RDEV is not set
# CONFIG_READPROFILE is not set
# CONFIG_RTCWAKE is not set
# CONFIG_SCRIPT is not set
# CONFIG_SETARCH is not set
# CONFIG_SWAPONOFF is not set
# CONFIG_FEATURE_SWAPON_PRI is not set
# CONFIG_SWITCH_ROOT is not set
# CONFIG_UMOUNT is not set
# CONFIG_FEATURE_UMOUNT_ALL is not set

#
# Common options for mount/umount
#
# CONFIG_FEATURE_MOUNT_LOOP is not set
# CONFIG_FEATURE_MTAB_SUPPORT is not set

#
# Miscellaneous Utilities
#
# CONFIG_ADJTIMEX is not set
# CONFIG_BBCONFIG is not set
# CONFIG_CHAT is not set
# CONFIG_FEATURE_CHAT_NOFAIL is not set
# CONFIG_FEATURE_CHAT_TTY_HIFI is not set
# CONFIG_FEATURE_CHAT_IMPLICIT_CR is not set
# CONFIG_FEATURE_CHAT_SWALLOW_OPTS is not set
# CONFIG_FEATURE_CHAT_SEND_ESCAPES is not set
# CONFIG_FEATURE_CHAT_VAR_ABORT_LEN is not set
# CONFIG_FEATURE_CHAT_CLR_ABORT is not set
# CONFIG_CHRT is not set
# CONFIG_CROND is not set
# CONFIG_DEBUG_CROND_OPTION is not set
# CONFIG_FEATURE_CROND_CALL_SENDMAIL is not set
# CONFIG_CRONTAB is not set
# CONFIG_DC is not set
# CONFIG_DEVFSD is not set
# CONFIG_DEVFSD_MODLOAD is not set
# CONFIG_DEVFSD_FG_NP is not set
# CONFIG_DEVFSD_VERBOSE is not set
# CONFIG_FEATURE_DEVFS is not set
# CONFIG_EJECT is not set
# CONFIG_FEATURE_EJECT_SCSI is not set
# CONFIG_FBSPLASH is not set
# CONFIG_INOTIFYD is not set
# CONFIG_LAST is not set
# CONFIG_FEATURE_LAST_SMALL is not set
# CONFIG_FEATURE_LAST_FANCY is not set
# CONFIG_LESS is not set
CONFIG_FEATURE_LESS_MAXLINES=
# CONFIG_FEATURE_LESS_BRACKETS is not set
# CONFIG_FEATURE_LESS_FLAGS is not set
# CONFIG_FEATURE_LESS_FLAGCS is not set
# CONFIG_FEATURE_LESS_MARKS is not set
# CONFIG_FEATURE_LESS_REGEXP is not set
# CONFIG_HDPARM is not set
# CONFIG_FEATURE_HDPARM_GET_IDENTITY is not set
# CONFIG_FEATURE_HDPARM_HDIO_SCAN_HWIF is not set
# CONFIG_FEATURE_HDPARM_HDIO_UNREGISTER_HWIF is not set
# CONFIG_FEATURE_HDPARM_HDIO_DRIVE_RESET is not set
# CONFIG_FEATURE_HDPARM_HDIO_TRISTATE_HWIF is not set
# CONFIG_FEATURE_HDPARM_HDIO_GETSET_DMA is not set
# CONFIG_MAKEDEVS is not set
# CONFIG_FEATURE_MAKEDEVS_LEAF is not set
# CONFIG_FEATURE_MAKEDEVS_TABLE is not set
# CONFIG_MAN is not set
# CONFIG_MICROCOM is not set
# CONFIG_MOUNTPOINT is not set
# CONFIG_MT is not set
# CONFIG_RAIDAUTORUN is not set
# CONFIG_READAHEAD is not set
# CONFIG_RUNLEVEL is not set
# CONFIG_RX is not set
# CONFIG_SETSID is not set
# CONFIG_STRINGS is not set
# CONFIG_TASKSET is not set
# CONFIG_FEATURE_TASKSET_FANCY is not set
# CONFIG_TIME is not set
# CONFIG_TTYSIZE is not set
# CONFIG_WATCHDOG is not set

#
# Networking Utilities
#
# CONFIG_FEATURE_IPV6 is not set
# CONFIG_FEATURE_PREFER_IPV4_ADDRESS is not set
# CONFIG_VERBOSE_RESOLUTION_ERRORS is not set
# CONFIG_ARP is not set
# CONFIG_ARPING is not set
CONFIG_BRCTL=y
CONFIG_FEATURE_BRCTL_FANCY=y
CONFIG_FEATURE_BRCTL_SHOW=y
# CONFIG_DNSD is not set
# CONFIG_ETHER_WAKE is not set
# CONFIG_FAKEIDENTD is not set
# CONFIG_FTPGET is not set
# CONFIG_FTPPUT is not set
# CONFIG_FEATURE_FTPGETPUT_LONG_OPTIONS is not set
# CONFIG_HOSTNAME is not set
# CONFIG_HTTPD is not set
# CONFIG_FEATURE_HTTPD_RANGES is not set
# CONFIG_FEATURE_HTTPD_USE_SENDFILE is not set
# CONFIG_FEATURE_HTTPD_RELOAD_CONFIG_SIGHUP is not set
# CONFIG_FEATURE_HTTPD_SETUID is not set
# CONFIG_FEATURE_HTTPD_BASIC_AUTH is not set
# CONFIG_FEATURE_HTTPD_AUTH_MD5 is not set
# CONFIG_FEATURE_HTTPD_CONFIG_WITH_MIME_TYPES is not set
# CONFIG_FEATURE_HTTPD_CGI is not set
# CONFIG_FEATURE_HTTPD_CONFIG_WITH_SCRIPT_INTERPR is not set
# CONFIG_FEATURE_HTTPD_SET_REMOTE_PORT_TO_ENV is not set
# CONFIG_FEATURE_HTTPD_ENCODE_URL_STR is not set
# CONFIG_FEATURE_HTTPD_ERROR_PAGES is not set
# CONFIG_FEATURE_HTTPD_PROXY is not set
CONFIG_IFCONFIG=y
CONFIG_FEATURE_IFCONFIG_STATUS=y
# CONFIG_FEATURE_IFCONFIG_SLIP is not set
# CONFIG_FEATURE_IFCONFIG_MEMSTART_IOADDR_IRQ is not set
CONFIG_FEATURE_IFCONFIG_HW=y
# CONFIG_FEATURE_IFCONFIG_BROADCAST_PLUS is not set
# CONFIG_IFENSLAVE is not set
# CONFIG_IFUPDOWN is not set
CONFIG_IFUPDOWN_IFSTATE_PATH=""
# CONFIG_FEATURE_IFUPDOWN_IP is not set
# CONFIG_FEATURE_IFUPDOWN_IP_BUILTIN is not set
# CONFIG_FEATURE_IFUPDOWN_IFCONFIG_BUILTIN is not set
# CONFIG_FEATURE_IFUPDOWN_IPV4 is not set
# CONFIG_FEATURE_IFUPDOWN_IPV6 is not set
# CONFIG_FEATURE_IFUPDOWN_MAPPING is not set
# CONFIG_FEATURE_IFUPDOWN_EXTERNAL_DHCP is not set
# CONFIG_INETD is not set
# CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_ECHO is not set
# CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_DISCARD is not set
# CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_TIME is not set
# CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_DAYTIME is not set
# CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_CHARGEN is not set
# CONFIG_FEATURE_INETD_RPC is not set
# CONFIG_IP is not set
# CONFIG_FEATURE_IP_ADDRESS is not set
# CONFIG_FEATURE_IP_LINK is not set
# CONFIG_FEATURE_IP_ROUTE is not set
# CONFIG_FEATURE_IP_TUNNEL is not set
# CONFIG_FEATURE_IP_RULE is not set
# CONFIG_FEATURE_IP_SHORT_FORMS is not set
# CONFIG_FEATURE_IP_RARE_PROTOCOLS is not set
# CONFIG_IPADDR is not set
# CONFIG_IPLINK is not set
# CONFIG_IPROUTE is not set
# CONFIG_IPTUNNEL is not set
# CONFIG_IPRULE is not set
# CONFIG_IPCALC is not set
# CONFIG_FEATURE_IPCALC_FANCY is not set
# CONFIG_FEATURE_IPCALC_LONG_OPTIONS is not set
# CONFIG_NAMEIF is not set
# CONFIG_FEATURE_NAMEIF_EXTENDED is not set
# CONFIG_NC is not set
# CONFIG_NC_SERVER is not set
# CONFIG_NC_EXTRA is not set
# CONFIG_NETSTAT is not set
# CONFIG_FEATURE_NETSTAT_WIDE is not set
# CONFIG_FEATURE_NETSTAT_PRG is not set
# CONFIG_NSLOOKUP is not set
CONFIG_PING=y
# CONFIG_PING6 is not set
CONFIG_FEATURE_FANCY_PING=y
# CONFIG_PSCAN is not set
CONFIG_ROUTE=y
# CONFIG_SENDMAIL is not set
# CONFIG_FETCHMAIL is not set
# CONFIG_SLATTACH is not set
# CONFIG_TELNET is not set
# CONFIG_FEATURE_TELNET_TTYPE is not set
# CONFIG_FEATURE_TELNET_AUTOLOGIN is not set
CONFIG_TELNETD=y
CONFIG_FEATURE_TELNETD_STANDALONE=y
# CONFIG_TFTP is not set
# CONFIG_TFTPD is not set
# CONFIG_FEATURE_TFTP_GET is not set
# CONFIG_FEATURE_TFTP_PUT is not set
# CONFIG_FEATURE_TFTP_BLOCKSIZE is not set
# CONFIG_DEBUG_TFTP is not set
# CONFIG_TRACEROUTE is not set
# CONFIG_FEATURE_TRACEROUTE_VERBOSE is not set
# CONFIG_FEATURE_TRACEROUTE_SOURCE_ROUTE is not set
# CONFIG_FEATURE_TRACEROUTE_USE_ICMP is not set
CONFIG_APP_UDHCPD=y
# CONFIG_APP_DHCPRELAY is not set
# CONFIG_APP_DUMPLEASES is not set
CONFIG_FEATURE_UDHCPD_WRITE_LEASES_EARLY=y
CONFIG_DHCPD_LEASES_FILE="/var/lib/misc/udhcpd.leases"
CONFIG_APP_UDHCPC=y
# CONFIG_FEATURE_UDHCPC_ARPING is not set
# CONFIG_FEATURE_UDHCP_PORT is not set
# CONFIG_FEATURE_UDHCP_DEBUG is not set
# CONFIG_FEATURE_RFC3397 is not set
CONFIG_DHCPC_DEFAULT_SCRIPT="/usr/share/udhcpc/default.script"
CONFIG_UDHCPC_SLACK_FOR_BUGGY_SERVERS=80
CONFIG_VCONFIG=y
# CONFIG_WGET is not set
# CONFIG_FEATURE_WGET_STATUSBAR is not set
# CONFIG_FEATURE_WGET_AUTHENTICATION is not set
# CONFIG_FEATURE_WGET_LONG_OPTIONS is not set
# CONFIG_ZCIP is not set
# CONFIG_TCPSVD is not set
# CONFIG_UDPSVD is not set

#
# Process Utilities
#
CONFIG_FREE=y
# CONFIG_FUSER is not set
CONFIG_KILL=y
CONFIG_KILLALL=y
# CONFIG_KILLALL5 is not set
# CONFIG_NMETER is not set
# CONFIG_PGREP is not set
# CONFIG_PIDOF is not set
# CONFIG_FEATURE_PIDOF_SINGLE is not set
# CONFIG_FEATURE_PIDOF_OMIT is not set
# CONFIG_PKILL is not set
CONFIG_PS=y
# CONFIG_FEATURE_PS_WIDE is not set
# CONFIG_FEATURE_PS_TIME is not set
# CONFIG_FEATURE_PS_UNUSUAL_SYSTEMS is not set
# CONFIG_RENICE is not set
# CONFIG_BB_SYSCTL is not set
CONFIG_TOP=y
CONFIG_FEATURE_TOP_CPU_USAGE_PERCENTAGE=y
CONFIG_FEATURE_TOP_CPU_GLOBAL_PERCENTS=y
# CONFIG_FEATURE_TOP_SMP_CPU is not set
# CONFIG_FEATURE_TOP_DECIMALS is not set
# CONFIG_FEATURE_TOP_SMP_PROCESS is not set
# CONFIG_FEATURE_TOPMEM is not set
CONFIG_UPTIME=y
# CONFIG_WATCH is not set

#
# Shells
#
CONFIG_FEATURE_SH_IS_ASH=y
# CONFIG_FEATURE_SH_IS_HUSH is not set
# CONFIG_FEATURE_SH_IS_MSH is not set
# CONFIG_FEATURE_SH_IS_NONE is not set
CONFIG_ASH=y

#
# Ash Shell Options
#
# CONFIG_ASH_BASH_COMPAT is not set
# CONFIG_ASH_JOB_CONTROL is not set
# CONFIG_ASH_READ_NCHARS is not set
# CONFIG_ASH_READ_TIMEOUT is not set
# CONFIG_ASH_ALIAS is not set
# CONFIG_ASH_MATH_SUPPORT is not set
# CONFIG_ASH_MATH_SUPPORT_64 is not set
# CONFIG_ASH_GETOPTS is not set
# CONFIG_ASH_BUILTIN_ECHO is not set
# CONFIG_ASH_BUILTIN_PRINTF is not set
# CONFIG_ASH_BUILTIN_TEST is not set
# CONFIG_ASH_CMDCMD is not set
# CONFIG_ASH_MAIL is not set
# CONFIG_ASH_OPTIMIZE_FOR_SIZE is not set
# CONFIG_ASH_RANDOM_SUPPORT is not set
# CONFIG_ASH_EXPAND_PRMT is not set
# CONFIG_HUSH is not set
# CONFIG_HUSH_HELP is not set
# CONFIG_HUSH_INTERACTIVE is not set
# CONFIG_HUSH_JOB is not set
# CONFIG_HUSH_TICK is not set
# CONFIG_HUSH_IF is not set
# CONFIG_HUSH_LOOPS is not set
# CONFIG_HUSH_CASE is not set
# CONFIG_LASH is not set
# CONFIG_MSH is not set

#
# Bourne Shell Options
#
# CONFIG_FEATURE_SH_EXTRA_QUIET is not set
# CONFIG_FEATURE_SH_STANDALONE is not set
# CONFIG_FEATURE_SH_NOFORK is not set
# CONFIG_CTTYHACK is not set

#
# System Logging Utilities
#
CONFIG_SYSLOGD=y
# CONFIG_FEATURE_ROTATE_LOGFILE is not set
# CONFIG_FEATURE_REMOTE_LOG is not set
# CONFIG_FEATURE_SYSLOGD_DUP is not set
# CONFIG_FEATURE_IPC_SYSLOG is not set
CONFIG_FEATURE_IPC_SYSLOG_BUFFER_SIZE=
# CONFIG_LOGREAD is not set
# CONFIG_FEATURE_LOGREAD_REDUCED_LOCKING is not set
# CONFIG_KLOGD is not set
# CONFIG_LOGGER is not set

#
# Runit Utilities
#
# CONFIG_RUNSV is not set
# CONFIG_RUNSVDIR is not set
# CONFIG_SV is not set
# CONFIG_SVLOGD is not set
# CONFIG_CHPST is not set
# CONFIG_SETUIDGID is not set
# CONFIG_ENVUIDGID is not set
# CONFIG_ENVDIR is not set
# CONFIG_SOFTLIMIT is not set
# CONFIG_CHCON is not set
# CONFIG_FEATURE_CHCON_LONG_OPTIONS is not set
# CONFIG_GETENFORCE is not set
# CONFIG_GETSEBOOL is not set
# CONFIG_LOAD_POLICY is not set
# CONFIG_MATCHPATHCON is not set
# CONFIG_RESTORECON is not set
# CONFIG_RUNCON is not set
# CONFIG_FEATURE_RUNCON_LONG_OPTIONS is not set
# CONFIG_SELINUXENABLED is not set
# CONFIG_SETENFORCE is not set
# CONFIG_SETFILES is not set
# CONFIG_FEATURE_SETFILES_CHECK_OPTION is not set
# CONFIG_SETSEBOOL is not set
# CONFIG_SESTATUS is not set

#
# Print Utilities
#
# CONFIG_LPD is not set
# CONFIG_LPR is not set
# CONFIG_LPQ is not set
