.class public Landroid/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStorageEngine$DayStats;,
        Landroid/content/SyncStorageEngine$SyncHistoryItem;,
        Landroid/content/SyncStorageEngine$AuthorityInfo;,
        Landroid/content/SyncStorageEngine$AccountInfo;,
        Landroid/content/SyncStorageEngine$PendingOperation;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x2

.field private static final DEBUG_FILE:Z = false

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENTS:[Ljava/lang/String; = null

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field private static final PENDING_FINISH_TO_WRITE:I = 0x4

.field public static final PENDING_OPERATION_VERSION:I = 0x2

.field public static final SOURCES:[Ljava/lang/String; = null

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field public static final SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent; = null

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Landroid/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Landroid/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentSync:Landroid/content/SyncInfo;

.field private final mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

.field private mMasterSyncAutomatically:Z

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private mNumPendingFinished:I

.field private final mPendingFile:Lcom/android/internal/os/AtomicFile;

.field private final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Lcom/android/internal/os/AtomicFile;

.field private final mStatusFile:Lcom/android/internal/os/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "START"

    aput-object v1, v0, v2

    const-string v1, "STOP"

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/SyncStorageEngine;->EVENTS:[Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SERVER"

    aput-object v1, v0, v2

    const-string v1, "LOCAL"

    aput-object v1, v0, v3

    const-string v1, "POLL"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PERIODIC"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 130
    sget-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/4 v0, 0x0

    sput-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 8
    .parameter "context"
    .parameter "dataDir"

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 223
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 226
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    .line 234
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 240
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 243
    iput v3, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 246
    const/16 v2, 0x1c

    new-array v2, v2, [Landroid/content/SyncStorageEngine$DayStats;

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    .line 282
    iput v3, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    .line 284
    iput v3, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    .line 285
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    .line 288
    iput-object p1, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 289
    sput-object p0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 291
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 293
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .local v1, systemDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "sync"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v0, syncDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 296
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "accounts.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    .line 297
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "status.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    .line 298
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "pending.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    .line 299
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "stats.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    .line 301
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 302
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatusLocked()V

    .line 303
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readPendingOperationsLocked()V

    .line 304
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 305
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 306
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 307
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 308
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 309
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 310
    return-void
.end method

.method private appendPendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;)V
    .registers 8
    .parameter "op"

    .prologue
    .line 2031
    const/4 v2, 0x0

    .line 2033
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->openAppend()Ljava/io/FileOutputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1c

    move-result-object v2

    .line 2041
    :try_start_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2042
    .local v3, out:Landroid/os/Parcel;
    invoke-direct {p0, p1, v3}, Landroid/content/SyncStorageEngine;->writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V

    .line 2043
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2044
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_31
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_22

    .line 2049
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_2f

    .line 2053
    .end local v3           #out:Landroid/os/Parcel;
    :goto_1b
    return-void

    .line 2034
    :catch_1c
    move-exception v4

    move-object v0, v4

    .line 2036
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    goto :goto_1b

    .line 2045
    .end local v0           #e:Ljava/io/IOException;
    :catch_22
    move-exception v4

    move-object v1, v4

    .line 2046
    .local v1, e1:Ljava/io/IOException;
    :try_start_24
    const-string v4, "SyncManager"

    const-string v5, "Error writing pending operations"

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_31

    .line 2049
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1b

    .line 2050
    .end local v1           #e1:Ljava/io/IOException;
    :catch_2f
    move-exception v4

    goto :goto_1b

    .line 2048
    :catchall_31
    move-exception v4

    .line 2049
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    .line 2048
    :goto_35
    throw v4

    .line 2050
    :catch_36
    move-exception v5

    goto :goto_35
.end method

.method public static equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .parameter "b1"
    .parameter "b2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 993
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_e

    move v2, v4

    .line 1007
    :goto_d
    return v2

    .line 996
    :cond_e
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v5

    .line 997
    goto :goto_d

    .line 999
    :cond_16
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1000
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    move v2, v4

    .line 1001
    goto :goto_d

    .line 1003
    :cond_32
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    move v2, v4

    .line 1004
    goto :goto_d

    .end local v1           #key:Ljava/lang/String;
    :cond_42
    move v2, v5

    .line 1007
    goto :goto_d
.end method

.method private static flattenBundle(Landroid/os/Bundle;)[B
    .registers 4
    .parameter "bundle"

    .prologue
    .line 2056
    const/4 v0, 0x0

    .line 2057
    .local v0, flatData:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2059
    .local v1, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2060
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_11

    move-result-object v0

    .line 2062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2064
    return-object v0

    .line 2062
    :catchall_11
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .parameter "accountName"
    .parameter "authorityName"
    .parameter "tag"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const-string v4, "SyncManager"

    .line 1289
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 1290
    .local v0, account:Landroid/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_32

    .line 1291
    if-eqz p3, :cond_30

    .line 1292
    const-string v2, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1293
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unknown account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    move-object v2, v5

    .line 1308
    :goto_31
    return-object v2

    .line 1298
    :cond_32
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1299
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_64

    .line 1300
    if-eqz p3, :cond_62

    .line 1301
    const-string v2, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1302
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unknown authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    move-object v2, v5

    .line 1305
    goto :goto_31

    :cond_64
    move-object v2, v1

    .line 1308
    goto :goto_31
.end method

.method private getCurrentDayLocked()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1268
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1269
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1270
    .local v0, dayOfYear:I
    iget v1, p0, Landroid/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 1271
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/content/SyncStorageEngine;->mYear:I

    .line 1272
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1273
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Landroid/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1274
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/content/SyncStorageEngine;->mYearInDays:I

    .line 1276
    :cond_3c
    iget v1, p0, Landroid/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3
    .parameter "c"
    .parameter "name"

    .prologue
    .line 1728
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4
    .parameter "c"
    .parameter "name"

    .prologue
    .line 1732
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .parameter "accountName"
    .parameter "authorityName"
    .parameter "ident"
    .parameter "doWrite"

    .prologue
    const-string v4, "SyncManager"

    .line 1313
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 1314
    .local v0, account:Landroid/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_16

    .line 1315
    new-instance v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .end local v0           #account:Landroid/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/Account;)V

    .line 1316
    .restart local v0       #account:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    :cond_16
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1319
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_60

    .line 1320
    if-gez p3, :cond_2b

    .line 1321
    iget p3, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1322
    iget v2, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1323
    const/4 p4, 0x1

    .line 1325
    :cond_2b
    const-string v2, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1326
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created a new AuthorityInfo for, provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_4c
    new-instance v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {v1, p1, p2, p3}, Landroid/content/SyncStorageEngine$AuthorityInfo;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1330
    .restart local v1       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1332
    if-eqz p4, :cond_60

    .line 1333
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1337
    :cond_60
    return-object v1
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 4
    .parameter "authorityId"

    .prologue
    .line 1360
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1361
    .local v0, status:Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_14

    .line 1362
    new-instance v0, Landroid/content/SyncStatusInfo;

    .end local v0           #status:Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1363
    .restart local v0       #status:Landroid/content/SyncStatusInfo;
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1365
    :cond_14
    return-object v0
.end method

.method public static getSingleton()Landroid/content/SyncStorageEngine;
    .registers 2

    .prologue
    .line 327
    sget-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    if-nez v0, :cond_c

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_c
    sget-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 317
    sget-object v1, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    if-eqz v1, :cond_5

    .line 324
    :goto_4
    return-void

    .line 322
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 323
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Landroid/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0}, Landroid/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    goto :goto_4
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 1492
    const/4 v8, 0x0

    .line 1494
    .local v8, writeNeeded:Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    .local v1, authoritiesToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v9, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1496
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_e
    if-ge v4, v0, :cond_44

    .line 1497
    iget-object v9, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1499
    .local v2, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    sget-object v9, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v10, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1500
    .local v7, newAuthorityName:Ljava/lang/String;
    if-nez v7, :cond_27

    .line 1496
    :cond_24
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1506
    :cond_27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    iget-boolean v9, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v9, :cond_24

    .line 1515
    iget-object v9, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    const-string v10, "cleanup"

    invoke-direct {p0, v9, v7, v10}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    if-nez v9, :cond_24

    .line 1519
    iget-object v9, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    const/4 v10, -0x1

    invoke-direct {p0, v9, v7, v10, v11}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1521
    .local v6, newAuthority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1522
    const/4 v8, 0x1

    goto :goto_24

    .line 1525
    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v6           #newAuthority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v7           #newAuthorityName:Ljava/lang/String;
    :cond_44
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1526
    .local v3, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v9, v3, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v10, v3, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Landroid/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1528
    const/4 v8, 0x1

    goto :goto_48

    .line 1531
    .end local v3           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_5d
    return v8
.end method

.method public static newTestInstance(Landroid/content/Context;)Landroid/content/SyncStorageEngine;
    .registers 3
    .parameter "context"

    .prologue
    .line 313
    new-instance v0, Landroid/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .registers 14
    .parameter "parser"
    .parameter "version"

    .prologue
    .line 1535
    const/4 v2, 0x0

    .line 1536
    .local v2, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v6, -0x1

    .line 1538
    .local v6, id:I
    const/4 v8, 0x0

    :try_start_3
    const-string v9, "id"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_c} :catch_70
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_c} :catch_7a

    move-result v6

    .line 1545
    :goto_d
    if-ltz v6, :cond_6f

    .line 1546
    const/4 v8, 0x0

    const-string v9, "authority"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1547
    .local v3, authorityName:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "enabled"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1548
    .local v5, enabled:Ljava/lang/String;
    const/4 v8, 0x0

    const-string/jumbo v9, "syncable"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1549
    .local v7, syncable:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "account"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1550
    .local v0, accountName:Ljava/lang/String;
    const/4 v8, 0x0

    const-string/jumbo v9, "type"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1551
    .local v1, accountType:Ljava/lang/String;
    if-nez v1, :cond_3b

    .line 1552
    const-string v1, "com.google"

    .line 1553
    const-string/jumbo v7, "unknown"

    .line 1555
    :cond_3b
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1560
    .restart local v2       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_56

    .line 1562
    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct {p0, v8, v3, v6, v9}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 1569
    if-lez p2, :cond_56

    .line 1570
    iget-object v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1573
    :cond_56
    if-eqz v2, :cond_95

    .line 1574
    if-eqz v5, :cond_60

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_85

    :cond_60
    const/4 v8, 0x1

    :goto_61
    iput-boolean v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1575
    const-string/jumbo v8, "unknown"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 1576
    const/4 v8, -0x1

    iput v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 1589
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v3           #authorityName:Ljava/lang/String;
    .end local v5           #enabled:Ljava/lang/String;
    .end local v7           #syncable:Ljava/lang/String;
    :cond_6f
    :goto_6f
    return-object v2

    .line 1540
    :catch_70
    move-exception v8

    move-object v4, v8

    .line 1541
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v8, "SyncManager"

    const-string v9, "error parsing the id of the authority"

    invoke-static {v8, v9, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1542
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_7a
    move-exception v8

    move-object v4, v8

    .line 1543
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v8, "SyncManager"

    const-string/jumbo v9, "the id of the authority is null"

    invoke-static {v8, v9, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1574
    .end local v4           #e:Ljava/lang/NullPointerException;
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v3       #authorityName:Ljava/lang/String;
    .restart local v5       #enabled:Ljava/lang/String;
    .restart local v7       #syncable:Ljava/lang/String;
    :cond_85
    const/4 v8, 0x0

    goto :goto_61

    .line 1578
    :cond_87
    if-eqz v7, :cond_8f

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_93

    :cond_8f
    const/4 v8, 0x1

    :goto_90
    iput v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_6f

    :cond_93
    const/4 v8, 0x0

    goto :goto_90

    .line 1582
    :cond_95
    const-string v8, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure adding authority auth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " enabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " syncable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/Pair;)V
    .registers 13
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    const/4 v7, 0x0

    const-string v9, "error parsing bundle value"

    const-string v8, "SyncManager"

    .line 1612
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1613
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "name"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v6, "type"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1615
    .local v3, type:Ljava/lang/String;
    const-string/jumbo v6, "value1"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1616
    .local v4, value1:Ljava/lang/String;
    const-string/jumbo v6, "value2"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1619
    .local v5, value2:Ljava/lang/String;
    :try_start_24
    const-string v6, "long"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1620
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1639
    :cond_33
    :goto_33
    return-void

    .line 1621
    :cond_34
    const-string v6, "integer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 1622
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_43} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_43} :catch_5e

    goto :goto_33

    .line 1634
    :catch_44
    move-exception v6

    move-object v0, v6

    .line 1635
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v8, v9, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 1623
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4e
    :try_start_4e
    const-string v6, "double"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 1624
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_5d} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_5d} :catch_5e

    goto :goto_33

    .line 1636
    :catch_5e
    move-exception v6

    move-object v0, v6

    .line 1637
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v8, v9, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 1625
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_68
    :try_start_68
    const-string v6, "float"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1626
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_33

    .line 1627
    :cond_78
    const-string v6, "boolean"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 1628
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_33

    .line 1629
    :cond_88
    const-string/jumbo v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 1630
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 1631
    :cond_95
    const-string v6, "account"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1632
    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_a5} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_68 .. :try_end_a5} :catch_5e

    goto :goto_33
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .registers 12
    .parameter "parser"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v8, "SyncManager"

    .line 1593
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1594
    .local v1, extras:Landroid/os/Bundle;
    const-string/jumbo v6, "period"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1597
    .local v4, periodValue:Ljava/lang/String;
    :try_start_f
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_12} :catch_2c

    move-result-wide v2

    .line 1605
    .local v2, period:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 1606
    .local v5, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    iget-object v6, p2, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    .line 1608
    .end local v2           #period:J
    .end local v5           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :goto_21
    return-object v6

    .line 1598
    :catch_22
    move-exception v0

    .line 1599
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "SyncManager"

    const-string v6, "error parsing the period of a periodic sync"

    invoke-static {v8, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 1600
    goto :goto_21

    .line 1601
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2c
    move-exception v0

    .line 1602
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "SyncManager"

    const-string/jumbo v6, "the period of a periodic sync is null"

    invoke-static {v8, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 1603
    goto :goto_21
.end method

.method private readAccountInfoLocked()V
    .registers 20

    .prologue
    .line 1410
    const/4 v7, -0x1

    .line 1411
    .local v7, highestAuthorityId:I
    const/4 v6, 0x0

    .line 1413
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 1415
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 1416
    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v16, 0x0

    move-object v0, v11

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1417
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 1418
    .local v5, eventType:I
    :goto_1d
    const/16 v16, 0x2

    move v0, v5

    move/from16 v1, v16

    if-eq v0, v1, :cond_29

    .line 1419
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1d

    .line 1421
    :cond_29
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1422
    .local v13, tagName:Ljava/lang/String;
    const-string v16, "accounts"

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d7

    .line 1423
    const/16 v16, 0x0

    const-string v17, "listen-for-tickles"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1425
    .local v9, listen:Ljava/lang/String;
    const/16 v16, 0x0

    const-string/jumbo v17, "version"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1428
    .local v15, versionString:Ljava/lang/String;
    if-nez v15, :cond_f2

    const/16 v16, 0x0

    move/from16 v14, v16

    .line 1432
    .local v14, version:I
    :goto_59
    const/16 v16, 0x0

    const-string v17, "nextAuthorityId"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_2 .. :try_end_65} :catchall_1aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_65} :catch_14d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_65} :catch_178

    move-result-object v10

    .line 1434
    .local v10, nextIdString:Ljava/lang/String;
    if-nez v10, :cond_fe

    const/16 v16, 0x0

    move/from16 v8, v16

    .line 1435
    .local v8, id:I
    :goto_6c
    :try_start_6c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_7f
    .catchall {:try_start_6c .. :try_end_7f} :catchall_1aa
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_7f} :catch_1c8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_7f} :catch_14d
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_7f} :catch_178

    .line 1439
    .end local v8           #id:I
    :goto_7f
    if-eqz v9, :cond_87

    :try_start_81
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_106

    :cond_87
    const/16 v16, 0x1

    :goto_89
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    .line 1440
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 1441
    const/4 v3, 0x0

    .line 1442
    .local v3, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v12, 0x0

    .line 1444
    .local v12, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_95
    const/16 v16, 0x2

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_cc

    .line 1445
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1446
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_109

    .line 1447
    const-string v16, "authority"

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_cc

    .line 1448
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1449
    const/4 v12, 0x0

    .line 1450
    move-object v0, v3

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v7

    if-le v0, v1, :cond_cc

    .line 1451
    iget v7, v3, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 1464
    :cond_cc
    :goto_cc
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_cf
    .catchall {:try_start_81 .. :try_end_cf} :catchall_1aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_cf} :catch_14d
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_cf} :catch_178

    move-result v5

    .line 1465
    const/16 v16, 0x1

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_95

    .line 1475
    .end local v3           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v9           #listen:Ljava/lang/String;
    .end local v10           #nextIdString:Ljava/lang/String;
    .end local v12           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v14           #version:I
    .end local v15           #versionString:Ljava/lang/String;
    :cond_d7
    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1476
    if-eqz v6, :cond_ee

    .line 1478
    :try_start_eb
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_1c5

    .line 1484
    :cond_ee
    :goto_ee
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1485
    .end local v5           #eventType:I
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #tagName:Ljava/lang/String;
    :cond_f1
    :goto_f1
    return-void

    .line 1428
    .restart local v5       #eventType:I
    .restart local v9       #listen:Ljava/lang/String;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #tagName:Ljava/lang/String;
    .restart local v15       #versionString:Ljava/lang/String;
    :cond_f2
    :try_start_f2
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_1aa
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_f5} :catch_fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f2 .. :try_end_f5} :catch_14d
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_178

    move-result v16

    move/from16 v14, v16

    goto/16 :goto_59

    .line 1429
    :catch_fa
    move-exception v4

    .line 1430
    .local v4, e:Ljava/lang/NumberFormatException;
    const/4 v14, 0x0

    .restart local v14       #version:I
    goto/16 :goto_59

    .line 1434
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #nextIdString:Ljava/lang/String;
    :cond_fe
    :try_start_fe
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_1aa
    .catch Ljava/lang/NumberFormatException; {:try_start_fe .. :try_end_101} :catch_1c8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fe .. :try_end_101} :catch_14d
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_178

    move-result v16

    move/from16 v8, v16

    goto/16 :goto_6c

    .line 1439
    :cond_106
    const/16 v16, 0x0

    goto :goto_89

    .line 1454
    .restart local v3       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v12       #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_109
    :try_start_109
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12c

    .line 1455
    const-string/jumbo v16, "periodicSync"

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_cc

    if-eqz v3, :cond_cc

    .line 1456
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v12

    goto :goto_cc

    .line 1458
    :cond_12c
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_cc

    if-eqz v12, :cond_cc

    .line 1459
    const-string v16, "extra"

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_cc

    .line 1460
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/Pair;)V
    :try_end_14c
    .catchall {:try_start_109 .. :try_end_14c} :catchall_1aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_109 .. :try_end_14c} :catch_14d
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_14c} :catch_178

    goto :goto_cc

    .line 1467
    .end local v3           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v5           #eventType:I
    .end local v9           #listen:Ljava/lang/String;
    .end local v10           #nextIdString:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v13           #tagName:Ljava/lang/String;
    .end local v14           #version:I
    .end local v15           #versionString:Ljava/lang/String;
    :catch_14d
    move-exception v16

    move-object/from16 v4, v16

    .line 1468
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_150
    const-string v16, "SyncManager"

    const-string v17, "Error reading accounts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15c
    .catchall {:try_start_150 .. :try_end_15c} :catchall_1aa

    .line 1475
    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1476
    if-eqz v6, :cond_f1

    .line 1478
    :try_start_170
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_173} :catch_175

    goto/16 :goto_f1

    .line 1479
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_175
    move-exception v16

    goto/16 :goto_f1

    .line 1470
    :catch_178
    move-exception v16

    move-object/from16 v4, v16

    .line 1471
    .local v4, e:Ljava/io/IOException;
    if-nez v6, :cond_19d

    :try_start_17d
    const-string v16, "SyncManager"

    const-string v17, "No initial accounts"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_184
    .catchall {:try_start_17d .. :try_end_184} :catchall_1aa

    .line 1475
    :goto_184
    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1476
    if-eqz v6, :cond_f1

    .line 1478
    :try_start_198
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_175

    goto/16 :goto_f1

    .line 1472
    :cond_19d
    :try_start_19d
    const-string v16, "SyncManager"

    const-string v17, "Error reading accounts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a9
    .catchall {:try_start_19d .. :try_end_1a9} :catchall_1aa

    goto :goto_184

    .line 1475
    .end local v4           #e:Ljava/io/IOException;
    :catchall_1aa
    move-exception v16

    add-int/lit8 v17, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1476
    if-eqz v6, :cond_1c2

    .line 1478
    :try_start_1bf
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_1bf .. :try_end_1c2} :catch_1c3

    .line 1475
    :cond_1c2
    :goto_1c2
    throw v16

    .line 1479
    :catch_1c3
    move-exception v17

    goto :goto_1c2

    .restart local v5       #eventType:I
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #tagName:Ljava/lang/String;
    :catch_1c5
    move-exception v16

    goto/16 :goto_ee

    .line 1436
    .restart local v9       #listen:Ljava/lang/String;
    .restart local v10       #nextIdString:Ljava/lang/String;
    .restart local v14       #version:I
    .restart local v15       #versionString:Ljava/lang/String;
    :catch_1c8
    move-exception v16

    goto/16 :goto_7f
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .registers 29

    .prologue
    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    move-object v7, v0

    const-string/jumbo v8, "syncmanager.db"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 1743
    .local v18, file:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_13

    .line 1859
    :cond_12
    :goto_12
    return-void

    .line 1746
    :cond_13
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 1747
    .local v24, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1749
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_1a
    move-object/from16 v0, v24

    move-object v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_21} :catch_332

    move-result-object v6

    .line 1754
    :goto_22
    if-eqz v6, :cond_12

    .line 1755
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_260

    const/4 v7, 0x1

    move/from16 v20, v7

    .line 1759
    .local v20, hasType:Z
    :goto_2f
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1760
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v7, "stats, status"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1761
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1762
    .local v22, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "_id"

    const-string/jumbo v8, "status._id as _id"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    const-string v7, "account"

    const-string/jumbo v8, "stats.account as account"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    if-eqz v20, :cond_65

    .line 1765
    const-string v7, "account_type"

    const-string/jumbo v8, "stats.account_type as account_type"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    :cond_65
    const-string v7, "authority"

    const-string/jumbo v8, "stats.authority as authority"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    const-string/jumbo v7, "totalElapsedTime"

    const-string/jumbo v8, "totalElapsedTime"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    const-string v7, "numSyncs"

    const-string v8, "numSyncs"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    const-string v7, "numSourceLocal"

    const-string v8, "numSourceLocal"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    const-string v7, "numSourcePoll"

    const-string v8, "numSourcePoll"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    const-string v7, "numSourceServer"

    const-string v8, "numSourceServer"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    const-string v7, "numSourceUser"

    const-string v8, "numSourceUser"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    const-string v7, "lastSuccessSource"

    const-string v8, "lastSuccessSource"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    const-string v7, "lastSuccessTime"

    const-string v8, "lastSuccessTime"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    const-string v7, "lastFailureSource"

    const-string v8, "lastFailureSource"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    const-string v7, "lastFailureTime"

    const-string v8, "lastFailureTime"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    const-string v7, "lastFailureMesg"

    const-string v8, "lastFailureMesg"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const-string/jumbo v7, "pending"

    const-string/jumbo v8, "pending"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1781
    const-string/jumbo v7, "stats._id = status.stats_id"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1782
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1783
    .local v17, c:Landroid/database/Cursor;
    :cond_10f
    :goto_10f
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_26b

    .line 1784
    const-string v7, "account"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1785
    .local v13, accountName:Ljava/lang/String;
    if-eqz v20, :cond_265

    const-string v7, "account_type"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .line 1787
    .local v14, accountType:Ljava/lang/String;
    :goto_138
    if-nez v14, :cond_13c

    .line 1788
    const-string v14, "com.google"

    .line 1790
    :cond_13c
    const-string v7, "authority"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1791
    .local v16, authorityName:Ljava/lang/String;
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v13, v14}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v15

    .line 1794
    .local v15, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v15, :cond_10f

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v21

    .line 1796
    .local v21, i:I
    const/16 v19, 0x0

    .line 1797
    .local v19, found:Z
    const/16 v26, 0x0

    .line 1798
    .local v26, st:Landroid/content/SyncStatusInfo;
    :cond_16d
    if-lez v21, :cond_18a

    .line 1799
    add-int/lit8 v21, v21, -0x1

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #st:Landroid/content/SyncStatusInfo;
    check-cast v26, Landroid/content/SyncStatusInfo;

    .line 1801
    .restart local v26       #st:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    move v7, v0

    iget v8, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v7, v8, :cond_16d

    .line 1802
    const/16 v19, 0x1

    .line 1806
    :cond_18a
    if-nez v19, :cond_1a4

    .line 1807
    new-instance v26, Landroid/content/SyncStatusInfo;

    .end local v26           #st:Landroid/content/SyncStatusInfo;
    iget v7, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v26

    move v1, v7

    invoke-direct {v0, v1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1808
    .restart local v26       #st:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v7, v0

    iget v8, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1810
    :cond_1a4
    const-string/jumbo v7, "totalElapsedTime"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1811
    const-string v7, "numSyncs"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1812
    const-string v7, "numSourceLocal"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 1813
    const-string v7, "numSourcePoll"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 1814
    const-string v7, "numSourceServer"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 1815
    const-string v7, "numSourceUser"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 1816
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    .line 1817
    const-string v7, "lastSuccessSource"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1818
    const-string v7, "lastSuccessTime"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1819
    const-string v7, "lastFailureSource"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1820
    const-string v7, "lastFailureTime"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1821
    const-string v7, "lastFailureMesg"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1822
    const-string/jumbo v7, "pending"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_269

    const/4 v7, 0x1

    :goto_259
    move v0, v7

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_10f

    .line 1755
    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v13           #accountName:Ljava/lang/String;
    .end local v14           #accountType:Ljava/lang/String;
    .end local v15           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v16           #authorityName:Ljava/lang/String;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v19           #found:Z
    .end local v20           #hasType:Z
    .end local v21           #i:I
    .end local v22           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26           #st:Landroid/content/SyncStatusInfo;
    :cond_260
    const/4 v7, 0x0

    move/from16 v20, v7

    goto/16 :goto_2f

    .line 1785
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v13       #accountName:Ljava/lang/String;
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v20       #hasType:Z
    .restart local v22       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_265
    const/4 v7, 0x0

    move-object v14, v7

    goto/16 :goto_138

    .line 1822
    .restart local v14       #accountType:Ljava/lang/String;
    .restart local v15       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v16       #authorityName:Ljava/lang/String;
    .restart local v19       #found:Z
    .restart local v21       #i:I
    .restart local v26       #st:Landroid/content/SyncStatusInfo;
    :cond_269
    const/4 v7, 0x0

    goto :goto_259

    .line 1826
    .end local v13           #accountName:Ljava/lang/String;
    .end local v14           #accountType:Ljava/lang/String;
    .end local v15           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v16           #authorityName:Ljava/lang/String;
    .end local v19           #found:Z
    .end local v21           #i:I
    .end local v26           #st:Landroid/content/SyncStatusInfo;
    :cond_26b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1829
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1830
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v7, "settings"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1831
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1832
    :cond_283
    :goto_283
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_31f

    .line 1833
    const-string v7, "name"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1834
    .local v23, name:Ljava/lang/String;
    const-string/jumbo v7, "value"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1835
    .local v27, value:Ljava/lang/String;
    if-eqz v23, :cond_283

    .line 1836
    const-string v7, "listen_for_tickles"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c9

    .line 1837
    if-eqz v27, :cond_2bf

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c7

    :cond_2bf
    const/4 v7, 0x1

    :goto_2c0
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V

    goto :goto_283

    :cond_2c7
    const/4 v7, 0x0

    goto :goto_2c0

    .line 1838
    :cond_2c9
    const-string/jumbo v7, "sync_provider_"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_283

    .line 1839
    const-string/jumbo v7, "sync_provider_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v23

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1841
    .local v25, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v21

    .line 1842
    .restart local v21       #i:I
    :cond_2f1
    :goto_2f1
    if-lez v21, :cond_283

    .line 1843
    add-int/lit8 v21, v21, -0x1

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1845
    .restart local v15       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v7, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f1

    .line 1846
    if-eqz v27, :cond_316

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31d

    :cond_316
    const/4 v7, 0x1

    :goto_317
    iput-boolean v7, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1847
    const/4 v7, 0x1

    iput v7, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_2f1

    .line 1846
    :cond_31d
    const/4 v7, 0x0

    goto :goto_317

    .line 1853
    .end local v15           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v21           #i:I
    .end local v23           #name:Ljava/lang/String;
    .end local v25           #provider:Ljava/lang/String;
    .end local v27           #value:Ljava/lang/String;
    :cond_31f
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1855
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1857
    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto/16 :goto_12

    .line 1751
    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v20           #hasType:Z
    .end local v22           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_332
    move-exception v7

    goto/16 :goto_22
.end method

.method private readPendingOperationsLocked()V
    .registers 15

    .prologue
    .line 1936
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v9

    .line 1937
    .local v9, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 1938
    .local v12, in:Landroid/os/Parcel;
    const/4 v1, 0x0

    array-length v2, v9

    invoke-virtual {v12, v9, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1939
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1940
    invoke-virtual {v12}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    .line 1941
    .local v6, SIZE:I
    :cond_17
    :goto_17
    invoke-virtual {v12}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v6, :cond_45

    .line 1942
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1943
    .local v13, version:I
    const/4 v1, 0x2

    if-eq v13, v1, :cond_46

    const/4 v1, 0x1

    if-eq v13, v1, :cond_46

    .line 1944
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pending operation version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; dropping all ops"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    .end local v6           #SIZE:I
    .end local v9           #data:[B
    .end local v12           #in:Landroid/os/Parcel;
    .end local v13           #version:I
    :cond_45
    :goto_45
    return-void

    .line 1948
    .restart local v6       #SIZE:I
    .restart local v9       #data:[B
    .restart local v12       #in:Landroid/os/Parcel;
    .restart local v13       #version:I
    :cond_46
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1949
    .local v8, authorityId:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1950
    .local v2, syncSource:I
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 1952
    .local v11, flatExtras:[B
    const/4 v1, 0x2

    if-ne v13, v1, :cond_8e

    .line 1953
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8b

    const/4 v1, 0x1

    move v5, v1

    .line 1957
    .local v5, expedited:Z
    :goto_5d
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1958
    .local v7, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v7, :cond_17

    .line 1959
    const/4 v4, 0x0

    .line 1960
    .local v4, extras:Landroid/os/Bundle;
    if-eqz v11, :cond_6e

    .line 1961
    invoke-static {v11}, Landroid/content/SyncStorageEngine;->unflattenBundle([B)Landroid/os/Bundle;

    move-result-object v4

    .line 1963
    :cond_6e
    new-instance v0, Landroid/content/SyncStorageEngine$PendingOperation;

    iget-object v1, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v3, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 1966
    .local v0, op:Landroid/content/SyncStorageEngine$PendingOperation;
    iput v8, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 1967
    iput-object v11, v0, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 1973
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_80} :catch_81

    goto :goto_17

    .line 1976
    .end local v0           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .end local v2           #syncSource:I
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v5           #expedited:Z
    .end local v6           #SIZE:I
    .end local v7           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v8           #authorityId:I
    .end local v9           #data:[B
    .end local v11           #flatExtras:[B
    .end local v12           #in:Landroid/os/Parcel;
    .end local v13           #version:I
    :catch_81
    move-exception v1

    move-object v10, v1

    .line 1977
    .local v10, e:Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "No initial pending operations"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 1953
    .end local v10           #e:Ljava/io/IOException;
    .restart local v2       #syncSource:I
    .restart local v6       #SIZE:I
    .restart local v8       #authorityId:I
    .restart local v9       #data:[B
    .restart local v11       #flatExtras:[B
    .restart local v12       #in:Landroid/os/Parcel;
    .restart local v13       #version:I
    :cond_8b
    const/4 v1, 0x0

    move v5, v1

    goto :goto_5d

    .line 1955
    :cond_8e
    const/4 v5, 0x0

    .restart local v5       #expedited:Z
    goto :goto_5d
.end method

.method private readStatisticsLocked()V
    .registers 12

    .prologue
    const/16 v9, 0x64

    const-string v10, "SyncManager"

    .line 2093
    :try_start_4
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2094
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2095
    .local v4, in:Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2096
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2098
    const/4 v5, 0x0

    .line 2099
    .local v5, index:I
    :cond_18
    :goto_18
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, token:I
    if-eqz v6, :cond_71

    .line 2100
    const/16 v7, 0x65

    if-eq v6, v7, :cond_24

    if-ne v6, v9, :cond_59

    .line 2102
    :cond_24
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2103
    .local v1, day:I
    if-ne v6, v9, :cond_30

    .line 2104
    const/16 v7, 0x7d9

    sub-int v7, v1, v7

    add-int/lit16 v1, v7, 0x37a5

    .line 2106
    :cond_30
    new-instance v2, Landroid/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2107
    .local v2, ds:Landroid/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2108
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2109
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2110
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2111
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v5, v7, :cond_18

    .line 2112
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    aput-object v2, v7, v5

    .line 2113
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 2117
    .end local v1           #day:I
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_59
    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown stats token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_71} :catch_72

    .line 2124
    .end local v0           #data:[B
    .end local v4           #in:Landroid/os/Parcel;
    .end local v5           #index:I
    .end local v6           #token:I
    :cond_71
    :goto_71
    return-void

    .line 2121
    :catch_72
    move-exception v7

    move-object v3, v7

    .line 2122
    .local v3, e:Ljava/io/IOException;
    const-string v7, "SyncManager"

    const-string v7, "No initial statistics"

    invoke-static {v10, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method private readStatusLocked()V
    .registers 10

    .prologue
    const-string v8, "SyncManager"

    .line 1870
    :try_start_2
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1871
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1872
    .local v2, in:Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1873
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1875
    :cond_15
    :goto_15
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, token:I
    if-eqz v4, :cond_42

    .line 1876
    const/16 v5, 0x64

    if-ne v4, v5, :cond_43

    .line 1877
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 1878
    .local v3, status:Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_15

    .line 1879
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1882
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_15

    .line 1890
    .end local v0           #data:[B
    .end local v2           #in:Landroid/os/Parcel;
    .end local v3           #status:Landroid/content/SyncStatusInfo;
    .end local v4           #token:I
    :catch_39
    move-exception v5

    move-object v1, v5

    .line 1891
    .local v1, e:Ljava/io/IOException;
    const-string v5, "SyncManager"

    const-string v5, "No initial status"

    invoke-static {v8, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    .end local v1           #e:Ljava/io/IOException;
    :cond_42
    :goto_42
    return-void

    .line 1886
    .restart local v0       #data:[B
    .restart local v2       #in:Landroid/os/Parcel;
    .restart local v4       #token:I
    :cond_43
    :try_start_43
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown status token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5b} :catch_39

    goto :goto_42
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 8
    .parameter "account"
    .parameter "authorityName"
    .parameter "doWrite"

    .prologue
    .line 1341
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 1342
    .local v0, accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_20

    .line 1343
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1344
    .local v1, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_20

    .line 1345
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1346
    if-eqz p3, :cond_20

    .line 1347
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1351
    .end local v1           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_20
    return-void
.end method

.method private reportChange(I)V
    .registers 9
    .parameter "which"

    .prologue
    const-string v6, "SyncManager"

    .line 358
    const/4 v2, 0x0

    .line 359
    .local v2, reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 360
    :try_start_6
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_7a

    move-result v0

    .local v0, i:I
    move-object v3, v2

    .line 361
    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v3, reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_d
    :goto_d
    if-lez v0, :cond_32

    .line 362
    add-int/lit8 v0, v0, -0x1

    .line 363
    :try_start_11
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 364
    .local v1, mask:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_d

    .line 367
    if-nez v3, :cond_81

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_7e

    .line 370
    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :goto_27
    :try_start_27
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_7a

    move-object v3, v2

    .line 371
    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_d

    .line 372
    .end local v1           #mask:Ljava/lang/Integer;
    :cond_32
    :try_start_32
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 373
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_7e

    .line 375
    const-string v4, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v6, v4}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 376
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_64
    if-eqz v3, :cond_7d

    .line 380
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 381
    .end local p0
    :goto_6a
    if-lez v0, :cond_7d

    .line 382
    add-int/lit8 v0, v0, -0x1

    .line 384
    :try_start_6e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ISyncStatusObserver;

    invoke-interface {p0, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_77} :catch_78

    goto :goto_6a

    .line 385
    :catch_78
    move-exception v4

    goto :goto_6a

    .line 373
    .end local v0           #i:I
    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local p0
    :catchall_7a
    move-exception v5

    :goto_7b
    :try_start_7b
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v5

    .line 390
    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .end local p0
    .restart local v0       #i:I
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_7d
    return-void

    .line 373
    .restart local p0
    :catchall_7e
    move-exception v5

    move-object v2, v3

    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_7b

    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v1       #mask:Ljava/lang/Integer;
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_81
    move-object v2, v3

    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_27
.end method

.method private static unflattenBundle([B)Landroid/os/Bundle;
    .registers 6
    .parameter "flatData"

    .prologue
    .line 2069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2071
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    :try_start_5
    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2072
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2073
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_10} :catch_15

    move-result-object v0

    .line 2079
    .local v0, bundle:Landroid/os/Bundle;
    :goto_11
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2081
    return-object v0

    .line 2074
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 2077
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    .restart local v0       #bundle:Landroid/os/Bundle;
    goto :goto_11

    .line 2079
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_1d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private updateOrRemovePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    .registers 25
    .parameter "account"
    .parameter "providerName"
    .parameter "extras"
    .parameter "period"
    .parameter "add"

    .prologue
    .line 582
    const-wide/16 v14, 0x0

    cmp-long v14, p4, v14

    if-gtz v14, :cond_8

    .line 583
    const-wide/16 p4, 0x0

    .line 585
    :cond_8
    if-nez p3, :cond_f

    .line 586
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct/range {p3 .. p3}, Landroid/os/Bundle;-><init>()V

    .line 588
    .restart local p3
    :cond_f
    const-string v14, "SyncManager"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4d

    .line 589
    const-string v14, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addOrRemovePeriodicSync:  provider "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> period "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", extras "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v14, v0

    monitor-enter v14

    .line 594
    const/4 v15, -0x1

    const/16 v16, 0x0

    :try_start_56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v7

    .line 596
    .local v7, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p6, :cond_f3

    .line 599
    const/4 v6, 0x0

    .line 600
    .local v6, alreadyPresent:Z
    const/4 v10, 0x0

    .local v10, i:I
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, N:I
    :goto_6d
    if-ge v10, v5, :cond_b1

    .line 601
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 602
    .local v13, syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    iget-object v9, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/os/Bundle;

    .line 603
    .local v9, existingExtras:Landroid/os/Bundle;
    move-object v0, v9

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v15

    if-eqz v15, :cond_ef

    .line 604
    move-object v0, v13

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J
    :try_end_8e
    .catchall {:try_start_56 .. :try_end_8e} :catchall_132

    move-result-wide v15

    cmp-long v15, v15, p4

    if-nez v15, :cond_9b

    .line 644
    :try_start_93
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 645
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 605
    monitor-exit v14
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_13a

    .line 650
    .end local v5           #N:I
    .end local v6           #alreadyPresent:Z
    .end local v9           #existingExtras:Landroid/os/Bundle;
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :goto_9a
    return-void

    .line 607
    .restart local v5       #N:I
    .restart local v6       #alreadyPresent:Z
    .restart local v9       #existingExtras:Landroid/os/Bundle;
    .restart local v13       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_9b
    :try_start_9b
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v16

    move-object v0, v15

    move v1, v10

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 608
    const/4 v6, 0x1

    .line 614
    .end local v9           #existingExtras:Landroid/os/Bundle;
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_b1
    if-nez v6, :cond_e0

    .line 615
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v12

    .line 617
    .local v12, status:Landroid/content/SyncStatusInfo;
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    sub-int v15, v15, v16

    const-wide/16 v16, 0x0

    move-object v0, v12

    move v1, v15

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V
    :try_end_e0
    .catchall {:try_start_9b .. :try_end_e0} :catchall_132

    .line 644
    .end local v5           #N:I
    .end local v6           #alreadyPresent:Z
    .end local v12           #status:Landroid/content/SyncStatusInfo;
    :cond_e0
    :try_start_e0
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 645
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 647
    monitor-exit v14
    :try_end_e7
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_13a

    .line 649
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_9a

    .line 600
    .restart local v5       #N:I
    .restart local v6       #alreadyPresent:Z
    .restart local v9       #existingExtras:Landroid/os/Bundle;
    .restart local v13       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .restart local p1
    :cond_ef
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6d

    .line 621
    .end local v5           #N:I
    .end local v6           #alreadyPresent:Z
    .end local v9           #existingExtras:Landroid/os/Bundle;
    .end local v10           #i:I
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_f3
    :try_start_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v15, v0

    move-object v0, v7

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncStatusInfo;

    .line 622
    .restart local v12       #status:Landroid/content/SyncStatusInfo;
    const/4 v8, 0x0

    .line 623
    .local v8, changed:Z
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 624
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    const/4 v10, 0x0

    .line 625
    .end local p1
    .restart local v10       #i:I
    :cond_10b
    :goto_10b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_140

    .line 626
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 627
    .restart local v13       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    move-object v0, v13

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Bundle;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v15

    if-eqz v15, :cond_13d

    .line 628
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 629
    const/4 v8, 0x1

    .line 632
    if-eqz v12, :cond_10b

    .line 633
    invoke-virtual {v12, v10}, Landroid/content/SyncStatusInfo;->removePeriodicSyncTime(I)V
    :try_end_131
    .catchall {:try_start_f3 .. :try_end_131} :catchall_132

    goto :goto_10b

    .line 644
    .end local v7           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v8           #changed:Z
    .end local v10           #i:I
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    .end local v12           #status:Landroid/content/SyncStatusInfo;
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :catchall_132
    move-exception v15

    :try_start_133
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 645
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 644
    throw v15

    .line 647
    :catchall_13a
    move-exception v15

    monitor-exit v14
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_13a

    throw v15

    .line 636
    .restart local v7       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v8       #changed:Z
    .restart local v10       #i:I
    .restart local v11       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    .restart local v12       #status:Landroid/content/SyncStatusInfo;
    .restart local v13       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_13d
    add-int/lit8 v10, v10, 0x1

    goto :goto_10b

    .line 639
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_140
    if-nez v8, :cond_e0

    .line 644
    :try_start_142
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 645
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 640
    monitor-exit v14
    :try_end_149
    .catchall {:try_start_142 .. :try_end_149} :catchall_13a

    goto/16 :goto_9a
.end method

.method private writeAccountInfoLocked()V
    .registers 18

    .prologue
    .line 1646
    const/4 v5, 0x0

    .line 1649
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1650
    new-instance v10, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v10}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1651
    .local v10, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v13, "utf-8"

    invoke-interface {v10, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1652
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1653
    const-string v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v14, 0x1

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1655
    const/4 v13, 0x0

    const-string v14, "accounts"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1656
    const/4 v13, 0x0

    const-string/jumbo v14, "version"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1657
    const/4 v13, 0x0

    const-string v14, "nextAuthorityId"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    move v13, v0

    if-nez v13, :cond_54

    .line 1659
    const/4 v13, 0x0

    const-string v14, "listen-for-tickles"

    const-string v15, "false"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1662
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1663
    .local v1, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5e
    if-ge v6, v1, :cond_209

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v13, v0

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1665
    .local v2, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v13, 0x0

    const-string v14, "authority"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1666
    const/4 v13, 0x0

    const-string v14, "id"

    iget v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1667
    const/4 v13, 0x0

    const-string v14, "account"

    iget-object v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1668
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    iget-object v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1669
    const/4 v13, 0x0

    const-string v14, "authority"

    iget-object v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1670
    const/4 v13, 0x0

    const-string v14, "enabled"

    iget-boolean v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1671
    iget v13, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-gez v13, :cond_13b

    .line 1672
    const/4 v13, 0x0

    const-string/jumbo v14, "syncable"

    const-string/jumbo v15, "unknown"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1676
    :goto_b4
    iget-object v13, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_ba
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1ff

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 1677
    .local v11, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    const/4 v13, 0x0

    const-string/jumbo v14, "periodicSync"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1678
    const/4 v13, 0x0

    const-string/jumbo v14, "period"

    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1679
    iget-object v4, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 1680
    .local v4, extras:Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_ec
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1f6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1681
    .local v9, key:Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "extra"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1682
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v10, v13, v14, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1683
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 1684
    .local v12, value:Ljava/lang/Object;
    instance-of v13, v12, Ljava/lang/Long;

    if-eqz v13, :cond_14f

    .line 1685
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "long"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1686
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1707
    .end local v12           #value:Ljava/lang/Object;
    :cond_120
    :goto_120
    const/4 v13, 0x0

    const-string v14, "extra"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_126} :catch_127

    goto :goto_ec

    .line 1719
    .end local v1           #N:I
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v6           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v11           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :catch_127
    move-exception v13

    move-object v3, v13

    .line 1720
    .local v3, e1:Ljava/io/IOException;
    const-string v13, "SyncManager"

    const-string v14, "Error writing accounts"

    invoke-static {v13, v14, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    if-eqz v5, :cond_13a

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    move-object v13, v0

    invoke-virtual {v13, v5}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1725
    .end local v3           #e1:Ljava/io/IOException;
    :cond_13a
    :goto_13a
    return-void

    .line 1674
    .restart local v1       #N:I
    .restart local v2       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v6       #i:I
    .restart local v10       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_13b
    const/4 v13, 0x0

    :try_start_13c
    const-string/jumbo v14, "syncable"

    iget v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-eqz v15, :cond_14d

    const/4 v15, 0x1

    :goto_144
    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_b4

    :cond_14d
    const/4 v15, 0x0

    goto :goto_144

    .line 1687
    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v4       #extras:Landroid/os/Bundle;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #key:Ljava/lang/String;
    .restart local v11       #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .restart local v12       #value:Ljava/lang/Object;
    :cond_14f
    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_168

    .line 1688
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "integer"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1689
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_120

    .line 1690
    :cond_168
    instance-of v13, v12, Ljava/lang/Boolean;

    if-eqz v13, :cond_181

    .line 1691
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "boolean"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1692
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_120

    .line 1693
    :cond_181
    instance-of v13, v12, Ljava/lang/Float;

    if-eqz v13, :cond_19a

    .line 1694
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "float"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1695
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_120

    .line 1696
    :cond_19a
    instance-of v13, v12, Ljava/lang/Double;

    if-eqz v13, :cond_1b4

    .line 1697
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "double"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1698
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_120

    .line 1699
    :cond_1b4
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_1cf

    .line 1700
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string/jumbo v15, "string"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1701
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_120

    .line 1702
    :cond_1cf
    instance-of v13, v12, Landroid/accounts/Account;

    if-eqz v13, :cond_120

    .line 1703
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "account"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1704
    const/4 v14, 0x0

    const-string/jumbo v15, "value1"

    move-object v0, v12

    check-cast v0, Landroid/accounts/Account;

    move-object v13, v0

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v10, v14, v15, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1705
    const/4 v13, 0x0

    const-string/jumbo v14, "value2"

    check-cast v12, Landroid/accounts/Account;

    .end local v12           #value:Ljava/lang/Object;
    iget-object v15, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_120

    .line 1709
    .end local v9           #key:Ljava/lang/String;
    :cond_1f6
    const/4 v13, 0x0

    const-string/jumbo v14, "periodicSync"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_ba

    .line 1711
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_1ff
    const/4 v13, 0x0

    const-string v14, "authority"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1663
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5e

    .line 1714
    :cond_209
    const/4 v13, 0x0

    const-string v14, "accounts"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1716
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    move-object v13, v0

    invoke-virtual {v13, v5}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_21a} :catch_127

    goto/16 :goto_13a
.end method

.method private writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V
    .registers 4
    .parameter "op"
    .parameter "out"

    .prologue
    .line 1982
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1983
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1984
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1985
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    if-nez v0, :cond_1e

    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1e

    .line 1986
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/SyncStorageEngine;->flattenBundle(Landroid/os/Bundle;)[B

    move-result-object v0

    iput-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 1988
    :cond_1e
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1989
    iget-boolean v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    return-void

    .line 1989
    :cond_2c
    const/4 v0, 0x0

    goto :goto_28
.end method

.method private writePendingOperationsLocked()V
    .registers 9

    .prologue
    .line 1996
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1997
    .local v0, N:I
    const/4 v2, 0x0

    .line 1999
    .local v2, fos:Ljava/io/FileOutputStream;
    if-nez v0, :cond_f

    .line 2001
    :try_start_9
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->truncate()V

    .line 2023
    :cond_e
    :goto_e
    return-void

    .line 2006
    :cond_f
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2009
    .local v5, out:Landroid/os/Parcel;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v0, :cond_2a

    .line 2010
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 2011
    .local v4, op:Landroid/content/SyncStorageEngine$PendingOperation;
    invoke-direct {p0, v4, v5}, Landroid/content/SyncStorageEngine;->writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V

    .line 2009
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2013
    .end local v4           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_2a
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2014
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2016
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_39} :catch_3a

    goto :goto_e

    .line 2017
    .end local v3           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :catch_3a
    move-exception v6

    move-object v1, v6

    .line 2018
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing pending operations"

    invoke-static {v6, v7, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2019
    if-eqz v2, :cond_e

    .line 2020
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_e
.end method

.method private writeStatisticsLocked()V
    .registers 9

    .prologue
    .line 2134
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/content/SyncStorageEngine;->removeMessages(I)V

    .line 2136
    const/4 v3, 0x0

    .line 2138
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_5
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2140
    .local v5, out:Landroid/os/Parcel;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v0, v6

    .line 2141
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_13
    if-ge v4, v0, :cond_1b

    .line 2142
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    aget-object v1, v6, v4

    .line 2143
    .local v1, ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_2f

    .line 2153
    .end local v1           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_1b
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2155
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2157
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2164
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :cond_2e
    :goto_2e
    return-void

    .line 2146
    .restart local v0       #N:I
    .restart local v1       #ds:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v4       #i:I
    .restart local v5       #out:Landroid/os/Parcel;
    :cond_2f
    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2147
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2148
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2149
    iget-wide v6, v1, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2150
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    iget-wide v6, v1, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4d} :catch_50

    .line 2141
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2158
    .end local v0           #N:I
    .end local v1           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v4           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :catch_50
    move-exception v6

    move-object v2, v6

    .line 2159
    .local v2, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing stats"

    invoke-static {v6, v7, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2160
    if-eqz v3, :cond_2e

    .line 2161
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2e
.end method

.method private writeStatusLocked()V
    .registers 9

    .prologue
    .line 1903
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/content/SyncStorageEngine;->removeMessages(I)V

    .line 1905
    const/4 v2, 0x0

    .line 1907
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_5
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1909
    .local v4, out:Landroid/os/Parcel;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1910
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v0, :cond_2c

    .line 1911
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 1912
    .local v5, status:Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1913
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1910
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1915
    .end local v5           #status:Landroid/content/SyncStatusInfo;
    :cond_2c
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1917
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1919
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3f} :catch_40

    .line 1926
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #out:Landroid/os/Parcel;
    :cond_3f
    :goto_3f
    return-void

    .line 1920
    :catch_40
    move-exception v6

    move-object v1, v6

    .line 1921
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing status"

    invoke-static {v6, v7, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1922
    if-eqz v2, :cond_3f

    .line 1923
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_3f
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 13
    .parameter "account"
    .parameter "providerName"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 654
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->updateOrRemovePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    .line 655
    return-void
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 6
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 346
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 347
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 348
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public clearAllBackoffs()V
    .registers 13

    .prologue
    const-wide/16 v10, -0x1

    const-string v5, "SyncManager"

    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, changed:Z
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 531
    :try_start_8
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 532
    .local v0, accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v6, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 533
    .local v1, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v6, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_40

    iget-wide v6, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_28

    .line 535
    :cond_40
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 536
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearAllBackoffs: authority:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " backoffTime was: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " backoffDelay was: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_7b
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 542
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 543
    const/4 v2, 0x1

    goto :goto_28

    .line 547
    .end local v0           #accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v1           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_85
    monitor-exit v5
    :try_end_86
    .catchall {:try_start_8 .. :try_end_86} :catchall_8d

    .line 549
    if-eqz v2, :cond_8c

    .line 550
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 552
    :cond_8c
    return-void

    .line 547
    :catchall_8d
    move-exception v6

    :try_start_8e
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v6
.end method

.method public clearAndReadState()V
    .registers 3

    .prologue
    .line 1387
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1388
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1389
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1390
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1391
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1392
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1394
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1395
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatusLocked()V

    .line 1396
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readPendingOperationsLocked()V

    .line 1397
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1398
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 1399
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1400
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1401
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 1402
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1403
    monitor-exit v0

    .line 1404
    return-void

    .line 1403
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public clearPending()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const-string v3, "SyncManager"

    .line 825
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 826
    :try_start_6
    const-string v3, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 827
    const-string v3, "SyncManager"

    const-string v5, "clearPending"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_16
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 830
    .local v2, num:I
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 831
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 832
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    if-ge v1, v0, :cond_38

    .line 833
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 835
    :cond_38
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 836
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_40

    .line 837
    invoke-direct {p0, v6}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 838
    return v2

    .line 836
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #num:I
    :catchall_40
    move-exception v3

    :try_start_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v3
.end method

.method public deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z
    .registers 14
    .parameter "op"

    .prologue
    const/4 v11, 0x2

    const-string v7, "SyncManager"

    .line 776
    const/4 v5, 0x0

    .line 777
    .local v5, res:Z
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 778
    :try_start_7
    const-string v8, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 779
    const-string v8, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteFromPending:  auth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " src="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " extras="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_42
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 785
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_57

    iget v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    const/4 v9, 0x4

    if-lt v8, v9, :cond_d3

    .line 787
    :cond_57
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 788
    const/4 v8, 0x0

    iput v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    .line 793
    :goto_5d
    iget-object v8, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const-string v10, "deleteFromPending"

    invoke-direct {p0, v8, v9, v10}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 795
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_cd

    .line 796
    const-string v8, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8b

    const-string v8, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removing - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_8b
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 798
    .local v0, N:I
    const/4 v4, 0x0

    .line 799
    .local v4, morePending:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_93
    if-ge v3, v0, :cond_b2

    .line 800
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 801
    .local v2, cur:Landroid/content/SyncStorageEngine$PendingOperation;
    iget-object v8, v2, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v8, v9}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dd

    iget-object v8, v2, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 803
    const/4 v4, 0x1

    .line 808
    .end local v2           #cur:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_b2
    if-nez v4, :cond_cd

    .line 809
    const-string v8, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c4

    const-string v8, "SyncManager"

    const-string v9, "no more pending!"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_c4
    iget v8, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v8}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 811
    .local v6, status:Landroid/content/SyncStatusInfo;
    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/content/SyncStatusInfo;->pending:Z

    .line 815
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #morePending:Z
    .end local v6           #status:Landroid/content/SyncStatusInfo;
    :cond_cd
    const/4 v5, 0x1

    .line 817
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_ce
    monitor-exit v7
    :try_end_cf
    .catchall {:try_start_7 .. :try_end_cf} :catchall_da

    .line 819
    invoke-direct {p0, v11}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 820
    return v5

    .line 790
    :cond_d3
    :try_start_d3
    iget v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    goto :goto_5d

    .line 817
    :catchall_da
    move-exception v8

    monitor-exit v7
    :try_end_dc
    .catchall {:try_start_d3 .. :try_end_dc} :catchall_da

    throw v8

    .line 799
    .restart local v0       #N:I
    .restart local v1       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2       #cur:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local v3       #i:I
    .restart local v4       #morePending:Z
    :cond_dd
    add-int/lit8 v3, v3, 0x1

    goto :goto_93
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;)V
    .registers 13
    .parameter "accounts"

    .prologue
    const-string v8, "SyncManager"

    .line 866
    iget-object v9, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 867
    :try_start_5
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "SyncManager"

    const-string v10, "Updating for new accounts..."

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_15
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 869
    .local v7, removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 870
    .local v1, accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 871
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 872
    .local v0, acc:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v0, Landroid/content/SyncStorageEngine$AccountInfo;->account:Landroid/accounts/Account;

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    .line 874
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 875
    const-string v8, "SyncManager"

    const-string v10, "Account removed"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_48
    iget-object v8, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 878
    .local v2, auth:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_52

    .line 911
    .end local v0           #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v1           #accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    .end local v2           #auth:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_64
    move-exception v8

    monitor-exit v9
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_64

    throw v8

    .line 880
    .restart local v0       #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .restart local v1       #accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_67
    :try_start_67
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_24

    .line 885
    .end local v0           #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6b
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 886
    .local v3, i:I
    if-lez v3, :cond_c4

    .line 887
    :cond_71
    if-lez v3, :cond_b8

    .line 888
    add-int/lit8 v3, v3, -0x1

    .line 889
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 890
    .local v5, ident:I
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 891
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 892
    .local v6, j:I
    :cond_84
    :goto_84
    if-lez v6, :cond_9c

    .line 893
    add-int/lit8 v6, v6, -0x1

    .line 894
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v8, v5, :cond_84

    .line 895
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v10, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_84

    .line 898
    :cond_9c
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 899
    :cond_a2
    :goto_a2
    if-lez v6, :cond_71

    .line 900
    add-int/lit8 v6, v6, -0x1

    .line 901
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    iget v8, v8, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v8, v5, :cond_a2

    .line 902
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a2

    .line 906
    .end local v5           #ident:I
    .end local v6           #j:I
    :cond_b8
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 907
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 908
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 909
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 911
    :cond_c4
    monitor-exit v9
    :try_end_c5
    .catchall {:try_start_67 .. :try_end_c5} :catchall_64

    .line 912
    return-void
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1152
    :try_start_3
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1153
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1154
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 1155
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1157
    :cond_1d
    monitor-exit v3

    return-object v2

    .line 1158
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_1f
    move-exception v4

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v4
.end method

