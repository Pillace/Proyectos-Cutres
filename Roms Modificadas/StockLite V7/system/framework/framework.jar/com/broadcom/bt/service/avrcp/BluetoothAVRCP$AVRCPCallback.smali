.class Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPCallback;
.super Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback$Stub;
.source "BluetoothAVRCP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AVRCPCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPCallback;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onConnected(Ljava/lang/String;)V
    .registers 5
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothAVRCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: address = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPCallback;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;

    invoke-static {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->access$100(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 294
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPCallback;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;

    invoke-static {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->access$100(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;->onConnected(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 296
    :cond_30
    monitor-exit p0

    return-void

    .line 290
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDisconnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothAVRCP"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPCallback;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;

    invoke-static {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->access$100(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 304
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPCallback;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;

    invoke-static {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->access$100(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;->onDisconnected()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 306
    :cond_19
    monitor-exit p0

    return-void

    .line 300
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
