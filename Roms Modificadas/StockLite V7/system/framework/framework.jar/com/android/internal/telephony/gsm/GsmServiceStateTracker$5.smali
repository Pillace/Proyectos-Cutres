.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;
.super Landroid/os/Handler;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 2200
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 2203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 2212
    :cond_5
    :goto_5
    return-void

    .line 2205
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2206
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2207
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$702(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2208
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    goto :goto_5

    .line 2203
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
