.class final Lcom/android/internal/app/ShutdownThread$4;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "arg0"

    .prologue
    const-string v1, "ShutdownThread"

    .line 262
    const-string v0, "ShutdownThread"

    const-string v0, "onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$400()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 264
    const-string v0, "ShutdownThread"

    const-string v0, "Releasing sAnimationSound end lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$400()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 267
    :cond_1d
    return-void
.end method
