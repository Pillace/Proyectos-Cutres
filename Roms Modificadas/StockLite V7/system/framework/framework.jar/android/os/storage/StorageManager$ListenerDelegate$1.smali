.class Landroid/os/storage/StorageManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/storage/StorageManager$ListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/storage/StorageManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(Landroid/os/storage/StorageManager$ListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Landroid/os/storage/StorageManager$ListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ListenerDelegate;

    iput-object p3, p0, Landroid/os/storage/StorageManager$ListenerDelegate$1;->val$this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 256
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/StorageManager$StorageEvent;

    .line 258
    .local v1, e:Landroid/os/storage/StorageManager$StorageEvent;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 259
    move-object v0, v1

    check-cast v0, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;

    move-object v2, v0

    .line 260
    .local v2, ev:Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;
    iget-object v3, p0, Landroid/os/storage/StorageManager$ListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ListenerDelegate;

    iget-object v3, v3, Landroid/os/storage/StorageManager$ListenerDelegate;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    iget-boolean v4, v2, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;->available:Z

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageEventListener;->onUsbMassStorageConnectionChanged(Z)V

    .line 267
    .end local v2           #ev:Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;
    :goto_16
    return-void

    .line 261
    :cond_17
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2e

    .line 262
    move-object v0, v1

    check-cast v0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;

    move-object v2, v0

    .line 263
    .local v2, ev:Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;
    iget-object v3, p0, Landroid/os/storage/StorageManager$ListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ListenerDelegate;

    iget-object v3, v3, Landroid/os/storage/StorageManager$ListenerDelegate;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    iget-object v4, v2, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->path:Ljava/lang/String;

    iget-object v5, v2, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->oldState:Ljava/lang/String;

    iget-object v6, v2, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->newState:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 265
    .end local v2           #ev:Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;
    :cond_2e
    const-string v3, "StorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method
