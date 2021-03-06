.class public final Landroid/webkit/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CacheManager$CacheResult;
    }
.end annotation


# static fields
.field static CACHE_MAX_SIZE:J = 0x0L

.field private static CACHE_THRESHOLD:J = 0x0L

.field private static CACHE_TRIM_AMOUNT:J = 0x0L

.field static final HEADER_KEY_IFMODIFIEDSINCE:Ljava/lang/String; = "if-modified-since"

.field static final HEADER_KEY_IFNONEMATCH:Ljava/lang/String; = "if-none-match"

.field private static final LOGTAG:Ljava/lang/String; = "cache"

.field private static final MANIFEST_MIME:Ljava/lang/String; = "text/cache-manifest"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final NO_STORE:Ljava/lang/String; = "no-store"

.field private static final TRIM_CACHE_INTERVAL:I = 0x5

.field private static mBaseDir:Ljava/io/File;

.field private static mClearCacheOnInit:Z

.field private static mDataBase:Landroid/webkit/WebViewDatabase;

.field private static mDisabled:Z

.field private static mRefCount:I

.field private static mTrimCacheCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 60
    const-wide/32 v0, 0x600000

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    .line 61
    const-wide/32 v0, 0x200000

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    .line 64
    sget-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    .line 75
    sput v4, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 82
    sput-boolean v4, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static declared-synchronized DecRefCount()V
    .registers 3

    .prologue
    .line 256
    const-class v0, Landroid/webkit/CacheManager;

    monitor-enter v0

    :try_start_3
    sget v1, Landroid/webkit/CacheManager;->mRefCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Landroid/webkit/CacheManager;->mRefCount:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 257
    monitor-exit v0

    return-void

    .line 256
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized IncRefCount()V
    .registers 2

    .prologue
    .line 250
    const-class v0, Landroid/webkit/CacheManager;

    monitor-enter v0

    :try_start_3
    sget v1, Landroid/webkit/CacheManager;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/CacheManager;->mRefCount:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 251
    monitor-exit v0

    return-void

    .line 250
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic access$000()Ljava/io/File;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method private static appendAsHex(ILjava/lang/StringBuffer;)V
    .registers 4
    .parameter "i"
    .parameter "ret"

    .prologue
    .line 690
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 714
    :goto_b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 715
    return-void

    .line 693
    :pswitch_f
    const-string v1, "0000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 696
    :pswitch_15
    const-string v1, "000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 699
    :pswitch_1b
    const-string v1, "00000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 702
    :pswitch_21
    const-string v1, "0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 705
    :pswitch_27
    const-string v1, "000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 708
    :pswitch_2d
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 711
    :pswitch_33
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 691
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_33
    .end packed-switch
.end method

.method public static cacheDisabled()Z
    .registers 1

    .prologue
    .line 244
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    return v0
.end method

.method static cacheEmpty()Z
    .registers 1

    .prologue
    .line 567
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasCache()Z

    move-result v0

    return v0
.end method

.method private static checkCacheRedirect(I)Z
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 609
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_c

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_c

    const/16 v0, 0x133

    if-ne p0, v0, :cond_e

    .line 611
    :cond_c
    const/4 v0, 0x1

    .line 613
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z
    .registers 3
    .parameter "cacheRet"

    .prologue
    .line 515
    :try_start_0
    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_c

    .line 519
    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_b
    return v1

    .line 516
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 517
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method static clearCache()V
    .registers 1

    .prologue
    .line 605
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearCache()V

    .line 606
    return-void
.end method

.method private static createCacheDirectory()Z
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 192
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    .line 193
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 194
    const-string v0, "cache"

    const-string v1, "Unable to create webviewCache directory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 210
    :goto_1a
    return v0

    .line 197
    :cond_1b
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 206
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 208
    const/4 v0, 0x1

    goto :goto_1a

    :cond_31
    move v0, v3

    .line 210
    goto :goto_1a
.end method

