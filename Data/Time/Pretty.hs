-- | Provides functions for pretty rendering of time values.
module Data.Time.Pretty
    ( -- * Rendering pure values
      renderDay
    , renderTime12
    , renderTime24
    ) where

import Data.Time
import System.Locale

-- | Convert a time value into the format \"Month day, Year\".
--
-- >>> renderDay (fromGregorian 2010 2 23)
-- "February 23, 2010"
--
-- Since 0.1.0
renderDay :: FormatTime t => t -> String
renderDay = formatTime defaultTimeLocale "%B %e, %Y"

-- | Convert a time value into 12-hour time (a.k.a., AM/PM).
--
-- >>> renderTime12 (TimeOfDay 5 6 0)
-- "05:06:00 AM"
--
-- Since 0.1.0
renderTime12 :: FormatTime t => t -> String
renderTime12 = formatTime defaultTimeLocale "%r"

-- | Convert a time value into 24-hour time.
--
-- >>> renderTime24 (TimeOfDay 15 6 0)
-- "15:06:00"
--
-- Since 0.1.0
renderTime24 :: FormatTime t => t -> String
renderTime24 = formatTime defaultTimeLocale "%X"
