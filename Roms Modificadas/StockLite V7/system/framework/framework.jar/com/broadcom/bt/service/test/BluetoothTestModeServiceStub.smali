.class public final Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;
.super Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;
.source "BluetoothTestModeServiceStub.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothTestModeServiceStub"


# instance fields
.field private mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;-><init>()V

    .line 40
    const-string v0, "bluetooth_test"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    iput-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    .line 42
    return-void
.end method

.method private native setTestModeNative(I)V
.end method


# virtual methods
.method public SendBtldApiCmd(II[B)I
    .registers 6
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_d

    .line 231
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, -0x1

    .line 234
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->SendBtldApiCmd(II[B)I

    move-result v0

    goto :goto_c
.end method

.method public Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    .registers 4
    .parameter "txRxTestParam"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_d

    .line 211
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, -0x1

    .line 215
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I

    move-result v0

    goto :goto_c
.end method

.method public declared-synchronized connectTestMode()I
    .registers 3

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 63
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 64
    const/4 v0, -0x1

    .line 66
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->connectTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 62
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 4
    .parameter "callback"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 71
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 72
    const/4 v0, -0x1

    .line 74
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 70
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableBtSnoop(I)I
    .registers 5
    .parameter "enable"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_20

    .line 158
    const-string v0, "BluetoothTestModeServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth BtSnoop enable Mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_27

    .line 159
    const/4 v0, -0x1

    .line 161
    :goto_1e
    monitor-exit p0

    return v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enableBtSnoop(I)I
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_27

    move-result v0

    goto :goto_1e

    .line 157
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enterAudioLoopbackMode()I
    .registers 3

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 113
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 114
    const/4 v0, -0x1

    .line 116
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterAudioLoopbackMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 112
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enterDUTMode()I
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_d

    .line 195
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, -0x1

    .line 198
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterDUTMode()I

    move-result v0

    goto :goto_c
.end method

.method public declared-synchronized enterTestMode()I
    .registers 3

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 82
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 83
    const/4 v0, -0x1

    .line 85
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 81
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized exitAudioLoopbackMode()I
    .registers 3

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 124
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 125
    const/4 v0, -0x1

    .line 128
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitAudioLoopbackMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 123
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized exitCurrentTestMode()I
    .registers 3

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 185
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 186
    const/4 v0, -0x1

    .line 188
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitCurrentTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 184
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public exitDUTMode()I
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_d

    .line 203
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, -0x1

    .line 206
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitDUTMode()I

    move-result v0

    goto :goto_c
.end method

.method public declared-synchronized exitTestMode()I
    .registers 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 93
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 94
    const/4 v0, -0x1

    .line 97
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 92
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBtSnoopState()I
    .registers 3

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 171
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth BtSnoop get state "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 172
    const/4 v0, -0x1

    .line 174
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->getBtSnoopState()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 170
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTestMode()I
    .registers 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 102
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 103
    const/4 v0, -0x1

    .line 105
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->getTestMode()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 101
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 3
    .parameter "cb"

    .prologue
    .line 49
    monitor-enter p0

    if-eqz p1, :cond_f

    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-eqz v0, :cond_f

    .line 50
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 52
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_d

    .line 49
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTraceLevel(BB)I
    .registers 5
    .parameter "layer_id"
    .parameter "level"

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-nez v0, :cond_f

    .line 143
    const-string v0, "BluetoothTestModeServiceStub"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 144
    const/4 v0, -0x1

    .line 146
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTraceLevel(BB)I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 142
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    if-eqz v0, :cond_a

    .line 57
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;->mSvc:Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->unregisterBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 59
    :cond_a
    monitor-exit p0

    return-void

    .line 56
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method