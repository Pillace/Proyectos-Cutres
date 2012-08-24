.class Landroid/widget/VideoView$6;
.super Landroid/os/Handler;
.source "VideoView.java"


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
    .line 513
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const-string v4, "There is a Bad Token, is VideoView finished before start playing?"

    .line 516
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_86

    .line 567
    :cond_7
    :goto_7
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Undefined Message Received"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_12
    return-void

    .line 521
    :pswitch_13
    :try_start_13
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V
    :try_end_1c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 523
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 524
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There is a Bad Token, is VideoView finished before start playing?"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 529
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :pswitch_2b
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/VideoView$6;->removeMessages(I)V

    .line 532
    :try_start_2f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$2100(Landroid/widget/VideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040012

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040010

    new-instance v3, Landroid/widget/VideoView$6$2;

    invoke-direct {v3, p0}, Landroid/widget/VideoView$6$2;-><init>(Landroid/widget/VideoView$6;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/widget/VideoView$6$1;

    invoke-direct {v2, p0}, Landroid/widget/VideoView$6$1;-><init>(Landroid/widget/VideoView$6;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_5f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2f .. :try_end_5f} :catch_60

    goto :goto_12

    .line 558
    :catch_60
    move-exception v1

    move-object v0, v1

    .line 559
    .restart local v0       #e:Landroid/view/WindowManager$BadTokenException;
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There is a Bad Token, is VideoView finished before start playing?"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 563
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :pswitch_6e
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 564
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_7

    .line 516
    :pswitch_data_86
    .packed-switch 0x2
        :pswitch_13
        :pswitch_2b
        :pswitch_6e
    .end packed-switch
.end method
