.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 1593
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter "mp"

    .prologue
    .line 1693
    if-eqz p1, :cond_8

    .line 1695
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1696
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 1701
    :cond_8
    :goto_8
    return-void

    .line 1697
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 1698
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private persistRingerMode()V
    .registers 4

    .prologue
    .line 1626
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer"

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1627
    return-void
.end method

.method private persistVibrateSetting()V
    .registers 4

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_on"

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1631
    return-void
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;ZZ)V
    .registers 7
    .parameter "streamState"
    .parameter "current"
    .parameter "lastAudible"

    .prologue
    .line 1615
    if-eqz p2, :cond_17

    .line 1616
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2700(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1619
    :cond_17
    if-eqz p3, :cond_2e

    .line 1620
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2800(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1623
    :cond_2e
    return-void
.end method

.method private playSilentModeSound()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1704
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_15

    .line 1711
    :cond_14
    :goto_14
    return-void

    .line 1707
    :cond_15
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1710
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Landroid/media/AudioService$AudioHandler;->playSoundEffect(II)V

    goto :goto_14
.end method

.method private playSoundEffect(II)V
    .registers 14
    .parameter "effectType"
    .parameter "volume"

    .prologue
    const-string v0, "AudioService"

    .line 1634
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1635
    :try_start_9
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1636
    monitor-exit v10

    .line 1690
    :goto_12
    return-void

    .line 1638
    :cond_13
    const/high16 v2, 0x3f80

    .line 1642
    .local v2, volFloat:F
    const-string/jumbo v0, "situation=1;device=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1657
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_4b

    .line 1658
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1689
    :cond_46
    :goto_46
    monitor-exit v10

    goto :goto_12

    .end local v2           #volFloat:F
    :catchall_48
    move-exception v0

    monitor-exit v10
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_48

    throw v0

    .line 1660
    .restart local v2       #volFloat:F
    :cond_4b
    :try_start_4b
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 1661
    .local v9, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v9, :cond_46

    .line 1663
    :try_start_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/AudioService;->access$3300()[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1664
    .local v8, filePath:Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1665
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1666
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V

    .line 1668
    new-instance v0, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1673
    new-instance v0, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1679
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->start()V
    :try_end_9b
    .catchall {:try_start_52 .. :try_end_9b} :catchall_48
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_9b} :catch_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_9b} :catch_b7
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_9b} :catch_d3

    goto :goto_46

    .line 1680
    .end local v8           #filePath:Ljava/lang/String;
    :catch_9c
    move-exception v0

    move-object v7, v0

    .line 1681
    .local v7, ex:Ljava/io/IOException;
    :try_start_9e
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 1682
    .end local v7           #ex:Ljava/io/IOException;
    :catch_b7
    move-exception v0

    move-object v7, v0

    .line 1683
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    .line 1684
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_d3
    move-exception v0

    move-object v7, v0

    .line 1685
    .local v7, ex:Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_9e .. :try_end_ed} :catchall_48

    goto/16 :goto_46
.end method

