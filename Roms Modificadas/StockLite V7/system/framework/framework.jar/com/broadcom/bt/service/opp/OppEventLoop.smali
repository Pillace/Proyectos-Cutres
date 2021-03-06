.class public Lcom/broadcom/bt/service/opp/OppEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseEventLoop;
.source "OppEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/OppConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "OppEventLoop"

.field private static final V:Z


# instance fields
.field mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/opp/IOppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOpsAccessGranted:Z

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 33
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->V:Z

    sput-boolean v0, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    .line 40
    const-string v0, "OppEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USE_STANDALONE_EVENT_LOOP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->classInitNative(Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseEventLoop;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    .line 55
    return-void
.end method

.method private static native classInitNative(Z)V
.end method

.method private native clearObexEventLoopNative()V
.end method

.method private createOpcIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "action"

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createOpsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "action"

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createVcardIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "action"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private native initObexEventLoopNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "bluetooth_opp_service"

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->initObexEventLoopNative()V

    .line 64
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 66
    return-void
.end method

.method declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .registers 8
    .parameter "filePath"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 476
    monitor-enter p0

    :try_start_5
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_27

    .line 477
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpOwnerVcardNotSet ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_27
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_5f

    move-result v0

    .line 487
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v0, :cond_62

    .line 489
    :try_start_30
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_5f
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3b} :catch_3e

    .line 487
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 490
    :catch_3e
    move-exception v3

    move-object v2, v3

    .line 491
    .local v2, t:Ljava/lang/Throwable;
    :try_start_40
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpOwnerVcardNotSet ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_40 .. :try_end_5e} :catchall_5f

    goto :goto_3b

    .line 476
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_5f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 494
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_62
    :try_start_62
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 496
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_72

    .line 497
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpOwnerVcardNotSet ()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_5f

    .line 499
    :cond_72
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcClose(I)V
    .registers 8
    .parameter "status"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 211
    monitor-enter p0

    :try_start_5
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_27

    .line 212
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpcClose ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_27
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_5f

    move-result v0

    .line 224
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v0, :cond_62

    .line 226
    :try_start_30
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcClose(I)V
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_5f
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3b} :catch_3e

    .line 224
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 227
    :catch_3e
    move-exception v3

    move-object v2, v3

    .line 228
    .local v2, t:Ljava/lang/Throwable;
    :try_start_40
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcClose("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_40 .. :try_end_5e} :catchall_5f

    goto :goto_3b

    .line 211
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_5f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 231
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_62
    :try_start_62
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 233
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_72

    .line 234
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcClose()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_5f

    .line 236
    :cond_72
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcEnable()V
    .registers 6

    .prologue
    const-string v3, "OppEventLoop"

    .line 148
    monitor-enter p0

    :try_start_3
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_e

    .line 149
    const-string v3, "OppEventLoop"

    const-string v4, "onOpcEnable()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_e
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2f

    move-result v0

    .line 159
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v0, :cond_32

    .line 161
    :try_start_17
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcEnable()V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_2f
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_22} :catch_25

    .line 159
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 162
    :catch_25
    move-exception v3

    move-object v2, v3

    .line 163
    .local v2, t:Ljava/lang/Throwable;
    :try_start_27
    const-string v3, "OppEventLoop"

    const-string v4, "Error: onOpcEnable()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    goto :goto_22

    .line 148
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 166
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 169
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_42

    .line 170
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcEnable()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_2f

    .line 173
    :cond_42
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .registers 9
    .parameter "status"
    .parameter "filePath"

    .prologue
    const-string v3, "OppEventLoop"

    .line 244
    monitor-enter p0

    :try_start_3
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_e

    .line 245
    const-string v3, "OppEventLoop"

    const-string v4, "onOpcObjectPushed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_e
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_50

    move-result v0

    .line 257
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v0, :cond_53

    .line 259
    :try_start_17
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcObjectPushed(ILjava/lang/String;)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_50
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_22} :catch_25

    .line 257
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 260
    :catch_25
    move-exception v3

    move-object v2, v3

    .line 261
    .local v2, t:Ljava/lang/Throwable;
    :try_start_27
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcObjectPushed("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_50

    goto :goto_22

    .line 244
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_50
    move-exception v3

    monitor-exit p0

    throw v3

    .line 264
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_53
    :try_start_53
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 266
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_63

    .line 267
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcObjectPushed()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_50

    .line 269
    :cond_63
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .registers 9
    .parameter "status"
    .parameter "filePath"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 272
    monitor-enter p0

    :try_start_5
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_31

    .line 273
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpcObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_31
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_73

    move-result v0

    .line 286
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    if-ge v1, v0, :cond_76

    .line 288
    :try_start_3a
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcObjectReceived(ILjava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_73
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_45} :catch_48

    .line 286
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 289
    :catch_48
    move-exception v3

    move-object v2, v3

    .line 290
    .local v2, t:Ljava/lang/Throwable;
    :try_start_4a
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_4a .. :try_end_72} :catchall_73

    goto :goto_45

    .line 272
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_73
    move-exception v3

    monitor-exit p0

    throw v3

    .line 293
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_76
    :try_start_76
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 295
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_86

    .line 296
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcObjectReceived()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_73

    .line 298
    :cond_86
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcOpen()V
    .registers 6

    .prologue
    const-string v3, "OppEventLoop"

    .line 179
    monitor-enter p0

    :try_start_3
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_e

    .line 180
    const-string v3, "OppEventLoop"

    const-string v4, "onOpcOpen()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_e
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2f

    move-result v0

    .line 190
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v0, :cond_32

    .line 192
    :try_start_17
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcOpen()V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_2f
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_22} :catch_25

    .line 190
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 193
    :catch_25
    move-exception v3

    move-object v2, v3

    .line 194
    .local v2, t:Ljava/lang/Throwable;
    :try_start_27
    const-string v3, "OppEventLoop"

    const-string v4, "Error: onOpcOpen()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    goto :goto_22

    .line 179
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 197
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 200
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_42

    .line 201
    const-string v3, "OppEventLoop"

    const-string v4, "Leavaing onOpcOpen()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_2f

    .line 204
    :cond_42
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcProgress(II)V
    .registers 9
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 301
    monitor-enter p0

    :try_start_5
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_31

    .line 302
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpcProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_31
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_73

    move-result v0

    .line 314
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    if-ge v1, v0, :cond_76

    .line 316
    :try_start_3a
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcProgress(II)V
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_73
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_45} :catch_48

    .line 314
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 317
    :catch_48
    move-exception v3

    move-object v2, v3

    .line 318
    .local v2, t:Ljava/lang/Throwable;
    :try_start_4a
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_4a .. :try_end_72} :catchall_73

    goto :goto_45

    .line 301
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_73
    move-exception v3

    monitor-exit p0

    throw v3

    .line 322
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_76
    :try_start_76
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 324
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_86

    .line 325
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcProgress()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_73

    .line 328
    :cond_86
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 19
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePath"
    .parameter "totalBytes"

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_5e

    .line 344
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpsAccessRequest("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_5e
    iget-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    if-nez v3, :cond_94

    .line 358
    const-string v3, "OppEventLoop"

    const-string v4, "Sending OPP access request broadcast intent..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 360
    .local v2, i:Landroid/content/Intent;
    const-string v3, "bluetooth_opp_service"

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/Intent;

    .line 362
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 363
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    .line 379
    .end local v2           #i:Landroid/content/Intent;
    :goto_87
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_92

    .line 380
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpsAccessRequest()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_1 .. :try_end_92} :catchall_110

    .line 382
    :cond_92
    monitor-exit p0

    return-void

    .line 365
    :cond_94
    :try_start_94
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_110

    move-result v10

    .line 366
    .local v10, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9b
    if-ge v2, v10, :cond_113

    .line 368
    :try_start_9d
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_b1
    .catchall {:try_start_9d .. :try_end_b1} :catchall_110
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_b1} :catch_b4

    .line 366
    :goto_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 370
    :catch_b4
    move-exception v3

    move-object v11, v3

    .line 371
    .local v11, t:Ljava/lang/Throwable;
    :try_start_b6
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpsAccessRequest("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10f
    .catchall {:try_start_b6 .. :try_end_10f} :catchall_110

    goto :goto_b1

    .line 343
    .end local v2           #i:I
    .end local v10           #N:I
    .end local v11           #t:Ljava/lang/Throwable;
    :catchall_110
    move-exception v3

    monitor-exit p0

    throw v3

    .line 376
    .restart local v2       #i:I
    .restart local v10       #N:I
    :cond_113
    :try_start_113
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_118
    .catchall {:try_start_113 .. :try_end_118} :catchall_110

    goto/16 :goto_87
.end method

.method declared-synchronized onOpsClose()V
    .registers 6

    .prologue
    const-string v3, "OppEventLoop"

    .line 385
    monitor-enter p0

    :try_start_3
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_e

    .line 386
    const-string v3, "OppEventLoop"

    const-string v4, "onOpsClose()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_e
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    .line 394
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_32

    move-result v0

    .line 395
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    if-ge v1, v0, :cond_35

    .line 397
    :try_start_1a
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsClose()V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_32
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_25} :catch_28

    .line 395
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 398
    :catch_28
    move-exception v3

    move-object v2, v3

    .line 399
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2a
    const-string v3, "OppEventLoop"

    const-string v4, "Error: onOpsClose()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_25

    .line 385
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_32
    move-exception v3

    monitor-exit p0

    throw v3

    .line 403
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_35
    :try_start_35
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 405
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_45

    .line 406
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpsClose()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_32

    .line 408
    :cond_45
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .registers 9
    .parameter "format"
    .parameter "filePath"

    .prologue
    const-string v3, ":"

    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 411
    monitor-enter p0

    :try_start_7
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_33

    .line 412
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpcObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_33
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_75

    move-result v0

    .line 425
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    if-ge v1, v0, :cond_78

    .line 427
    :try_start_3c
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsObjectReceived(ILjava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_75
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_47} :catch_4a

    .line 425
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 428
    :catch_4a
    move-exception v3

    move-object v2, v3

    .line 429
    .local v2, t:Ljava/lang/Throwable;
    :try_start_4c
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_4c .. :try_end_74} :catchall_75

    goto :goto_47

    .line 411
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_75
    move-exception v3

    monitor-exit p0

    throw v3

    .line 432
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_78
    :try_start_78
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 434
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_88

    .line 435
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcObjectReceived()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_75

    .line 437
    :cond_88
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpsOpen()V
    .registers 3

    .prologue
    const-string v0, "OppEventLoop"

    .line 331
    monitor-enter p0

    :try_start_3
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v0, :cond_e

    .line 332
    const-string v0, "OppEventLoop"

    const-string v1, "onOpsOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_e
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v0, :cond_19

    .line 336
    const-string v0, "OppEventLoop"

    const-string v1, "Leaving onOpsOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 339
    :cond_19
    monitor-exit p0

    return-void

    .line 331
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onOpsProgress(II)V
    .registers 9
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    const-string v3, ":"

    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 440
    monitor-enter p0

    :try_start_7
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_33

    .line 441
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpsProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_33
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_75

    move-result v0

    .line 455
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    if-ge v1, v0, :cond_78

    .line 457
    :try_start_3c
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsProgress(II)V
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_75
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_47} :catch_4a

    .line 455
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 458
    :catch_4a
    move-exception v3

    move-object v2, v3

    .line 459
    .local v2, t:Ljava/lang/Throwable;
    :try_start_4c
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpsProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_4c .. :try_end_74} :catchall_75

    goto :goto_47

    .line 440
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_75
    move-exception v3

    monitor-exit p0

    throw v3

    .line 463
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_78
    :try_start_78
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 465
    sget-boolean v3, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v3, :cond_88

    .line 466
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpsProgress()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_75

    .line 468
    :cond_88
    monitor-exit p0

    return-void
.end method

.method registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 117
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_b

    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 120
    :cond_b
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    if-eqz v0, :cond_7

    .line 89
    :goto_5
    monitor-exit p0

    return-void

    .line 78
    :cond_7
    :try_start_7
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    if-eqz v0, :cond_1f

    .line 79
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 80
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v0, :cond_1c

    .line 81
    const-string v0, "OppEventLoop"

    const-string v1, "Starting OPP Event Loop as Standalone..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1c
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->startEventLoopNative()V

    .line 87
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onStateChangeEvent(Z)V
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_5

    .line 75
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    .line 96
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    .line 98
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    if-eqz v0, :cond_27

    .line 99
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    if-eqz v0, :cond_20

    .line 101
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 102
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppEventLoop;->V:Z

    if-eqz v0, :cond_1d

    .line 103
    const-string v0, "OppEventLoop"

    const-string v1, "Stopping standalone OPP Event Loop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1d
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->stopEventLoopNative()V

    .line 108
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onStateChangeEvent(Z)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_29

    .line 114
    :cond_27
    monitor-exit p0

    return-void

    .line 96
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 123
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_b

    .line 124
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 126
    :cond_b
    return-void
.end method
