.class Landroid/media/AudioRecord$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private final mAudioRecord:Landroid/media/AudioRecord;

.field final synthetic this$0:Landroid/media/AudioRecord;


# direct methods
.method constructor <init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "recorder"
    .parameter "looper"

    .prologue
    .line 705
    iput-object p1, p0, Landroid/media/AudioRecord$NativeEventHandler;->this$0:Landroid/media/AudioRecord;

    .line 706
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 707
    iput-object p2, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    .line 708
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, listener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->this$0:Landroid/media/AudioRecord;

    invoke-static {v1}, Landroid/media/AudioRecord;->access$000(Landroid/media/AudioRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 714
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {v2}, Landroid/media/AudioRecord;->access$100(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    move-result-object v0

    .line 715
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_2f

    .line 717
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    .line 729
    const-string v1, "AudioRecord-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ android.media.AudioRecord.NativeEventHandler ] Unknown event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_2e
    :goto_2e
    return-void

    .line 715
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2

    .line 719
    :pswitch_32
    if-eqz v0, :cond_2e

    .line 720
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRecordPositionUpdateListener;->onMarkerReached(Landroid/media/AudioRecord;)V

    goto :goto_2e

    .line 724
    :pswitch_3a
    if-eqz v0, :cond_2e

    .line 725
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRecordPositionUpdateListener;->onPeriodicNotification(Landroid/media/AudioRecord;)V

    goto :goto_2e

    .line 717
    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_32
        :pswitch_3a
    .end packed-switch
.end method