.method public getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .registers 4
    .parameter "authorityId"

    .prologue
    .line 711
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 712
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object p0

    .line 713
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 480
    :try_start_3
    const-string v2, "getBackoff"

    invoke-direct {p0, p1, p2, v2}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 481
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_13

    iget-wide v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    .line 482
    :cond_13
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 484
    :goto_16
    return-object v1

    :cond_17
    iget-wide v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_16

    .line 485
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public getCurrentSync()Landroid/content/SyncInfo;
    .registers 3

    .prologue
    .line 1124
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1125
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    monitor-exit v0

    return-object v1

    .line 1126
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getDayStatistics()[Landroid/content/SyncStorageEngine$DayStats;
    .registers 7

    .prologue
    .line 1232
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1233
    :try_start_3
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v2, v2

    new-array v0, v2, [Landroid/content/SyncStorageEngine$DayStats;

    .line 1234
    .local v0, ds:[Landroid/content/SyncStorageEngine$DayStats;
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1235
    monitor-exit v1

    return-object v0

    .line 1236
    .end local v0           #ds:[Landroid/content/SyncStorageEngine$DayStats;
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public getDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;)J
    .registers 7
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 571
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 572
    :try_start_3
    const-string v2, "getDelayUntil"

    invoke-direct {p0, p1, p2, v2}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 573
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_10

    .line 574
    const-wide/16 v2, 0x0

    monitor-exit v1

    move-wide v1, v2

    .line 576
    :goto_f
    return-wide v1

    :cond_10
    iget-wide v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v1

    move-wide v1, v2

    goto :goto_f

    .line 577
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public getInitialSyncFailureTime()J
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 1245
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1246
    :try_start_5
    iget-boolean v6, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    if-nez v6, :cond_c

    .line 1247
    monitor-exit v5

    move-wide v5, v8

    .line 1263
    :goto_b
    return-wide v5

    .line 1250
    :cond_c
    const-wide/16 v2, 0x0

    .line 1251
    .local v2, oldest:J
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1252
    .local v1, i:I
    :cond_14
    :goto_14
    if-lez v1, :cond_3d

    .line 1253
    add-int/lit8 v1, v1, -0x1

    .line 1254
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1255
    .local v4, stats:Landroid/content/SyncStatusInfo;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v7, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1256
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_14

    iget-boolean v6, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v6, :cond_14

    .line 1257
    cmp-long v6, v2, v8

    if-eqz v6, :cond_3a

    iget-wide v6, v4, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_14

    .line 1258
    :cond_3a
    iget-wide v2, v4, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    goto :goto_14

    .line 1263
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v4           #stats:Landroid/content/SyncStatusInfo;
    :cond_3d
    monitor-exit v5

    move-wide v5, v2

    goto :goto_b

    .line 1264
    .end local v1           #i:I
    .end local v2           #oldest:J
    :catchall_40
    move-exception v6

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    throw v6
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 8
    .parameter "account"
    .parameter "providerName"

    .prologue
    const/4 v4, -0x1

    .line 433
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 434
    if-eqz p1, :cond_16

    .line 435
    :try_start_6
    const-string v3, "getIsSyncable"

    invoke-direct {p0, p1, p2, v3}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 437
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_11

    .line 438
    monitor-exit v2

    move v2, v4

    .line 451
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_10
    return v2

    .line 440
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_11
    iget v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v2

    move v2, v3

    goto :goto_10

    .line 443
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_16
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 444
    .local v1, i:I
    :cond_1c
    if-lez v1, :cond_35

    .line 445
    add-int/lit8 v1, v1, -0x1

    .line 446
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 447
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 448
    iget v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v2

    move v2, v3

    goto :goto_10

    .line 451
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_35
    monitor-exit v2

    move v2, v4

    goto :goto_10

    .line 452
    .end local v1           #i:I
    :catchall_38
    move-exception v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method public getMasterSyncAutomatically()Z
    .registers 3

    .prologue
    .line 691
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 692
    :try_start_3
    iget-boolean v1, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    monitor-exit v0

    return v1

    .line 693
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getOrCreateAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .registers 6
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 697
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 698
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 701
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;
    .registers 4
    .parameter "authority"

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1355
    :try_start_3
    iget v1, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1356
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getPendingOperationCount()I
    .registers 3

    .prologue
    .line 856
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 858
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getPendingOperations()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 848
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 849
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v9, syncs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    iget-object v10, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v10

    .line 665
    :try_start_8
    const-string v0, "getPeriodicSyncs"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 666
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v6, :cond_3c

    .line 667
    iget-object v0, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local p0
    .local v7, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 668
    .local v8, item:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object p0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 671
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :catchall_39
    move-exception v0

    monitor-exit v10
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_39

    throw v0

    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_3c
    :try_start_3c
    monitor-exit v10
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 672
    return-object v9
.end method

.method public getStatusByAccountAndAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .registers 10
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 1169
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 1170
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1172
    :cond_a
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1173
    :try_start_d
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1174
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    if-ge v3, v0, :cond_40

    .line 1175
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1176
    .local v2, cur:Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1178
    .local v1, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_3d

    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1180
    monitor-exit v4

    move-object v4, v2

    .line 1183
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :goto_3c
    return-object v4

    .line 1174
    .restart local v1       #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2       #cur:Landroid/content/SyncStatusInfo;
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1183
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :cond_40
    const/4 v5, 0x0

    monitor-exit v4

    move-object v4, v5

    goto :goto_3c

    .line 1184
    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_44
    move-exception v5

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_44

    throw v5
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "providerName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 393
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 394
    if-eqz p1, :cond_19

    .line 395
    :try_start_7
    const-string v3, "getSyncAutomatically"

    invoke-direct {p0, p1, p2, v3}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 397
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_17

    iget-boolean v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v3, :cond_17

    move v3, v5

    :goto_14
    monitor-exit v2

    move v2, v3

    .line 409
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_16
    return v2

    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_17
    move v3, v4

    .line 397
    goto :goto_14

    .line 400
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_19
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 401
    .local v1, i:I
    :cond_1f
    if-lez v1, :cond_3a

    .line 402
    add-int/lit8 v1, v1, -0x1

    .line 403
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 404
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-boolean v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v3, :cond_1f

    .line 406
    monitor-exit v2

    move v2, v5

    goto :goto_16

    .line 409
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_3a
    monitor-exit v2

    move v2, v4

    goto :goto_16

    .line 410
    .end local v1           #i:I
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1217
    :try_start_3
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1218
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1219
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 1220
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1222
    :cond_1d
    monitor-exit v3

    return-object v2

    .line 1223
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_1f
    move-exception v4

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v4
.end method

.method public getSyncStatus()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1136
    :try_start_3
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1137
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1138
    .local v2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 1139
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1141
    :cond_1d
    monitor-exit v3

    return-object v2

    .line 1142
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    :catchall_1f
    move-exception v4

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 335
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 336
    :try_start_8
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 337
    monitor-exit v0

    .line 343
    :cond_c
    :goto_c
    return-void

    .line 337
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1

    .line 338
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 339
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 340
    :try_start_18
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 341
    monitor-exit v0

    goto :goto_c

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public insertIntoPending(Landroid/content/SyncStorageEngine$PendingOperation;)Landroid/content/SyncStorageEngine$PendingOperation;
    .registers 11
    .parameter "op"

    .prologue
    const/4 v8, 0x2

    const-string v3, "SyncManager"

    .line 746
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 747
    :try_start_6
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 748
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertIntoPending:  auth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " src="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extras="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_41
    iget-object v4, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v5, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 758
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_51

    .line 759
    const/4 v4, 0x0

    monitor-exit v3

    move-object v3, v4

    .line 772
    :goto_50
    return-object v3

    .line 762
    :cond_51
    new-instance v1, Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-direct {v1, p1}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/content/SyncStorageEngine$PendingOperation;)V
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_72

    .line 763
    .end local p1
    .local v1, op:Landroid/content/SyncStorageEngine$PendingOperation;
    :try_start_56
    iget v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v1, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 764
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-direct {p0, v1}, Landroid/content/SyncStorageEngine;->appendPendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;)V

    .line 767
    iget v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 768
    .local v2, status:Landroid/content/SyncStatusInfo;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 769
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_56 .. :try_end_6c} :catchall_75

    .line 771
    invoke-direct {p0, v8}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    move-object p1, v1

    .end local v1           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local p1
    move-object v3, v1

    .line 772
    goto :goto_50

    .line 769
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #status:Landroid/content/SyncStatusInfo;
    :catchall_72
    move-exception v4

    :goto_73
    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v4

    .end local p1
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1       #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :catchall_75
    move-exception v4

    move-object p1, v1

    .end local v1           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local p1
    goto :goto_73
