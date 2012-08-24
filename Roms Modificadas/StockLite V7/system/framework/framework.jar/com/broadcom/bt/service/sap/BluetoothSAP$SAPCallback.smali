.class Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;
.super Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;
.source "BluetoothSAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/sap/BluetoothSAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAPCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/sap/BluetoothSAP;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;-><init>()V

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
    .line 285
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothSAP"

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

    .line 288
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 289
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;->onConnected(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 291
    :cond_30
    monitor-exit p0

    return-void

    .line 285
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
    .line 295
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothSAP"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 299
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;->onDisconnected()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 301
    :cond_19
    monitor-exit p0

    return-void

    .line 295
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
