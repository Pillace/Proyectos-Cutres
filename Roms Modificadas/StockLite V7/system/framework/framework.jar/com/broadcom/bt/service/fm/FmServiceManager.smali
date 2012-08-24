.class public Lcom/broadcom/bt/service/fm/FmServiceManager;
.super Ljava/lang/Object;
.source "FmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FmServiceManager"

.field private static _DBG:Z

.field private static mFmReceiver:Landroid/content/BroadcastReceiver;

.field private static mFmServiceWrapper:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z

.field private static mIsFactoryTest:Z

.field private static mLastFmState:I

.field private static mSystemContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    .line 47
    new-instance v0, Lcom/broadcom/bt/service/fm/FmServiceManager$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private static _registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V
    .registers 7
    .parameter "svcName"
    .parameter "svc"

    .prologue
    .line 140
    invoke-static {p0}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, isSupported:Z
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v1, :cond_a

    .line 142
    if-nez v0, :cond_a

    .line 153
    :cond_a
    if-eqz v0, :cond_1b

    .line 154
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 155
    :try_start_f
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;-><init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V

    invoke-virtual {v2, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    monitor-exit v1

    .line 159
    :cond_1b
    return-void

    .line 157
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method private static _startService(Ljava/lang/String;)V
    .registers 5
    .parameter "svcName"

    .prologue
    .line 187
    if-eqz p0, :cond_a

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 189
    :cond_a
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_e

    .line 241
    :cond_e
    :goto_e
    return-void

    .line 197
    :cond_f
    const/4 v1, 0x0

    .line 198
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 199
    :try_start_13
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 200
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_25

    .line 202
    if-nez v1, :cond_28

    .line 203
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_e

    goto :goto_e

    .line 200
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    .line 210
    :cond_28
    monitor-enter v1

    .line 211
    :try_start_29
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 214
    monitor-exit v1

    goto :goto_e

    .line 239
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v2

    .line 216
    :cond_34
    :try_start_34
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_4e

    .line 217
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_4c

    .line 223
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 226
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager;->createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    :cond_4c
    monitor-exit v1

    goto :goto_e

    .line 231
    :cond_4e
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_56

    .line 232
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 236
    :cond_56
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->init()V

    .line 237
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->start()V

    .line 239
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_34 .. :try_end_65} :catchall_31

    goto :goto_e
.end method

.method private static _stopService(Ljava/lang/String;)V
    .registers 5
    .parameter "svcName"

    .prologue
    .line 244
    if-nez p0, :cond_3

    .line 298
    :cond_2
    :goto_2
    return-void

    .line 247
    :cond_3
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_7

    .line 251
    :cond_7
    const/4 v1, 0x0

    .line 252
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 253
    :try_start_b
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 254
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1d

    .line 256
    if-nez v1, :cond_20

    .line 257
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_2

    goto :goto_2

    .line 254
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2

    .line 265
    :cond_20
    monitor-enter v1

    .line 266
    :try_start_21
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 269
    monitor-exit v1

    goto :goto_2

    .line 296
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw v2

    .line 272
    :cond_2c
    :try_start_2c
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_46

    .line 273
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_44

    .line 278
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 281
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager;->createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    :cond_44
    monitor-exit v1

    goto :goto_2

    .line 287
    :cond_46
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_4e

    .line 288
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 293
    :cond_4e
    monitor-enter v1
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_29

    .line 294
    :try_start_4f
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->stop()V

    .line 295
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_59

    .line 296
    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_29

    goto :goto_2

    .line 295
    :catchall_59
    move-exception v2

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_29
.end method

.method public static createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4
    .parameter "svcName"
    .parameter "state"

    .prologue
    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, i:Landroid/content/Intent;
    const-string v1, "fm_svc_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v1, "fm_svc_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .registers 4
    .parameter "svcName"

    .prologue
    .line 409
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 410
    :try_start_3
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    .line 411
    .local v0, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    if-nez v0, :cond_10

    const/4 v2, 0x0

    :goto_e
    monitor-exit v1

    return-object v2

    :cond_10
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    goto :goto_e

    .line 412
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public static getServiceState(Ljava/lang/String;)I
    .registers 3
    .parameter "svcName"

    .prologue
    .line 422
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    .line 423
    .local v0, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    if-nez v0, :cond_c

    .line 424
    const/4 v1, -0x1

    .line 426
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x2

    goto :goto_b

    :cond_14
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 6
    .parameter "systemContext"

    .prologue
    const-string v0, "FmServiceManager"

    .line 99
    const-class v0, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v0

    :try_start_5
    const-string v1, "FmServiceManager"

    const-string v2, "init() called "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    if-eqz v1, :cond_19

    .line 102
    const-string v1, "FmServiceManager"

    const-string v2, "Fm Service Manager already initialized.....Skipping init()..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_33

    .line 113
    :goto_17
    monitor-exit v0

    return-void

    .line 106
    :cond_19
    :try_start_19
    sput-object p0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initSettings()V

    .line 109
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->registerServices()V

    .line 110
    const/4 v1, 0x1

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    .line 111
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_33

    goto :goto_17

    .line 99
    :catchall_33
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initFmPower()V
    .registers 3

    .prologue
    const-string v2, "FmServiceManager"

    .line 116
    const-string v1, "FmServiceManager"

    const-string v1, "initFmPower()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 119
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_17

    .line 120
    const-string v1, "FmServiceManager"

    const-string v1, "Unable to initialize  FM!!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_16
    :goto_16
    return-void

    .line 122
    :cond_17
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->enableFm()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 123
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onEnabled()V

    goto :goto_16