.method static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;
    .registers 14
    .parameter "url"
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"
    .parameter "postIdentifier"
    .parameter "forceCache"

    .prologue
    const/4 v6, 0x0

    .line 419
    if-nez p6, :cond_9

    sget-boolean v4, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v4, :cond_9

    move-object v4, v6

    .line 468
    :goto_8
    return-object v4

    .line 423
    :cond_9
    invoke-static {p0, p4, p5}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, databaseKey:Ljava/lang/String;
    const/16 v4, 0x12f

    if-ne p1, v4, :cond_18

    .line 428
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v6

    .line 429
    goto :goto_8

    .line 434
    :cond_18
    invoke-static {p1}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {p2}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 436
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v6

    .line 437
    goto :goto_8

    .line 440
    :cond_2f
    invoke-static {p1, p2, p3}, Landroid/webkit/CacheManager;->parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    .line 441
    .local v3, ret:Landroid/webkit/CacheManager$CacheResult;
    if-nez v3, :cond_3c

    .line 444
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    :goto_3a
    move-object v4, v3

    .line 468
    goto :goto_8

    .line 446
    :cond_3c
    invoke-static {v0, v3}, Landroid/webkit/CacheManager;->setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    .line 448
    :try_start_3f
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_48} :catch_4b

    .line 465
    :goto_48
    iput-object p3, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    goto :goto_3a

    .line 449
    :catch_4b
    move-exception v4

    move-object v1, v4

    .line 452
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 454
    :try_start_53
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_5c} :catch_5d

    goto :goto_48

    .line 455
    :catch_5d
    move-exception v4

    move-object v2, v4

    .local v2, e2:Ljava/io/FileNotFoundException;
    move-object v4, v6

    .line 458
    goto :goto_8

    .end local v2           #e2:Ljava/io/FileNotFoundException;
    :cond_61
    move-object v4, v6

    .line 462
    goto :goto_8
.end method

.method public static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;Z)Landroid/webkit/CacheManager$CacheResult;
    .registers 12
    .parameter "url"
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"
    .parameter "forceCache"

    .prologue
    .line 412
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/webkit/CacheManager;->createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    return-object v0
.end method

.method static disableTransaction()Z
    .registers 1

    .prologue
    .line 273
    invoke-static {}, Landroid/webkit/CacheManager;->DecRefCount()V

    .line 274
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-nez v0, :cond_e

    .line 275
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static enableTransaction()Z
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 262
    invoke-static {}, Landroid/webkit/CacheManager;->IncRefCount()V

    .line 263
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-ne v0, v1, :cond_f

    .line 264
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move v0, v1

    .line 267
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static endCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method static endTransaction()Z
    .registers 3

    .prologue
    .line 290
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    move-result v0

    .line 291
    .local v0, ret:Z
    sget v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_15

    .line 292
    const/4 v1, 0x0

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 293
    invoke-static {}, Landroid/webkit/CacheManager;->trimCacheIfNeeded()V

    .line 295
    :cond_15
    return v0
.end method

.method static getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 13
    .parameter "url"
    .parameter "postIdentifier"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 342
    sget-boolean v4, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v4, :cond_9

    move-object v4, v8

    .line 395
    :goto_8
    return-object v4

    .line 346
    :cond_9
    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, databaseKey:Ljava/lang/String;
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v2

    .line 349
    .local v2, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v2, :cond_5f

    .line 350
    iget-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2a

    .line 351
    iget v4, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v4}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 353
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v8

    .line 354
    goto :goto_8

    .line 357
    :cond_2a
    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    .local v3, src:Ljava/io/File;
    :try_start_33
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3a} :catch_56

    .line 376
    .end local v3           #src:Ljava/io/File;
    :cond_3a
    if-eqz p3, :cond_77

    iget-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_77

    iget-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_77

    .line 378
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v4, :cond_61

    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-nez v4, :cond_61

    move-object v4, v8

    .line 379
    goto :goto_8

    .line 362
    .restart local v3       #src:Ljava/io/File;
    :catch_56
    move-exception v4

    move-object v1, v4

    .line 365
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v8

    .line 366
    goto :goto_8

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #src:Ljava/io/File;
    :cond_5f
    move-object v4, v8

    .line 370
    goto :goto_8

    .line 383
    :cond_61
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-eqz v4, :cond_6c

    .line 384
    const-string v4, "if-none-match"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_6c
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-eqz v4, :cond_77

    .line 387
    const-string v4, "if-modified-since"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    move-object v4, v2

    .line 395
    goto :goto_8
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .registers 1

    .prologue
    .line 220
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method private static getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5
    .parameter "url"
    .parameter "postIdentifier"

    .prologue
    .line 618
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    move-object v0, p0

    .line 619
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method static init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    sput-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "webviewCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    .line 180
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    if-eqz v0, :cond_28

    .line 181
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    .line 184
    :cond_28
    return-void
