{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.S3.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ObjectNotInActiveTierError,
    _NoSuchKey,
    _InvalidObjectState,
    _NoSuchBucket,
    _BucketAlreadyOwnedByYou,
    _ObjectAlreadyInActiveTierError,
    _NoSuchUpload,
    _BucketAlreadyExists,

    -- * Re-exported Types
    module Amazonka.S3.Internal,

    -- * AnalyticsS3ExportFileFormat
    AnalyticsS3ExportFileFormat (..),

    -- * ArchiveStatus
    ArchiveStatus (..),

    -- * BucketAccelerateStatus
    BucketAccelerateStatus (..),

    -- * BucketCannedACL
    BucketCannedACL (..),

    -- * BucketLogsPermission
    BucketLogsPermission (..),

    -- * BucketVersioningStatus
    BucketVersioningStatus (..),

    -- * CompressionType
    CompressionType (..),

    -- * DeleteMarkerReplicationStatus
    DeleteMarkerReplicationStatus (..),

    -- * EncodingType
    EncodingType (..),

    -- * Event
    Event (..),

    -- * ExistingObjectReplicationStatus
    ExistingObjectReplicationStatus (..),

    -- * ExpirationStatus
    ExpirationStatus (..),

    -- * ExpressionType
    ExpressionType (..),

    -- * FileHeaderInfo
    FileHeaderInfo (..),

    -- * FilterRuleName
    FilterRuleName (..),

    -- * IntelligentTieringAccessTier
    IntelligentTieringAccessTier (..),

    -- * IntelligentTieringStatus
    IntelligentTieringStatus (..),

    -- * InventoryFormat
    InventoryFormat (..),

    -- * InventoryFrequency
    InventoryFrequency (..),

    -- * InventoryIncludedObjectVersions
    InventoryIncludedObjectVersions (..),

    -- * InventoryOptionalField
    InventoryOptionalField (..),

    -- * JSONType
    JSONType (..),

    -- * MFADelete
    MFADelete (..),

    -- * MFADeleteStatus
    MFADeleteStatus (..),

    -- * MetadataDirective
    MetadataDirective (..),

    -- * MetricsStatus
    MetricsStatus (..),

    -- * ObjectCannedACL
    ObjectCannedACL (..),

    -- * ObjectLockEnabled
    ObjectLockEnabled (..),

    -- * ObjectLockLegalHoldStatus
    ObjectLockLegalHoldStatus (..),

    -- * ObjectLockMode
    ObjectLockMode (..),

    -- * ObjectLockRetentionMode
    ObjectLockRetentionMode (..),

    -- * ObjectOwnership
    ObjectOwnership (..),

    -- * ObjectStorageClass
    ObjectStorageClass (..),

    -- * ObjectVersionStorageClass
    ObjectVersionStorageClass (..),

    -- * OwnerOverride
    OwnerOverride (..),

    -- * Payer
    Payer (..),

    -- * Permission
    Permission (..),

    -- * Protocol
    Protocol (..),

    -- * QuoteFields
    QuoteFields (..),

    -- * ReplicaModificationsStatus
    ReplicaModificationsStatus (..),

    -- * ReplicationRuleStatus
    ReplicationRuleStatus (..),

    -- * ReplicationStatus
    ReplicationStatus (..),

    -- * ReplicationTimeStatus
    ReplicationTimeStatus (..),

    -- * RequestCharged
    RequestCharged (..),

    -- * RequestPayer
    RequestPayer (..),

    -- * RestoreRequestType
    RestoreRequestType (..),

    -- * ServerSideEncryption
    ServerSideEncryption (..),

    -- * SseKmsEncryptedObjectsStatus
    SseKmsEncryptedObjectsStatus (..),

    -- * StorageClass
    StorageClass (..),

    -- * StorageClassAnalysisSchemaVersion
    StorageClassAnalysisSchemaVersion (..),

    -- * TaggingDirective
    TaggingDirective (..),

    -- * Tier
    Tier (..),

    -- * TransitionStorageClass
    TransitionStorageClass (..),

    -- * Type
    Type (..),

    -- * AbortIncompleteMultipartUpload
    AbortIncompleteMultipartUpload (..),
    newAbortIncompleteMultipartUpload,
    abortIncompleteMultipartUpload_daysAfterInitiation,

    -- * AccelerateConfiguration
    AccelerateConfiguration (..),
    newAccelerateConfiguration,
    accelerateConfiguration_status,

    -- * AccessControlPolicy
    AccessControlPolicy (..),
    newAccessControlPolicy,
    accessControlPolicy_grants,
    accessControlPolicy_owner,

    -- * AccessControlTranslation
    AccessControlTranslation (..),
    newAccessControlTranslation,
    accessControlTranslation_owner,

    -- * AnalyticsAndOperator
    AnalyticsAndOperator (..),
    newAnalyticsAndOperator,
    analyticsAndOperator_tags,
    analyticsAndOperator_prefix,

    -- * AnalyticsConfiguration
    AnalyticsConfiguration (..),
    newAnalyticsConfiguration,
    analyticsConfiguration_filter,
    analyticsConfiguration_id,
    analyticsConfiguration_storageClassAnalysis,

    -- * AnalyticsExportDestination
    AnalyticsExportDestination (..),
    newAnalyticsExportDestination,
    analyticsExportDestination_s3BucketDestination,

    -- * AnalyticsFilter
    AnalyticsFilter (..),
    newAnalyticsFilter,
    analyticsFilter_tag,
    analyticsFilter_prefix,
    analyticsFilter_and,

    -- * AnalyticsS3BucketDestination
    AnalyticsS3BucketDestination (..),
    newAnalyticsS3BucketDestination,
    analyticsS3BucketDestination_bucketAccountId,
    analyticsS3BucketDestination_prefix,
    analyticsS3BucketDestination_format,
    analyticsS3BucketDestination_bucket,

    -- * Bucket
    Bucket (..),
    newBucket,
    bucket_creationDate,
    bucket_name,

    -- * BucketLifecycleConfiguration
    BucketLifecycleConfiguration (..),
    newBucketLifecycleConfiguration,
    bucketLifecycleConfiguration_rules,

    -- * BucketLoggingStatus
    BucketLoggingStatus (..),
    newBucketLoggingStatus,
    bucketLoggingStatus_loggingEnabled,

    -- * CORSConfiguration
    CORSConfiguration (..),
    newCORSConfiguration,
    cORSConfiguration_cORSRules,

    -- * CORSRule
    CORSRule (..),
    newCORSRule,
    cORSRule_allowedHeaders,
    cORSRule_id,
    cORSRule_exposeHeaders,
    cORSRule_maxAgeSeconds,
    cORSRule_allowedMethods,
    cORSRule_allowedOrigins,

    -- * CSVInput
    CSVInput (..),
    newCSVInput,
    cSVInput_quoteCharacter,
    cSVInput_allowQuotedRecordDelimiter,
    cSVInput_comments,
    cSVInput_quoteEscapeCharacter,
    cSVInput_fieldDelimiter,
    cSVInput_recordDelimiter,
    cSVInput_fileHeaderInfo,

    -- * CSVOutput
    CSVOutput (..),
    newCSVOutput,
    cSVOutput_quoteCharacter,
    cSVOutput_quoteFields,
    cSVOutput_quoteEscapeCharacter,
    cSVOutput_fieldDelimiter,
    cSVOutput_recordDelimiter,

    -- * CommonPrefix
    CommonPrefix (..),
    newCommonPrefix,
    commonPrefix_prefix,

    -- * CompletedMultipartUpload
    CompletedMultipartUpload (..),
    newCompletedMultipartUpload,
    completedMultipartUpload_parts,

    -- * CompletedPart
    CompletedPart (..),
    newCompletedPart,
    completedPart_partNumber,
    completedPart_eTag,

    -- * Condition
    Condition (..),
    newCondition,
    condition_httpErrorCodeReturnedEquals,
    condition_keyPrefixEquals,

    -- * ContinuationEvent
    ContinuationEvent (..),
    newContinuationEvent,

    -- * CopyObjectResult
    CopyObjectResult (..),
    newCopyObjectResult,
    copyObjectResult_lastModified,
    copyObjectResult_eTag,

    -- * CopyPartResult
    CopyPartResult (..),
    newCopyPartResult,
    copyPartResult_lastModified,
    copyPartResult_eTag,

    -- * CreateBucketConfiguration
    CreateBucketConfiguration (..),
    newCreateBucketConfiguration,
    createBucketConfiguration_locationConstraint,

    -- * DefaultRetention
    DefaultRetention (..),
    newDefaultRetention,
    defaultRetention_days,
    defaultRetention_years,
    defaultRetention_mode,

    -- * Delete
    Delete (..),
    newDelete,
    delete_quiet,
    delete_objects,

    -- * DeleteMarkerEntry
    DeleteMarkerEntry (..),
    newDeleteMarkerEntry,
    deleteMarkerEntry_key,
    deleteMarkerEntry_isLatest,
    deleteMarkerEntry_owner,
    deleteMarkerEntry_lastModified,
    deleteMarkerEntry_versionId,

    -- * DeleteMarkerReplication
    DeleteMarkerReplication (..),
    newDeleteMarkerReplication,
    deleteMarkerReplication_status,

    -- * DeletedObject
    DeletedObject (..),
    newDeletedObject,
    deletedObject_key,
    deletedObject_deleteMarker,
    deletedObject_deleteMarkerVersionId,
    deletedObject_versionId,

    -- * Destination
    Destination (..),
    newDestination,
    destination_replicationTime,
    destination_account,
    destination_metrics,
    destination_encryptionConfiguration,
    destination_accessControlTranslation,
    destination_storageClass,
    destination_bucket,

    -- * Encryption
    Encryption (..),
    newEncryption,
    encryption_kmsContext,
    encryption_kmsKeyId,
    encryption_encryptionType,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    newEncryptionConfiguration,
    encryptionConfiguration_replicaKmsKeyID,

    -- * EndEvent
    EndEvent (..),
    newEndEvent,

    -- * ErrorDocument
    ErrorDocument (..),
    newErrorDocument,
    errorDocument_key,

    -- * ExistingObjectReplication
    ExistingObjectReplication (..),
    newExistingObjectReplication,
    existingObjectReplication_status,

    -- * FilterRule
    FilterRule (..),
    newFilterRule,
    filterRule_name,
    filterRule_value,

    -- * GlacierJobParameters
    GlacierJobParameters (..),
    newGlacierJobParameters,
    glacierJobParameters_tier,

    -- * Grant
    Grant (..),
    newGrant,
    grant_permission,
    grant_grantee,

    -- * Grantee
    Grantee (..),
    newGrantee,
    grantee_displayName,
    grantee_uri,
    grantee_id,
    grantee_emailAddress,
    grantee_type,

    -- * IndexDocument
    IndexDocument (..),
    newIndexDocument,
    indexDocument_suffix,

    -- * Initiator
    Initiator (..),
    newInitiator,
    initiator_displayName,
    initiator_id,

    -- * InputSerialization
    InputSerialization (..),
    newInputSerialization,
    inputSerialization_parquet,
    inputSerialization_compressionType,
    inputSerialization_json,
    inputSerialization_csv,

    -- * IntelligentTieringAndOperator
    IntelligentTieringAndOperator (..),
    newIntelligentTieringAndOperator,
    intelligentTieringAndOperator_tags,
    intelligentTieringAndOperator_prefix,

    -- * IntelligentTieringConfiguration
    IntelligentTieringConfiguration (..),
    newIntelligentTieringConfiguration,
    intelligentTieringConfiguration_filter,
    intelligentTieringConfiguration_id,
    intelligentTieringConfiguration_status,
    intelligentTieringConfiguration_tierings,

    -- * IntelligentTieringFilter
    IntelligentTieringFilter (..),
    newIntelligentTieringFilter,
    intelligentTieringFilter_tag,
    intelligentTieringFilter_prefix,
    intelligentTieringFilter_and,

    -- * InventoryConfiguration
    InventoryConfiguration (..),
    newInventoryConfiguration,
    inventoryConfiguration_optionalFields,
    inventoryConfiguration_filter,
    inventoryConfiguration_destination,
    inventoryConfiguration_isEnabled,
    inventoryConfiguration_id,
    inventoryConfiguration_includedObjectVersions,
    inventoryConfiguration_schedule,

    -- * InventoryDestination
    InventoryDestination (..),
    newInventoryDestination,
    inventoryDestination_s3BucketDestination,

    -- * InventoryEncryption
    InventoryEncryption (..),
    newInventoryEncryption,
    inventoryEncryption_sses3,
    inventoryEncryption_ssekms,

    -- * InventoryFilter
    InventoryFilter (..),
    newInventoryFilter,
    inventoryFilter_prefix,

    -- * InventoryS3BucketDestination
    InventoryS3BucketDestination (..),
    newInventoryS3BucketDestination,
    inventoryS3BucketDestination_accountId,
    inventoryS3BucketDestination_encryption,
    inventoryS3BucketDestination_prefix,
    inventoryS3BucketDestination_bucket,
    inventoryS3BucketDestination_format,

    -- * InventorySchedule
    InventorySchedule (..),
    newInventorySchedule,
    inventorySchedule_frequency,

    -- * JSONInput
    JSONInput (..),
    newJSONInput,
    jSONInput_type,

    -- * JSONOutput
    JSONOutput (..),
    newJSONOutput,
    jSONOutput_recordDelimiter,

    -- * LambdaFunctionConfiguration
    LambdaFunctionConfiguration (..),
    newLambdaFunctionConfiguration,
    lambdaFunctionConfiguration_id,
    lambdaFunctionConfiguration_filter,
    lambdaFunctionConfiguration_lambdaFunctionArn,
    lambdaFunctionConfiguration_events,

    -- * LifecycleExpiration
    LifecycleExpiration (..),
    newLifecycleExpiration,
    lifecycleExpiration_expiredObjectDeleteMarker,
    lifecycleExpiration_date,
    lifecycleExpiration_days,

    -- * LifecycleRule
    LifecycleRule (..),
    newLifecycleRule,
    lifecycleRule_transitions,
    lifecycleRule_expiration,
    lifecycleRule_id,
    lifecycleRule_noncurrentVersionExpiration,
    lifecycleRule_filter,
    lifecycleRule_noncurrentVersionTransitions,
    lifecycleRule_abortIncompleteMultipartUpload,
    lifecycleRule_prefix,
    lifecycleRule_status,

    -- * LifecycleRuleAndOperator
    LifecycleRuleAndOperator (..),
    newLifecycleRuleAndOperator,
    lifecycleRuleAndOperator_tags,
    lifecycleRuleAndOperator_prefix,

    -- * LifecycleRuleFilter
    LifecycleRuleFilter (..),
    newLifecycleRuleFilter,
    lifecycleRuleFilter_tag,
    lifecycleRuleFilter_prefix,
    lifecycleRuleFilter_and,

    -- * LoggingEnabled
    LoggingEnabled (..),
    newLoggingEnabled,
    loggingEnabled_targetGrants,
    loggingEnabled_targetBucket,
    loggingEnabled_targetPrefix,

    -- * MetadataEntry
    MetadataEntry (..),
    newMetadataEntry,
    metadataEntry_name,
    metadataEntry_value,

    -- * Metrics
    Metrics (..),
    newMetrics,
    metrics_eventThreshold,
    metrics_status,

    -- * MetricsAndOperator
    MetricsAndOperator (..),
    newMetricsAndOperator,
    metricsAndOperator_tags,
    metricsAndOperator_accessPointArn,
    metricsAndOperator_prefix,

    -- * MetricsConfiguration
    MetricsConfiguration (..),
    newMetricsConfiguration,
    metricsConfiguration_filter,
    metricsConfiguration_id,

    -- * MetricsFilter
    MetricsFilter (..),
    newMetricsFilter,
    metricsFilter_accessPointArn,
    metricsFilter_tag,
    metricsFilter_prefix,
    metricsFilter_and,

    -- * MultipartUpload
    MultipartUpload (..),
    newMultipartUpload,
    multipartUpload_uploadId,
    multipartUpload_key,
    multipartUpload_owner,
    multipartUpload_storageClass,
    multipartUpload_initiator,
    multipartUpload_initiated,

    -- * NoncurrentVersionExpiration
    NoncurrentVersionExpiration (..),
    newNoncurrentVersionExpiration,
    noncurrentVersionExpiration_noncurrentDays,

    -- * NoncurrentVersionTransition
    NoncurrentVersionTransition (..),
    newNoncurrentVersionTransition,
    noncurrentVersionTransition_noncurrentDays,
    noncurrentVersionTransition_storageClass,

    -- * NotificationConfiguration
    NotificationConfiguration (..),
    newNotificationConfiguration,
    notificationConfiguration_queueConfigurations,
    notificationConfiguration_topicConfigurations,
    notificationConfiguration_lambdaFunctionConfigurations,

    -- * NotificationConfigurationFilter
    NotificationConfigurationFilter (..),
    newNotificationConfigurationFilter,
    notificationConfigurationFilter_key,

    -- * Object
    Object (..),
    newObject,
    object_owner,
    object_eTag,
    object_size,
    object_key,
    object_storageClass,
    object_lastModified,

    -- * ObjectIdentifier
    ObjectIdentifier (..),
    newObjectIdentifier,
    objectIdentifier_versionId,
    objectIdentifier_key,

    -- * ObjectLockConfiguration
    ObjectLockConfiguration (..),
    newObjectLockConfiguration,
    objectLockConfiguration_objectLockEnabled,
    objectLockConfiguration_rule,

    -- * ObjectLockLegalHold
    ObjectLockLegalHold (..),
    newObjectLockLegalHold,
    objectLockLegalHold_status,

    -- * ObjectLockRetention
    ObjectLockRetention (..),
    newObjectLockRetention,
    objectLockRetention_mode,
    objectLockRetention_retainUntilDate,

    -- * ObjectLockRule
    ObjectLockRule (..),
    newObjectLockRule,
    objectLockRule_defaultRetention,

    -- * ObjectVersion
    ObjectVersion (..),
    newObjectVersion,
    objectVersion_key,
    objectVersion_isLatest,
    objectVersion_size,
    objectVersion_owner,
    objectVersion_lastModified,
    objectVersion_storageClass,
    objectVersion_eTag,
    objectVersion_versionId,

    -- * OutputLocation
    OutputLocation (..),
    newOutputLocation,
    outputLocation_s3,

    -- * OutputSerialization
    OutputSerialization (..),
    newOutputSerialization,
    outputSerialization_json,
    outputSerialization_csv,

    -- * Owner
    Owner (..),
    newOwner,
    owner_displayName,
    owner_id,

    -- * OwnershipControls
    OwnershipControls (..),
    newOwnershipControls,
    ownershipControls_rules,

    -- * OwnershipControlsRule
    OwnershipControlsRule (..),
    newOwnershipControlsRule,
    ownershipControlsRule_objectOwnership,

    -- * ParquetInput
    ParquetInput (..),
    newParquetInput,

    -- * Part
    Part (..),
    newPart,
    part_partNumber,
    part_size,
    part_lastModified,
    part_eTag,

    -- * PolicyStatus
    PolicyStatus (..),
    newPolicyStatus,
    policyStatus_isPublic,

    -- * Progress
    Progress (..),
    newProgress,
    progress_bytesScanned,
    progress_bytesReturned,
    progress_bytesProcessed,

    -- * ProgressEvent
    ProgressEvent (..),
    newProgressEvent,
    progressEvent_details,

    -- * PublicAccessBlockConfiguration
    PublicAccessBlockConfiguration (..),
    newPublicAccessBlockConfiguration,
    publicAccessBlockConfiguration_restrictPublicBuckets,
    publicAccessBlockConfiguration_ignorePublicAcls,
    publicAccessBlockConfiguration_blockPublicPolicy,
    publicAccessBlockConfiguration_blockPublicAcls,

    -- * QueueConfiguration
    QueueConfiguration (..),
    newQueueConfiguration,
    queueConfiguration_id,
    queueConfiguration_filter,
    queueConfiguration_queueArn,
    queueConfiguration_events,

    -- * RecordsEvent
    RecordsEvent (..),
    newRecordsEvent,
    recordsEvent_payload,

    -- * Redirect
    Redirect (..),
    newRedirect,
    redirect_hostName,
    redirect_replaceKeyPrefixWith,
    redirect_replaceKeyWith,
    redirect_protocol,
    redirect_httpRedirectCode,

    -- * RedirectAllRequestsTo
    RedirectAllRequestsTo (..),
    newRedirectAllRequestsTo,
    redirectAllRequestsTo_protocol,
    redirectAllRequestsTo_hostName,

    -- * ReplicaModifications
    ReplicaModifications (..),
    newReplicaModifications,
    replicaModifications_status,

    -- * ReplicationConfiguration
    ReplicationConfiguration (..),
    newReplicationConfiguration,
    replicationConfiguration_role,
    replicationConfiguration_rules,

    -- * ReplicationRule
    ReplicationRule (..),
    newReplicationRule,
    replicationRule_sourceSelectionCriteria,
    replicationRule_id,
    replicationRule_existingObjectReplication,
    replicationRule_filter,
    replicationRule_priority,
    replicationRule_prefix,
    replicationRule_deleteMarkerReplication,
    replicationRule_status,
    replicationRule_destination,

    -- * ReplicationRuleAndOperator
    ReplicationRuleAndOperator (..),
    newReplicationRuleAndOperator,
    replicationRuleAndOperator_tags,
    replicationRuleAndOperator_prefix,

    -- * ReplicationRuleFilter
    ReplicationRuleFilter (..),
    newReplicationRuleFilter,
    replicationRuleFilter_tag,
    replicationRuleFilter_prefix,
    replicationRuleFilter_and,

    -- * ReplicationTime
    ReplicationTime (..),
    newReplicationTime,
    replicationTime_status,
    replicationTime_time,

    -- * ReplicationTimeValue
    ReplicationTimeValue (..),
    newReplicationTimeValue,
    replicationTimeValue_minutes,

    -- * RequestPaymentConfiguration
    RequestPaymentConfiguration (..),
    newRequestPaymentConfiguration,
    requestPaymentConfiguration_payer,

    -- * RequestProgress
    RequestProgress (..),
    newRequestProgress,
    requestProgress_enabled,

    -- * RestoreRequest
    RestoreRequest (..),
    newRestoreRequest,
    restoreRequest_glacierJobParameters,
    restoreRequest_type,
    restoreRequest_days,
    restoreRequest_outputLocation,
    restoreRequest_selectParameters,
    restoreRequest_description,
    restoreRequest_tier,

    -- * RoutingRule
    RoutingRule (..),
    newRoutingRule,
    routingRule_condition,
    routingRule_redirect,

    -- * S3KeyFilter
    S3KeyFilter (..),
    newS3KeyFilter,
    s3KeyFilter_filterRules,

    -- * S3Location
    S3Location (..),
    newS3Location,
    s3Location_accessControlList,
    s3Location_tagging,
    s3Location_encryption,
    s3Location_storageClass,
    s3Location_cannedACL,
    s3Location_userMetadata,
    s3Location_bucketName,
    s3Location_prefix,

    -- * S3ServiceError
    S3ServiceError (..),
    newS3ServiceError,
    s3ServiceError_key,
    s3ServiceError_message,
    s3ServiceError_code,
    s3ServiceError_versionId,

    -- * SSEKMS
    SSEKMS (..),
    newSSEKMS,
    ssekms_keyId,

    -- * SSES3
    SSES3 (..),
    newSSES3,

    -- * ScanRange
    ScanRange (..),
    newScanRange,
    scanRange_start,
    scanRange_end,

    -- * SelectObjectContentEventStream
    SelectObjectContentEventStream (..),
    newSelectObjectContentEventStream,
    selectObjectContentEventStream_progress,
    selectObjectContentEventStream_records,
    selectObjectContentEventStream_stats,
    selectObjectContentEventStream_end,
    selectObjectContentEventStream_cont,

    -- * SelectParameters
    SelectParameters (..),
    newSelectParameters,
    selectParameters_inputSerialization,
    selectParameters_expressionType,
    selectParameters_expression,
    selectParameters_outputSerialization,

    -- * ServerSideEncryptionByDefault
    ServerSideEncryptionByDefault (..),
    newServerSideEncryptionByDefault,
    serverSideEncryptionByDefault_kmsMasterKeyID,
    serverSideEncryptionByDefault_sSEAlgorithm,

    -- * ServerSideEncryptionConfiguration
    ServerSideEncryptionConfiguration (..),
    newServerSideEncryptionConfiguration,
    serverSideEncryptionConfiguration_rules,

    -- * ServerSideEncryptionRule
    ServerSideEncryptionRule (..),
    newServerSideEncryptionRule,
    serverSideEncryptionRule_bucketKeyEnabled,
    serverSideEncryptionRule_applyServerSideEncryptionByDefault,

    -- * SourceSelectionCriteria
    SourceSelectionCriteria (..),
    newSourceSelectionCriteria,
    sourceSelectionCriteria_replicaModifications,
    sourceSelectionCriteria_sseKmsEncryptedObjects,

    -- * SseKmsEncryptedObjects
    SseKmsEncryptedObjects (..),
    newSseKmsEncryptedObjects,
    sseKmsEncryptedObjects_status,

    -- * Stats
    Stats (..),
    newStats,
    stats_bytesScanned,
    stats_bytesReturned,
    stats_bytesProcessed,

    -- * StatsEvent
    StatsEvent (..),
    newStatsEvent,
    statsEvent_details,

    -- * StorageClassAnalysis
    StorageClassAnalysis (..),
    newStorageClassAnalysis,
    storageClassAnalysis_dataExport,

    -- * StorageClassAnalysisDataExport
    StorageClassAnalysisDataExport (..),
    newStorageClassAnalysisDataExport,
    storageClassAnalysisDataExport_outputSchemaVersion,
    storageClassAnalysisDataExport_destination,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * Tagging
    Tagging (..),
    newTagging,
    tagging_tagSet,

    -- * TargetGrant
    TargetGrant (..),
    newTargetGrant,
    targetGrant_permission,
    targetGrant_grantee,

    -- * Tiering
    Tiering (..),
    newTiering,
    tiering_days,
    tiering_accessTier,

    -- * TopicConfiguration
    TopicConfiguration (..),
    newTopicConfiguration,
    topicConfiguration_id,
    topicConfiguration_filter,
    topicConfiguration_topicArn,
    topicConfiguration_events,

    -- * Transition
    Transition (..),
    newTransition,
    transition_date,
    transition_days,
    transition_storageClass,

    -- * VersioningConfiguration
    VersioningConfiguration (..),
    newVersioningConfiguration,
    versioningConfiguration_mfaDelete,
    versioningConfiguration_status,

    -- * WebsiteConfiguration
    WebsiteConfiguration (..),
    newWebsiteConfiguration,
    websiteConfiguration_routingRules,
    websiteConfiguration_errorDocument,
    websiteConfiguration_redirectAllRequestsTo,
    websiteConfiguration_indexDocument,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal
import Amazonka.S3.Types.AbortIncompleteMultipartUpload
import Amazonka.S3.Types.AccelerateConfiguration
import Amazonka.S3.Types.AccessControlPolicy
import Amazonka.S3.Types.AccessControlTranslation
import Amazonka.S3.Types.AnalyticsAndOperator
import Amazonka.S3.Types.AnalyticsConfiguration
import Amazonka.S3.Types.AnalyticsExportDestination
import Amazonka.S3.Types.AnalyticsFilter
import Amazonka.S3.Types.AnalyticsS3BucketDestination
import Amazonka.S3.Types.AnalyticsS3ExportFileFormat
import Amazonka.S3.Types.ArchiveStatus
import Amazonka.S3.Types.Bucket
import Amazonka.S3.Types.BucketAccelerateStatus
import Amazonka.S3.Types.BucketCannedACL
import Amazonka.S3.Types.BucketLifecycleConfiguration
import Amazonka.S3.Types.BucketLoggingStatus
import Amazonka.S3.Types.BucketLogsPermission
import Amazonka.S3.Types.BucketVersioningStatus
import Amazonka.S3.Types.CORSConfiguration
import Amazonka.S3.Types.CORSRule
import Amazonka.S3.Types.CSVInput
import Amazonka.S3.Types.CSVOutput
import Amazonka.S3.Types.CommonPrefix
import Amazonka.S3.Types.CompletedMultipartUpload
import Amazonka.S3.Types.CompletedPart
import Amazonka.S3.Types.CompressionType
import Amazonka.S3.Types.Condition
import Amazonka.S3.Types.ContinuationEvent
import Amazonka.S3.Types.CopyObjectResult
import Amazonka.S3.Types.CopyPartResult
import Amazonka.S3.Types.CreateBucketConfiguration
import Amazonka.S3.Types.DefaultRetention
import Amazonka.S3.Types.Delete
import Amazonka.S3.Types.DeleteMarkerEntry
import Amazonka.S3.Types.DeleteMarkerReplication
import Amazonka.S3.Types.DeleteMarkerReplicationStatus
import Amazonka.S3.Types.DeletedObject
import Amazonka.S3.Types.Destination
import Amazonka.S3.Types.EncodingType
import Amazonka.S3.Types.Encryption
import Amazonka.S3.Types.EncryptionConfiguration
import Amazonka.S3.Types.EndEvent
import Amazonka.S3.Types.ErrorDocument
import Amazonka.S3.Types.Event
import Amazonka.S3.Types.ExistingObjectReplication
import Amazonka.S3.Types.ExistingObjectReplicationStatus
import Amazonka.S3.Types.ExpirationStatus
import Amazonka.S3.Types.ExpressionType
import Amazonka.S3.Types.FileHeaderInfo
import Amazonka.S3.Types.FilterRule
import Amazonka.S3.Types.FilterRuleName
import Amazonka.S3.Types.GlacierJobParameters
import Amazonka.S3.Types.Grant
import Amazonka.S3.Types.Grantee
import Amazonka.S3.Types.IndexDocument
import Amazonka.S3.Types.Initiator
import Amazonka.S3.Types.InputSerialization
import Amazonka.S3.Types.IntelligentTieringAccessTier
import Amazonka.S3.Types.IntelligentTieringAndOperator
import Amazonka.S3.Types.IntelligentTieringConfiguration
import Amazonka.S3.Types.IntelligentTieringFilter
import Amazonka.S3.Types.IntelligentTieringStatus
import Amazonka.S3.Types.InventoryConfiguration
import Amazonka.S3.Types.InventoryDestination
import Amazonka.S3.Types.InventoryEncryption
import Amazonka.S3.Types.InventoryFilter
import Amazonka.S3.Types.InventoryFormat
import Amazonka.S3.Types.InventoryFrequency
import Amazonka.S3.Types.InventoryIncludedObjectVersions
import Amazonka.S3.Types.InventoryOptionalField
import Amazonka.S3.Types.InventoryS3BucketDestination
import Amazonka.S3.Types.InventorySchedule
import Amazonka.S3.Types.JSONInput
import Amazonka.S3.Types.JSONOutput
import Amazonka.S3.Types.JSONType
import Amazonka.S3.Types.LambdaFunctionConfiguration
import Amazonka.S3.Types.LifecycleExpiration
import Amazonka.S3.Types.LifecycleRule
import Amazonka.S3.Types.LifecycleRuleAndOperator
import Amazonka.S3.Types.LifecycleRuleFilter
import Amazonka.S3.Types.LoggingEnabled
import Amazonka.S3.Types.MFADelete
import Amazonka.S3.Types.MFADeleteStatus
import Amazonka.S3.Types.MetadataDirective
import Amazonka.S3.Types.MetadataEntry
import Amazonka.S3.Types.Metrics
import Amazonka.S3.Types.MetricsAndOperator
import Amazonka.S3.Types.MetricsConfiguration
import Amazonka.S3.Types.MetricsFilter
import Amazonka.S3.Types.MetricsStatus
import Amazonka.S3.Types.MultipartUpload
import Amazonka.S3.Types.NoncurrentVersionExpiration
import Amazonka.S3.Types.NoncurrentVersionTransition
import Amazonka.S3.Types.NotificationConfiguration
import Amazonka.S3.Types.NotificationConfigurationFilter
import Amazonka.S3.Types.Object
import Amazonka.S3.Types.ObjectCannedACL
import Amazonka.S3.Types.ObjectIdentifier
import Amazonka.S3.Types.ObjectLockConfiguration
import Amazonka.S3.Types.ObjectLockEnabled
import Amazonka.S3.Types.ObjectLockLegalHold
import Amazonka.S3.Types.ObjectLockLegalHoldStatus
import Amazonka.S3.Types.ObjectLockMode
import Amazonka.S3.Types.ObjectLockRetention
import Amazonka.S3.Types.ObjectLockRetentionMode
import Amazonka.S3.Types.ObjectLockRule
import Amazonka.S3.Types.ObjectOwnership
import Amazonka.S3.Types.ObjectStorageClass
import Amazonka.S3.Types.ObjectVersion
import Amazonka.S3.Types.ObjectVersionStorageClass
import Amazonka.S3.Types.OutputLocation
import Amazonka.S3.Types.OutputSerialization
import Amazonka.S3.Types.Owner
import Amazonka.S3.Types.OwnerOverride
import Amazonka.S3.Types.OwnershipControls
import Amazonka.S3.Types.OwnershipControlsRule
import Amazonka.S3.Types.ParquetInput
import Amazonka.S3.Types.Part
import Amazonka.S3.Types.Payer
import Amazonka.S3.Types.Permission
import Amazonka.S3.Types.PolicyStatus
import Amazonka.S3.Types.Progress
import Amazonka.S3.Types.ProgressEvent
import Amazonka.S3.Types.Protocol
import Amazonka.S3.Types.PublicAccessBlockConfiguration
import Amazonka.S3.Types.QueueConfiguration
import Amazonka.S3.Types.QuoteFields
import Amazonka.S3.Types.RecordsEvent
import Amazonka.S3.Types.Redirect
import Amazonka.S3.Types.RedirectAllRequestsTo
import Amazonka.S3.Types.ReplicaModifications
import Amazonka.S3.Types.ReplicaModificationsStatus
import Amazonka.S3.Types.ReplicationConfiguration
import Amazonka.S3.Types.ReplicationRule
import Amazonka.S3.Types.ReplicationRuleAndOperator
import Amazonka.S3.Types.ReplicationRuleFilter
import Amazonka.S3.Types.ReplicationRuleStatus
import Amazonka.S3.Types.ReplicationStatus
import Amazonka.S3.Types.ReplicationTime
import Amazonka.S3.Types.ReplicationTimeStatus
import Amazonka.S3.Types.ReplicationTimeValue
import Amazonka.S3.Types.RequestCharged
import Amazonka.S3.Types.RequestPayer
import Amazonka.S3.Types.RequestPaymentConfiguration
import Amazonka.S3.Types.RequestProgress
import Amazonka.S3.Types.RestoreRequest
import Amazonka.S3.Types.RestoreRequestType
import Amazonka.S3.Types.RoutingRule
import Amazonka.S3.Types.S3KeyFilter
import Amazonka.S3.Types.S3Location
import Amazonka.S3.Types.S3ServiceError
import Amazonka.S3.Types.SSEKMS
import Amazonka.S3.Types.SSES3
import Amazonka.S3.Types.ScanRange
import Amazonka.S3.Types.SelectObjectContentEventStream
import Amazonka.S3.Types.SelectParameters
import Amazonka.S3.Types.ServerSideEncryption
import Amazonka.S3.Types.ServerSideEncryptionByDefault
import Amazonka.S3.Types.ServerSideEncryptionConfiguration
import Amazonka.S3.Types.ServerSideEncryptionRule
import Amazonka.S3.Types.SourceSelectionCriteria
import Amazonka.S3.Types.SseKmsEncryptedObjects
import Amazonka.S3.Types.SseKmsEncryptedObjectsStatus
import Amazonka.S3.Types.Stats
import Amazonka.S3.Types.StatsEvent
import Amazonka.S3.Types.StorageClass
import Amazonka.S3.Types.StorageClassAnalysis
import Amazonka.S3.Types.StorageClassAnalysisDataExport
import Amazonka.S3.Types.StorageClassAnalysisSchemaVersion
import Amazonka.S3.Types.Tag
import Amazonka.S3.Types.Tagging
import Amazonka.S3.Types.TaggingDirective
import Amazonka.S3.Types.TargetGrant
import Amazonka.S3.Types.Tier
import Amazonka.S3.Types.Tiering
import Amazonka.S3.Types.TopicConfiguration
import Amazonka.S3.Types.Transition
import Amazonka.S3.Types.TransitionStorageClass
import Amazonka.S3.Types.Type
import Amazonka.S3.Types.VersioningConfiguration
import Amazonka.S3.Types.WebsiteConfiguration
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2006-03-01@ of the Amazon Simple Storage Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "S3",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "s3",
      Core._serviceSigningName = "s3",
      Core._serviceVersion = "2006-03-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseXMLError "S3",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "BadDigest"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "contentmd5"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has
          ( Core.hasCode "RequestTimeout"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "timeouts"
      | Prelude.otherwise = Prelude.Nothing

-- | The source object of the COPY action is not in the active tier and is
-- only stored in Amazon S3 Glacier.
_ObjectNotInActiveTierError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ObjectNotInActiveTierError =
  Core._MatchServiceError
    defaultService
    "ObjectNotInActiveTierError"

-- | The specified key does not exist.
_NoSuchKey :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchKey =
  Core._MatchServiceError defaultService "NoSuchKey"

-- | Object is archived and inaccessible until restored.
_InvalidObjectState :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidObjectState =
  Core._MatchServiceError
    defaultService
    "InvalidObjectState"

-- | The specified bucket does not exist.
_NoSuchBucket :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchBucket =
  Core._MatchServiceError
    defaultService
    "NoSuchBucket"

-- | The bucket you tried to create already exists, and you own it. Amazon S3
-- returns this error in all Amazon Web Services Regions except in the
-- North Virginia Region. For legacy compatibility, if you re-create an
-- existing bucket that you already own in the North Virginia Region,
-- Amazon S3 returns 200 OK and resets the bucket access control lists
-- (ACLs).
_BucketAlreadyOwnedByYou :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BucketAlreadyOwnedByYou =
  Core._MatchServiceError
    defaultService
    "BucketAlreadyOwnedByYou"

-- | This action is not allowed against this storage tier.
_ObjectAlreadyInActiveTierError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ObjectAlreadyInActiveTierError =
  Core._MatchServiceError
    defaultService
    "ObjectAlreadyInActiveTierError"

-- | The specified multipart upload does not exist.
_NoSuchUpload :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NoSuchUpload =
  Core._MatchServiceError
    defaultService
    "NoSuchUpload"

-- | The requested bucket name is not available. The bucket namespace is
-- shared by all users of the system. Select a different name and try
-- again.
_BucketAlreadyExists :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BucketAlreadyExists =
  Core._MatchServiceError
    defaultService
    "BucketAlreadyExists"