.method private setSystemVolume(Landroid/media/AudioService$VolumeStreamState;)V
    .registers 12
    .parameter "streamState"

    .prologue
    const/4 v1, 0x1

    .line 1598
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 1601
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 1602
    .local v8, numStreamTypes:I
    sub-int v9, v8, v1

    .local v9, streamType:I
    :goto_14
    if-ltz v9, :cond_3e

    .line 1603
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_3b

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_3b

    .line 1605
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    invoke-static {v0, v9, v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 1602
    :cond_3b
    add-int/lit8 v9, v9, -0x1

    goto :goto_14

    .line 1610
    :cond_3e
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v7, 0xbb8

    move v4, v1

    move v5, v1

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1612
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .parameter "msg"

    .prologue
    .line 1715
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    invoke-static {v4}, Landroid/media/AudioService;->access$3700(I)I

    move-result v12

    .line 1717
    .local v12, baseMsgWhat:I
    packed-switch v12, :pswitch_data_160

    .line 1814
    .end local p0
    .end local p1
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 1720
    .restart local p0
    .restart local p1
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/media/AudioService$VolumeStreamState;

    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService$AudioHandler;->setSystemVolume(Landroid/media/AudioService$VolumeStreamState;)V

    goto :goto_c

    .line 1724
    .restart local p1
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-eqz v5, :cond_39

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    if-eqz v6, :cond_3b

    const/4 v6, 0x1

    :goto_30
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->persistVolume(Landroid/media/AudioService$VolumeStreamState;ZZ)V

    goto :goto_c

    :cond_39
    const/4 v5, 0x0

    goto :goto_28

    :cond_3b
    const/4 v6, 0x0

    goto :goto_30

    .line 1728
    :pswitch_3d
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->persistRingerMode()V

    goto :goto_c

    .line 1732
    :pswitch_41
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->persistVibrateSetting()V

    goto :goto_c

    .line 1737
    :pswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    invoke-static {v4}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1738
    const-string v4, "AudioService"

    const-string v5, "Media server died."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/4 v4, 0x3

    invoke-static {v4}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    invoke-static {v4}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    invoke-static/range {v4 .. v11}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_c

    .line 1746
    :pswitch_70
    const-string v4, "AudioService"

    const-string v5, "Media server started."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const-string/jumbo v4, "restarting=true"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    invoke-static {v4}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    .line 1755
    .local v17, set:Ljava/util/Set;
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1756
    .end local p1
    .local v14, i:Ljava/util/Iterator;
    :goto_8e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 1757
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1758
    .local v13, device:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move v0, v4

    move v1, v5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_8e

    .line 1764
    .end local v13           #device:Ljava/util/Map$Entry;
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    invoke-static {v4}, Landroid/media/AudioService;->access$1100(Landroid/media/AudioService;)I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 1767
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1768
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1771
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v16

    .line 1772
    .local v16, numStreamTypes:I
    const/4 v4, 0x1

    sub-int v19, v16, v4

    .local v19, streamType:I
    :goto_e0
    if-ltz v19, :cond_118

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    invoke-static {v4}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v18, v4, v19

    .line 1775
    .local v18, streamState:Landroid/media/AudioService$VolumeStreamState;
    const/4 v4, 0x0

    invoke-static/range {v18 .. v18}, Landroid/media/AudioService$VolumeStreamState;->access$4000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    move/from16 v0, v19

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1776
    invoke-static/range {v18 .. v18}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    if-nez v4, :cond_116

    .line 1777
    invoke-static/range {v18 .. v18}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v15

    .line 1781
    .local v15, index:I
    :goto_107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v19

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 1772
    add-int/lit8 v19, v19, -0x1

    goto :goto_e0

    .line 1779
    .end local v15           #index:I
    :cond_116
    const/4 v15, 0x0

    .restart local v15       #index:I
    goto :goto_107

    .line 1785
    .end local v15           #index:I
    .end local v18           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;IZ)V

    .line 1788
    const-string/jumbo v4, "restarting=false"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1792
    .end local v14           #i:Ljava/util/Iterator;
    .end local v16           #numStreamTypes:I
    .end local v17           #set:Ljava/util/Set;
    .end local v19           #streamType:I
    .restart local p1
    :pswitch_132
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->playSoundEffect(II)V

    goto/16 :goto_c

    .line 1797
    :pswitch_145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1801
    .restart local p0
    :pswitch_15a
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->playSilentModeSound()V

    goto/16 :goto_c

    .line 1717
    nop

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_d
        :pswitch_19
        :pswitch_c
        :pswitch_3d
        :pswitch_41
        :pswitch_45
        :pswitch_70
        :pswitch_132
        :pswitch_145
        :pswitch_15a
    .end packed-switch
.end method
