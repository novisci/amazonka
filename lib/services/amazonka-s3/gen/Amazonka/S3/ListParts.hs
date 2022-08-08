{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.S3.ListParts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the parts that have been uploaded for a specific multipart upload.
-- This operation must include the upload ID, which you obtain by sending
-- the initiate multipart upload request (see
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html CreateMultipartUpload>).
-- This request returns a maximum of 1,000 uploaded parts. The default
-- number of parts returned is 1,000 parts. You can restrict the number of
-- parts returned by specifying the @max-parts@ request parameter. If your
-- multipart upload consists of more than 1,000 parts, the response returns
-- an @IsTruncated@ field with the value of true, and a
-- @NextPartNumberMarker@ element. In subsequent @ListParts@ requests you
-- can include the part-number-marker query string parameter and set its
-- value to the @NextPartNumberMarker@ field value from the previous
-- response.
--
-- For more information on multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html Uploading Objects Using Multipart Upload>.
--
-- For information on permissions required to use the multipart upload API,
-- see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html Multipart Upload and Permissions>.
--
-- The following operations are related to @ListParts@:
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html CreateMultipartUpload>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html CompleteMultipartUpload>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html AbortMultipartUpload>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html ListMultipartUploads>
--
-- This operation returns paginated results.
module Amazonka.S3.ListParts
  ( -- * Creating a Request
    ListParts (..),
    newListParts,

    -- * Request Lenses
    listParts_expectedBucketOwner,
    listParts_requestPayer,
    listParts_maxParts,
    listParts_partNumberMarker,
    listParts_bucket,
    listParts_key,
    listParts_uploadId,

    -- * Destructuring the Response
    ListPartsResponse (..),
    newListPartsResponse,

    -- * Response Lenses
    listPartsResponse_uploadId,
    listPartsResponse_key,
    listPartsResponse_requestCharged,
    listPartsResponse_parts,
    listPartsResponse_bucket,
    listPartsResponse_abortRuleId,
    listPartsResponse_nextPartNumberMarker,
    listPartsResponse_isTruncated,
    listPartsResponse_owner,
    listPartsResponse_abortDate,
    listPartsResponse_maxParts,
    listPartsResponse_partNumberMarker,
    listPartsResponse_storageClass,
    listPartsResponse_initiator,
    listPartsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.S3.Types

-- | /See:/ 'newListParts' smart constructor.
data ListParts = ListParts'
  { -- | The account ID of the expected bucket owner. If the bucket is owned by a
    -- different account, the request will fail with an HTTP
    -- @403 (Access Denied)@ error.
    expectedBucketOwner :: Prelude.Maybe Prelude.Text,
    requestPayer :: Prelude.Maybe RequestPayer,
    -- | Sets the maximum number of parts to return.
    maxParts :: Prelude.Maybe Prelude.Int,
    -- | Specifies the part after which listing should begin. Only parts with
    -- higher part numbers will be listed.
    partNumberMarker :: Prelude.Maybe Prelude.Int,
    -- | The name of the bucket to which the parts are being uploaded.
    --
    -- When using this action with an access point, you must direct requests to
    -- the access point hostname. The access point hostname takes the form
    -- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
    -- When using this action with an access point through the Amazon Web
    -- Services SDKs, you provide the access point ARN in place of the bucket
    -- name. For more information about access point ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
    -- in the /Amazon S3 User Guide/.
    --
    -- When using this action with Amazon S3 on Outposts, you must direct
    -- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
    -- takes the form
    -- /AccessPointName/-/AccountId/./outpostID/.s3-outposts./Region/.amazonaws.com.
    -- When using this action using S3 on Outposts through the Amazon Web
    -- Services SDKs, you provide the Outposts bucket ARN in place of the
    -- bucket name. For more information about S3 on Outposts ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using S3 on Outposts>
    -- in the /Amazon S3 User Guide/.
    bucket :: BucketName,
    -- | Object key for which the multipart upload was initiated.
    key :: ObjectKey,
    -- | Upload ID identifying the multipart upload whose parts are being listed.
    uploadId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListParts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expectedBucketOwner', 'listParts_expectedBucketOwner' - The account ID of the expected bucket owner. If the bucket is owned by a
-- different account, the request will fail with an HTTP
-- @403 (Access Denied)@ error.
--
-- 'requestPayer', 'listParts_requestPayer' - Undocumented member.
--
-- 'maxParts', 'listParts_maxParts' - Sets the maximum number of parts to return.
--
-- 'partNumberMarker', 'listParts_partNumberMarker' - Specifies the part after which listing should begin. Only parts with
-- higher part numbers will be listed.
--
-- 'bucket', 'listParts_bucket' - The name of the bucket to which the parts are being uploaded.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- /AccessPointName/-/AccountId/./outpostID/.s3-outposts./Region/.amazonaws.com.
-- When using this action using S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using S3 on Outposts>
-- in the /Amazon S3 User Guide/.
--
-- 'key', 'listParts_key' - Object key for which the multipart upload was initiated.
--
-- 'uploadId', 'listParts_uploadId' - Upload ID identifying the multipart upload whose parts are being listed.
newListParts ::
  -- | 'bucket'
  BucketName ->
  -- | 'key'
  ObjectKey ->
  -- | 'uploadId'
  Prelude.Text ->
  ListParts
newListParts pBucket_ pKey_ pUploadId_ =
  ListParts'
    { expectedBucketOwner = Prelude.Nothing,
      requestPayer = Prelude.Nothing,
      maxParts = Prelude.Nothing,
      partNumberMarker = Prelude.Nothing,
      bucket = pBucket_,
      key = pKey_,
      uploadId = pUploadId_
    }

-- | The account ID of the expected bucket owner. If the bucket is owned by a
-- different account, the request will fail with an HTTP
-- @403 (Access Denied)@ error.
listParts_expectedBucketOwner :: Lens.Lens' ListParts (Prelude.Maybe Prelude.Text)
listParts_expectedBucketOwner = Lens.lens (\ListParts' {expectedBucketOwner} -> expectedBucketOwner) (\s@ListParts' {} a -> s {expectedBucketOwner = a} :: ListParts)

-- | Undocumented member.
listParts_requestPayer :: Lens.Lens' ListParts (Prelude.Maybe RequestPayer)
listParts_requestPayer = Lens.lens (\ListParts' {requestPayer} -> requestPayer) (\s@ListParts' {} a -> s {requestPayer = a} :: ListParts)

-- | Sets the maximum number of parts to return.
listParts_maxParts :: Lens.Lens' ListParts (Prelude.Maybe Prelude.Int)
listParts_maxParts = Lens.lens (\ListParts' {maxParts} -> maxParts) (\s@ListParts' {} a -> s {maxParts = a} :: ListParts)

-- | Specifies the part after which listing should begin. Only parts with
-- higher part numbers will be listed.
listParts_partNumberMarker :: Lens.Lens' ListParts (Prelude.Maybe Prelude.Int)
listParts_partNumberMarker = Lens.lens (\ListParts' {partNumberMarker} -> partNumberMarker) (\s@ListParts' {} a -> s {partNumberMarker = a} :: ListParts)

-- | The name of the bucket to which the parts are being uploaded.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- /AccessPointName/-/AccountId/./outpostID/.s3-outposts./Region/.amazonaws.com.
-- When using this action using S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using S3 on Outposts>
-- in the /Amazon S3 User Guide/.
listParts_bucket :: Lens.Lens' ListParts BucketName
listParts_bucket = Lens.lens (\ListParts' {bucket} -> bucket) (\s@ListParts' {} a -> s {bucket = a} :: ListParts)

-- | Object key for which the multipart upload was initiated.
listParts_key :: Lens.Lens' ListParts ObjectKey
listParts_key = Lens.lens (\ListParts' {key} -> key) (\s@ListParts' {} a -> s {key = a} :: ListParts)

-- | Upload ID identifying the multipart upload whose parts are being listed.
listParts_uploadId :: Lens.Lens' ListParts Prelude.Text
listParts_uploadId = Lens.lens (\ListParts' {uploadId} -> uploadId) (\s@ListParts' {} a -> s {uploadId = a} :: ListParts)

instance Core.AWSPager ListParts where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listPartsResponse_isTruncated Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.isNothing
        ( rs
            Lens.^? listPartsResponse_nextPartNumberMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listParts_partNumberMarker
          Lens..~ rs
          Lens.^? listPartsResponse_nextPartNumberMarker
            Prelude.. Lens._Just

instance Core.AWSRequest ListParts where
  type AWSResponse ListParts = ListPartsResponse
  request =
    Request.s3vhost
      Prelude.. Request.get defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          ListPartsResponse'
            Prelude.<$> (x Core..@? "UploadId")
            Prelude.<*> (x Core..@? "Key")
            Prelude.<*> (h Core..#? "x-amz-request-charged")
            Prelude.<*> (Core.may (Core.parseXMLList "Part") x)
            Prelude.<*> (x Core..@? "Bucket")
            Prelude.<*> (h Core..#? "x-amz-abort-rule-id")
            Prelude.<*> (x Core..@? "NextPartNumberMarker")
            Prelude.<*> (x Core..@? "IsTruncated")
            Prelude.<*> (x Core..@? "Owner")
            Prelude.<*> (h Core..#? "x-amz-abort-date")
            Prelude.<*> (x Core..@? "MaxParts")
            Prelude.<*> (x Core..@? "PartNumberMarker")
            Prelude.<*> (x Core..@? "StorageClass")
            Prelude.<*> (x Core..@? "Initiator")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListParts where
  hashWithSalt _salt ListParts' {..} =
    _salt `Prelude.hashWithSalt` expectedBucketOwner
      `Prelude.hashWithSalt` requestPayer
      `Prelude.hashWithSalt` maxParts
      `Prelude.hashWithSalt` partNumberMarker
      `Prelude.hashWithSalt` bucket
      `Prelude.hashWithSalt` key
      `Prelude.hashWithSalt` uploadId

instance Prelude.NFData ListParts where
  rnf ListParts' {..} =
    Prelude.rnf expectedBucketOwner
      `Prelude.seq` Prelude.rnf requestPayer
      `Prelude.seq` Prelude.rnf maxParts
      `Prelude.seq` Prelude.rnf partNumberMarker
      `Prelude.seq` Prelude.rnf bucket
      `Prelude.seq` Prelude.rnf key
      `Prelude.seq` Prelude.rnf uploadId

instance Core.ToHeaders ListParts where
  toHeaders ListParts' {..} =
    Prelude.mconcat
      [ "x-amz-expected-bucket-owner"
          Core.=# expectedBucketOwner,
        "x-amz-request-payer" Core.=# requestPayer
      ]

instance Core.ToPath ListParts where
  toPath ListParts' {..} =
    Prelude.mconcat
      ["/", Core.toBS bucket, "/", Core.toBS key]

instance Core.ToQuery ListParts where
  toQuery ListParts' {..} =
    Prelude.mconcat
      [ "max-parts" Core.=: maxParts,
        "part-number-marker" Core.=: partNumberMarker,
        "uploadId" Core.=: uploadId
      ]

-- | /See:/ 'newListPartsResponse' smart constructor.
data ListPartsResponse = ListPartsResponse'
  { -- | Upload ID identifying the multipart upload whose parts are being listed.
    uploadId :: Prelude.Maybe Prelude.Text,
    -- | Object key for which the multipart upload was initiated.
    key :: Prelude.Maybe ObjectKey,
    requestCharged :: Prelude.Maybe RequestCharged,
    -- | Container for elements related to a particular part. A response can
    -- contain zero or more @Part@ elements.
    parts :: Prelude.Maybe [Part],
    -- | The name of the bucket to which the multipart upload was initiated. Does
    -- not return the access point ARN or access point alias if used.
    bucket :: Prelude.Maybe BucketName,
    -- | This header is returned along with the @x-amz-abort-date@ header. It
    -- identifies applicable lifecycle configuration rule that defines the
    -- action to abort incomplete multipart uploads.
    abortRuleId :: Prelude.Maybe Prelude.Text,
    -- | When a list is truncated, this element specifies the last part in the
    -- list, as well as the value to use for the part-number-marker request
    -- parameter in a subsequent request.
    nextPartNumberMarker :: Prelude.Maybe Prelude.Int,
    -- | Indicates whether the returned list of parts is truncated. A true value
    -- indicates that the list was truncated. A list can be truncated if the
    -- number of parts exceeds the limit returned in the MaxParts element.
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | Container element that identifies the object owner, after the object is
    -- created. If multipart upload is initiated by an IAM user, this element
    -- provides the parent account ID and display name.
    owner :: Prelude.Maybe Owner,
    -- | If the bucket has a lifecycle rule configured with an action to abort
    -- incomplete multipart uploads and the prefix in the lifecycle rule
    -- matches the object name in the request, then the response includes this
    -- header indicating when the initiated multipart upload will become
    -- eligible for abort operation. For more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy>.
    --
    -- The response will also include the @x-amz-abort-rule-id@ header that
    -- will provide the ID of the lifecycle configuration rule that defines
    -- this action.
    abortDate :: Prelude.Maybe Core.ISO8601,
    -- | Maximum number of parts that were allowed in the response.
    maxParts :: Prelude.Maybe Prelude.Int,
    -- | When a list is truncated, this element specifies the last part in the
    -- list, as well as the value to use for the part-number-marker request
    -- parameter in a subsequent request.
    partNumberMarker :: Prelude.Maybe Prelude.Int,
    -- | Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the
    -- uploaded object.
    storageClass :: Prelude.Maybe StorageClass,
    -- | Container element that identifies who initiated the multipart upload. If
    -- the initiator is an Amazon Web Services account, this element provides
    -- the same information as the @Owner@ element. If the initiator is an IAM
    -- User, this element provides the user ARN and display name.
    initiator :: Prelude.Maybe Initiator,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPartsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'uploadId', 'listPartsResponse_uploadId' - Upload ID identifying the multipart upload whose parts are being listed.
--
-- 'key', 'listPartsResponse_key' - Object key for which the multipart upload was initiated.
--
-- 'requestCharged', 'listPartsResponse_requestCharged' - Undocumented member.
--
-- 'parts', 'listPartsResponse_parts' - Container for elements related to a particular part. A response can
-- contain zero or more @Part@ elements.
--
-- 'bucket', 'listPartsResponse_bucket' - The name of the bucket to which the multipart upload was initiated. Does
-- not return the access point ARN or access point alias if used.
--
-- 'abortRuleId', 'listPartsResponse_abortRuleId' - This header is returned along with the @x-amz-abort-date@ header. It
-- identifies applicable lifecycle configuration rule that defines the
-- action to abort incomplete multipart uploads.
--
-- 'nextPartNumberMarker', 'listPartsResponse_nextPartNumberMarker' - When a list is truncated, this element specifies the last part in the
-- list, as well as the value to use for the part-number-marker request
-- parameter in a subsequent request.
--
-- 'isTruncated', 'listPartsResponse_isTruncated' - Indicates whether the returned list of parts is truncated. A true value
-- indicates that the list was truncated. A list can be truncated if the
-- number of parts exceeds the limit returned in the MaxParts element.
--
-- 'owner', 'listPartsResponse_owner' - Container element that identifies the object owner, after the object is
-- created. If multipart upload is initiated by an IAM user, this element
-- provides the parent account ID and display name.
--
-- 'abortDate', 'listPartsResponse_abortDate' - If the bucket has a lifecycle rule configured with an action to abort
-- incomplete multipart uploads and the prefix in the lifecycle rule
-- matches the object name in the request, then the response includes this
-- header indicating when the initiated multipart upload will become
-- eligible for abort operation. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy>.
--
-- The response will also include the @x-amz-abort-rule-id@ header that
-- will provide the ID of the lifecycle configuration rule that defines
-- this action.
--
-- 'maxParts', 'listPartsResponse_maxParts' - Maximum number of parts that were allowed in the response.
--
-- 'partNumberMarker', 'listPartsResponse_partNumberMarker' - When a list is truncated, this element specifies the last part in the
-- list, as well as the value to use for the part-number-marker request
-- parameter in a subsequent request.
--
-- 'storageClass', 'listPartsResponse_storageClass' - Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the
-- uploaded object.
--
-- 'initiator', 'listPartsResponse_initiator' - Container element that identifies who initiated the multipart upload. If
-- the initiator is an Amazon Web Services account, this element provides
-- the same information as the @Owner@ element. If the initiator is an IAM
-- User, this element provides the user ARN and display name.
--
-- 'httpStatus', 'listPartsResponse_httpStatus' - The response's http status code.
newListPartsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPartsResponse
newListPartsResponse pHttpStatus_ =
  ListPartsResponse'
    { uploadId = Prelude.Nothing,
      key = Prelude.Nothing,
      requestCharged = Prelude.Nothing,
      parts = Prelude.Nothing,
      bucket = Prelude.Nothing,
      abortRuleId = Prelude.Nothing,
      nextPartNumberMarker = Prelude.Nothing,
      isTruncated = Prelude.Nothing,
      owner = Prelude.Nothing,
      abortDate = Prelude.Nothing,
      maxParts = Prelude.Nothing,
      partNumberMarker = Prelude.Nothing,
      storageClass = Prelude.Nothing,
      initiator = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Upload ID identifying the multipart upload whose parts are being listed.
listPartsResponse_uploadId :: Lens.Lens' ListPartsResponse (Prelude.Maybe Prelude.Text)
listPartsResponse_uploadId = Lens.lens (\ListPartsResponse' {uploadId} -> uploadId) (\s@ListPartsResponse' {} a -> s {uploadId = a} :: ListPartsResponse)

-- | Object key for which the multipart upload was initiated.
listPartsResponse_key :: Lens.Lens' ListPartsResponse (Prelude.Maybe ObjectKey)
listPartsResponse_key = Lens.lens (\ListPartsResponse' {key} -> key) (\s@ListPartsResponse' {} a -> s {key = a} :: ListPartsResponse)

-- | Undocumented member.
listPartsResponse_requestCharged :: Lens.Lens' ListPartsResponse (Prelude.Maybe RequestCharged)
listPartsResponse_requestCharged = Lens.lens (\ListPartsResponse' {requestCharged} -> requestCharged) (\s@ListPartsResponse' {} a -> s {requestCharged = a} :: ListPartsResponse)

-- | Container for elements related to a particular part. A response can
-- contain zero or more @Part@ elements.
listPartsResponse_parts :: Lens.Lens' ListPartsResponse (Prelude.Maybe [Part])
listPartsResponse_parts = Lens.lens (\ListPartsResponse' {parts} -> parts) (\s@ListPartsResponse' {} a -> s {parts = a} :: ListPartsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the bucket to which the multipart upload was initiated. Does
-- not return the access point ARN or access point alias if used.
listPartsResponse_bucket :: Lens.Lens' ListPartsResponse (Prelude.Maybe BucketName)
listPartsResponse_bucket = Lens.lens (\ListPartsResponse' {bucket} -> bucket) (\s@ListPartsResponse' {} a -> s {bucket = a} :: ListPartsResponse)

-- | This header is returned along with the @x-amz-abort-date@ header. It
-- identifies applicable lifecycle configuration rule that defines the
-- action to abort incomplete multipart uploads.
listPartsResponse_abortRuleId :: Lens.Lens' ListPartsResponse (Prelude.Maybe Prelude.Text)
listPartsResponse_abortRuleId = Lens.lens (\ListPartsResponse' {abortRuleId} -> abortRuleId) (\s@ListPartsResponse' {} a -> s {abortRuleId = a} :: ListPartsResponse)

-- | When a list is truncated, this element specifies the last part in the
-- list, as well as the value to use for the part-number-marker request
-- parameter in a subsequent request.
listPartsResponse_nextPartNumberMarker :: Lens.Lens' ListPartsResponse (Prelude.Maybe Prelude.Int)
listPartsResponse_nextPartNumberMarker = Lens.lens (\ListPartsResponse' {nextPartNumberMarker} -> nextPartNumberMarker) (\s@ListPartsResponse' {} a -> s {nextPartNumberMarker = a} :: ListPartsResponse)

-- | Indicates whether the returned list of parts is truncated. A true value
-- indicates that the list was truncated. A list can be truncated if the
-- number of parts exceeds the limit returned in the MaxParts element.
listPartsResponse_isTruncated :: Lens.Lens' ListPartsResponse (Prelude.Maybe Prelude.Bool)
listPartsResponse_isTruncated = Lens.lens (\ListPartsResponse' {isTruncated} -> isTruncated) (\s@ListPartsResponse' {} a -> s {isTruncated = a} :: ListPartsResponse)

-- | Container element that identifies the object owner, after the object is
-- created. If multipart upload is initiated by an IAM user, this element
-- provides the parent account ID and display name.
listPartsResponse_owner :: Lens.Lens' ListPartsResponse (Prelude.Maybe Owner)
listPartsResponse_owner = Lens.lens (\ListPartsResponse' {owner} -> owner) (\s@ListPartsResponse' {} a -> s {owner = a} :: ListPartsResponse)

-- | If the bucket has a lifecycle rule configured with an action to abort
-- incomplete multipart uploads and the prefix in the lifecycle rule
-- matches the object name in the request, then the response includes this
-- header indicating when the initiated multipart upload will become
-- eligible for abort operation. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy>.
--
-- The response will also include the @x-amz-abort-rule-id@ header that
-- will provide the ID of the lifecycle configuration rule that defines
-- this action.
listPartsResponse_abortDate :: Lens.Lens' ListPartsResponse (Prelude.Maybe Prelude.UTCTime)
listPartsResponse_abortDate = Lens.lens (\ListPartsResponse' {abortDate} -> abortDate) (\s@ListPartsResponse' {} a -> s {abortDate = a} :: ListPartsResponse) Prelude.. Lens.mapping Core._Time

-- | Maximum number of parts that were allowed in the response.
listPartsResponse_maxParts :: Lens.Lens' ListPartsResponse (Prelude.Maybe Prelude.Int)
listPartsResponse_maxParts = Lens.lens (\ListPartsResponse' {maxParts} -> maxParts) (\s@ListPartsResponse' {} a -> s {maxParts = a} :: ListPartsResponse)

-- | When a list is truncated, this element specifies the last part in the
-- list, as well as the value to use for the part-number-marker request
-- parameter in a subsequent request.
listPartsResponse_partNumberMarker :: Lens.Lens' ListPartsResponse (Prelude.Maybe Prelude.Int)
listPartsResponse_partNumberMarker = Lens.lens (\ListPartsResponse' {partNumberMarker} -> partNumberMarker) (\s@ListPartsResponse' {} a -> s {partNumberMarker = a} :: ListPartsResponse)

-- | Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the
-- uploaded object.
listPartsResponse_storageClass :: Lens.Lens' ListPartsResponse (Prelude.Maybe StorageClass)
listPartsResponse_storageClass = Lens.lens (\ListPartsResponse' {storageClass} -> storageClass) (\s@ListPartsResponse' {} a -> s {storageClass = a} :: ListPartsResponse)

-- | Container element that identifies who initiated the multipart upload. If
-- the initiator is an Amazon Web Services account, this element provides
-- the same information as the @Owner@ element. If the initiator is an IAM
-- User, this element provides the user ARN and display name.
listPartsResponse_initiator :: Lens.Lens' ListPartsResponse (Prelude.Maybe Initiator)
listPartsResponse_initiator = Lens.lens (\ListPartsResponse' {initiator} -> initiator) (\s@ListPartsResponse' {} a -> s {initiator = a} :: ListPartsResponse)

-- | The response's http status code.
listPartsResponse_httpStatus :: Lens.Lens' ListPartsResponse Prelude.Int
listPartsResponse_httpStatus = Lens.lens (\ListPartsResponse' {httpStatus} -> httpStatus) (\s@ListPartsResponse' {} a -> s {httpStatus = a} :: ListPartsResponse)

instance Prelude.NFData ListPartsResponse where
  rnf ListPartsResponse' {..} =
    Prelude.rnf uploadId
      `Prelude.seq` Prelude.rnf key
      `Prelude.seq` Prelude.rnf requestCharged
      `Prelude.seq` Prelude.rnf parts
      `Prelude.seq` Prelude.rnf bucket
      `Prelude.seq` Prelude.rnf abortRuleId
      `Prelude.seq` Prelude.rnf nextPartNumberMarker
      `Prelude.seq` Prelude.rnf isTruncated
      `Prelude.seq` Prelude.rnf owner
      `Prelude.seq` Prelude.rnf abortDate
      `Prelude.seq` Prelude.rnf maxParts
      `Prelude.seq` Prelude.rnf partNumberMarker
      `Prelude.seq` Prelude.rnf storageClass
      `Prelude.seq` Prelude.rnf initiator
      `Prelude.seq` Prelude.rnf httpStatus
