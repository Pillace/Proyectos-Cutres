.class Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "CircleLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;Lcom/android/internal/policy/impl/CircleLockScreen;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;->val$this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 502
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 504
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->access$300(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->access$300(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    :cond_21
    :goto_21
    return-void

    .line 505
    :cond_22
    const-string v1, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 506
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->access$300(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;->this$1:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->access$300(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21
.end method
