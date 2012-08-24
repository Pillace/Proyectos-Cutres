.class public Lcom/broadcom/bt/service/opp/OppService;
.super Lcom/broadcom/bt/service/opp/IOppService$Stub;
.source "OppService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppService"

.field private static final V:Z

.field private static mRefs:I


# instance fields
.field private isFinished:Z

.field private mObexServiceNativeData:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->V:Z

    sput-boolean v0, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    .line 44
    invoke-static {}, Lcom/broadcom/bt/service/opp/OppService;->classInitNative()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z

    .line 62
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v0, :cond_2a

    .line 63
    sget v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    .line 64
    const-string v0, "OppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2a
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupDataNative()V
.end method

.method private native closeOpcSessionNative()V
.end method

.method private native closeOpsSessionNative()V
.end method

.method private native enableOpcSessionNative()V
.end method

.method private native exchangeVcardNative(Ljava/lang/String;)V
.end method

.method private native grantAccessNative(IILjava/lang/String;)V
.end method

.method private native initializeDataNative()V
.end method

.method private native pullVcardNative(Ljava/lang/String;)V
.end method

.method private native pushObjectNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setExchangeFolderNative(Ljava/lang/String;)V
.end method

.method private native setOwnerVcardNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized closeOpcSession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 136
    monitor-enter p0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v1, :cond_e

    .line 137
    const-string v1, "OppService"

    const-string v2, "closeOpcSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_e
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->closeOpcSessionNative()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_13

    .line 143
    :goto_11
    monitor-exit p0

    return-void

    .line 140
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 141
    .local v0, t:Ljava/lang/Throwable;
    :try_start_15
    const-string v1, "OppService"

    const-string v2, "Error closing opc session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_11

    .line 136
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized closeOpsSession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 150
    monitor-enter p0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v1, :cond_e

    .line 151
    const-string v1, "OppService"

    const-string v2, "closeOpsSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_e
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->closeOpsSessionNative()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_13

    .line 157
    :goto_11
    monitor-exit p0

    return-void

    .line 154
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, t:Ljava/lang/Throwable;
    :try_start_15
    const-string v1, "OppService"

    const-string v2, "Error closing ops session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_11

    .line 150
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableOpcSession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 122
    monitor-enter p0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v1, :cond_e

    .line 123
    const-string v1, "OppService"

    const-string v2, "enableOpcSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_e
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->enableOpcSessionNative()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_13

    .line 129
    :goto_11
    monitor-exit p0

    return-void

    .line 126
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, t:Ljava/lang/Throwable;
    :try_start_15
    const-string v1, "OppService"

    const-string v2, "Error enabling opc session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_11

    .line 122
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized exchangeVcard(Ljava/lang/String;)V
    .registers 6
    .parameter "peerBDAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 194
    monitor-enter p0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v1, :cond_25

    .line 195
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exchangeVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_25
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->exchangeVcardNative(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_34
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_28} :catch_2a

    .line 201
    :goto_28
    monitor-exit p0

    return-void

    .line 198
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 199
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2c
    const-string v1, "OppService"

    const-string v2, "Error exchanging vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_28

    .line 194
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/OppService;->finish()V

    .line 93
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v0, :cond_27

    .line 94
    sget v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    .line 95
    const-string v0, "OppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalize: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_27
    invoke-super {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->finalize()V

    .line 98
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_b

    .line 81
    :try_start_5
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->cleanupDataNative()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_d

    .line 85
    :goto_8
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    .line 88
    :cond_b
    monitor-exit p0

    return-void

    .line 82
    :catch_d
    move-exception v0

    .line 83
    .local v0, t:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "OppService"

    const-string v2, "Error cleaning up"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_8

    .line 79
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized grantAccess(IILjava/lang/String;)V
    .registers 8
    .parameter "operation"
    .parameter "access"
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    const-string v1, ", "

    .line 209
    monitor-enter p0

    :try_start_5
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v1, :cond_3b

    .line 210
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grantAccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3b
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/opp/OppService;->grantAccessNative(IILjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_4a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3e} :catch_40

    .line 217
    :goto_3e
    monitor-exit p0

    return-void

    .line 214
    :catch_40
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, t:Ljava/lang/Throwable;
    :try_start_42
    const-string v1, "OppService"

    const-string v2, "Error granting access"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_4a

    goto :goto_3e

    .line 209
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public init()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->initializeDataNative()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z

    .line 73
    return-void
.end method

.method public declared-synchronized pullVcard(Ljava/lang/String;)V
    .registers 6
    .parameter "peerBDAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 180
    monitor-enter p0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v1, :cond_26

    .line 181
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pullVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_26
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->pullVcardNative(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_29} :catch_2b

    .line 187
    :goto_29
    monitor-exit p0

    return-void

    .line 184
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 185
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2d
    const-string v1, "OppService"

    const-string v2, "Error pulling vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_29

    .line 180
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pushObject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "peerBDAddress"
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 165
    monitor-enter p0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v1, :cond_f

    .line 166
    const-string v1, "OppService"

    const-string/jumbo v2, "pushObject"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/opp/OppService;->pushObjectNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_12} :catch_14

    .line 172
    :goto_12
    monitor-exit p0

    return-void

    .line 169
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 170
    .local v0, t:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "OppService"

    const-string v2, "Error pusing object"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 165
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    const-string v1, "bluetooth_opp_service"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/opp/OppEventLoop;

    .line 106
    .local v0, eventLoop:Lcom/broadcom/bt/service/opp/OppEventLoop;
    if-eqz v0, :cond_d

    .line 107
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 109
    :cond_d
    return-void
.end method

.method public declared-synchronized setExchangeFolder(Ljava/lang/String;)V
    .registers 6
    .parameter "pathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v1, :cond_24

    .line 240
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExchangeFolder("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_24
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->setExchangeFolderNative(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_29

    .line 246
    :goto_27
    monitor-exit p0

    return-void

    .line 243
    :catch_29
    move-exception v1

    move-object v0, v1

    .line 244
    .local v0, e:Ljava/lang/Exception;
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_27

    .line 239
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setOwnerVcard(Ljava/lang/String;)V
    .registers 6
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    .line 225
    monitor-enter p0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppService;->V:Z

    if-eqz v1, :cond_26

    .line 226
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOwnerVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_26
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->setOwnerVcardNative(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_29} :catch_2b

    .line 232
    :goto_29
    monitor-exit p0

    return-void

    .line 229
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 230
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2d
    const-string v1, "OppService"

    const-string v2, "Error setting owner vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_29

    .line 225
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    const-string v1, "bluetooth_opp_service"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/opp/OppEventLoop;

    .line 114
    .local v0, eventLoop:Lcom/broadcom/bt/service/opp/OppEventLoop;
    if-eqz v0, :cond_d

    .line 115
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 117
    :cond_d
    return-void
.end method
