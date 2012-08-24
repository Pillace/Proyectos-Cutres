.class Landroid/widget/TextView$Blink;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 7282
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7283
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    .line 7284
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 7318
    iget-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-nez v0, :cond_a

    .line 7319
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7320
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 7322
    :cond_a
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x1f4

    .line 7287
    iget-boolean v3, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-eqz v3, :cond_7

    .line 7315
    :cond_6
    :goto_6
    return-void

    .line 7291
    :cond_7
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7293
    iget-object v3, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7295
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7296
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7297
    .local v1, st:I
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7299
    .local v0, en:I
    if-ne v1, v0, :cond_3a

    if-ltz v1, :cond_3a

    if-ltz v0, :cond_3a

    .line 7300
    invoke-static {v2}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 7301
    invoke-static {v2}, Landroid/widget/TextView;->access$1300(Landroid/widget/TextView;)V

    .line 7304
    :cond_31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {p0, p0, v3, v4}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 7308
    :cond_3a
    invoke-static {v2}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v3}, Landroid/widget/TextView$CursorControllerMenu;->getLife()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7309
    invoke-virtual {v2}, Landroid/widget/TextView;->updateCursorControllerPositions()V

    .line 7310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {p0, p0, v3, v4}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method

.method uncancel()V
    .registers 2

    .prologue
    .line 7325
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 7326
    return-void
.end method