.end method

.method public insertStartSyncEvent(Landroid/accounts/Account;Ljava/lang/String;JI)J
    .registers 14
    .parameter "accountName"
    .parameter "authorityName"
    .parameter "now"
    .parameter "source"

    .prologue
    const-string v4, "SyncManager"

    .line 963
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 964
    :try_start_5
    const-string v5, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 965
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertStartSyncEvent: auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_30
    const-string v5, "insertStartSyncEvent"

    invoke-direct {p0, p1, p2, v5}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 970
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_3d

    .line 971
    const-wide/16 v5, -0x1

    monitor-exit v4

    move-wide v4, v5

    .line 989
    :goto_3c
    return-wide v4

    .line 973
    :cond_3d
    new-instance v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Landroid/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 974
    .local v3, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    iget v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 975
    iget v5, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    iput v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 976
    iget v5, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    if-gez v5, :cond_55

    const/4 v5, 0x0

    iput v5, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    .line 977
    :cond_55
    iput-wide p3, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 978
    iput p5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 979
    const/4 v5, 0x0

    iput v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 980
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 981
    :goto_62
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_7d

    .line 982
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_62

    .line 986
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v3           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_7a
    move-exception v5

    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_5 .. :try_end_7c} :catchall_7a

    throw v5

    .line 984
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v3       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :cond_7d
    :try_start_7d
    iget v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v1, v5

    .line 985
    .local v1, id:J
    const-string v5, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a2

    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_a2
    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_7d .. :try_end_a3} :catchall_7a

    .line 988
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    move-wide v4, v1

    .line 989
    goto :goto_3c
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v5, 0x1

    .line 721
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 722
    :try_start_4
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 723
    .local v1, i:I
    :cond_a
    if-lez v1, :cond_29

    .line 724
    add-int/lit8 v1, v1, -0x1

    .line 727
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 728
    .local v2, op:Landroid/content/SyncStorageEngine$PendingOperation;
    iget-object v4, v2, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v2, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 729
    monitor-exit v3

    move v3, v5

    .line 742
    .end local v2           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :goto_28
    return v3

    .line 733
    :cond_29
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    if-eqz v4, :cond_4a

    .line 734
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    iget v4, v4, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v4}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 735
    .local v0, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_4a

    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 737
    monitor-exit v3

    move v3, v5

    goto :goto_28

    .line 740
    .end local v0           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_4a
    monitor-exit v3

    .line 742
    const/4 v3, 0x0

    goto :goto_28

    .line 740
    .end local v1           #i:I
    :catchall_4d
    move-exception v4

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_4d

    throw v4
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 10
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 1191
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1192
    :try_start_3
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1193
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v0, :cond_3d

    .line 1194
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1195
    .local v2, cur:Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1196
    .local v1, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_23

    .line 1193
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1199
    :cond_23
    if-eqz p1, :cond_2d

    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v5, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1202
    :cond_2d
    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-boolean v5, v2, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v5, :cond_20

    .line 1203
    const/4 v5, 0x1

    monitor-exit v4

    move v4, v5

    .line 1206
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :goto_3c
    return v4

    :cond_3d
    const/4 v5, 0x0

    monitor-exit v4

    move v4, v5

    goto :goto_3c

    .line 1207
    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_41
    move-exception v5

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v5
.end method

