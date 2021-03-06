.class public Landroid/drm/mobile2/DrmRoapManager;
.super Ljava/lang/Object;
.source "DrmRoapManager.java"

# interfaces
.implements Landroid/drm/mobile2/HttpConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/DrmRoapManager$DataHandler;,
        Landroid/drm/mobile2/DrmRoapManager$HttpThread;
    }
.end annotation


# static fields
.field public static final DRM_RINGTONE_ALERT:Ljava/lang/String; = "DrmRingtoneExpiry"


# instance fields
.field public RTAlarmID:I

.field public RTAlarmPopup:I

.field public RTAlarmtype:I

.field public RTFileName:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private httpThread:Ljava/lang/Thread;

.field public omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 375
    :try_start_0
    const-string v1, "drm2_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 379
    :goto_5
    return-void

    .line 376
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 377
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libdrm2_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5
.end method

.method constructor <init>(Landroid/drm/mobile2/OMADRMManager;)V
    .registers 4
    .parameter "drmManager"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 29
    iput-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->httpThread:Ljava/lang/Thread;

    .line 31
    iput-object p1, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 41
    invoke-direct {p0}, Landroid/drm/mobile2/DrmRoapManager;->roapInit()V

    .line 42
    return-void
.end method

.method private native Drm2DownloadCancel()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method private native DrmStore2Ro(Ljava/lang/String;ILjava/lang/String;J)Z
.end method