.end method

.method private static initSettings()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "fm_svcst_init"

    const-string v4, "FmServiceManager"

    .line 164
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    if-eqz v3, :cond_61

    .line 165
    const-string v3, "FmServiceManager"

    const-string v3, "initSettings mSystemContext isn\'t null"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "fm_svcst_init"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, settingsExist:I
    if-nez v2, :cond_61

    .line 170
    const-string v3, "FmServiceManager"

    const-string v3, "*********Initializing Fm Service Settings*******"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5c

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fm_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_5a

    move v4, v6

    :goto_54
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_5a
    move v4, v5

    .line 172
    goto :goto_54

    .line 182
    :cond_5c
    const-string v3, "fm_svcst_init"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #settingsExist:I
    :cond_61
    return-void
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    .prologue
    .line 62
    const-class v0, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onDisabled()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "FmServiceManager"

    .line 359
    const-string v2, "FmServiceManager"

    const-string v2, "onDisabled()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    if-ne v2, v4, :cond_16

    .line 362
    const-string v2, "FmServiceManager"

    const-string v2, "Already STOPPED..Skipping"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_15
    return-void

    .line 366
    :cond_16
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 367
    :try_start_19
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 369
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 371
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_stopService(Ljava/lang/String;)V

    goto :goto_23

    .line 373
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_33
    move-exception v3

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_33

    throw v3

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 375
    sput v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    goto :goto_15
.end method

.method public static declared-synchronized onEnabled()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const-string v2, "FmServiceManager"

    .line 336
    const-class v2, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v2

    :try_start_6
    const-string v3, "FmServiceManager"

    const-string v4, "onEnabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mIsFactoryTest:Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1f

    if-eqz v3, :cond_13

    .line 356
    :goto_11
    monitor-exit v2

    return-void

    .line 342
    :cond_13
    :try_start_13
    sget v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    if-ne v3, v5, :cond_22

    .line 343
    const-string v3, "FmServiceManager"

    const-string v4, "Already STARTED..Skipping"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    goto :goto_11

    .line 336
    :catchall_1f
    move-exception v3

    monitor-exit v2

    throw v3

    .line 347
    :cond_22
    :try_start_22
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    .line 348
    :try_start_25
    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_startService(Ljava/lang/String;)V

    goto :goto_2f

    .line 354
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_3f
    move-exception v4

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_1f

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_42
    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 355
    const/4 v3, 0x2

    :try_start_44
    sput v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_1f

    goto :goto_11
.end method

.method public static onFmServiceStateChanged(Ljava/lang/String;I)V
    .registers 7
    .parameter "svcName"
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 305
    :try_start_5
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 306
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_17

    .line 308
    if-nez v1, :cond_1a

    .line 309
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_16

    .line 333
    :cond_16
    :goto_16
    return-void

    .line 306
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2

    .line 317
    :cond_1a
    monitor-enter v1

    .line 318
    const/4 v2, 0x2

    if-ne v2, p1, :cond_27

    .line 319
    const/4 v2, 0x1

    :try_start_1f
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 332
    :cond_22
    :goto_22
    monitor-exit v1

    goto :goto_16

    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v2

    .line 320
    :cond_27
    if-ne v4, p1, :cond_22

    .line 321
    const/4 v2, 0x0

    :try_start_2a
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_24

    .line 324
    :try_start_2d
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 325
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->finish()V
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_24
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3a} :catch_3b

    goto :goto_22

    .line 328
    :catch_3b
    move-exception v2

    goto :goto_22
.end method

.method private static registerServices()V
    .registers 3

    .prologue
    .line 70
    const-string v0, "bluetooth_fm_receiver_service"

    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverService;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 72
    const-string v0, "bluetooth_fm_transmitter_service"

    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 74
    return-void
.end method

.method public static shutdownFmPower()V
    .registers 3

    .prologue
    const-string v2, "FmServiceManager"

    .line 128
    const-string v1, "FmServiceManager"

    const-string/jumbo v1, "shutDownFmPower()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 131
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_18

    .line 132
    const-string v1, "FmServiceManager"

    const-string v1, "Unable to shutdown FM!!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_17
    :goto_17
    return-void

    .line 134
    :cond_18
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->disableFm()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 135
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onDisabled()V

    goto :goto_17
.end method
