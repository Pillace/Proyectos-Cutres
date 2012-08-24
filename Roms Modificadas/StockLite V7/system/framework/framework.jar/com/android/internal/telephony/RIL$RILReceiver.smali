.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 485
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 489
    const/4 v6, 0x0

    .line 492
    .local v6, retryCount:I
    :goto_1
    const/4 v8, 0x0

    .line 496
    .local v8, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_73
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_b3

    .line 497
    .end local v8           #s:Landroid/net/LocalSocket;
    .local v9, s:Landroid/net/LocalSocket;
    :try_start_7
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v12, "rild"

    sget-object v13, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v12, v13}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 499
    .local v3, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_123
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_e0

    .line 532
    const/4 v6, 0x0

    .line 534
    :try_start_15
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v9, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 535
    const-string v12, "RILJ"

    const-string v13, "Connected to \'rild\' socket"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_20} :catch_e0

    .line 537
    const/4 v4, 0x0

    .line 539
    .local v4, length:I
    :try_start_21
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 544
    .local v2, is:Ljava/io/InputStream;
    :goto_29
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    invoke-static {v2, v12}, Lcom/android/internal/telephony/RIL;->access$300(Ljava/io/InputStream;[B)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_d5
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2e} :catch_e4

    move-result v4

    .line 546
    if-gez v4, :cond_bd

    .line 568
    .end local v2           #is:Ljava/io/InputStream;
    :goto_31
    :try_start_31
    const-string v12, "RILJ"

    const-string v13, "Disconnected from \'rild\' socket"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3f} :catch_e0

    .line 574
    :try_start_3f
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_46} :catch_120
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_46} :catch_e0

    .line 578
    :goto_46
    :try_start_46
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 579
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 582
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_53} :catch_e0

    .line 583
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_54
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, sz:I
    :goto_5c
    if-ge v1, v10, :cond_10e

    .line 584
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    .line 585
    .local v7, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 586
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_70
    .catchall {:try_start_54 .. :try_end_70} :catchall_118

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 500
    .end local v1           #i:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v7           #rr:Lcom/android/internal/telephony/RILRequest;
    .end local v9           #s:Landroid/net/LocalSocket;
    .end local v10           #sz:I
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_73
    move-exception v12

    move-object v0, v12

    .line 502
    .local v0, ex:Ljava/io/IOException;
    :goto_75
    if-eqz v8, :cond_7a

    .line 503
    :try_start_77
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_11b
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7a} :catch_b3

    .line 512
    :cond_7a
    :goto_7a
    const/16 v12, 0x8

    if-ne v6, v12, :cond_a5

    .line 513
    :try_start_7e
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " times, continuing to retry silently"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_9c} :catch_b3

    .line 524
    :cond_9c
    :goto_9c
    const-wide/16 v12, 0xfa0

    :try_start_9e
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_9e .. :try_end_a1} :catch_11e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a1} :catch_b3

    .line 528
    :goto_a1
    add-int/lit8 v6, v6, 0x1

    .line 529
    goto/16 :goto_1

    .line 517
    :cond_a5
    if-lez v6, :cond_9c

    const/16 v12, 0x8

    if-ge v6, v12, :cond_9c

    .line 518
    :try_start_ab
    const-string v12, "RILJ"

    const-string v13, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b2} :catch_b3

    goto :goto_9c

    .line 591
    .end local v0           #ex:Ljava/io/IOException;
    :catch_b3
    move-exception v12

    move-object v11, v12

    .line 592
    .local v11, tr:Ljava/lang/Throwable;
    :goto_b5
    const-string v12, "RILJ"

    const-string v13, "Uncaught exception"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    return-void

    .line 551
    .end local v8           #s:Landroid/net/LocalSocket;
    .end local v11           #tr:Ljava/lang/Throwable;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :cond_bd
    :try_start_bd
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 552
    .local v5, p:Landroid/os/Parcel;
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 553
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 557
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12, v5}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 558
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_d3} :catch_d5
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_d3} :catch_e4

    goto/16 :goto_29

    .line 560
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #p:Landroid/os/Parcel;
    :catch_d5
    move-exception v12

    move-object v0, v12

    .line 561
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_d7
    const-string v12, "RILJ"

    const-string v13, "\'rild\' socket closed"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 591
    .end local v0           #ex:Ljava/io/IOException;
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    :catch_e0
    move-exception v12

    move-object v11, v12

    move-object v8, v9

    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    goto :goto_b5

    .line 563
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_e4
    move-exception v12

    move-object v11, v12

    .line 564
    .restart local v11       #tr:Ljava/lang/Throwable;
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uncaught exception read length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_10c} :catch_e0

    goto/16 :goto_31

    .line 589
    .end local v11           #tr:Ljava/lang/Throwable;
    .restart local v1       #i:I
    .restart local v10       #sz:I
    :cond_10e
    :try_start_10e
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 590
    monitor-exit v12

    goto/16 :goto_1

    .end local v10           #sz:I
    :catchall_118
    move-exception v13

    monitor-exit v12
    :try_end_11a
    .catchall {:try_start_10e .. :try_end_11a} :catchall_118

    :try_start_11a
    throw v13
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_11b} :catch_e0

    .line 505
    .end local v1           #i:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v0       #ex:Ljava/io/IOException;
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_11b
    move-exception v12

    goto/16 :goto_7a

    .line 525
    :catch_11e
    move-exception v12

    goto :goto_a1

    .line 575
    .end local v0           #ex:Ljava/io/IOException;
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_120
    move-exception v12

    goto/16 :goto_46

    .line 500
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    :catch_123
    move-exception v12

    move-object v0, v12

    move-object v8, v9

    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    goto/16 :goto_75
.end method
