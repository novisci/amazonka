{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.S3.Types.DefaultRetention
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.DefaultRetention where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal
import Amazonka.S3.Types.ObjectLockRetentionMode

-- | The container element for specifying the default Object Lock retention
-- settings for new objects placed in the specified bucket.
--
-- -   The @DefaultRetention@ settings require both a mode and a period.
--
-- -   The @DefaultRetention@ period can be either @Days@ or @Years@ but
--     you must select one. You cannot specify @Days@ and @Years@ at the
--     same time.
--
-- /See:/ 'newDefaultRetention' smart constructor.
data DefaultRetention = DefaultRetention'
  { -- | The number of days that you want to specify for the default retention
    -- period. Must be used with @Mode@.
    days :: Prelude.Maybe Prelude.Int,
    -- | The number of years that you want to specify for the default retention
    -- period. Must be used with @Mode@.
    years :: Prelude.Maybe Prelude.Int,
    -- | The default Object Lock retention mode you want to apply to new objects
    -- placed in the specified bucket. Must be used with either @Days@ or
    -- @Years@.
    mode :: Prelude.Maybe ObjectLockRetentionMode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DefaultRetention' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'days', 'defaultRetention_days' - The number of days that you want to specify for the default retention
-- period. Must be used with @Mode@.
--
-- 'years', 'defaultRetention_years' - The number of years that you want to specify for the default retention
-- period. Must be used with @Mode@.
--
-- 'mode', 'defaultRetention_mode' - The default Object Lock retention mode you want to apply to new objects
-- placed in the specified bucket. Must be used with either @Days@ or
-- @Years@.
newDefaultRetention ::
  DefaultRetention
newDefaultRetention =
  DefaultRetention'
    { days = Prelude.Nothing,
      years = Prelude.Nothing,
      mode = Prelude.Nothing
    }

-- | The number of days that you want to specify for the default retention
-- period. Must be used with @Mode@.
defaultRetention_days :: Lens.Lens' DefaultRetention (Prelude.Maybe Prelude.Int)
defaultRetention_days = Lens.lens (\DefaultRetention' {days} -> days) (\s@DefaultRetention' {} a -> s {days = a} :: DefaultRetention)

-- | The number of years that you want to specify for the default retention
-- period. Must be used with @Mode@.
defaultRetention_years :: Lens.Lens' DefaultRetention (Prelude.Maybe Prelude.Int)
defaultRetention_years = Lens.lens (\DefaultRetention' {years} -> years) (\s@DefaultRetention' {} a -> s {years = a} :: DefaultRetention)

-- | The default Object Lock retention mode you want to apply to new objects
-- placed in the specified bucket. Must be used with either @Days@ or
-- @Years@.
defaultRetention_mode :: Lens.Lens' DefaultRetention (Prelude.Maybe ObjectLockRetentionMode)
defaultRetention_mode = Lens.lens (\DefaultRetention' {mode} -> mode) (\s@DefaultRetention' {} a -> s {mode = a} :: DefaultRetention)

instance Core.FromXML DefaultRetention where
  parseXML x =
    DefaultRetention'
      Prelude.<$> (x Core..@? "Days")
      Prelude.<*> (x Core..@? "Years")
      Prelude.<*> (x Core..@? "Mode")

instance Prelude.Hashable DefaultRetention where
  hashWithSalt _salt DefaultRetention' {..} =
    _salt `Prelude.hashWithSalt` days
      `Prelude.hashWithSalt` years
      `Prelude.hashWithSalt` mode

instance Prelude.NFData DefaultRetention where
  rnf DefaultRetention' {..} =
    Prelude.rnf days
      `Prelude.seq` Prelude.rnf years
      `Prelude.seq` Prelude.rnf mode

instance Core.ToXML DefaultRetention where
  toXML DefaultRetention' {..} =
    Prelude.mconcat
      [ "Days" Core.@= days,
        "Years" Core.@= years,
        "Mode" Core.@= mode
      ]
