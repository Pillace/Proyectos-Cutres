.class public final Lcom/broadcom/bt/service/fm/FmTransmitter;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmTransmitter$1;,
        Lcom/broadcom/bt/service/fm/FmTransmitter$FmBroadcastReceiver;,
        Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_BEST_CHANNEL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_BEST_CHANNEL"

.field public static final ACTION_ON_CHANNEL_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_CHANNEL_STATUS"

.field public static final ACTION_ON_DISABLE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_DISABLE"

.field public static final ACTION_ON_ENABLE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_ENABLE"

.field public static final ACTION_ON_SET_TX_FREQ:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SET_TX_FREQ"

.field public static final ACTION_ON_SET_TX_PWR:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SET_TX_PWR"

.field public static final ACTION_ON_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_STATUS"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.fm.action."

#the value of this static final field might be set in the static constructor
.field private static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AUDIO_MODE_MONO:I = 0x0

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_PATH_ADC:I = 0x1

.field public static final AUDIO_PATH_HCI:I = 0x2

.field public static final AUDIO_PATH_I2S:I = 0x0

.field public static final AUDIO_VOLUME_HI:I = 0x0

.field public static final AUDIO_VOLUME_LOW:I = 0x2

.field public static final AUDIO_VOLUME_MED:I = 0x1

.field public static final AUDIO_VOLUME_WEAK:I = 0x3

.field public static final BANDWIDTH_100K:I = 0x1

.field public static final BANDWIDTH_200K:I = 0x2

.field public static final BANDWIDTH_50K:I = 0x0

.field public static final CHIRP_MODE_AUTO:I = 0x2

.field public static final CHIRP_MODE_MANUAL:I = 0x1

.field public static final CHIRP_MODE_OFF:I = 0x0

.field private static final D:Z = false

.field public static final EXTRA_CHANNEL_STATUS:Ljava/lang/String; = "CHANNEL_STATUS"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "FREQ"

.field public static final EXTRA_NUM_CHNL:Ljava/lang/String; = "NUM_CHNL"

.field public static final EXTRA_PWR:Ljava/lang/String; = "PWR"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_STATUS_TYPE:Ljava/lang/String; = "STATUS_TYPE"

.field public static final FM_TRANSMITTER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_TRANSMITTER"

.field public static final MUTE_ALL:I = 0x0

.field public static final MUTE_L:I = 0x2

.field public static final MUTE_R:I = 0x3

.field public static final MUTE_UNMUTE:I = 0x1

.field public static final NOTIFY_AUD_LVL_BIT:I = 0x2

.field public static final NOTIFY_NONE:I = 0x0

.field public static final NOTIFY_RSSI_BIT:I = 0x1

.field public static final PREEMPHASIS_50US:I = 0x1

.field public static final PREEMPHASIS_75US:I = 0x2

.field public static final PREEMPHASIS_OFF:I = 0x0

.field public static final REGION_JAPAN:I = 0x1

.field public static final REGION_US_EUROPE:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_fm_transmitter_service"

.field public static final STATUS_BUSY:I = 0x1

.field public static final STATUS_ERR_FLAG_TOUT:I = 0x4

.field public static final STATUS_ERR_FREQ:I = 0x3

.field public static final STATUS_ERR_GENERIC:I = 0x5

.field public static final STATUS_ERR_VCMD:I = 0x2

.field public static final STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmTransmitter"

.field private static final V:Z


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