.method private native DrmStore2RoTrigger(I[B)Z
.end method

.method static synthetic access$000(Landroid/drm/mobile2/DrmRoapManager;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private native dcfHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
.end method

.method private native drm2QueryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private handlenativecallback(IIILjava/lang/Object;J)V
    .registers 15
    .parameter "what"
    .parameter "ext1"
    .parameter "ext2"
    .parameter "object"
    .parameter "ext3"

    .prologue
    const/4 v6, 0x1

    const-string v7, "mOnDownloadListener is NOT SET"

    const-string v5, "ROAP LISTENER is NOT SET"

    .line 268
    packed-switch p1, :pswitch_data_ec

    .line 337
    :pswitch_8
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "Default case:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local p4
    :goto_f
    return-void

    .line 270
    .restart local p4
    :pswitch_10
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "Request rcvd for Http create session"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request rcvd for Http create session obj is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object v0, p4

    check-cast v0, Landroid/drm/mobile2/HttpConfig;

    move-object v2, v0

    .line 276
    .local v2, config:Landroid/drm/mobile2/HttpConfig;
    invoke-direct {p0, p4, p1}, Landroid/drm/mobile2/DrmRoapManager;->sendHttpRequest(Ljava/lang/Object;I)V

    goto :goto_f

    .line 280
    .end local v2           #config:Landroid/drm/mobile2/HttpConfig;
    :pswitch_3b
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "DRM_ROAP_PROGRESS_NOTIFY "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    check-cast p4, [I

    .end local p4
    move-object v0, p4

    check-cast v0, [I

    move-object v1, v0

    .line 285
    .local v1, a:[I
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    if-eqz v3, :cond_5e

    .line 286
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    const/4 v4, 0x0

    aget v4, v1, v4

    aget v5, v1, v6

    const/4 v6, 0x2

    aget v6, v1, v6

    invoke-interface {v3, v4, v5, v6}, Landroid/drm/mobile2/OMADRMManager$OnRoapListener;->onRoapProgress(III)Z

    goto :goto_f

    .line 289
    :cond_5e
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "ROAP LISTENER is NOT SET"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 295
    .end local v1           #a:[I
    .restart local p4
    :pswitch_66
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    if-eqz v3, :cond_74

    .line 296
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    invoke-interface {v3, p2, p3}, Landroid/drm/mobile2/OMADRMManager$OnRoapListener;->onRoapResult(II)Z

    goto :goto_f

    .line 298
    :cond_74
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "ROAP LISTENER is NOT SET"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 304
    :pswitch_7c
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    if-eqz v3, :cond_90

    .line 305
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    check-cast p4, Ljava/lang/Long;

    .end local p4
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroid/drm/mobile2/OMADRMManager$OnRoapListener;->onRoapUserConcent(J)Z

    goto :goto_f

    .line 308
    .restart local p4
    :cond_90
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "ROAP LISTENER is NOT SET"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 314
    :pswitch_99
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    if-eqz v3, :cond_aa

    .line 315
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-interface {v3, p4, p5, p6}, Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;->onStartDownload(Ljava/lang/String;J)Z

    goto/16 :goto_f

    .line 318
    .restart local p4
    :cond_aa
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "mOnDownloadListener is NOT SET"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 323
    :pswitch_b3
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "CO_DOWNLOAD_PROGRESS:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    if-eqz v3, :cond_d4

    .line 325
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    check-cast p4, [B

    .end local p4
    check-cast p4, [B

    invoke-interface {v3, p4, p2}, Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;->onProgressDownload([BI)Z

    .line 330
    :goto_cb
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "ByteArrayOutputStream: Success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 328
    .restart local p4
    :cond_d4
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "mOnDownloadListener is NOT SET"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 333
    :pswitch_dc
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "CO_DOWNLOAD_FINISH:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    invoke-interface {v3, v6}, Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;->onStopDownload(Z)Z

    goto/16 :goto_f

    .line 268
    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_10
        :pswitch_8
        :pswitch_8
        :pswitch_7c
        :pswitch_99
        :pswitch_b3
        :pswitch_dc
        :pswitch_3b
        :pswitch_66
    .end packed-switch
.end method

.method private native roapInit()V
.end method

.method private sendHttpRequest(Ljava/lang/Object;I)V
    .registers 9
    .parameter "obj"
    .parameter "type"

    .prologue
    .line 132
    move-object v0, p1

    check-cast v0, Landroid/drm/mobile2/HttpConfig;

    move-object v1, v0

    .line 137
    .local v1, config:Landroid/drm/mobile2/HttpConfig;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Http request rcvd"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    new-instance v2, Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/drm/mobile2/DrmRoapManager$DataHandler;-><init>(Landroid/drm/mobile2/DrmRoapManager;Landroid/os/Looper;)V

    .line 147
    .local v2, datahandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/drm/mobile2/DrmRoapManager$HttpThread;

    invoke-direct {v4, p0, v1, v2}, Landroid/drm/mobile2/DrmRoapManager$HttpThread;-><init>(Landroid/drm/mobile2/DrmRoapManager;Landroid/drm/mobile2/HttpConfig;Landroid/drm/mobile2/DrmRoapManager$DataHandler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    .local v3, httpThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method


# virtual methods
.method public native Drm2GoSilentURL(Ljava/lang/String;)Z
.end method

.method public native Drm2TransactionTracking(Z)Z
.end method

.method public native ProcessHttpResponse(Landroid/drm/mobile2/DrmHttpEvent;)V
.end method

.method public native SubmitUserConsent(JZZ)V
.end method

.method public cancelRoapProcess()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Landroid/drm/mobile2/HttpManager;->closeHttpConnection()Z

    move-result v0

    .line 204
    .local v0, status:Z
    if-eqz v0, :cond_1b

    .line 205
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v2, "Client is closed succesfully.Interrupt the thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->httpThread:Ljava/lang/Thread;

    if-eqz v1, :cond_16

    .line 207
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->httpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 212
    :cond_16
    :goto_16
    invoke-direct {p0}, Landroid/drm/mobile2/DrmRoapManager;->Drm2DownloadCancel()Z

    move-result v0

    .line 214
    return v0

    .line 209
    :cond_1b
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v2, "Client is already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
    .registers 3
    .parameter "dcfFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1}, Landroid/drm/mobile2/DrmRoapManager;->dcfHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public native native_drm_init()Z
.end method

.method postCallBackfromNative(IIILjava/lang/Object;J)V
    .registers 7
    .parameter "what"
    .parameter "ext1"
    .parameter "ext2"
    .parameter "obj"
    .parameter "ext3"

    .prologue
    .line 262
    invoke-direct/range {p0 .. p6}, Landroid/drm/mobile2/DrmRoapManager;->handlenativecallback(IIILjava/lang/Object;J)V

    .line 263
    return-void
.end method

.method public processRoap(Ljava/lang/String;ILjava/lang/String;J)Z
    .registers 8
    .parameter "strRoap"
    .parameter "strRoapSize"
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    .line 220
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v1, "Inside ProcessRoap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct/range {p0 .. p5}, Landroid/drm/mobile2/DrmRoapManager;->DrmStore2Ro(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public processRoap([BI)Z
    .registers 5
    .parameter "buf"
    .parameter "size"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v1, "Inside ProcessRoap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, p2, p1}, Landroid/drm/mobile2/DrmRoapManager;->DrmStore2RoTrigger(I[B)Z

    move-result v0

    return v0
.end method

.method declared-synchronized queryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z
    .registers 4
    .parameter "file"
    .parameter "drmConInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/drm/mobile2/DrmRoapManager;->drm2QueryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