.end method

.method private static parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .registers 14
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"

    .prologue
    .line 720
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v0

    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 p0, 0x0

    .line 872
    .end local p0
    .end local p1
    .end local p2
    :goto_b
    return-object p0

    .line 729
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_c
    const-string/jumbo v0, "text/cache-manifest"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x0

    goto :goto_b

    .line 732
    :cond_17
    new-instance v2, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v2}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .line 733
    .local v2, ret:Landroid/webkit/CacheManager$CacheResult;
    iput p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 735
    invoke-virtual {p1}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object p0

    .line 736
    .local p0, location:Ljava/lang/String;
    if-eqz p0, :cond_26

    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 738
    :cond_26
    const-wide/16 v0, -0x1

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 739
    invoke-virtual {p1}, Landroid/net/http/Headers;->getExpires()Ljava/lang/String;

    move-result-object p0

    .end local p0           #location:Ljava/lang/String;
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 740
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    if-eqz p0, :cond_3c

    .line 742
    :try_start_34
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_3c} :catch_89

    .line 755
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object p0

    .line 756
    .local p0, contentDisposition:Ljava/lang/String;
    if-eqz p0, :cond_44

    .line 757
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 760
    :cond_44
    invoke-virtual {p1}, Landroid/net/http/Headers;->getXPermittedCrossDomainPolicies()Ljava/lang/String;

    move-result-object p0

    .line 761
    .local p0, crossDomain:Ljava/lang/String;
    if-eqz p0, :cond_4c

    .line 762
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    .line 767
    :cond_4c
    invoke-virtual {p1}, Landroid/net/http/Headers;->getLastModified()Ljava/lang/String;

    move-result-object p0

    .line 768
    .local p0, lastModified:Ljava/lang/String;
    if-eqz p0, :cond_5a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5a

    .line 769
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 772
    :cond_5a
    invoke-virtual {p1}, Landroid/net/http/Headers;->getEtag()Ljava/lang/String;

    move-result-object p0

    .line 773
    .local p0, etag:Ljava/lang/String;
    if-eqz p0, :cond_68

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_68

    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 775
    :cond_68
    invoke-virtual {p1}, Landroid/net/http/Headers;->getCacheControl()Ljava/lang/String;

    move-result-object p0

    .line 776
    .local p0, cacheControl:Ljava/lang/String;
    if-eqz p0, :cond_146

    .line 777
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .end local p0           #cacheControl:Ljava/lang/String;
    const-string v0, "[ ,;]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 778
    .local p0, controls:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_7a
    array-length v0, p0

    if-ge v1, v0, :cond_146

    .line 779
    const-string v0, "no-store"

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 780
    const/4 p0, 0x0

    goto :goto_b

    .line 743
    .end local v1           #i:I
    .end local p0           #controls:[Ljava/lang/String;
    :catch_89
    move-exception p0

    .line 745
    .local p0, ex:Ljava/lang/IllegalArgumentException;
    const-string p0, "-1"

    .end local p0           #ex:Ljava/lang/IllegalArgumentException;
    iget-object v0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9e

    const-string p0, "0"

    iget-object v0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a3

    .line 748
    :cond_9e
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_3c

    .line 750
    :cond_a3
    const-string p0, "cache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal expires: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 786
    .restart local v1       #i:I
    .local p0, controls:[Ljava/lang/String;
    :cond_bf
    const-string v0, "no-cache"

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 787
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 778
    :cond_cd
    :goto_cd
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_7a

    .line 788
    :cond_d1
    aget-object v0, p0, v1

    const-string v3, "max-age"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 789
    aget-object v0, p0, v1

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 790
    .local v0, separator:I
    if-gez v0, :cond_1e2

    .line 791
    aget-object v0, p0, v1

    .end local v0           #separator:I
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .restart local v0       #separator:I
    move v6, v0

    .line 793
    .end local v0           #separator:I
    .local v6, separator:I
    :goto_ee
    if-lez v6, :cond_cd

    .line 794
    aget-object v0, p0, v1

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 796
    .local v3, s:Ljava/lang/String;
    :try_start_f8
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 797
    .local v4, sec:J
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-ltz v0, :cond_cd

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    add-long/2addr v4, v7

    iput-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_10c
    .catch Ljava/lang/NumberFormatException; {:try_start_f8 .. :try_end_10c} :catch_10d

    goto :goto_cd

    .line 801
    .end local v4           #sec:J
    :catch_10d
    move-exception v0

    .line 802
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v0, "1d"

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .end local v3           #s:Ljava/lang/String;
    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_cd

    .line 806
    .restart local v3       #s:Ljava/lang/String;
    :cond_121
    const-string v0, "cache"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #s:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in parseHeaders for max-age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v1

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_cd

    .line 820
    .end local v1           #i:I
    .end local v6           #separator:I
    .end local p0           #controls:[Ljava/lang/String;
    :cond_146
    const-string p0, "no-cache"

    invoke-virtual {p1}, Landroid/net/http/Headers;->getPragma()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_156

    .line 821
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 826
    :cond_156
    iget-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_16b

    .line 827
    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x12d

    if-ne p0, p1, :cond_16e

    .line 830
    const-wide p0, 0x7fffffffffffffffL

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .end local p2
    :cond_16b
    :goto_16b
    move-object p0, v2

    .line 872
    goto/16 :goto_b

    .line 831
    .restart local p2
    :cond_16e
    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x12e

    if-eq p0, p1, :cond_17a

    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x133

    if-ne p0, p1, :cond_17f

    .line 833
    :cond_17a
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16b

    .line 834
    :cond_17f
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez p0, :cond_19c

    .line 841
    const-string/jumbo p0, "text/html"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_197

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long/2addr p0, v0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16b

    .line 846
    :cond_197
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16b

    .line 855
    :cond_19c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long p1, p0, v0

    .line 857
    .end local p2
    .local p1, lastmod:J
    :try_start_1a5
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J
    :try_end_1aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a5 .. :try_end_1aa} :catch_1c2

    move-result-wide p0

    .end local p1           #lastmod:J
    .local p0, lastmod:J
    move-wide v0, p0

    .line 861
    .end local p0           #lastmod:J
    .local v0, lastmod:J
    :goto_1ac
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 862
    .local p0, difference:J
    const-wide/16 v3, 0x0

    cmp-long p2, p0, v3

    if-lez p2, :cond_1df

    .line 863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .end local v0           #lastmod:J
    const-wide/16 v3, 0x5

    div-long/2addr p0, v3

    .end local p0           #difference:J
    add-long/2addr p0, v0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16b

    .line 858
    .restart local p1       #lastmod:J
    :catch_1c2
    move-exception p0

    .line 859
    .local p0, ex:Ljava/lang/IllegalArgumentException;
    const-string p0, "cache"

    .end local p0           #ex:Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal lastModified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, p1

    .end local p1           #lastmod:J
    .restart local v0       #lastmod:J
    goto :goto_1ac

    .line 867
    .local p0, difference:J
    :cond_1df
    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_16b

    .local v0, separator:I
    .restart local v1       #i:I
    .local p0, controls:[Ljava/lang/String;
    .local p1, headers:Landroid/net/http/Headers;
    .restart local p2
    :cond_1e2
    move v6, v0

    .end local v0           #separator:I
    .restart local v6       #separator:I
    goto/16 :goto_ee
.end method

.method static removeAllCacheFiles()Z
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 530
    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    if-nez v1, :cond_9

    .line 533
    sput-boolean v3, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    move v1, v3

    .line 560
    :goto_8
    return v1

    .line 537
    :cond_9
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 540
    new-instance v0, Landroid/webkit/CacheManager$1;

    invoke-direct {v0}, Landroid/webkit/CacheManager$1;-><init>()V

    .line 559
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v1, v3

    .line 560
    goto :goto_8
.end method

.method static removeUrlFromCache(Ljava/lang/String;)V
    .registers 4
    .parameter "Url"

    .prologue
    .line 302
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, databaseKey:Ljava/lang/String;
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method static saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V
    .registers 11
    .parameter "url"
    .parameter "postIdentifier"
    .parameter "cacheRet"

    .prologue
    const-wide/16 v5, 0x0

    .line 482
    :try_start_2
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_10

    .line 487
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    .line 511
    :cond_f
    :goto_f
    return-void

    .line 483
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 484
    .local v0, e:Ljava/io/IOException;
    goto :goto_f

    .line 492
    .end local v0           #e:Ljava/io/IOException;
    :cond_13
    iget v2, p3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v2}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v1

    .line 493
    .local v1, redirect:Z
    if-eqz v1, :cond_21

    .line 495
    iput-wide v5, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 496
    const-string v2, ""

    iput-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 498
    :cond_21
    if-nez v1, :cond_29

    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_4f

    :cond_29
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 500
    const-string v2, "cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delete failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_4f
    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_f

    .line 506
    sget-object v2, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/webkit/WebViewDatabase;->addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_f
