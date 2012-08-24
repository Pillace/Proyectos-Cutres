.class public final Lcom/broadcom/bt/service/test/BluetoothTestModeService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothTestModeService.java"


# static fields
.field public static final DISABLE_AUDIOLOOPBACK:I = 0x62

.field public static final DISABLE_RX_TEST_MODE:I = 0x3

.field public static final DISABLE_TESTMODE:I = 0x0

.field public static final DISABLE_TX_TEST_MODE:I = 0x0

.field public static final ENABLE_AUDIOLOOPBACK:I = 0x61

.field public static final ENABLE_RX_TEST_MODE:I = 0x2

.field public static final ENABLE_TESTMODE:I = 0x1

.field public static final ENABLE_TX_TEST_MODE:I = 0x1

.field public static final GET_TESTMODE:I = -0x1

.field public static final SET_DUT:I = 0x11

.field public static final SET_RX_TEST:I = 0x41

.field public static final SET_TRACE_LEVEL:I = -0x10000

.field public static final SET_TX_CARRIER_FREQ:I = 0x21

.field public static final SET_TX_TEST:I = 0x31

.field public static final TAG:Ljava/lang/String; = "BluetoothTestModeService"


# instance fields
.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeData:I

.field private mTxRxParams:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 59
    invoke-static {}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->classInitNative()Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method private native SendBtldApiCmdNative(II[B)I
.end method

.method private native Set_TestNative(Ljava/lang/Object;)V
.end method

.method private static native classInitNative()Z
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native createTestModeNative()V
.end method

.method private native enableBtSnoopNative(I)V
.end method

.method private native enterDUTModeNative()V
.end method

.method private native exitDUTModeNative()V
.end method

.method private native getBtSnoopStateNative()V
.end method

.method private native initializeNativeDataNative()Z
.end method

.method private native setTestModeNative(I)V
.end method


# virtual methods
.method SendBtldApiCmd(II[B)I
    .registers 9
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    const-string v4, "BluetoothTestModeService"

    .line 351
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendBtldApiCmd(cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v1, "BluetoothTestModeService"

    const-string v2, "SendBtldApiCmd() call SendBtldApiCmd()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->SendBtldApiCmdNative(II[B)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_3a

    move-result v1

    .line 356
    :goto_39
    return v1

    .line 354
    :catch_3a
    move-exception v1

    move-object v0, v1

    .line 355
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call SendBtldApiCmdNative Failed"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    const/4 v1, -0x1

    goto :goto_39
.end method

.method Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    .registers 6
    .parameter "txRxTestParam"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 325
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Set_TX_Test() call Set_TX_TestNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->Set_TestNative(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    .line 332
    const/4 v1, 0x1

    :goto_11
    return v1

    .line 328
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 329
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call Set_TX_TestNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    const/4 v1, -0x1

    goto :goto_11
.end method

.method declared-synchronized connectTestMode()I
    .registers 5

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 101
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothTestModeService"

    const-string v3, "connectTestMode() calls createTestModeNative()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, ret_val:I
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestModeNative()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    .line 108
    :goto_e
    monitor-exit p0

    return v1

    .line 104
    .end local v1           #ret_val:I
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 105
    .local v0, e:Ljava/lang/Exception;
    :try_start_12
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call createTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b

    .line 106
    const/4 v1, -0x1

    .restart local v1       #ret_val:I
    goto :goto_e

    .line 101
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ret_val:I
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 6
    .parameter "callback"

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 116
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothTestModeService"

    const-string v3, "createTestMode() calls createTestModeNative()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I

    move-result v1

    .line 118
    .local v1, ret_val:I
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestModeNative()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_13

    .line 123
    :goto_11
    monitor-exit p0

    return v1

    .line 119
    .end local v1           #ret_val:I
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 120
    .local v0, e:Ljava/lang/Exception;
    :try_start_15
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call createTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    .line 121
    const/4 v1, -0x1

    .restart local v1       #ret_val:I
    goto :goto_11

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ret_val:I
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized enableBtSnoop(I)I
    .registers 6
    .parameter "enable"

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 262
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableBtSnoop enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enableBtSnoopNative(I)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_21

    .line 269
    const/4 v1, 0x1

    :goto_1f
    monitor-exit p0

    return v1

    .line 265
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 266
    .local v0, e:Ljava/lang/Exception;
    :try_start_23
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call enableBtSnoopNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2c

    .line 267
    const/4 v1, -0x1

    goto :goto_1f

    .line 262
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized enterAudioLoopbackMode()I
    .registers 4

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 178
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterAudioLoopbackMode() call enterAudioLoopbackModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/16 v1, 0x61

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_12

    .line 184
    const/4 v1, 0x1

    :goto_10
    monitor-exit p0

    return v1

    .line 180
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 181
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call enterTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 182
    const/4 v1, -0x1

    goto :goto_10

    .line 178
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method enterDUTMode()I
    .registers 5

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 297
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterDUTMode() call enterDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterDUTModeNative()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    .line 303
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 299
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 300
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call enterDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const/4 v1, -0x1

    goto :goto_d
.end method

.method declared-synchronized enterTestMode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "BluetoothTestModeService"

    .line 134
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterTestMode() call enterTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    move v1, v3

    .line 140
    :goto_10
    monitor-exit p0

    return v1

    .line 136
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call enterTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 138
    const/4 v1, -0x1

    goto :goto_10

    .line 134
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized exitAudioLoopbackMode()I
    .registers 4

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 193
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitAudioLoopbackMode() call exitAudioLoopbackModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/16 v1, 0x62

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_12

    .line 199
    const/4 v1, 0x1

    :goto_10
    monitor-exit p0

    return v1

    .line 195
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 196
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 197
    const/4 v1, -0x1

    goto :goto_10

    .line 193
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized exitCurrentTestMode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "BluetoothTestModeService"

    .line 241
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitCurrentTestMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    move v1, v3

    .line 247
    :goto_10
    monitor-exit p0

    return v1

    .line 243
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 244
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitCurrentTestMode() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 245
    const/4 v1, -0x1

    goto :goto_10

    .line 241
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method exitDUTMode()I
    .registers 5

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 311
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitDUTMode() call exitDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitDUTModeNative()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    .line 317
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 313
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 314
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call exitDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    const/4 v1, -0x1

    goto :goto_d
.end method

.method declared-synchronized exitTestMode()I
    .registers 4

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 149
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitTestMode() call exitTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_11

    .line 155
    const/4 v1, 0x1

    :goto_f
    monitor-exit p0

    return v1

    .line 151
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    .line 153
    const/4 v1, -0x1

    goto :goto_f

    .line 149
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 621
    return-void
.end method

.method declared-synchronized getBtSnoopState()I
    .registers 4

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 282
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    const-string v2, "getBtSnoopState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->getBtSnoopStateNative()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_10

    .line 289
    const/4 v1, 0x1

    :goto_e
    monitor-exit p0

    return v1

    .line 285
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 286
    .local v0, e:Ljava/lang/Exception;
    :try_start_12
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call getBtSnoopStateNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b

    .line 287
    const/4 v1, -0x1

    goto :goto_e

    .line 282
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "bluetooth_test"

    return-object v0
.end method

.method declared-synchronized getTestMode()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    const-string v1, "BluetoothTestModeService"

    .line 161
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "getTestMode() call setTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    .line 167
    const/4 v1, 0x1

    :goto_10
    monitor-exit p0

    return v1

    .line 163
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call setTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    move v1, v3

    .line 165
    goto :goto_10

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .registers 1

    .prologue
    .line 604
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method onBtldApiCmdInd(II[B)V
    .registers 8
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    .line 572
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBtldApiCmdInd(cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_BTLD_API_CMD_IND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, i:Landroid/content/Intent;
    const-string v1, "CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const-string v1, "PAYLOAD"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 580
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method onEnableBtSnoop(I)V
    .registers 6
    .parameter "state"

    .prologue
    .line 450
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetTestMode(state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_ENABLE_BTSNOOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method onEnterDUTMode(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 493
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnterDUTMode(status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_ENTER_DUT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, i:Landroid/content/Intent;
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method onEnterTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 407
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnterTestMode(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_ENTER_TEST_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method onExitDUTMode(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 514
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExitDUTMode(status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_EXIT_DUT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, i:Landroid/content/Intent;
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method onExitTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 428
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExitTestMode(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_EXIT_TEST_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method onGetBtSnoopState(I)V
    .registers 6
    .parameter "state"

    .prologue
    .line 472
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetTestMode(state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_GET_BTSNOOP_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method onGetTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 386
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetTestMode(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_GET_TEST_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method onSetTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 364
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetTestMode(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_SET_TEST_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method onTx_Rx_Test(II)V
    .registers 7
    .parameter "mode"
    .parameter "status"

    .prologue
    .line 535
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTX_Test(mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.test.action.ON_TX_RX_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method declared-synchronized registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 5
    .parameter "callback"

    .prologue
    const/4 v2, -0x1

    .line 79
    monitor-enter p0

    if-eqz p1, :cond_15

    :try_start_4
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_15

    .line 80
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1e

    move-result v0

    if-eqz v0, :cond_13

    .line 81
    const/4 v0, 0x0

    .line 87
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    move v0, v2

    .line 83
    goto :goto_11

    .line 86
    :cond_15
    :try_start_15
    const-string v0, "BluetoothTestModeService"

    const-string v1, "#### Call Back is NULL ####"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    move v0, v2

    .line 87
    goto :goto_11

    .line 79
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setTraceLevel(BB)I
    .registers 8
    .parameter "layer_id"
    .parameter "level"

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 221
    monitor-enter p0

    const/high16 v2, -0x1

    shl-int/lit8 v3, p1, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    and-int/lit16 v3, p2, 0xff

    or-int v1, v2, v3

    .line 222
    .local v1, set_level:I
    :try_start_10
    const-string v2, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTraceLevel( set_level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) call setTestModeNative()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_39

    .line 229
    const/4 v2, 0x1

    :goto_37
    monitor-exit p0

    return v2

    .line 225
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 226
    .local v0, e:Ljava/lang/Exception;
    :try_start_3b
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call setTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_44

    .line 227
    const/4 v2, -0x1

    goto :goto_37

    .line 221
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public start()V
    .registers 3

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->initializeNativeDataNative()Z

    move-result v0

    if-nez v0, :cond_e

    .line 608
    const-string v0, "BluetoothTestModeService"

    const-string v1, "initializeNativeDataNative() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_d
    return-void

    .line 611
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->onStateChangeEvent(Z)V

    goto :goto_d
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->cleanupNativeDataNative()V

    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->onStateChangeEvent(Z)V

    .line 617
    return-void
.end method

.method declared-synchronized unregisterBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 92
    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_c

    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 95
    :cond_c
    monitor-exit p0

    return-void

    .line 92
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
