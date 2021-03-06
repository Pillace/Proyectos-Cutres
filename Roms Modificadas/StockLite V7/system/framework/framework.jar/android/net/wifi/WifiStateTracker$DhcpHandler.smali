.class Landroid/net/wifi/WifiStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCancelCallback:Z

.field private mWifiStateTrackerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .registers 7
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 2528
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 2529
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2530
    iput-object p3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mWifiStateTrackerHandler:Landroid/os/Handler;

    .line 2532
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2533
    return-void
.end method

.method private setDhcpRenewalAlarm(J)V
    .registers 9
    .parameter "leaseDuration"

    .prologue
    .line 2678
    const-wide/16 v0, 0x12c

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    .line 2679
    const-wide/16 p1, 0x12c

    .line 2681
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$1000(Landroid/net/wifi/WifiStateTracker;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1e0

    mul-long/2addr v4, p1

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$900(Landroid/net/wifi/WifiStateTracker;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2685
    return-void
.end method

.method private shouldDisableCoexistenceMode()Z
    .registers 4

    .prologue
    .line 2670
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 2671
    .local v0, state:I
    if-nez v0, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const-string v11, "WifiStateTracker"

    .line 2538
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_1c8

    .line 2651
    :cond_9
    :goto_9
    return-void

    .line 2541
    :pswitch_a
    const/4 v2, 0x0

    .line 2542
    .local v2, modifiedBluetoothCoexistenceMode:Z
    const/4 v8, 0x0

    .line 2544
    .local v8, powerMode:I
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->shouldDisableCoexistenceMode()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 2561
    const/4 v2, 0x1

    .line 2564
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v9, v12}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 2568
    :cond_18
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateTracker;->getPowerMode()I

    move-result v8

    .line 2569
    if-gez v8, :cond_21

    .line 2572
    const/4 v8, 0x0

    .line 2574
    :cond_21
    if-eq v8, v12, :cond_28

    .line 2575
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9, v12}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;I)V

    .line 2578
    :cond_28
    monitor-enter p0

    .line 2580
    const/4 v9, 0x0

    :try_start_2a
    iput-boolean v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 2581
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_95

    .line 2583
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_b9

    .line 2584
    const-string v9, "WifiStateTracker"

    const-string v9, "DHCP request started"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 2586
    const/4 v1, 0x6

    .line 2587
    .local v1, event:I
    const-string v9, "WifiStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DHCP succeeded with lease: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    iget v10, v10, Landroid/net/DhcpInfo;->leaseDuration:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->leaseDuration:I

    int-to-long v9, v9

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setDhcpRenewalAlarm(J)V

    .line 2593
    :goto_79
    monitor-enter p0

    .line 2594
    :try_start_7a
    iget-boolean v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v9, :cond_83

    .line 2595
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mWifiStateTrackerHandler:Landroid/os/Handler;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2597
    :cond_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_b6

    .line 2639
    .end local v1           #event:I
    :cond_84
    :goto_84
    if-eq v8, v12, :cond_8b

    .line 2640
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9, v8}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;I)V

    .line 2643
    :cond_8b
    if-eqz v2, :cond_9

    .line 2645
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    goto/16 :goto_9

    .line 2581
    :catchall_95
    move-exception v9

    :try_start_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v9

    .line 2590
    :cond_98
    const/4 v1, 0x7

    .line 2591
    .restart local v1       #event:I
    const-string v9, "WifiStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DHCP request failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 2597
    :catchall_b6
    move-exception v9

    :try_start_b7
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v9

    .line 2599
    .end local v1           #event:I
    :cond_b9
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_84

    .line 2600
    const-string v9, "WifiStateTracker"

    const-string v9, "DHCP renewal started"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v6, v9, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2602
    .local v6, oIp:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v5, v9, Landroid/net/DhcpInfo;->gateway:I

    .line 2603
    .local v5, oGw:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v7, v9, Landroid/net/DhcpInfo;->netmask:I

    .line 2604
    .local v7, oMsk:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v3, v9, Landroid/net/DhcpInfo;->dns1:I

    .line 2605
    .local v3, oDns1:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v4, v9, Landroid/net/DhcpInfo;->dns2:I

    .line 2607
    .local v4, oDns2:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v9

    if-eqz v9, :cond_19a

    .line 2608
    const-string v9, "WifiStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DHCP renewal with lease: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    iget v10, v10, Landroid/net/DhcpInfo;->leaseDuration:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->ipAddress:I

    if-ne v6, v9, :cond_152

    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->gateway:I

    if-ne v5, v9, :cond_152

    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->netmask:I

    if-ne v7, v9, :cond_152

    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->dns1:I

    if-ne v3, v9, :cond_152

    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->dns2:I

    if-eq v4, v9, :cond_198

    :cond_152
    move v0, v12

    .line 2617
    .local v0, changed:Z
    :goto_153
    if-eqz v0, :cond_18a

    .line 2618
    const-string v9, "WifiStateTracker"

    const-string v9, "IP config change on renewal"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    iget v10, v10, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 2620
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 2621
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    iget-object v11, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v11}, Landroid/net/wifi/WifiStateTracker;->access$700(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2623
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2626
    :cond_18a
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->leaseDuration:I

    int-to-long v9, v9

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setDhcpRenewalAlarm(J)V

    goto/16 :goto_84

    .end local v0           #changed:Z
    :cond_198
    move v0, v13

    .line 2610
    goto :goto_153

    .line 2628
    :cond_19a
    const/4 v1, 0x7

    .line 2629
    .restart local v1       #event:I
    const-string v9, "WifiStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DHCP renewal failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    monitor-enter p0

    .line 2632
    :try_start_1b8
    iget-boolean v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v9, :cond_1c1

    .line 2633
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mWifiStateTrackerHandler:Landroid/os/Handler;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2635
    :cond_1c1
    monitor-exit p0

    goto/16 :goto_84

    :catchall_1c4
    move-exception v9

    monitor-exit p0
    :try_end_1c6
    .catchall {:try_start_1b8 .. :try_end_1c6} :catchall_1c4

    throw v9

    .line 2538
    nop

    :pswitch_data_1c8
    .packed-switch 0x9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .registers 4
    .parameter "cancelCallback"

    .prologue
    .line 2654
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 2655
    if-eqz p1, :cond_14

    .line 2656
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$1000(Landroid/net/wifi/WifiStateTracker;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v1}, Landroid/net/wifi/WifiStateTracker;->access$900(Landroid/net/wifi/WifiStateTracker;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 2658
    :cond_14
    monitor-exit p0

    return-void

    .line 2654
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