.method public removeAuthority(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 705
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 706
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Landroid/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 707
    monitor-exit v0

    .line 708
    return-void

    .line 707
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .parameter "account"
    .parameter "providerName"
    .parameter "extras"

    .prologue
    .line 658
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->updateOrRemovePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    .line 660
    return-void
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 352
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public reportActiveChange()V
    .registers 2

    .prologue
    .line 954
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 955
    return-void
.end method

.method public setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V
    .registers 10
    .parameter "activeSyncContext"

    .prologue
    const-string v0, "SyncManager"

    .line 920
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 921
    if-eqz p1, :cond_7d

    .line 922
    :try_start_7
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 923
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveSync: auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v2, v2, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget v2, v2, Landroid/content/SyncOperation;->syncSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v2, v2, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_49
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    if-eqz v0, :cond_55

    .line 929
    const-string v0, "SyncManager"

    const-string/jumbo v1, "setActiveSync called with existing active sync!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_55
    iget-object v0, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v1, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v1, v1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    const-string/jumbo v2, "setActiveSync"

    invoke-direct {p0, v0, v1, v2}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 935
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v6, :cond_68

    .line 936
    monitor-exit v7

    .line 948
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_67
    return-void

    .line 938
    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_68
    new-instance v0, Landroid/content/SyncInfo;

    iget v1, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v2, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v3, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    iget-wide v4, p1, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    iput-object v0, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    .line 945
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_77
    monitor-exit v7
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_92

    .line 947
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_67

    .line 942
    :cond_7d
    :try_start_7d
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "SyncManager"

    const-string/jumbo v1, "setActiveSync: null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_8e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    goto :goto_77

    .line 945
    :catchall_92
    move-exception v0

    monitor-exit v7
    :try_end_94
    .catchall {:try_start_7d .. :try_end_94} :catchall_92

    throw v0
.end method

.method public setBackoff(Landroid/accounts/Account;Ljava/lang/String;JJ)V
    .registers 16
    .parameter "account"
    .parameter "providerName"
    .parameter "nextSyncTime"
    .parameter "nextDelay"

    .prologue
    .line 490
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 491
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBackoff: provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> nextSyncTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nextDelay "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_36
    const/4 v3, 0x0

    .line 495
    .local v3, changed:Z
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 496
    if-eqz p1, :cond_3e

    if-nez p2, :cond_90

    .line 497
    :cond_3e
    :try_start_3e
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 498
    .local v0, accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_5e

    iget-object v7, v0, Landroid/content/SyncStorageEngine$AccountInfo;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v7}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 499
    :cond_5e
    iget-object v7, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_68
    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 500
    .local v2, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p2, :cond_7e

    iget-object v7, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 503
    :cond_7e
    iget-wide v7, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v7, v7, p3

    if-nez v7, :cond_8a

    iget-wide v7, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v7, v7, p5

    if-eqz v7, :cond_68

    .line 505
    :cond_8a
    iput-wide p3, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 506
    iput-wide p5, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 507
    const/4 v3, 0x1

    goto :goto_68

    .line 512
    .end local v0           #accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v2           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_90
    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v7, v8}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 514
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v7, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v7, v7, p3

    if-nez v7, :cond_a4

    iget-wide v7, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v7, v7, p5

    if-nez v7, :cond_a4

    .line 515
    monitor-exit v6

    .line 526
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_a3
    :goto_a3
    return-void

    .line 517
    .restart local v1       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_a4
    iput-wide p3, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 518
    iput-wide p5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 519
    const/4 v3, 0x1

    .line 521
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_a9
    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_3e .. :try_end_aa} :catchall_b1

    .line 523
    if-eqz v3, :cond_a3

    .line 524
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_a3

    .line 521
    :catchall_b1
    move-exception v7

    :try_start_b2
    monitor-exit v6
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v7
.end method

