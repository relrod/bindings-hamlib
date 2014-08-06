module Communication.Hamlib.Rig where

import Foreign.Ptr
import Foreign.C.Types

#include <hamlib/rig.h>

-- Macro-defined constants
{#enum define Consts {
    RIGNAMSIZ      as RigNameSize
  , FILPATHLEN     as FilePathLength
  , FRQRANGESIZ    as FrequencyRangeSize
  , MAXCHANDESC    as MaxChannelDescription
  , TSLSTSIZ       as TuningStepListSize
  , FLTLSTSIZ      as FilterListSize
  , MAXDBLSTSIZ    as MaxDBListSize
  , CHANLSTSIZ     as ChannelListSize
  , MAX_CAL_LENGTH as MaxClibrationPlots
  } deriving (Eq, Ord, Show)#}

{#enum rig_errcode_e as RigError {underscoreToCase}#}
{#enum rig_debug_level_e as RigDebugLevel {underscoreToCase}#}
{#enum rig_level_e as RigLevel {underscoreToCase}#}
{#enum rig_port_e as RigPort {underscoreToCase}#}
{#enum serial_parity_e as SerialParity {underscoreToCase}#}
{#enum serial_handshake_e as SerialHandshake {underscoreToCase}#}
{#enum serial_control_state_e as SerialControlState {underscoreToCase}#}
{#enum rmode_t as Rmode {underscoreToCase}#}
{#enum split_t as Split {underscoreToCase}#}
{#enum rptr_shift_t as RptrShift {underscoreToCase}#}
{#enum rig_type_t as RigType {underscoreToCase}#}
{#enum rig_status_e as RigStatus {underscoreToCase}#}
{#enum dcd_e as Dcd {underscoreToCase}#}
{#enum dcd_type_t as DcdType {underscoreToCase}#}
{#enum ptt_t as Ptt {underscoreToCase}#}
{#enum powerstat_t as Powerstat {underscoreToCase}#}
{#enum reset_t as Reset {underscoreToCase}#}
{#enum vfo_op_t as VfoOp {underscoreToCase}#}
{#enum scan_t as Scan {underscoreToCase}#}
{#enum rig_conf_e as RigConf {underscoreToCase}#}
{#enum ann_t as Announce {underscoreToCase}#}
{#enum agc_level_e as AgcLevel {underscoreToCase}#}
{#enum meter_level_e as MeterLevel {underscoreToCase}#}
{#enum rig_parm_e as RigParm {underscoreToCase}#}
{#enum rig_func_e as RigFunc {underscoreToCase}#}
{#enum chan_type_t as ChanType {underscoreToCase}#}

data Value = I Int | F Float | S String | Cs String

type Vfo = Int
type Freq = Double
type ShortFreq = Integer
type Pbwidth = ShortFreq
type Setting = Integer
type Tone = Int
type Ant = Int
type Token = Integer

data Channel =
  Channel {
      channelNum   :: Int
    , bankNum      :: Int
    , channelVfo   :: Vfo
    , channelAnt   :: Int
    , freq         :: Freq
    , mode         :: Rmode
    , channelWidth :: Pbwidth
    , txFreq       :: Freq
    , txMode       :: Rmode
    , txWidth      :: Pbwidth
    , split        :: Split
    , txVfo        :: Vfo
    , rptrShift    :: RptrShift
    , rptrOffs     :: ShortFreq
    , tuningStep   :: ShortFreq
    , rit          :: ShortFreq
    , xit          :: ShortFreq
    , funcs        :: Setting
    , levels       :: [Value]
    , ctcssTone    :: Tone
    , ctcssSql     :: Tone
    , dcsCode      :: Tone
    , dcsSql       :: Tone
    , scanGroup    :: Int
    , flags        :: Int
    , channelDesc  :: String
    }

{#pointer *channel as ChannelPtr -> Channel #}

--------------------------------------------------------------------------------

data FreqRangeList =
  FreqRange {
      start          :: Freq
    , end            :: Freq
    , freqRangemodes :: Rmode
    , lowPower       :: Int
    , highPower      :: Int
    , freqRangeVfo   :: Vfo
    , freqRangeAnt   :: Ant
    }

{#pointer *freq_range_list as FreqRangeListPtr -> FreqRangeList #}

--------------------------------------------------------------------------------

data TuningStepList =
  TuningStepList {
      tuningStepModes :: Rmode
    , ts              :: ShortFreq
    }

{#pointer *tuning_step_list as TuningStepListPtr -> TuningStepList #}

--------------------------------------------------------------------------------

data FilterList =
  FilterList {
      filterModes :: Rmode
    , filterWidth :: Pbwidth
    }

{#pointer *filter_list as FilterListPtr -> FilterList #}

--------------------------------------------------------------------------------

data ExtList =
  ExtList {
      extToken :: Token
    , extVal   :: Value
    }

{#pointer *ext_list as ExtListPtr -> ExtList #}
