.class Lcom/broadcom/bt/service/map/MapEventLoop$1;
.super Ljava/lang/Thread;
.source "MapEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/service/map/MapEventLoop;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/map/MapEventLoop;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/map/MapEventLoop;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$000(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$200(Lcom/broadcom/bt/service/map/MapEventLoop;)Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    invoke-static {v3}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$100(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->init(Landroid/content/Context;Z)V

    .line 101
    :goto_20
    :try_start_20
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$300(Lcom/broadcom/bt/service/map/MapEventLoop;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 102
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$400(Lcom/broadcom/bt/service/map/MapEventLoop;)V

    .line 103
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Lcom/broadcom/bt/service/map/MapEventLoop$1;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_32} :catch_33

    goto :goto_20

    .line 106
    :catch_33
    move-exception v2

    move-object v0, v2

    .line 107
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 110
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_38
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop$1;->this$0:Lcom/broadcom/bt/service/map/MapEventLoop;

    invoke-static {v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->access$500(Lcom/broadcom/bt/service/map/MapEventLoop;)V

    .line 115
    return-void

    .line 105
    :cond_3e
    :try_start_3e
    const-string v2, "MapEventLoop"

    const-string v3, "LEAVING MAPEventLoop in Native code"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_45} :catch_33

    goto :goto_38
.end method