.field private mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const-string v0, "com.broadcom.bt.app.fm.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/fm/FmTransmitter;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 425
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 69
    sget v0, Lcom/broadcom/bt/service/fm/FmTransmitter;->ACTION_PREFIX_LENGTH:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 521
    if-nez p0, :cond_7

    .line 522
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 525
    .restart local p0
    :cond_7
    const-string v0, "com.broadcom.bt.app.fm.action.ON_BEST_CHANNEL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v0, "com.broadcom.bt.app.fm.action.ON_CHANNEL_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v0, "com.broadcom.bt.app.fm.action.ON_DISABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v0, "com.broadcom.bt.app.fm.action.ON_ENABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SET_TX_FREQ"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SET_TX_PWR"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v0, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 6
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 410
    const-string v2, "bluetooth_fm_transmitter_service"

    invoke-static {p0, v2}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 411
    const-string v2, "FmTransmitter"

    const-string v3, "Unable to get FMTransmitter proxy: service is not enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v2, 0x0

    .line 421
    :goto_10
    return v2

    .line 414
    :cond_11
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitter;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;-><init>()V

    .line 415
    .local v0, p:Lcom/broadcom/bt/service/fm/FmTransmitter;
    const-string v2, "com.broadcom.bt.app.system"

    const-string v3, "com.broadcom.bt.app.system.FmTxService"

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .local v1, result:Z
    move v2, v1

    .line 421
    goto :goto_10
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .registers 5

    .prologue
    .line 1035
    monitor-enter p0

    const/4 v1, 0x5

    .line 1038
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->abortScanForBestChannel()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1043
    :goto_8
    monitor-exit p0

    return v1

    .line 1039
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1040
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string v3, "abortScanForBestChannel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 1035
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized disableFmTransmitter()I
    .registers 6

    .prologue
    .line 648
    monitor-enter p0

    const/4 v1, 0x5

    .line 651
    .local v1, returnCode:I
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v3}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->disableFmTransmitter()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_b

    move-result v1

    move v2, v1

    .line 656
    .end local v1           #returnCode:I
    .local v2, returnCode:I
    :goto_9
    monitor-exit p0

    return v2

    .line 652
    .end local v2           #returnCode:I
    .restart local v1       #returnCode:I
    :catch_b
    move-exception v3

    move-object v0, v3

    .line 653
    .local v0, e:Landroid/os/RemoteException;
    :try_start_d
    const-string v3, "FmTransmitter"

    const-string v4, "disableFmTransmitter() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_16

    move v2, v1

    .line 654
    .end local v1           #returnCode:I
    .restart local v2       #returnCode:I
    goto :goto_9

    .line 648
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #returnCode:I
    .restart local v1       #returnCode:I
    :catchall_16
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized enableFmTransmitter()I
    .registers 5

    .prologue
    .line 620
    monitor-enter p0

    const/4 v1, 0x0

    .line 623
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->enableFmTransmitter()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 631
    :goto_8
    monitor-exit p0

    return v1

    .line 627
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 628
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string v3, "enableFmTransmitter() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 620
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 1128
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 1129
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 557
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    if-eqz v1, :cond_8

    .line 558
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 567
    :cond_8
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_29

    if-eqz v1, :cond_1a

    .line 569
    :try_start_10
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_29
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_1f

    .line 573
    :goto_17
    const/4 v1, 0x0

    :try_start_18
    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    .line 576
    :cond_1a
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_29

    .line 577
    monitor-exit p0

    return-void

    .line 570
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 571
    .local v0, t:Ljava/lang/Throwable;
    :try_start_21
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_29

    goto :goto_17

    .line 557
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRadioIsOn()Z
    .registers 5

    .prologue
    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, returnStatus:Z
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->getRadioIsOn()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 599
    :goto_7
    return v1

    .line 596
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 597
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "getRadioIsOn() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 437
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    .line 438
    const/4 v1, 0x1

    .line 441
    :goto_7
    return v1

    .line 439
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 440
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to initialize BluetoothFMTX proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public declared-synchronized muteAudio(I)I
    .registers 6
    .parameter "mute"

    .prologue
    .line 941
    monitor-enter p0

    const/4 v1, 0x5

    .line 944
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->muteAudio(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 949
    :goto_8
    monitor-exit p0

    return v1

    .line 945
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 946
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 941
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 458
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_5
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    .line 459
    monitor-exit p0

    return-void

    .line 458
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .registers 8
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 474
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 498
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    if-nez v1, :cond_16

    .line 499
    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitter;Lcom/broadcom/bt/service/fm/FmTransmitter$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_22

    .line 506
    :try_start_f
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_22
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 512
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 507
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 508
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1a
    const-string v1, "FmTransmitter"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_16

    .line 474
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;ZI)V
    .registers 7
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 467
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/fm/FmTransmitter;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 469
    monitor-exit p0

    return-void

    .line 467
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .registers 7
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    .line 1008
    monitor-enter p0

    const/4 v1, 0x5

    .line 1011
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->scanForBestChannel(IZ)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1016
    :goto_8
    monitor-exit p0

    return v1

    .line 1012
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1013
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "scanForBestChannel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1008
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .registers 6
    .parameter "audioMode"

    .prologue
    .line 766
    monitor-enter p0

    const/4 v1, 0x5

    .line 769
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setAudioMode(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 774
    :goto_8
    monitor-exit p0

    return v1

    .line 770
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 771
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 766
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .registers 6
    .parameter "audioPath"

    .prologue
    .line 912
    monitor-enter p0

    const/4 v1, 0x5

    .line 915
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setAudioPath(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 920
    :goto_8
    monitor-exit p0

    return v1

    .line 916
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 917
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 912
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setBandwidth(I)I
    .registers 6
    .parameter "bandwidth"

    .prologue
    .line 854
    monitor-enter p0

    const/4 v1, 0x5

    .line 857
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setBandwidth(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 862
    :goto_8
    monitor-exit p0

    return v1

    .line 858
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 859
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setBandwidth() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 854
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setInterferenceNotif(I)I
    .registers 6
    .parameter "notifBitmask"

    .prologue
    .line 974
    monitor-enter p0

    const/4 v1, 0x5

    .line 977
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setInterferenceNotif(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 982
    :goto_8
    monitor-exit p0

    return v1

    .line 978
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 979
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setInterferenceNotif() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 974
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPreemphasis(I)I
    .registers 6
    .parameter "preemph"

    .prologue
    .line 883
    monitor-enter p0

    const/4 v1, 0x5

    .line 886
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setPreemphasis(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 891
    :goto_8
    monitor-exit p0

    return v1

    .line 887
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 888
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPreemphasis() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 883
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPwrLevel(I)I
    .registers 6
    .parameter "dbGain"

    .prologue
    .line 737
    monitor-enter p0

    const/4 v1, 0x5

    .line 740
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setPwrLevel(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 745
    :goto_8
    monitor-exit p0

    return v1

    .line 741
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPwrLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 737
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRegion(I)I
    .registers 6
    .parameter "region"

    .prologue
    .line 825
    monitor-enter p0

    const/4 v1, 0x5

    .line 828
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setRegion(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 833
    :goto_8
    monitor-exit p0

    return v1

    .line 829
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 830
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 825
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxFrequency(I)I
    .registers 6
    .parameter "frequency"

    .prologue
    .line 708
    monitor-enter p0

    const/4 v1, 0x5

    .line 711
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setTxFrequency(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 716
    :goto_8
    monitor-exit p0

    return v1

    .line 712
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setTxFrequency() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 708
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxPower(Z)I
    .registers 6
    .parameter "powerOn"

    .prologue
    .line 676
    monitor-enter p0

    const/4 v1, 0x5

    .line 679
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setTxPower(Z)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 684
    :goto_8
    monitor-exit p0

    return v1

    .line 680
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 681
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setTxPower() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 676
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setVolume(I)I
    .registers 6
    .parameter "volume"

    .prologue
    .line 796
    monitor-enter p0

    const/4 v1, 0x5

    .line 799
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setVolume(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 804
    :goto_8
    monitor-exit p0

    return v1

    .line 800
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 801
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 796
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .registers 22
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    .line 1089
    monitor-enter p0

    const/4 v11, 0x5

    .line 1092
    .local v11, returnCode:I
    :try_start_2
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->startAudioChirp(ZIIIIIIII)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_19

    move-result v11

    .line 1098
    :goto_17
    monitor-exit p0

    return v11

    .line 1094
    :catch_19
    move-exception v0

    move-object v10, v0

    .line 1095
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1b
    const-string v0, "FmTransmitter"

    const-string/jumbo v1, "startAudioChirp() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_24

    goto :goto_17

    .line 1089
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .registers 5

    .prologue
    .line 1116
    monitor-enter p0

    const/4 v1, 0x5

    .line 1119
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->stopAudioChirp()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1124
    :goto_8
    monitor-exit p0

    return v1

    .line 1120
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1121
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "stopAudioChirp() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1116
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 4

    .prologue
    .line 540
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_17

    .line 549
    :try_start_4
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_17
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_d

    .line 554
    :goto_b
    monitor-exit p0

    return-void

    .line 550
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 551
    .local v0, t:Ljava/lang/Throwable;
    :try_start_f
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_17

    goto :goto_b

    .line 540
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method