.method public setDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;J)V
    .registers 10
    .parameter "account"
    .parameter "providerName"
    .parameter "delayUntil"

    .prologue
    const/4 v4, 0x1

    const-string v3, "SyncManager"

    .line 554
    const-string v1, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 555
    const-string v1, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDelayUntil: provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> delayUntil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_2f
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 559
    const/4 v2, -0x1

    const/4 v3, 0x1

    :try_start_34
    invoke-direct {p0, p1, p2, v2, v3}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 561
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_40

    .line 562
    monitor-exit v1

    .line 568
    :goto_3f
    return-void

    .line 564
    :cond_40
    iput-wide p3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 565
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_47

    .line 567
    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_3f

    .line 565
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 9
    .parameter "account"
    .parameter "providerName"
    .parameter "syncable"

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 456
    if-le p3, v4, :cond_33

    .line 457
    const/4 p3, 0x1

    .line 462
    :cond_5
    :goto_5
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 463
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_a
    invoke-direct {p0, p1, p2, v2, v3}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 464
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v2, p3, :cond_37

    .line 465
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v1

    .line 476
    :goto_32
    return-void

    .line 458
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_33
    if-ge p3, v1, :cond_5

    .line 459
    const/4 p3, -0x1

    goto :goto_5

    .line 468
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_37
    iput p3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 469
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 470
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_4b

    .line 472
    if-lez p3, :cond_47

    .line 473
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 475
    :cond_47
    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_32

    .line 470
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 676
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 677
    :try_start_4
    iget-boolean v1, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    if-ne v1, p1, :cond_a

    .line 678
    monitor-exit v0

    .line 688
    :goto_9
    return-void

    .line 680
    :cond_a
    iput-boolean p1, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    .line 681
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 682
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_26

    .line 683
    if-eqz p1, :cond_1a

    .line 684
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 686
    :cond_1a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 687
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 682
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 9
    .parameter "account"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    const-string v3, "SyncManager"

    .line 414
    const-string v1, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncAutomatically: , provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 417
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_2a
    invoke-direct {p0, p1, p2, v2, v3}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 418
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v2, p3, :cond_53

    .line 419
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncAutomatically: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    monitor-exit v1

    .line 430
    :goto_52
    return-void

    .line 422
    :cond_53
    iput-boolean p3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 423
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 424
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_2a .. :try_end_59} :catchall_68

    .line 426
    if-eqz p3, :cond_63

    .line 427
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 429
    :cond_63
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_52

    .line 424
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_68
    move-exception v2

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v2
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .registers 30
    .parameter "historyId"
    .parameter "elapsedTime"
    .parameter "resultMessage"
    .parameter "downstreamActivity"
    .parameter "upstreamActivity"

    .prologue
    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v13, v0

    monitor-enter v13

    .line 1013
    :try_start_6
    const-string v14, "SyncManager"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 1014
    const-string v14, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "stopSyncEvent: historyId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_2b
    const/4 v7, 0x0

    .line 1017
    .local v7, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1018
    .local v6, i:I
    :goto_35
    if-lez v6, :cond_4b

    .line 1019
    add-int/lit8 v6, v6, -0x1

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    check-cast v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1021
    .restart local v7       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v14, v14

    cmp-long v14, v14, p1

    if-nez v14, :cond_6b

    .line 1027
    :cond_4b
    if-nez v7, :cond_6d

    .line 1028
    const-string v14, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "stopSyncEvent: no history for id "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    monitor-exit v13

    .line 1116
    :goto_6a
    return-void

    .line 1024
    :cond_6b
    const/4 v7, 0x0

    goto :goto_35

    .line 1032
    :cond_6d
    move-wide/from16 v0, p3

    move-object v2, v7

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1033
    const/4 v14, 0x1

    iput v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1034
    move-object/from16 v0, p5

    move-object v1, v7

    iput-object v0, v1, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1035
    move-wide/from16 v0, p6

    move-object v2, v7

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1036
    move-wide/from16 v0, p8

    move-object v2, v7

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1038
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v10

    .line 1040
    .local v10, status:Landroid/content/SyncStatusInfo;
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSyncs:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1041
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    add-long v14, v14, p3

    iput-wide v14, v10, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1042
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v14, :pswitch_data_206

    .line 1060
    :goto_9e
    const/4 v11, 0x0

    .line 1061
    .local v11, writeStatisticsNow:Z
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v4

    .line 1062
    .local v4, day:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_147

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    new-instance v16, Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v16, v14, v15

    .line 1070
    :cond_bd
    :goto_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v5, v14, v15

    .line 1072
    .local v5, ds:Landroid/content/SyncStorageEngine$DayStats;
    iget-wide v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long v8, v14, p3

    .line 1073
    .local v8, lastSyncTime:J
    const/4 v12, 0x0

    .line 1074
    .local v12, writeStatusNow:Z
    const-string/jumbo v14, "success"

    move-object v0, v14

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_192

    .line 1076
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_e6

    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_e7

    .line 1077
    :cond_e6
    const/4 v12, 0x1

    .line 1079
    :cond_e7
    iput-wide v8, v10, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1080
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v14, v10, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1081
    const-wide/16 v14, 0x0

    iput-wide v14, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1082
    const/4 v14, -0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1083
    const/4 v14, 0x0

    iput-object v14, v10, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1084
    const-wide/16 v14, 0x0

    iput-wide v14, v10, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1085
    iget v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1086
    iget-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    add-long v14, v14, p3

    iput-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1101
    :cond_107
    :goto_107
    if-eqz v12, :cond_1c9

    .line 1102
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1107
    :cond_10c
    :goto_10c
    if-eqz v11, :cond_1e7

    .line 1108
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1113
    :cond_111
    :goto_111
    monitor-exit v13
    :try_end_112
    .catchall {:try_start_6 .. :try_end_112} :catchall_124

    .line 1115
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto/16 :goto_6a

    .line 1044
    .end local v4           #day:I
    .end local v5           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v8           #lastSyncTime:J
    .end local v11           #writeStatisticsNow:Z
    .end local v12           #writeStatusNow:Z
    :pswitch_11c
    :try_start_11c
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    goto/16 :goto_9e

    .line 1113
    .end local v6           #i:I
    .end local v7           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    .end local v10           #status:Landroid/content/SyncStatusInfo;
    :catchall_124
    move-exception v14

    monitor-exit v13
    :try_end_126
    .catchall {:try_start_11c .. :try_end_126} :catchall_124

    throw v14

    .line 1047
    .restart local v6       #i:I
    .restart local v7       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    .restart local v10       #status:Landroid/content/SyncStatusInfo;
    :pswitch_127
    :try_start_127
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    goto/16 :goto_9e

    .line 1050
    :pswitch_12f
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourceUser:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourceUser:I

    goto/16 :goto_9e

    .line 1053
    :pswitch_137
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourceServer:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourceServer:I

    goto/16 :goto_9e

    .line 1056
    :pswitch_13f
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto/16 :goto_9e

    .line 1064
    .restart local v4       #day:I
    .restart local v11       #writeStatisticsNow:Z
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget v14, v14, Landroid/content/SyncStorageEngine$DayStats;->day:I

    if-eq v4, v14, :cond_186

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    new-instance v16, Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v16, v14, v15

    .line 1067
    const/4 v11, 0x1

    goto/16 :goto_bd

    .line 1068
    :cond_186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_bd

    goto/16 :goto_bd

    .line 1087
    .restart local v5       #ds:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v8       #lastSyncTime:J
    .restart local v12       #writeStatusNow:Z
    :cond_192
    const-string v14, "canceled"

    move-object v0, v14

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_107

    .line 1088
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_1a6

    .line 1089
    const/4 v12, 0x1

    .line 1091
    :cond_1a6
    iput-wide v8, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1092
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v14, v10, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1093
    move-object/from16 v0, p5

    move-object v1, v10

    iput-object v0, v1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1094
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_1bb

    .line 1095
    iput-wide v8, v10, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1097
    :cond_1bb
    iget v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1098
    iget-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long v14, v14, p3

    iput-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_107

    .line 1103
    :cond_1c9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_10c

    .line 1104
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/32 v15, 0x927c0

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_10c

    .line 1109
    :cond_1e7
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_111

    .line 1110
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/32 v15, 0x1b7740

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_203
    .catchall {:try_start_127 .. :try_end_203} :catchall_124

    goto/16 :goto_111

    .line 1042
    nop

    :pswitch_data_206
    .packed-switch 0x0
        :pswitch_137
        :pswitch_11c
        :pswitch_127
        :pswitch_12f
        :pswitch_13f
    .end packed-switch
.end method

.method public writeAllState()V
    .registers 3

    .prologue
    .line 1369
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1372
    :try_start_3
    iget v1, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    if-lez v1, :cond_a

    .line 1374
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 1378
    :cond_a
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1379
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1380
    monitor-exit v0

    .line 1381
    return-void

    .line 1380
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
