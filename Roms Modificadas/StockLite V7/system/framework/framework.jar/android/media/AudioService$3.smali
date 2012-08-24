.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 2192
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 10
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 2195
    if-ne p1, v0, :cond_28

    .line 2197
    invoke-static {}, Landroid/media/AudioService;->access$5100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2198
    :try_start_c
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/media/AudioService;->access$5202(Landroid/media/AudioService;Z)Z

    .line 2199
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_25

    .line 2200
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v6

    .line 2201
    .local v6, ringVolume:I
    if-ltz v6, :cond_24

    .line 2202
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move v2, v1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    .line 2223
    .end local v6           #ringVolume:I
    :cond_24
    :goto_24
    return-void

    .line 2199
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1

    .line 2207
    :cond_28
    if-ne p1, v1, :cond_43

    .line 2209
    invoke-static {}, Landroid/media/AudioService;->access$5100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2210
    :try_start_2f
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/media/AudioService;->access$5202(Landroid/media/AudioService;Z)Z

    .line 2211
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_40

    .line 2212
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move v2, v1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_24

    .line 2211
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1

    .line 2216
    :cond_43
    if-nez p1, :cond_24

    .line 2218
    invoke-static {}, Landroid/media/AudioService;->access$5100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2219
    :try_start_4a
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioService;->access$5202(Landroid/media/AudioService;Z)Z

    .line 2220
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_59

    .line 2221
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v3, v5, v3}, Landroid/media/AudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/os/IBinder;)I

    goto :goto_24

    .line 2220
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method
