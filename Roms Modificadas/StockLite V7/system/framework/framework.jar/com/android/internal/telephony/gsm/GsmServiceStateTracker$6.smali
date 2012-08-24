.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 2236
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 2238
    const/16 v0, 0x52

    if-eq p2, v0, :cond_13

    .line 2239
    if-eqz p1, :cond_11

    .line 2240
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2241
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 2242
    const/4 v0, 0x1

    .line 2246
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 2244
    goto :goto_10

    :cond_13
    move v0, v1

    .line 2246
    goto :goto_10
.end method
