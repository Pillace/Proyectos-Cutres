.class Landroid/bluetooth/HeadsetBase$1;
.super Ljava/lang/Thread;
.source "HeadsetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/HeadsetBase;->startEventThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/HeadsetBase;


# direct methods
.method constructor <init>(Landroid/bluetooth/HeadsetBase;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 158
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$000(Landroid/bluetooth/HeadsetBase;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 159
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Landroid/bluetooth/HeadsetBase;->access$100(Landroid/bluetooth/HeadsetBase;I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, input:Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 161
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2, v0}, Landroid/bluetooth/HeadsetBase;->handleInput(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_18
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$200(Landroid/bluetooth/HeadsetBase;)I

    move-result v1

    .line 165
    .local v1, last_read_error:I
    if-eqz v1, :cond_0

    .line 166
    const-string v2, "Bluetooth HeadsetBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headset read error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$300(Landroid/bluetooth/HeadsetBase;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 168
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$300(Landroid/bluetooth/HeadsetBase;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 171
    :cond_4e
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase$1;->this$0:Landroid/bluetooth/HeadsetBase;

    invoke-static {v2}, Landroid/bluetooth/HeadsetBase;->access$400(Landroid/bluetooth/HeadsetBase;)V

    .line 176
    .end local v0           #input:Ljava/lang/String;
    .end local v1           #last_read_error:I
    :cond_53
    return-void
.end method