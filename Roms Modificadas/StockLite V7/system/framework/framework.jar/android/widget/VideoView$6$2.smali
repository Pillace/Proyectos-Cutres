.class Landroid/widget/VideoView$6$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/VideoView$6;


# direct methods
.method constructor <init>(Landroid/widget/VideoView$6;)V
    .registers 2
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Landroid/widget/VideoView$6$2;->this$1:Landroid/widget/VideoView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/widget/VideoView$6$2;->this$1:Landroid/widget/VideoView$6;

    iget-object v0, v0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 542
    iget-object v0, p0, Landroid/widget/VideoView$6$2;->this$1:Landroid/widget/VideoView$6;

    iget-object v0, v0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$6$2;->this$1:Landroid/widget/VideoView$6;

    iget-object v1, v1, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 544
    :cond_1d
    return-void
.end method
