.class Landroid/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 12
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 580
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, p3}, Landroid/widget/VideoView;->access$1202(Landroid/widget/VideoView;I)I

    .line 581
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, p4}, Landroid/widget/VideoView;->access$1302(Landroid/widget/VideoView;I)I

    .line 582
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_82

    move v1, v5

    .line 583
    .local v1, isValidState:Z
    :goto_17
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, p3, :cond_84

    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, p4, :cond_84

    move v0, v5

    .line 584
    .local v0, hasValidSize:Z
    :goto_28
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_81

    if-eqz v1, :cond_81

    if-eqz v0, :cond_81

    .line 585
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_47

    .line 586
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 588
    :cond_47
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 590
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    .line 592
    :cond_64
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 593
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 595
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 600
    :cond_81
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_82
    move v1, v4

    .line 582
    goto :goto_17

    .restart local v1       #isValidState:Z
    :cond_84
    move v0, v4

    .line 583
    goto :goto_28
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter "holder"

    .prologue
    const/4 v2, 0x6

    .line 604
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p1}, Landroid/widget/VideoView;->access$2202(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 606
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v0

    if-ne v0, v2, :cond_34

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_34

    .line 608
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$2200(Landroid/widget/VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 609
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 616
    :goto_33
    return-void

    .line 610
    :cond_34
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v0

    if-ne v0, v2, :cond_5c

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    move-result v0

    if-ne v0, v2, :cond_5c

    .line 612
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$2200(Landroid/widget/VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_33

    .line 614
    :cond_5c
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$2300(Landroid/widget/VideoView;)V

    goto :goto_33
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2202(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 622
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 623
    :cond_17
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_26

    .line 624
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2400(Landroid/widget/VideoView;Z)V

    .line 626
    :cond_26
    return-void
.end method