.end method

.method public static saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 4
    .parameter "url"
    .parameter "cacheRet"

    .prologue
    .line 476
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    .line 477
    return-void
.end method

.method static setCacheDisabled(Z)V
    .registers 2
    .parameter "disabled"

    .prologue
    .line 229
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-ne p0, v0, :cond_5

    .line 236
    :cond_4
    :goto_4
    return-void

    .line 232
    :cond_5
    sput-boolean p0, Landroid/webkit/CacheManager;->mDisabled:Z

    .line 233
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v0, :cond_4

    .line 234
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    goto :goto_4
.end method

.method private static setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 13
    .parameter "url"
    .parameter "cacheRet"

    .prologue
    const/16 v10, 0x8

    .line 632
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 633
    .local v2, hashCode:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 634
    .local v5, ret:Ljava/lang/StringBuffer;
    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 635
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 638
    .local v1, file:Ljava/io/File;
    const/4 v0, 0x1

    .line 645
    .local v0, checkOldPath:Z
    :goto_1a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 646
    if-eqz v0, :cond_4c

    .line 647
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6, p0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    .line 648
    .local v3, oldResult:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v3, :cond_4b

    iget-wide v6, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4b

    .line 649
    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 650
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 665
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_3c
    :goto_3c
    iput-object v4, p1, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 666
    iput-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    .line 687
    return-void

    .line 652
    .restart local v3       #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_41
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 653
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 655
    .restart local v1       #file:Ljava/io/File;
    goto :goto_3c

    .line 657
    :cond_4b
    const/4 v0, 0x0

    .line 659
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_4c
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #ret:Ljava/lang/StringBuffer;
    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 660
    .restart local v5       #ret:Ljava/lang/StringBuffer;
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 661
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 662
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #file:Ljava/io/File;
    goto :goto_1a
