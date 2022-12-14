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
-- Module      : Amazonka.S3.Types.CopyObjectResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.CopyObjectResult where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal

-- | Container for all response elements.
--
-- /See:/ 'newCopyObjectResult' smart constructor.
data CopyObjectResult = CopyObjectResult'
  { -- | Creation date of the object.
    lastModified :: Prelude.Maybe Core.ISO8601,
    -- | Returns the ETag of the new object. The ETag reflects only changes to
    -- the contents of an object, not its metadata.
    eTag :: Prelude.Maybe ETag
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CopyObjectResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModified', 'copyObjectResult_lastModified' - Creation date of the object.
--
-- 'eTag', 'copyObjectResult_eTag' - Returns the ETag of the new object. The ETag reflects only changes to
-- the contents of an object, not its metadata.
newCopyObjectResult ::
  CopyObjectResult
newCopyObjectResult =
  CopyObjectResult'
    { lastModified = Prelude.Nothing,
      eTag = Prelude.Nothing
    }

-- | Creation date of the object.
copyObjectResult_lastModified :: Lens.Lens' CopyObjectResult (Prelude.Maybe Prelude.UTCTime)
copyObjectResult_lastModified = Lens.lens (\CopyObjectResult' {lastModified} -> lastModified) (\s@CopyObjectResult' {} a -> s {lastModified = a} :: CopyObjectResult) Prelude.. Lens.mapping Core._Time

-- | Returns the ETag of the new object. The ETag reflects only changes to
-- the contents of an object, not its metadata.
copyObjectResult_eTag :: Lens.Lens' CopyObjectResult (Prelude.Maybe ETag)
copyObjectResult_eTag = Lens.lens (\CopyObjectResult' {eTag} -> eTag) (\s@CopyObjectResult' {} a -> s {eTag = a} :: CopyObjectResult)

instance Core.FromXML CopyObjectResult where
  parseXML x =
    CopyObjectResult'
      Prelude.<$> (x Core..@? "LastModified")
      Prelude.<*> (x Core..@? "ETag")

instance Prelude.Hashable CopyObjectResult where
  hashWithSalt _salt CopyObjectResult' {..} =
    _salt `Prelude.hashWithSalt` lastModified
      `Prelude.hashWithSalt` eTag

instance Prelude.NFData CopyObjectResult where
  rnf CopyObjectResult' {..} =
    Prelude.rnf lastModified
      `Prelude.seq` Prelude.rnf eTag
