{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include "rig.h"
#include "Rig.h"

module Bindings.Hamlib.Rig where
import Foreign.Ptr
#strict_import

#globalvar hamlib_version , CChar
#globalvar hamlib_copyright , CChar
{- enum rig_errcode_e {
    RIG_OK = 0,
    RIG_EINVAL,
    RIG_ECONF,
    RIG_ENOMEM,
    RIG_ENIMPL,
    RIG_ETIMEOUT,
    RIG_EIO,
    RIG_EINTERNAL,
    RIG_EPROTO,
    RIG_ERJCTED,
    RIG_ETRUNC,
    RIG_ENAVAIL,
    RIG_ENTARGET,
    RIG_BUSERROR,
    RIG_BUSBUSY,
    RIG_EARG,
    RIG_EVFO,
    RIG_EDOM
}; -}
#integral_t enum rig_errcode_e
#num RIG_OK
#num RIG_EINVAL
#num RIG_ECONF
#num RIG_ENOMEM
#num RIG_ENIMPL
#num RIG_ETIMEOUT
#num RIG_EIO
#num RIG_EINTERNAL
#num RIG_EPROTO
#num RIG_ERJCTED
#num RIG_ETRUNC
#num RIG_ENAVAIL
#num RIG_ENTARGET
#num RIG_BUSERROR
#num RIG_BUSBUSY
#num RIG_EARG
#num RIG_EVFO
#num RIG_EDOM
{- enum rig_debug_level_e {
    RIG_DEBUG_NONE = 0,
    RIG_DEBUG_BUG,
    RIG_DEBUG_ERR,
    RIG_DEBUG_WARN,
    RIG_DEBUG_VERBOSE,
    RIG_DEBUG_TRACE
}; -}
#integral_t enum rig_debug_level_e
#num RIG_DEBUG_NONE
#num RIG_DEBUG_BUG
#num RIG_DEBUG_ERR
#num RIG_DEBUG_WARN
#num RIG_DEBUG_VERBOSE
#num RIG_DEBUG_TRACE
#synonym_t RIG , <struct rig>
{- typedef unsigned int tone_t; -}
#synonym_t tone_t , CUInt
{- typedef enum rig_port_e {
            RIG_PORT_NONE = 0,
            RIG_PORT_SERIAL,
            RIG_PORT_NETWORK,
            RIG_PORT_DEVICE,
            RIG_PORT_PACKET,
            RIG_PORT_DTMF,
            RIG_PORT_ULTRA,
            RIG_PORT_RPC,
            RIG_PORT_PARALLEL,
            RIG_PORT_USB,
            RIG_PORT_UDP_NETWORK,
            RIG_PORT_CM108
        } rig_port_t; -}
#integral_t enum rig_port_e
#num RIG_PORT_NONE
#num RIG_PORT_SERIAL
#num RIG_PORT_NETWORK
#num RIG_PORT_DEVICE
#num RIG_PORT_PACKET
#num RIG_PORT_DTMF
#num RIG_PORT_ULTRA
#num RIG_PORT_RPC
#num RIG_PORT_PARALLEL
#num RIG_PORT_USB
#num RIG_PORT_UDP_NETWORK
#num RIG_PORT_CM108
#synonym_t rig_port_t , <enum rig_port_e>
{- enum serial_parity_e {
    RIG_PARITY_NONE = 0,
    RIG_PARITY_ODD,
    RIG_PARITY_EVEN,
    RIG_PARITY_MARK,
    RIG_PARITY_SPACE
}; -}
#integral_t enum serial_parity_e
#num RIG_PARITY_NONE
#num RIG_PARITY_ODD
#num RIG_PARITY_EVEN
#num RIG_PARITY_MARK
#num RIG_PARITY_SPACE
{- enum serial_handshake_e {
    RIG_HANDSHAKE_NONE = 0,
    RIG_HANDSHAKE_XONXOFF,
    RIG_HANDSHAKE_HARDWARE
}; -}
#integral_t enum serial_handshake_e
#num RIG_HANDSHAKE_NONE
#num RIG_HANDSHAKE_XONXOFF
#num RIG_HANDSHAKE_HARDWARE
{- enum serial_control_state_e {
    RIG_SIGNAL_UNSET = 0, RIG_SIGNAL_ON, RIG_SIGNAL_OFF
}; -}
#integral_t enum serial_control_state_e
#num RIG_SIGNAL_UNSET
#num RIG_SIGNAL_ON
#num RIG_SIGNAL_OFF
{- typedef enum {
            RIG_FLAG_RECEIVER = 1 << 1,
            RIG_FLAG_TRANSMITTER = 1 << 2,
            RIG_FLAG_SCANNER = 1 << 3,
            RIG_FLAG_MOBILE = 1 << 4,
            RIG_FLAG_HANDHELD = 1 << 5,
            RIG_FLAG_COMPUTER = 1 << 6,
            RIG_FLAG_TRUNKING = 1 << 7,
            RIG_FLAG_APRS = 1 << 8,
            RIG_FLAG_TNC = 1 << 9,
            RIG_FLAG_DXCLUSTER = 1 << 10,
            RIG_FLAG_TUNER = 1 << 11
        } rig_type_t; -}
#integral_t rig_type_t
#num RIG_FLAG_RECEIVER
#num RIG_FLAG_TRANSMITTER
#num RIG_FLAG_SCANNER
#num RIG_FLAG_MOBILE
#num RIG_FLAG_HANDHELD
#num RIG_FLAG_COMPUTER
#num RIG_FLAG_TRUNKING
#num RIG_FLAG_APRS
#num RIG_FLAG_TNC
#num RIG_FLAG_DXCLUSTER
#num RIG_FLAG_TUNER
{- enum rig_status_e {
    RIG_STATUS_ALPHA = 0,
    RIG_STATUS_UNTESTED,
    RIG_STATUS_BETA,
    RIG_STATUS_STABLE,
    RIG_STATUS_BUGGY
}; -}
#integral_t enum rig_status_e
#num RIG_STATUS_ALPHA
#num RIG_STATUS_UNTESTED
#num RIG_STATUS_BETA
#num RIG_STATUS_STABLE
#num RIG_STATUS_BUGGY
{- typedef enum {
            RIG_RPT_SHIFT_NONE = 0, RIG_RPT_SHIFT_MINUS, RIG_RPT_SHIFT_PLUS
        } rptr_shift_t; -}
#integral_t rptr_shift_t
#num RIG_RPT_SHIFT_NONE
#num RIG_RPT_SHIFT_MINUS
#num RIG_RPT_SHIFT_PLUS
{- typedef enum {
            RIG_SPLIT_OFF = 0, RIG_SPLIT_ON
        } split_t; -}
#integral_t split_t
#num RIG_SPLIT_OFF
#num RIG_SPLIT_ON
{- typedef double freq_t; -}
#synonym_t freq_t , CDouble
{- typedef signed long shortfreq_t; -}
#synonym_t shortfreq_t , CLong
{- typedef int vfo_t; -}
#synonym_t vfo_t , CInt
{- typedef shortfreq_t pbwidth_t; -}
#synonym_t pbwidth_t , CLong
{- typedef enum dcd_e {
            RIG_DCD_OFF = 0, RIG_DCD_ON
        } dcd_t; -}
#integral_t enum dcd_e
#num RIG_DCD_OFF
#num RIG_DCD_ON
#synonym_t dcd_t , <enum dcd_e>
{- typedef enum {
            RIG_DCD_NONE = 0,
            RIG_DCD_RIG,
            RIG_DCD_SERIAL_DSR,
            RIG_DCD_SERIAL_CTS,
            RIG_DCD_SERIAL_CAR,
            RIG_DCD_PARALLEL,
            RIG_DCD_CM108
        } dcd_type_t; -}
#integral_t dcd_type_t
#num RIG_DCD_NONE
#num RIG_DCD_RIG
#num RIG_DCD_SERIAL_DSR
#num RIG_DCD_SERIAL_CTS
#num RIG_DCD_SERIAL_CAR
#num RIG_DCD_PARALLEL
#num RIG_DCD_CM108
{- typedef enum {
            RIG_PTT_OFF = 0, RIG_PTT_ON, RIG_PTT_ON_MIC, RIG_PTT_ON_DATA
        } ptt_t; -}
#integral_t ptt_t
#num RIG_PTT_OFF
#num RIG_PTT_ON
#num RIG_PTT_ON_MIC
#num RIG_PTT_ON_DATA
{- typedef enum {
            RIG_PTT_NONE = 0,
            RIG_PTT_RIG,
            RIG_PTT_SERIAL_DTR,
            RIG_PTT_SERIAL_RTS,
            RIG_PTT_PARALLEL,
            RIG_PTT_RIG_MICDATA,
            RIG_PTT_CM108
        } ptt_type_t; -}
#integral_t ptt_type_t
#num RIG_PTT_NONE
#num RIG_PTT_RIG
#num RIG_PTT_SERIAL_DTR
#num RIG_PTT_SERIAL_RTS
#num RIG_PTT_PARALLEL
#num RIG_PTT_RIG_MICDATA
#num RIG_PTT_CM108
{- typedef enum {
            RIG_POWER_OFF = 0,
            RIG_POWER_ON = 1 << 0,
            RIG_POWER_STANDBY = 1 << 1
        } powerstat_t; -}
#integral_t powerstat_t
#num RIG_POWER_OFF
#num RIG_POWER_ON
#num RIG_POWER_STANDBY
{- typedef enum {
            RIG_RESET_NONE = 0,
            RIG_RESET_SOFT = 1 << 0,
            RIG_RESET_VFO = 1 << 1,
            RIG_RESET_MCALL = 1 << 2,
            RIG_RESET_MASTER = 1 << 3
        } reset_t; -}
#integral_t reset_t
#num RIG_RESET_NONE
#num RIG_RESET_SOFT
#num RIG_RESET_VFO
#num RIG_RESET_MCALL
#num RIG_RESET_MASTER
{- typedef enum {
            RIG_OP_NONE = 0,
            RIG_OP_CPY = 1 << 0,
            RIG_OP_XCHG = 1 << 1,
            RIG_OP_FROM_VFO = 1 << 2,
            RIG_OP_TO_VFO = 1 << 3,
            RIG_OP_MCL = 1 << 4,
            RIG_OP_UP = 1 << 5,
            RIG_OP_DOWN = 1 << 6,
            RIG_OP_BAND_UP = 1 << 7,
            RIG_OP_BAND_DOWN = 1 << 8,
            RIG_OP_LEFT = 1 << 9,
            RIG_OP_RIGHT = 1 << 10,
            RIG_OP_TUNE = 1 << 11,
            RIG_OP_TOGGLE = 1 << 12
        } vfo_op_t; -}
#integral_t vfo_op_t
#num RIG_OP_NONE
#num RIG_OP_CPY
#num RIG_OP_XCHG
#num RIG_OP_FROM_VFO
#num RIG_OP_TO_VFO
#num RIG_OP_MCL
#num RIG_OP_UP
#num RIG_OP_DOWN
#num RIG_OP_BAND_UP
#num RIG_OP_BAND_DOWN
#num RIG_OP_LEFT
#num RIG_OP_RIGHT
#num RIG_OP_TUNE
#num RIG_OP_TOGGLE
{- typedef enum {
            RIG_SCAN_NONE = 0,
            RIG_SCAN_STOP = RIG_SCAN_NONE,
            RIG_SCAN_MEM = 1 << 0,
            RIG_SCAN_SLCT = 1 << 1,
            RIG_SCAN_PRIO = 1 << 2,
            RIG_SCAN_PROG = 1 << 3,
            RIG_SCAN_DELTA = 1 << 4,
            RIG_SCAN_VFO = 1 << 5,
            RIG_SCAN_PLT = 1 << 6
        } scan_t; -}
#integral_t scan_t
#num RIG_SCAN_NONE
#num RIG_SCAN_STOP
#num RIG_SCAN_MEM
#num RIG_SCAN_SLCT
#num RIG_SCAN_PRIO
#num RIG_SCAN_PROG
#num RIG_SCAN_DELTA
#num RIG_SCAN_VFO
#num RIG_SCAN_PLT
{- typedef long token_t; -}
#synonym_t token_t , CLong
{- enum rig_conf_e {
    RIG_CONF_STRING,
    RIG_CONF_COMBO,
    RIG_CONF_NUMERIC,
    RIG_CONF_CHECKBUTTON,
    RIG_CONF_BUTTON
}; -}
#integral_t enum rig_conf_e
#num RIG_CONF_STRING
#num RIG_CONF_COMBO
#num RIG_CONF_NUMERIC
#num RIG_CONF_CHECKBUTTON
#num RIG_CONF_BUTTON
{- struct confparams {
    token_t token;
    const char * name;
    const char * label;
    const char * tooltip;
    const char * dflt;
    enum rig_conf_e type;
    union u {
        struct n {
            float min; float max; float step;
        } n;
        struct c {
            const char * combostr[8];
        } c;
    } u;
}; -}

#starttype struct n
#field min , CFloat
#field max , CFloat
#field step , CFloat
#stoptype

#starttype struct c
#field combostr , CString
#stoptype

#starttype union u
#field n , <struct n>
#field c , <struct c>
#stoptype

#starttype struct confparams
#field token , CLong
#field name , CString
#field label , CString
#field tooltip , CString
#field dflt , CString
#field type , <enum rig_conf_e>
#field u , <union u>
#stoptype
{- typedef enum {
            RIG_ANN_NONE = 0,
            RIG_ANN_OFF = RIG_ANN_NONE,
            RIG_ANN_FREQ = 1 << 0,
            RIG_ANN_RXMODE = 1 << 1,
            RIG_ANN_CW = 1 << 2,
            RIG_ANN_ENG = 1 << 3,
            RIG_ANN_JAP = 1 << 4
        } ann_t; -}
#integral_t ann_t
#num RIG_ANN_NONE
#num RIG_ANN_OFF
#num RIG_ANN_FREQ
#num RIG_ANN_RXMODE
#num RIG_ANN_CW
#num RIG_ANN_ENG
#num RIG_ANN_JAP
{- typedef int ant_t; -}
#synonym_t ant_t , CInt
{- enum agc_level_e {
    RIG_AGC_OFF = 0,
    RIG_AGC_SUPERFAST,
    RIG_AGC_FAST,
    RIG_AGC_SLOW,
    RIG_AGC_USER,
    RIG_AGC_MEDIUM,
    RIG_AGC_AUTO
}; -}
#integral_t enum agc_level_e
#num RIG_AGC_OFF
#num RIG_AGC_SUPERFAST
#num RIG_AGC_FAST
#num RIG_AGC_SLOW
#num RIG_AGC_USER
#num RIG_AGC_MEDIUM
#num RIG_AGC_AUTO
{- enum meter_level_e {
    RIG_METER_NONE = 0,
    RIG_METER_SWR = 1 << 0,
    RIG_METER_COMP = 1 << 1,
    RIG_METER_ALC = 1 << 2,
    RIG_METER_IC = 1 << 3,
    RIG_METER_DB = 1 << 4,
    RIG_METER_PO = 1 << 5,
    RIG_METER_VDD = 1 << 6
}; -}
#integral_t enum meter_level_e
#num RIG_METER_NONE
#num RIG_METER_SWR
#num RIG_METER_COMP
#num RIG_METER_ALC
#num RIG_METER_IC
#num RIG_METER_DB
#num RIG_METER_PO
#num RIG_METER_VDD
{- typedef union {
            signed int i; float f; char * s; const char * cs;
        } value_t; -}
#starttype value_t
#field i , CInt
#field f , CFloat
#field s , CString
#field cs , CString
#stoptype
{- enum rig_level_e {
    RIG_LEVEL_NONE = 0,
    RIG_LEVEL_PREAMP = 1 << 0,
    RIG_LEVEL_ATT = 1 << 1,
    RIG_LEVEL_VOX = 1 << 2,
    RIG_LEVEL_AF = 1 << 3,
    RIG_LEVEL_RF = 1 << 4,
    RIG_LEVEL_SQL = 1 << 5,
    RIG_LEVEL_IF = 1 << 6,
    RIG_LEVEL_APF = 1 << 7,
    RIG_LEVEL_NR = 1 << 8,
    RIG_LEVEL_PBT_IN = 1 << 9,
    RIG_LEVEL_PBT_OUT = 1 << 10,
    RIG_LEVEL_CWPITCH = 1 << 11,
    RIG_LEVEL_RFPOWER = 1 << 12,
    RIG_LEVEL_MICGAIN = 1 << 13,
    RIG_LEVEL_KEYSPD = 1 << 14,
    RIG_LEVEL_NOTCHF = 1 << 15,
    RIG_LEVEL_COMP = 1 << 16,
    RIG_LEVEL_AGC = 1 << 17,
    RIG_LEVEL_BKINDL = 1 << 18,
    RIG_LEVEL_BALANCE = 1 << 19,
    RIG_LEVEL_METER = 1 << 20,
    RIG_LEVEL_VOXGAIN = 1 << 21,
    RIG_LEVEL_VOXDELAY = RIG_LEVEL_VOX,
    RIG_LEVEL_ANTIVOX = 1 << 22,
    RIG_LEVEL_SLOPE_LOW = 1 << 23,
    RIG_LEVEL_SLOPE_HIGH = 1 << 24,
    RIG_LEVEL_BKIN_DLYMS = 1 << 25,
    RIG_LEVEL_RAWSTR = 1 << 26,
    RIG_LEVEL_SQLSTAT = 1 << 27,
    RIG_LEVEL_SWR = 1 << 28,
    RIG_LEVEL_ALC = 1 << 29,
    RIG_LEVEL_STRENGTH = 1 << 30
}; -}
#integral_t enum rig_level_e
#num RIG_LEVEL_NONE
#num RIG_LEVEL_PREAMP
#num RIG_LEVEL_ATT
#num RIG_LEVEL_VOX
#num RIG_LEVEL_AF
#num RIG_LEVEL_RF
#num RIG_LEVEL_SQL
#num RIG_LEVEL_IF
#num RIG_LEVEL_APF
#num RIG_LEVEL_NR
#num RIG_LEVEL_PBT_IN
#num RIG_LEVEL_PBT_OUT
#num RIG_LEVEL_CWPITCH
#num RIG_LEVEL_RFPOWER
#num RIG_LEVEL_MICGAIN
#num RIG_LEVEL_KEYSPD
#num RIG_LEVEL_NOTCHF
#num RIG_LEVEL_COMP
#num RIG_LEVEL_AGC
#num RIG_LEVEL_BKINDL
#num RIG_LEVEL_BALANCE
#num RIG_LEVEL_METER
#num RIG_LEVEL_VOXGAIN
#num RIG_LEVEL_VOXDELAY
#num RIG_LEVEL_ANTIVOX
#num RIG_LEVEL_SLOPE_LOW
#num RIG_LEVEL_SLOPE_HIGH
#num RIG_LEVEL_BKIN_DLYMS
#num RIG_LEVEL_RAWSTR
#num RIG_LEVEL_SQLSTAT
#num RIG_LEVEL_SWR
#num RIG_LEVEL_ALC
#num RIG_LEVEL_STRENGTH
{- enum rig_parm_e {
    RIG_PARM_NONE = 0,
    RIG_PARM_ANN = 1 << 0,
    RIG_PARM_APO = 1 << 1,
    RIG_PARM_BACKLIGHT = 1 << 2,
    RIG_PARM_BEEP = 1 << 4,
    RIG_PARM_TIME = 1 << 5,
    RIG_PARM_BAT = 1 << 6,
    RIG_PARM_KEYLIGHT = 1 << 7
}; -}
#integral_t enum rig_parm_e
#num RIG_PARM_NONE
#num RIG_PARM_ANN
#num RIG_PARM_APO
#num RIG_PARM_BACKLIGHT
#num RIG_PARM_BEEP
#num RIG_PARM_TIME
#num RIG_PARM_BAT
#num RIG_PARM_KEYLIGHT
{- typedef unsigned long setting_t; -}
#synonym_t setting_t , CULong
{- enum rig_func_e {
    RIG_FUNC_NONE = 0,
    RIG_FUNC_FAGC = 1 << 0,
    RIG_FUNC_NB = 1 << 1,
    RIG_FUNC_COMP = 1 << 2,
    RIG_FUNC_VOX = 1 << 3,
    RIG_FUNC_TONE = 1 << 4,
    RIG_FUNC_TSQL = 1 << 5,
    RIG_FUNC_SBKIN = 1 << 6,
    RIG_FUNC_FBKIN = 1 << 7,
    RIG_FUNC_ANF = 1 << 8,
    RIG_FUNC_NR = 1 << 9,
    RIG_FUNC_AIP = 1 << 10,
    RIG_FUNC_APF = 1 << 11,
    RIG_FUNC_MON = 1 << 12,
    RIG_FUNC_MN = 1 << 13,
    RIG_FUNC_RF = 1 << 14,
    RIG_FUNC_ARO = 1 << 15,
    RIG_FUNC_LOCK = 1 << 16,
    RIG_FUNC_MUTE = 1 << 17,
    RIG_FUNC_VSC = 1 << 18,
    RIG_FUNC_REV = 1 << 19,
    RIG_FUNC_SQL = 1 << 20,
    RIG_FUNC_ABM = 1 << 21,
    RIG_FUNC_BC = 1 << 22,
    RIG_FUNC_MBC = 1 << 23,
    RIG_FUNC_AFC = 1 << 25,
    RIG_FUNC_SATMODE = 1 << 26,
    RIG_FUNC_SCOPE = 1 << 27,
    RIG_FUNC_RESUME = 1 << 28,
    RIG_FUNC_TBURST = 1 << 29,
    RIG_FUNC_TUNER = 1 << 30
}; -}
#integral_t enum rig_func_e
#num RIG_FUNC_NONE
#num RIG_FUNC_FAGC
#num RIG_FUNC_NB
#num RIG_FUNC_COMP
#num RIG_FUNC_VOX
#num RIG_FUNC_TONE
#num RIG_FUNC_TSQL
#num RIG_FUNC_SBKIN
#num RIG_FUNC_FBKIN
#num RIG_FUNC_ANF
#num RIG_FUNC_NR
#num RIG_FUNC_AIP
#num RIG_FUNC_APF
#num RIG_FUNC_MON
#num RIG_FUNC_MN
#num RIG_FUNC_RF
#num RIG_FUNC_ARO
#num RIG_FUNC_LOCK
#num RIG_FUNC_MUTE
#num RIG_FUNC_VSC
#num RIG_FUNC_REV
#num RIG_FUNC_SQL
#num RIG_FUNC_ABM
#num RIG_FUNC_BC
#num RIG_FUNC_MBC
#num RIG_FUNC_AFC
#num RIG_FUNC_SATMODE
#num RIG_FUNC_SCOPE
#num RIG_FUNC_RESUME
#num RIG_FUNC_TBURST
#num RIG_FUNC_TUNER
{- typedef enum {
            RIG_MODE_NONE = 0,
            RIG_MODE_AM = 1 << 0,
            RIG_MODE_CW = 1 << 1,
            RIG_MODE_USB = 1 << 2,
            RIG_MODE_LSB = 1 << 3,
            RIG_MODE_RTTY = 1 << 4,
            RIG_MODE_FM = 1 << 5,
            RIG_MODE_WFM = 1 << 6,
            RIG_MODE_CWR = 1 << 7,
            RIG_MODE_RTTYR = 1 << 8,
            RIG_MODE_AMS = 1 << 9,
            RIG_MODE_PKTLSB = 1 << 10,
            RIG_MODE_PKTUSB = 1 << 11,
            RIG_MODE_PKTFM = 1 << 12,
            RIG_MODE_ECSSUSB = 1 << 13,
            RIG_MODE_ECSSLSB = 1 << 14,
            RIG_MODE_FAX = 1 << 15,
            RIG_MODE_SAM = 1 << 16,
            RIG_MODE_SAL = 1 << 17,
            RIG_MODE_SAH = 1 << 18,
            RIG_MODE_DSB = 1 << 19,
            RIG_MODE_TESTS_MAX
        } rmode_t; -}
#integral_t rmode_t
#num RIG_MODE_NONE
#num RIG_MODE_AM
#num RIG_MODE_CW
#num RIG_MODE_USB
#num RIG_MODE_LSB
#num RIG_MODE_RTTY
#num RIG_MODE_FM
#num RIG_MODE_WFM
#num RIG_MODE_CWR
#num RIG_MODE_RTTYR
#num RIG_MODE_AMS
#num RIG_MODE_PKTLSB
#num RIG_MODE_PKTUSB
#num RIG_MODE_PKTFM
#num RIG_MODE_ECSSUSB
#num RIG_MODE_ECSSLSB
#num RIG_MODE_FAX
#num RIG_MODE_SAM
#num RIG_MODE_SAL
#num RIG_MODE_SAH
#num RIG_MODE_DSB
#num RIG_MODE_TESTS_MAX
{- typedef struct freq_range_list {
            freq_t start;
            freq_t end;
            rmode_t modes;
            int low_power;
            int high_power;
            vfo_t vfo;
            ant_t ant;
        } freq_range_t; -}
#starttype struct freq_range_list
#field start , CDouble
#field end , CDouble
#field modes , <rmode_t>
#field low_power , CInt
#field high_power , CInt
#field vfo , CInt
#field ant , CInt
#stoptype
#synonym_t freq_range_t , <struct freq_range_list>
{- struct tuning_step_list {
    rmode_t modes; shortfreq_t ts;
}; -}
#starttype struct tuning_step_list
#field modes , <rmode_t>
#field ts , CLong
#stoptype
{- struct filter_list {
    rmode_t modes; pbwidth_t width;
}; -}
#starttype struct filter_list
#field modes , <rmode_t>
#field width , CLong
#stoptype
{- struct ext_list {
    token_t token; value_t val;
}; -}
#starttype struct ext_list
#field token , CLong
#field val , <value_t>
#stoptype
{- struct channel {
    int channel_num;
    int bank_num;
    vfo_t vfo;
    int ant;
    freq_t freq;
    rmode_t mode;
    pbwidth_t width;
    freq_t tx_freq;
    rmode_t tx_mode;
    pbwidth_t tx_width;
    split_t split;
    vfo_t tx_vfo;
    rptr_shift_t rptr_shift;
    shortfreq_t rptr_offs;
    shortfreq_t tuning_step;
    shortfreq_t rit;
    shortfreq_t xit;
    setting_t funcs;
    value_t levels[32];
    tone_t ctcss_tone;
    tone_t ctcss_sql;
    tone_t dcs_code;
    tone_t dcs_sql;
    int scan_group;
    int flags;
    char channel_desc[30];
    struct ext_list * ext_levels;
}; -}
#starttype struct channel
#field channel_num , CInt
#field bank_num , CInt
#field vfo , CInt
#field ant , CInt
#field freq , CDouble
#field mode , <rmode_t>
#field width , CLong
#field tx_freq , CDouble
#field tx_mode , <rmode_t>
#field tx_width , CLong
#field split , <split_t>
#field tx_vfo , CInt
#field rptr_shift , <rptr_shift_t>
#field rptr_offs , CLong
#field tuning_step , CLong
#field rit , CLong
#field xit , CLong
#field funcs , CULong
#array_field levels , <value_t>
#field ctcss_tone , CUInt
#field ctcss_sql , CUInt
#field dcs_code , CUInt
#field dcs_sql , CUInt
#field scan_group , CInt
#field flags , CInt
#field channel_desc , CString
#field ext_levels , Ptr <struct ext_list>
#stoptype
{- typedef struct channel channel_t; -}
#synonym_t channel_t , <struct channel>
{- struct channel_cap {
    unsigned bank_num : 1;
    unsigned vfo : 1;
    unsigned ant : 1;
    unsigned freq : 1;
    unsigned mode : 1;
    unsigned width : 1;
    unsigned tx_freq : 1;
    unsigned tx_mode : 1;
    unsigned tx_width : 1;
    unsigned split : 1;
    unsigned tx_vfo : 1;
    unsigned rptr_shift : 1;
    unsigned rptr_offs : 1;
    unsigned tuning_step : 1;
    unsigned rit : 1;
    unsigned xit : 1;
    setting_t funcs;
    setting_t levels;
    unsigned ctcss_tone : 1;
    unsigned ctcss_sql : 1;
    unsigned dcs_code : 1;
    unsigned dcs_sql : 1;
    unsigned scan_group : 1;
    unsigned flags : 1;
    unsigned channel_desc : 1;
    unsigned ext_levels : 1;
}; -}
#starttype struct channel_cap

#stoptype
{- typedef struct channel_cap channel_cap_t; -}
#synonym_t channel_cap_t , <struct channel_cap>
{- typedef enum {
            RIG_MTYPE_NONE = 0,
            RIG_MTYPE_MEM,
            RIG_MTYPE_EDGE,
            RIG_MTYPE_CALL,
            RIG_MTYPE_MEMOPAD,
            RIG_MTYPE_SAT,
            RIG_MTYPE_BAND,
            RIG_MTYPE_PRIO
        } chan_type_t; -}
#integral_t chan_type_t
#num RIG_MTYPE_NONE
#num RIG_MTYPE_MEM
#num RIG_MTYPE_EDGE
#num RIG_MTYPE_CALL
#num RIG_MTYPE_MEMOPAD
#num RIG_MTYPE_SAT
#num RIG_MTYPE_BAND
#num RIG_MTYPE_PRIO
{- struct chan_list {
    int start; int end; chan_type_t type; channel_cap_t mem_caps;
}; -}
#starttype struct chan_list
#field start , CInt
#field end , CInt
#field type , <chan_type_t>
#field mem_caps , <struct channel_cap>
#stoptype
{- typedef struct chan_list chan_t; -}
#synonym_t chan_t , <struct chan_list>
{- struct gran {
    value_t min; value_t max; value_t step;
}; -}
#starttype struct gran
#field min , <value_t>
#field max , <value_t>
#field step , <value_t>
#stoptype
{- typedef struct gran gran_t; -}
#synonym_t gran_t , <struct gran>
{- struct cal_table {
    int size;
    struct table {
        int raw; int val;
    } table[32];
}; -}
#starttype struct table
#field raw , CInt
#field val , CInt
#stoptype

#starttype struct cal_table
#field size , CInt
#array_field table , <struct table>
#stoptype
{- typedef struct cal_table cal_table_t; -}
#synonym_t cal_table_t , <struct cal_table>
#callback chan_cb_t , Ptr <struct rig> -> Ptr (Ptr <struct channel>) -> CInt -> Ptr <struct chan_list> -> Ptr () -> IO CInt
#callback confval_cb_t , Ptr <struct rig> -> Ptr <struct confparams> -> Ptr <value_t> -> Ptr () -> IO CInt
{- struct rig_caps {
    rig_model_t rig_model;
    const char * model_name;
    const char * mfg_name;
    const char * version;
    const char * copyright;
    enum rig_status_e status;
    int rig_type;
    ptt_type_t ptt_type;
    dcd_type_t dcd_type;
    rig_port_t port_type;
    int serial_rate_min;
    int serial_rate_max;
    int serial_data_bits;
    int serial_stop_bits;
    enum serial_parity_e serial_parity;
    enum serial_handshake_e serial_handshake;
    int write_delay;
    int post_write_delay;
    int timeout;
    int retry;
    setting_t has_get_func;
    setting_t has_set_func;
    setting_t has_get_level;
    setting_t has_set_level;
    setting_t has_get_parm;
    setting_t has_set_parm;
    gran_t level_gran[32];
    gran_t parm_gran[32];
    const struct confparams * extparms;
    const struct confparams * extlevels;
    const tone_t * ctcss_list;
    const tone_t * dcs_list;
    int preamp[8];
    int attenuator[8];
    shortfreq_t max_rit;
    shortfreq_t max_xit;
    shortfreq_t max_ifshift;
    ann_t announces;
    vfo_op_t vfo_ops;
    scan_t scan_ops;
    int targetable_vfo;
    int transceive;
    int bank_qty;
    int chan_desc_sz;
    chan_t chan_list[16];
    freq_range_t rx_range_list1[30];
    freq_range_t tx_range_list1[30];
    freq_range_t rx_range_list2[30];
    freq_range_t tx_range_list2[30];
    struct tuning_step_list tuning_steps[20];
    struct filter_list filters[42];
    cal_table_t str_cal;
    const struct confparams * cfgparams;
    const void * priv;
    int (* rig_init)(RIG * rig);
    int (* rig_cleanup)(RIG * rig);
    int (* rig_open)(RIG * rig);
    int (* rig_close)(RIG * rig);
    int (* set_freq)(RIG * rig, vfo_t vfo, freq_t freq);
    int (* get_freq)(RIG * rig, vfo_t vfo, freq_t * freq);
    int (* set_mode)(RIG * rig,
                     vfo_t vfo,
                     rmode_t mode,
                     pbwidth_t width);
    int (* get_mode)(RIG * rig,
                     vfo_t vfo,
                     rmode_t * mode,
                     pbwidth_t * width);
    int (* set_vfo)(RIG * rig, vfo_t vfo);
    int (* get_vfo)(RIG * rig, vfo_t * vfo);
    int (* set_ptt)(RIG * rig, vfo_t vfo, ptt_t ptt);
    int (* get_ptt)(RIG * rig, vfo_t vfo, ptt_t * ptt);
    int (* get_dcd)(RIG * rig, vfo_t vfo, dcd_t * dcd);
    int (* set_rptr_shift)(RIG * rig,
                           vfo_t vfo,
                           rptr_shift_t rptr_shift);
    int (* get_rptr_shift)(RIG * rig,
                           vfo_t vfo,
                           rptr_shift_t * rptr_shift);
    int (* set_rptr_offs)(RIG * rig, vfo_t vfo, shortfreq_t offs);
    int (* get_rptr_offs)(RIG * rig, vfo_t vfo, shortfreq_t * offs);
    int (* set_split_freq)(RIG * rig, vfo_t vfo, freq_t tx_freq);
    int (* get_split_freq)(RIG * rig, vfo_t vfo, freq_t * tx_freq);
    int (* set_split_mode)(RIG * rig,
                           vfo_t vfo,
                           rmode_t tx_mode,
                           pbwidth_t tx_width);
    int (* get_split_mode)(RIG * rig,
                           vfo_t vfo,
                           rmode_t * tx_mode,
                           pbwidth_t * tx_width);
    int (* set_split_vfo)(RIG * rig,
                          vfo_t vfo,
                          split_t split,
                          vfo_t tx_vfo);
    int (* get_split_vfo)(RIG * rig,
                          vfo_t vfo,
                          split_t * split,
                          vfo_t * tx_vfo);
    int (* set_rit)(RIG * rig, vfo_t vfo, shortfreq_t rit);
    int (* get_rit)(RIG * rig, vfo_t vfo, shortfreq_t * rit);
    int (* set_xit)(RIG * rig, vfo_t vfo, shortfreq_t xit);
    int (* get_xit)(RIG * rig, vfo_t vfo, shortfreq_t * xit);
    int (* set_ts)(RIG * rig, vfo_t vfo, shortfreq_t ts);
    int (* get_ts)(RIG * rig, vfo_t vfo, shortfreq_t * ts);
    int (* set_dcs_code)(RIG * rig, vfo_t vfo, tone_t code);
    int (* get_dcs_code)(RIG * rig, vfo_t vfo, tone_t * code);
    int (* set_tone)(RIG * rig, vfo_t vfo, tone_t tone);
    int (* get_tone)(RIG * rig, vfo_t vfo, tone_t * tone);
    int (* set_ctcss_tone)(RIG * rig, vfo_t vfo, tone_t tone);
    int (* get_ctcss_tone)(RIG * rig, vfo_t vfo, tone_t * tone);
    int (* set_dcs_sql)(RIG * rig, vfo_t vfo, tone_t code);
    int (* get_dcs_sql)(RIG * rig, vfo_t vfo, tone_t * code);
    int (* set_tone_sql)(RIG * rig, vfo_t vfo, tone_t tone);
    int (* get_tone_sql)(RIG * rig, vfo_t vfo, tone_t * tone);
    int (* set_ctcss_sql)(RIG * rig, vfo_t vfo, tone_t tone);
    int (* get_ctcss_sql)(RIG * rig, vfo_t vfo, tone_t * tone);
    int (* power2mW)(RIG * rig,
                     unsigned int * mwpower,
                     float power,
                     freq_t freq,
                     rmode_t mode);
    int (* mW2power)(RIG * rig,
                     float * power,
                     unsigned int mwpower,
                     freq_t freq,
                     rmode_t mode);
    int (* set_powerstat)(RIG * rig, powerstat_t status);
    int (* get_powerstat)(RIG * rig, powerstat_t * status);
    int (* reset)(RIG * rig, reset_t reset);
    int (* set_ant)(RIG * rig, vfo_t vfo, ant_t ant);
    int (* get_ant)(RIG * rig, vfo_t vfo, ant_t * ant);
    int (* set_level)(RIG * rig,
                      vfo_t vfo,
                      setting_t level,
                      value_t val);
    int (* get_level)(RIG * rig,
                      vfo_t vfo,
                      setting_t level,
                      value_t * val);
    int (* set_func)(RIG * rig, vfo_t vfo, setting_t func, int status);
    int (* get_func)(RIG * rig,
                     vfo_t vfo,
                     setting_t func,
                     int * status);
    int (* set_parm)(RIG * rig, setting_t parm, value_t val);
    int (* get_parm)(RIG * rig, setting_t parm, value_t * val);
    int (* set_ext_level)(RIG * rig,
                          vfo_t vfo,
                          token_t token,
                          value_t val);
    int (* get_ext_level)(RIG * rig,
                          vfo_t vfo,
                          token_t token,
                          value_t * val);
    int (* set_ext_parm)(RIG * rig, token_t token, value_t val);
    int (* get_ext_parm)(RIG * rig, token_t token, value_t * val);
    int (* set_conf)(RIG * rig, token_t token, const char * val);
    int (* get_conf)(RIG * rig, token_t token, char * val);
    int (* send_dtmf)(RIG * rig, vfo_t vfo, const char * digits);
    int (* recv_dtmf)(RIG * rig,
                      vfo_t vfo,
                      char * digits,
                      int * length);
    int (* send_morse)(RIG * rig, vfo_t vfo, const char * msg);
    int (* set_bank)(RIG * rig, vfo_t vfo, int bank);
    int (* set_mem)(RIG * rig, vfo_t vfo, int ch);
    int (* get_mem)(RIG * rig, vfo_t vfo, int * ch);
    int (* vfo_op)(RIG * rig, vfo_t vfo, vfo_op_t op);
    int (* scan)(RIG * rig, vfo_t vfo, scan_t scan, int ch);
    int (* set_trn)(RIG * rig, int trn);
    int (* get_trn)(RIG * rig, int * trn);
    int (* decode_event)(RIG * rig);
    int (* set_channel)(RIG * rig, const channel_t * chan);
    int (* get_channel)(RIG * rig, channel_t * chan);
    const char * (* get_info)(RIG * rig);
    int (* set_chan_all_cb)(RIG * rig, chan_cb_t chan_cb, void *);
    int (* get_chan_all_cb)(RIG * rig, chan_cb_t chan_cb, void *);
    int (* set_mem_all_cb)(RIG * rig,
                           chan_cb_t chan_cb,
                           confval_cb_t parm_cb,
                           void *);
    int (* get_mem_all_cb)(RIG * rig,
                           chan_cb_t chan_cb,
                           confval_cb_t parm_cb,
                           void *);
    const char * clone_combo_set;
    const char * clone_combo_get;
}; -}
#starttype struct rig_caps
#field rig_model , CInt
#field model_name , CString
#field mfg_name , CString
#field version , CString
#field copyright , CString
#field status , <enum rig_status_e>
#field rig_type , CInt
#field ptt_type , <ptt_type_t>
#field dcd_type , <dcd_type_t>
#field port_type , <enum rig_port_e>
#field serial_rate_min , CInt
#field serial_rate_max , CInt
#field serial_data_bits , CInt
#field serial_stop_bits , CInt
#field serial_parity , <enum serial_parity_e>
#field serial_handshake , <enum serial_handshake_e>
#field write_delay , CInt
#field post_write_delay , CInt
#field timeout , CInt
#field retry , CInt
#field has_get_func , CULong
#field has_set_func , CULong
#field has_get_level , CULong
#field has_set_level , CULong
#field has_get_parm , CULong
#field has_set_parm , CULong
#array_field level_gran , <struct gran>
#array_field parm_gran , <struct gran>
#field extparms , Ptr <struct confparams>
#field extlevels , Ptr <struct confparams>
#field ctcss_list , Ptr CUInt
#field dcs_list , Ptr CUInt
#array_field preamp , CInt
#array_field attenuator , CInt
#field max_rit , CLong
#field max_xit , CLong
#field max_ifshift , CLong
#field announces , <ann_t>
#field vfo_ops , <vfo_op_t>
#field scan_ops , <scan_t>
#field targetable_vfo , CInt
#field transceive , CInt
#field bank_qty , CInt
#field chan_desc_sz , CInt
#array_field chan_list , <struct chan_list>
#array_field rx_range_list1 , <struct freq_range_list>
#array_field tx_range_list1 , <struct freq_range_list>
#array_field rx_range_list2 , <struct freq_range_list>
#array_field tx_range_list2 , <struct freq_range_list>
#array_field tuning_steps , <struct tuning_step_list>
#array_field filters , <struct filter_list>
#field str_cal , <struct cal_table>
#field cfgparams , Ptr <struct confparams>
#field priv , Ptr ()
#field rig_init , FunPtr (Ptr <struct rig> -> CInt)
#field rig_cleanup , FunPtr (Ptr <struct rig> -> CInt)
#field rig_open , FunPtr (Ptr <struct rig> -> CInt)
#field rig_close , FunPtr (Ptr <struct rig> -> CInt)
#field set_freq , FunPtr (Ptr <struct rig> -> CInt -> CDouble -> CInt)
#field get_freq , FunPtr (Ptr <struct rig> -> CInt -> Ptr CDouble -> CInt)
#field set_mode , FunPtr (Ptr <struct rig> -> CInt -> <rmode_t> -> CLong -> CInt)
#field get_mode , FunPtr (Ptr <struct rig> -> CInt -> Ptr <rmode_t> -> Ptr CLong -> CInt)
#field set_vfo , FunPtr (Ptr <struct rig> -> CInt -> CInt)
#field get_vfo , FunPtr (Ptr <struct rig> -> Ptr CInt -> CInt)
#field set_ptt , FunPtr (Ptr <struct rig> -> CInt -> <ptt_t> -> CInt)
#field get_ptt , FunPtr (Ptr <struct rig> -> CInt -> Ptr <ptt_t> -> CInt)
#field get_dcd , FunPtr (Ptr <struct rig> -> CInt -> Ptr <enum dcd_e> -> CInt)
#field set_rptr_shift , FunPtr (Ptr <struct rig> -> CInt -> <rptr_shift_t> -> CInt)
#field get_rptr_shift , FunPtr (Ptr <struct rig> -> CInt -> Ptr <rptr_shift_t> -> CInt)
#field set_rptr_offs , FunPtr (Ptr <struct rig> -> CInt -> CLong -> CInt)
#field get_rptr_offs , FunPtr (Ptr <struct rig> -> CInt -> Ptr CLong -> CInt)
#field set_split_freq , FunPtr (Ptr <struct rig> -> CInt -> CDouble -> CInt)
#field get_split_freq , FunPtr (Ptr <struct rig> -> CInt -> Ptr CDouble -> CInt)
#field set_split_mode , FunPtr (Ptr <struct rig> -> CInt -> <rmode_t> -> CLong -> CInt)
#field get_split_mode , FunPtr (Ptr <struct rig> -> CInt -> Ptr <rmode_t> -> Ptr CLong -> CInt)
#field set_split_vfo , FunPtr (Ptr <struct rig> -> CInt -> <split_t> -> CInt -> CInt)
#field get_split_vfo , FunPtr (Ptr <struct rig> -> CInt -> Ptr <split_t> -> Ptr CInt -> CInt)
#field set_rit , FunPtr (Ptr <struct rig> -> CInt -> CLong -> CInt)
#field get_rit , FunPtr (Ptr <struct rig> -> CInt -> Ptr CLong -> CInt)
#field set_xit , FunPtr (Ptr <struct rig> -> CInt -> CLong -> CInt)
#field get_xit , FunPtr (Ptr <struct rig> -> CInt -> Ptr CLong -> CInt)
#field set_ts , FunPtr (Ptr <struct rig> -> CInt -> CLong -> CInt)
#field get_ts , FunPtr (Ptr <struct rig> -> CInt -> Ptr CLong -> CInt)
#field set_dcs_code , FunPtr (Ptr <struct rig> -> CInt -> CUInt -> CInt)
#field get_dcs_code , FunPtr (Ptr <struct rig> -> CInt -> Ptr CUInt -> CInt)
#field set_tone , FunPtr (Ptr <struct rig> -> CInt -> CUInt -> CInt)
#field get_tone , FunPtr (Ptr <struct rig> -> CInt -> Ptr CUInt -> CInt)
#field set_ctcss_tone , FunPtr (Ptr <struct rig> -> CInt -> CUInt -> CInt)
#field get_ctcss_tone , FunPtr (Ptr <struct rig> -> CInt -> Ptr CUInt -> CInt)
#field set_dcs_sql , FunPtr (Ptr <struct rig> -> CInt -> CUInt -> CInt)
#field get_dcs_sql , FunPtr (Ptr <struct rig> -> CInt -> Ptr CUInt -> CInt)
#field set_tone_sql , FunPtr (Ptr <struct rig> -> CInt -> CUInt -> CInt)
#field get_tone_sql , FunPtr (Ptr <struct rig> -> CInt -> Ptr CUInt -> CInt)
#field set_ctcss_sql , FunPtr (Ptr <struct rig> -> CInt -> CUInt -> CInt)
#field get_ctcss_sql , FunPtr (Ptr <struct rig> -> CInt -> Ptr CUInt -> CInt)
#field power2mW , FunPtr (Ptr <struct rig> -> Ptr CUInt -> CFloat -> CDouble -> <rmode_t> -> CInt)
#field mW2power , FunPtr (Ptr <struct rig> -> Ptr CFloat -> CUInt -> CDouble -> <rmode_t> -> CInt)
#field set_powerstat , FunPtr (Ptr <struct rig> -> <powerstat_t> -> CInt)
#field get_powerstat , FunPtr (Ptr <struct rig> -> Ptr <powerstat_t> -> CInt)
#field reset , FunPtr (Ptr <struct rig> -> <reset_t> -> CInt)
#field set_ant , FunPtr (Ptr <struct rig> -> CInt -> CInt -> CInt)
#field get_ant , FunPtr (Ptr <struct rig> -> CInt -> Ptr CInt -> CInt)
#field set_level , FunPtr (Ptr <struct rig> -> CInt -> CULong -> <value_t> -> CInt)
#field get_level , FunPtr (Ptr <struct rig> -> CInt -> CULong -> Ptr <value_t> -> CInt)
#field set_func , FunPtr (Ptr <struct rig> -> CInt -> CULong -> CInt -> CInt)
#field get_func , FunPtr (Ptr <struct rig> -> CInt -> CULong -> Ptr CInt -> CInt)
#field set_parm , FunPtr (Ptr <struct rig> -> CULong -> <value_t> -> CInt)
#field get_parm , FunPtr (Ptr <struct rig> -> CULong -> Ptr <value_t> -> CInt)
#field set_ext_level , FunPtr (Ptr <struct rig> -> CInt -> CLong -> <value_t> -> CInt)
#field get_ext_level , FunPtr (Ptr <struct rig> -> CInt -> CLong -> Ptr <value_t> -> CInt)
#field set_ext_parm , FunPtr (Ptr <struct rig> -> CLong -> <value_t> -> CInt)
#field get_ext_parm , FunPtr (Ptr <struct rig> -> CLong -> Ptr <value_t> -> CInt)
#field set_conf , FunPtr (Ptr <struct rig> -> CLong -> CString -> CInt)
#field get_conf , FunPtr (Ptr <struct rig> -> CLong -> CString -> CInt)
#field send_dtmf , FunPtr (Ptr <struct rig> -> CInt -> CString -> CInt)
#field recv_dtmf , FunPtr (Ptr <struct rig> -> CInt -> CString -> Ptr CInt -> CInt)
#field send_morse , FunPtr (Ptr <struct rig> -> CInt -> CString -> CInt)
#field set_bank , FunPtr (Ptr <struct rig> -> CInt -> CInt -> CInt)
#field set_mem , FunPtr (Ptr <struct rig> -> CInt -> CInt -> CInt)
#field get_mem , FunPtr (Ptr <struct rig> -> CInt -> Ptr CInt -> CInt)
#field vfo_op , FunPtr (Ptr <struct rig> -> CInt -> <vfo_op_t> -> CInt)
#field scan , FunPtr (Ptr <struct rig> -> CInt -> <scan_t> -> CInt -> CInt)
#field set_trn , FunPtr (Ptr <struct rig> -> CInt -> CInt)
#field get_trn , FunPtr (Ptr <struct rig> -> Ptr CInt -> CInt)
#field decode_event , FunPtr (Ptr <struct rig> -> CInt)
#field set_channel , FunPtr (Ptr <struct rig> -> Ptr <struct channel> -> CInt)
#field get_channel , FunPtr (Ptr <struct rig> -> Ptr <struct channel> -> CInt)
#field get_info , FunPtr (Ptr <struct rig> -> CString)
#field set_chan_all_cb , FunPtr (Ptr <struct rig> -> <chan_cb_t> -> Ptr () -> CInt)
#field get_chan_all_cb , FunPtr (Ptr <struct rig> -> <chan_cb_t> -> Ptr () -> CInt)
#field set_mem_all_cb , FunPtr (Ptr <struct rig> -> <chan_cb_t> -> <confval_cb_t> -> Ptr () -> CInt)
#field get_mem_all_cb , FunPtr (Ptr <struct rig> -> <chan_cb_t> -> <confval_cb_t> -> Ptr () -> CInt)
#field clone_combo_set , CString
#field clone_combo_get , CString
#stoptype
{- typedef struct hamlib_port {
            union type {
                rig_port_t rig; ptt_type_t ptt; dcd_type_t dcd;
            } type;
            int fd;
            void * handle;
            int write_delay;
            int post_write_delay;
            struct post_write_date {
                int tv_sec, tv_usec;
            } post_write_date;
            int timeout;
            int retry;
            char pathname[100];
            union parm {
                struct serial {
                    int rate;
                    int data_bits;
                    int stop_bits;
                    enum serial_parity_e parity;
                    enum serial_handshake_e handshake;
                    enum serial_control_state_e rts_state;
                    enum serial_control_state_e dtr_state;
                } serial;
                struct parallel {
                    int pin;
                } parallel;
                struct cm108 {
                    int ptt_bitnum;
                } cm108;
                struct usb {
                    int vid;
                    int pid;
                    int conf;
                    int iface;
                    int alt;
                    char * vendor_name;
                    char * product;
                } usb;
            } parm;
        } hamlib_port_t; -}
#starttype union type
#field rig , <struct rig_port_t>
#field ptt , <struct ptt_type_t>
#field dcd , <struct dcd_type_t>
#stoptype

#starttype struct post_write_date
#field tv_sec , CInt
#field tv_usec , CInt
#stoptype

#starttype struct serial
#field rate , CInt
#field data_bits , CInt
#field stop_bits , CInt
#field parity , <enum serial_parity_e>
#field handshake , <enum serial_handshake_e>
#field rts_state , <enum serial_control_state_e>
#field dtr_state , <enum serial_control_state_e>
#stoptype

#starttype struct parallel
#field pin , CInt
#stoptype

#starttype struct cm108
#field ptt_bitnum , CInt
#stoptype

#starttype struct usb
#field vid , CInt
#field pid , CInt
#field conf , CInt
#field iface , CInt
#field alt , CInt
#field vendor_name , CString
#field product , CString
#stoptype

#starttype union parm
#field serial , <struct serial>
#field parallel , <struct parallel>
#field cm108 , <struct cm108>
#field usb , <struct usb>
#stoptype

#starttype struct hamlib_port
#field type , <union type>
#field fd , CInt
#field handle , Ptr ()
#field write_delay , CInt
#field post_write_delay , CInt
#field post_write_date , <struct post_write_date>
#field timeout , CInt
#field retry , CInt
#array_field pathname , CChar
#field parm , <union parm>
#stoptype
{- typedef hamlib_port_t port_t; -}
#synonym_t port_t , <struct hamlib_port>
{- struct rig_state {
    hamlib_port_t rigport;
    hamlib_port_t pttport;
    hamlib_port_t dcdport;
    double vfo_comp;
    int itu_region;
    freq_range_t rx_range_list[30];
    freq_range_t tx_range_list[30];
    struct tuning_step_list tuning_steps[20];
    struct filter_list filters[42];
    cal_table_t str_cal;
    chan_t chan_list[16];
    shortfreq_t max_rit;
    shortfreq_t max_xit;
    shortfreq_t max_ifshift;
    ann_t announces;
    int preamp[8];
    int attenuator[8];
    setting_t has_get_func;
    setting_t has_set_func;
    setting_t has_get_level;
    setting_t has_set_level;
    setting_t has_get_parm;
    setting_t has_set_parm;
    gran_t level_gran[32];
    gran_t parm_gran[32];
    int hold_decode;
    vfo_t current_vfo;
    int vfo_list;
    int comm_state;
    void * priv;
    void * obj;
    int transceive;
    int poll_interval;
    freq_t current_freq;
    rmode_t current_mode;
    pbwidth_t current_width;
    vfo_t tx_vfo;
    int mode_list;
}; -}
#starttype struct rig_state
#field rigport , <struct hamlib_port>
#field pttport , <struct hamlib_port>
#field dcdport , <struct hamlib_port>
#field vfo_comp , CDouble
#field itu_region , CInt
#array_field rx_range_list , <struct freq_range_list>
#array_field tx_range_list , <struct freq_range_list>
#array_field tuning_steps , <struct tuning_step_list>
#array_field filters , <struct filter_list>
#field str_cal , <struct cal_table>
#array_field chan_list , <struct chan_list>
#field max_rit , CLong
#field max_xit , CLong
#field max_ifshift , CLong
#field announces , <ann_t>
#array_field preamp , CInt
#array_field attenuator , CInt
#field has_get_func , CULong
#field has_set_func , CULong
#field has_get_level , CULong
#field has_set_level , CULong
#field has_get_parm , CULong
#field has_set_parm , CULong
#array_field level_gran , <struct gran>
#array_field parm_gran , <struct gran>
#field hold_decode , CInt
#field current_vfo , CInt
#field vfo_list , CInt
#field comm_state , CInt
#field priv , Ptr ()
#field obj , Ptr ()
#field transceive , CInt
#field poll_interval , CInt
#field current_freq , CDouble
#field current_mode , <rmode_t>
#field current_width , CLong
#field tx_vfo , CInt
#field mode_list , CInt
#stoptype

#callback freq_cb_t , Ptr <struct rig> -> CInt -> CDouble -> Ptr () -> IO CInt
#callback mode_cb_t , Ptr <struct rig> -> CInt -> <rmode_t> -> CLong -> Ptr () -> IO CInt
#callback vfo_cb_t , Ptr <struct rig> -> CInt -> Ptr () -> IO CInt
#callback ptt_cb_t , Ptr <struct rig> -> CInt -> <ptt_t> -> Ptr () -> IO CInt
#callback dcd_cb_t , Ptr <struct rig> -> CInt -> <enum dcd_e> -> Ptr () -> IO CInt
#callback pltune_cb_t , Ptr <struct rig> -> CInt -> Ptr CDouble -> Ptr <rmode_t> -> Ptr CLong -> Ptr () -> IO CInt
{- struct rig_callbacks {
    freq_cb_t freq_event;
    void * freq_arg;
    mode_cb_t mode_event;
    void * mode_arg;
    vfo_cb_t vfo_event;
    void * vfo_arg;
    ptt_cb_t ptt_event;
    void * ptt_arg;
    dcd_cb_t dcd_event;
    void * dcd_arg;
    pltune_cb_t pltune;
    void * pltune_arg;
}; -}
#starttype struct rig_callbacks
#field freq_event , <freq_cb_t>
#field freq_arg , Ptr ()
#field mode_event , <mode_cb_t>
#field mode_arg , Ptr ()
#field vfo_event , <vfo_cb_t>
#field vfo_arg , Ptr ()
#field ptt_event , <ptt_cb_t>
#field ptt_arg , Ptr ()
#field dcd_event , <dcd_cb_t>
#field dcd_arg , Ptr ()
#field pltune , <pltune_cb_t>
#field pltune_arg , Ptr ()
#stoptype
{- struct rig {
    struct rig_caps * caps;
    struct rig_state state;
    struct rig_callbacks callbacks;
}; -}
#starttype struct rig
#field caps , Ptr <struct rig_caps>
#field state , <struct rig_state>
#field callbacks , <struct rig_callbacks>
#stoptype
#ccall rig_init , CInt -> IO (Ptr <struct rig>)
#ccall rig_open , Ptr <struct rig> -> IO CInt
#ccall rig_set_freq , Ptr <struct rig> -> CInt -> CDouble -> IO CInt
#ccall rig_get_freq , Ptr <struct rig> -> CInt -> Ptr CDouble -> IO CInt
#ccall rig_set_mode , Ptr <struct rig> -> CInt -> <rmode_t> -> CLong -> IO CInt
#ccall rig_get_mode , Ptr <struct rig> -> CInt -> Ptr <rmode_t> -> Ptr CLong -> IO CInt
#ccall rig_set_vfo , Ptr <struct rig> -> CInt -> IO CInt
#ccall rig_get_vfo , Ptr <struct rig> -> Ptr CInt -> IO CInt
#ccall rig_set_ptt , Ptr <struct rig> -> CInt -> <ptt_t> -> IO CInt
#ccall rig_get_ptt , Ptr <struct rig> -> CInt -> Ptr <ptt_t> -> IO CInt
#ccall rig_get_dcd , Ptr <struct rig> -> CInt -> Ptr <enum dcd_e> -> IO CInt
#ccall rig_set_rptr_shift , Ptr <struct rig> -> CInt -> <rptr_shift_t> -> IO CInt
#ccall rig_get_rptr_shift , Ptr <struct rig> -> CInt -> Ptr <rptr_shift_t> -> IO CInt
#ccall rig_set_rptr_offs , Ptr <struct rig> -> CInt -> CLong -> IO CInt
#ccall rig_get_rptr_offs , Ptr <struct rig> -> CInt -> Ptr CLong -> IO CInt
#ccall rig_set_ctcss_tone , Ptr <struct rig> -> CInt -> CUInt -> IO CInt
#ccall rig_get_ctcss_tone , Ptr <struct rig> -> CInt -> Ptr CUInt -> IO CInt
#ccall rig_set_dcs_code , Ptr <struct rig> -> CInt -> CUInt -> IO CInt
#ccall rig_get_dcs_code , Ptr <struct rig> -> CInt -> Ptr CUInt -> IO CInt
#ccall rig_set_ctcss_sql , Ptr <struct rig> -> CInt -> CUInt -> IO CInt
#ccall rig_get_ctcss_sql , Ptr <struct rig> -> CInt -> Ptr CUInt -> IO CInt
#ccall rig_set_dcs_sql , Ptr <struct rig> -> CInt -> CUInt -> IO CInt
#ccall rig_get_dcs_sql , Ptr <struct rig> -> CInt -> Ptr CUInt -> IO CInt
#ccall rig_set_split_freq , Ptr <struct rig> -> CInt -> CDouble -> IO CInt
#ccall rig_get_split_freq , Ptr <struct rig> -> CInt -> Ptr CDouble -> IO CInt
#ccall rig_set_split_mode , Ptr <struct rig> -> CInt -> <rmode_t> -> CLong -> IO CInt
#ccall rig_get_split_mode , Ptr <struct rig> -> CInt -> Ptr <rmode_t> -> Ptr CLong -> IO CInt
#ccall rig_set_split_vfo , Ptr <struct rig> -> CInt -> <split_t> -> CInt -> IO CInt
#ccall rig_get_split_vfo , Ptr <struct rig> -> CInt -> Ptr <split_t> -> Ptr CInt -> IO CInt
#ccall rig_set_rit , Ptr <struct rig> -> CInt -> CLong -> IO CInt
#ccall rig_get_rit , Ptr <struct rig> -> CInt -> Ptr CLong -> IO CInt
#ccall rig_set_xit , Ptr <struct rig> -> CInt -> CLong -> IO CInt
#ccall rig_get_xit , Ptr <struct rig> -> CInt -> Ptr CLong -> IO CInt
#ccall rig_set_ts , Ptr <struct rig> -> CInt -> CLong -> IO CInt
#ccall rig_get_ts , Ptr <struct rig> -> CInt -> Ptr CLong -> IO CInt
#ccall rig_power2mW , Ptr <struct rig> -> Ptr CUInt -> CFloat -> CDouble -> <rmode_t> -> IO CInt
#ccall rig_mW2power , Ptr <struct rig> -> Ptr CFloat -> CUInt -> CDouble -> <rmode_t> -> IO CInt
#ccall rig_get_resolution , Ptr <struct rig> -> <rmode_t> -> IO CLong
#ccall rig_get_level , Ptr <struct rig> -> CInt -> CULong -> Ptr <value_t> -> IO CInt
#ccall rig_get_parm , Ptr <struct rig> -> CULong -> Ptr <value_t> -> IO CInt
#ccall rig_set_conf , Ptr <struct rig> -> CLong -> CString -> IO CInt
#ccall rig_get_conf , Ptr <struct rig> -> CLong -> CString -> IO CInt
#ccall rig_set_powerstat , Ptr <struct rig> -> <powerstat_t> -> IO CInt
#ccall rig_get_powerstat , Ptr <struct rig> -> Ptr <powerstat_t> -> IO CInt
#ccall rig_reset , Ptr <struct rig> -> <reset_t> -> IO CInt
#ccall rig_get_ext_level , Ptr <struct rig> -> CInt -> CLong -> Ptr <value_t> -> IO CInt
#ccall rig_get_ext_parm , Ptr <struct rig> -> CLong -> Ptr <value_t> -> IO CInt
#ccall rig_ext_level_foreach , Ptr <struct rig> -> FunPtr (Ptr <struct rig> -> Ptr <struct confparams> -> Ptr () -> CInt) -> Ptr () -> IO CInt
#ccall rig_ext_parm_foreach , Ptr <struct rig> -> FunPtr (Ptr <struct rig> -> Ptr <struct confparams> -> Ptr () -> CInt) -> Ptr () -> IO CInt
#ccall rig_ext_lookup , Ptr <struct rig> -> CString -> IO (Ptr <struct confparams>)
#ccall rig_ext_lookup_tok , Ptr <struct rig> -> CLong -> IO (Ptr <struct confparams>)
#ccall rig_ext_token_lookup , Ptr <struct rig> -> CString -> IO CLong
#ccall rig_token_foreach , Ptr <struct rig> -> FunPtr (Ptr <struct confparams> -> Ptr () -> CInt) -> Ptr () -> IO CInt
#ccall rig_confparam_lookup , Ptr <struct rig> -> CString -> IO (Ptr <struct confparams>)
#ccall rig_token_lookup , Ptr <struct rig> -> CString -> IO CLong
#ccall rig_close , Ptr <struct rig> -> IO CInt
#ccall rig_cleanup , Ptr <struct rig> -> IO CInt
#ccall rig_set_ant , Ptr <struct rig> -> CInt -> CInt -> IO CInt
#ccall rig_get_ant , Ptr <struct rig> -> CInt -> Ptr CInt -> IO CInt
#ccall rig_has_get_level , Ptr <struct rig> -> CULong -> IO CULong
#ccall rig_has_set_level , Ptr <struct rig> -> CULong -> IO CULong
#ccall rig_has_get_parm , Ptr <struct rig> -> CULong -> IO CULong
#ccall rig_has_set_parm , Ptr <struct rig> -> CULong -> IO CULong
#ccall rig_has_get_func , Ptr <struct rig> -> CULong -> IO CULong
#ccall rig_has_set_func , Ptr <struct rig> -> CULong -> IO CULong
#ccall rig_set_func , Ptr <struct rig> -> CInt -> CULong -> CInt -> IO CInt
#ccall rig_get_func , Ptr <struct rig> -> CInt -> CULong -> Ptr CInt -> IO CInt
#ccall rig_send_dtmf , Ptr <struct rig> -> CInt -> CString -> IO CInt
#ccall rig_recv_dtmf , Ptr <struct rig> -> CInt -> CString -> Ptr CInt -> IO CInt
#ccall rig_send_morse , Ptr <struct rig> -> CInt -> CString -> IO CInt
#ccall rig_set_bank , Ptr <struct rig> -> CInt -> CInt -> IO CInt
#ccall rig_set_mem , Ptr <struct rig> -> CInt -> CInt -> IO CInt
#ccall rig_get_mem , Ptr <struct rig> -> CInt -> Ptr CInt -> IO CInt
#ccall rig_vfo_op , Ptr <struct rig> -> CInt -> <vfo_op_t> -> IO CInt
#ccall rig_has_vfo_op , Ptr <struct rig> -> <vfo_op_t> -> IO <vfo_op_t>
#ccall rig_scan , Ptr <struct rig> -> CInt -> <scan_t> -> CInt -> IO CInt
#ccall rig_has_scan , Ptr <struct rig> -> <scan_t> -> IO <scan_t>
#ccall rig_set_channel , Ptr <struct rig> -> Ptr <struct channel> -> IO CInt
#ccall rig_get_channel , Ptr <struct rig> -> Ptr <struct channel> -> IO CInt
#ccall rig_set_chan_all , Ptr <struct rig> -> Ptr (<struct channel>) -> IO CInt
#ccall rig_get_chan_all , Ptr <struct rig> -> Ptr (<struct channel>) -> IO CInt
#ccall rig_set_chan_all_cb , Ptr <struct rig> -> <chan_cb_t> -> Ptr () -> IO CInt
#ccall rig_get_chan_all_cb , Ptr <struct rig> -> <chan_cb_t> -> Ptr () -> IO CInt
#ccall rig_set_mem_all_cb , Ptr <struct rig> -> <chan_cb_t> -> <confval_cb_t> -> Ptr () -> IO CInt
#ccall rig_get_mem_all_cb , Ptr <struct rig> -> <chan_cb_t> -> <confval_cb_t> -> Ptr () -> IO CInt
#ccall rig_set_mem_all , Ptr <struct rig> -> Ptr <struct channel> -> Ptr <struct confparams> -> Ptr <value_t> -> IO CInt
#ccall rig_get_mem_all , Ptr <struct rig> -> Ptr <struct channel> -> Ptr <struct confparams> -> Ptr <value_t> -> IO CInt
#ccall rig_lookup_mem_caps , Ptr <struct rig> -> CInt -> IO (Ptr <struct chan_list>)
#ccall rig_mem_count , Ptr <struct rig> -> IO CInt
#ccall rig_set_trn , Ptr <struct rig> -> CInt -> IO CInt
#ccall rig_get_trn , Ptr <struct rig> -> Ptr CInt -> IO CInt
#ccall rig_set_freq_callback , Ptr <struct rig> -> <freq_cb_t> -> Ptr () -> IO CInt
#ccall rig_set_mode_callback , Ptr <struct rig> -> <mode_cb_t> -> Ptr () -> IO CInt
#ccall rig_set_vfo_callback , Ptr <struct rig> -> <vfo_cb_t> -> Ptr () -> IO CInt
#ccall rig_set_ptt_callback , Ptr <struct rig> -> <ptt_cb_t> -> Ptr () -> IO CInt
#ccall rig_set_dcd_callback , Ptr <struct rig> -> <dcd_cb_t> -> Ptr () -> IO CInt
#ccall rig_set_pltune_callback , Ptr <struct rig> -> <pltune_cb_t> -> Ptr () -> IO CInt
#ccall rig_get_info , Ptr <struct rig> -> IO CString
#ccall rig_get_caps , CInt -> IO (Ptr <struct rig_caps>)
#ccall rig_get_range , Ptr (<struct freq_range_list>) -> CDouble -> <rmode_t> -> IO (Ptr <struct freq_range_list>)
#ccall rig_passband_normal , Ptr <struct rig> -> <rmode_t> -> IO CLong
#ccall rig_passband_narrow , Ptr <struct rig> -> <rmode_t> -> IO CLong
#ccall rig_passband_wide , Ptr <struct rig> -> <rmode_t> -> IO CLong
#ccall rigerror , CInt -> IO CString
#ccall rig_setting2idx , CULong -> IO CInt
#ccall rig_set_debug , <enum rig_debug_level_e> -> IO ()
#ccall rig_need_debug , <enum rig_debug_level_e> -> IO CInt
#ccall rig_debug , <enum rig_debug_level_e> -> CString -> IO ()
#ccall rig_register , Ptr <struct rig_caps> -> IO CInt
#ccall rig_unregister , CInt -> IO CInt
#ccall rig_list_foreach , FunPtr (Ptr <struct rig_caps> -> Ptr () -> CInt) -> Ptr () -> IO CInt
#ccall rig_load_backend , CString -> IO CInt
#ccall rig_check_backend , CInt -> IO CInt
#ccall rig_load_all_backends , IO CInt
#callback rig_probe_func_t , Ptr <struct hamlib_port> -> CInt -> Ptr () -> IO CInt
#ccall rig_probe_all , Ptr <struct hamlib_port> -> <rig_probe_func_t> -> Ptr () -> IO CInt
#ccall rig_probe , Ptr <struct hamlib_port> -> IO CInt
#ccall rig_strrmode , <rmode_t> -> IO CString
#ccall rig_strvfo , CInt -> IO CString
#ccall rig_strfunc , CULong -> IO CString
#ccall rig_strlevel , CULong -> IO CString
#ccall rig_strparm , CULong -> IO CString
#ccall rig_strptrshift , <rptr_shift_t> -> IO CString
#ccall rig_strvfop , <vfo_op_t> -> IO CString
#ccall rig_strscan , <scan_t> -> IO CString
#ccall rig_strstatus , <enum rig_status_e> -> IO CString
#ccall rig_strmtype , <chan_type_t> -> IO CString
#ccall rig_parse_mode , CString -> IO <rmode_t>
#ccall rig_parse_vfo , CString -> IO CInt
#ccall rig_parse_func , CString -> IO CULong
#ccall rig_parse_level , CString -> IO CULong
#ccall rig_parse_parm , CString -> IO CULong
#ccall rig_parse_vfo_op , CString -> IO <vfo_op_t>
#ccall rig_parse_scan , CString -> IO <scan_t>
#ccall rig_parse_rptr_shift , CString -> IO <rptr_shift_t>
#ccall rig_parse_mtype , CString -> IO <chan_type_t>
