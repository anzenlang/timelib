
import Timelib.Util
import Timelib.Date.ScalarDate
import Timelib.Date.Convert
import Timelib.Duration.SignedDuration

namespace Timelib.SignedDuration.Constants

abbrev oneSecondSeconds : SecondPrecision.SignedDuration := 1
abbrev oneMinuteSeconds : SecondPrecision.SignedDuration := 60
abbrev oneHourSeconds   : SecondPrecision.SignedDuration := 3600
abbrev oneDaySeconds    : SecondPrecision.SignedDuration := 86400
abbrev oneWeekSeconds   : SecondPrecision.SignedDuration := 604800
abbrev oneYearSeconds   : SecondPrecision.SignedDuration := 31536000

--def oneSecondDuration (p : NegSiPow) : SignedDuration p := oneSecondSeconds.convertLossless p.property
--def oneMinuteDuration (p : NegSiPow) : SignedDuration p := oneMinuteSeconds.convertLossless p.property
--def oneDayDuration (p : NegSiPow) : SignedDuration p := oneDaySeconds.convertLossless p.property
--def oneWeekDuration (p : NegSiPow) : SignedDuration p := oneWeekSeconds.convertLossless p.property
--def oneYearDuration (p : NegSiPow) : SignedDuration p := oneYearSeconds.convertLossless p.property


def oneSecondDuration {p : Int} (isLe : p <= 0 := by decide) : SignedDuration p := oneSecondSeconds.convertLossless isLe
def oneMinuteDuration {p : Int} (isLe : p <= 0 := by decide) : SignedDuration p := oneMinuteSeconds.convertLossless isLe
def oneDayDuration    {p : Int} (isLe : p <= 0 := by decide) : SignedDuration p := oneDaySeconds.convertLossless isLe
def oneWeekDuration   {p : Int} (isLe : p <= 0 := by decide) : SignedDuration p := oneWeekSeconds.convertLossless isLe
def oneYearDuration   {p : Int} (isLe : p <= 0 := by decide) : SignedDuration p := oneYearSeconds.convertLossless isLe