.end method

.method public static startCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method static startTransaction()Z
    .registers 1

    .prologue
    .line 284
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move-result v0

    return v0
.end method

.method static trimCacheIfNeeded()V
    .registers 12

    .prologue
    const-string v11, "cache"

    const-string v10, " delete failed."

    .line 571
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getCacheTotalSize()J

    move-result-wide v6

    sget-wide v8, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_59

    .line 572
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    sget-wide v7, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebViewDatabase;->trimCache(J)Ljava/util/List;

    move-result-object v3

    .line 573
    .local v3, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 574
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v4, :cond_51

    .line 575
    new-instance v0, Ljava/io/File;

    sget-object v7, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 576
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 577
    const-string v6, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delete failed."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 581
    .end local v0           #f:Ljava/io/File;
    :cond_51
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getAllCacheFileNames()Ljava/util/List;

    move-result-object v1

    .line 582
    .local v1, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_5a

    .line 601
    .end local v1           #fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #size:I
    :cond_59
    return-void

    .line 583
    .restart local v1       #fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #size:I
    :cond_5a
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    new-instance v7, Landroid/webkit/CacheManager$2;

    invoke-direct {v7, v1}, Landroid/webkit/CacheManager$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, toDelete:[Ljava/lang/String;
    if-eqz v5, :cond_59

    .line 593
    array-length v4, v5

    .line 594
    const/4 v2, 0x0

    :goto_69
    if-ge v2, v4, :cond_59

    .line 595
    new-instance v0, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    aget-object v7, v5, v2

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 596
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_96

    .line 597
    const-string v6, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delete failed."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_69
.end method
