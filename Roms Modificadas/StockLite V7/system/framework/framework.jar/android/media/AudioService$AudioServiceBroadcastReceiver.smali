.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 1914
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1914
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1917
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1919
    .local v3, action:Ljava/lang/String;
    const-string v19, "android.intent.action.DOCK_EVENT"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 1920
    const-string v19, "android.intent.extra.DOCK_STATE"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1923
    .local v10, dockState:I
    packed-switch v10, :pswitch_data_6a4

    .line 1932
    const/4 v8, 0x0

    .line 1934
    .local v8, config:I
    :goto_21
    const/16 v19, 0x3

    move/from16 v0, v19

    move v1, v8

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2176
    .end local v8           #config:I
    .end local v10           #dockState:I
    .end local p1
    :cond_29
    :goto_29
    return-void

    .line 1925
    .restart local v10       #dockState:I
    .restart local p1
    :pswitch_2a
    const/4 v8, 0x7

    .line 1926
    .restart local v8       #config:I
    goto :goto_21

    .line 1928
    .end local v8           #config:I
    :pswitch_2c
    const/4 v8, 0x6

    .line 1929
    .restart local v8       #config:I
    goto :goto_21

    .line 1935
    .end local v8           #config:I
    .end local v10           #dockState:I
    :cond_2e
    const-string v19, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12f

    .line 1936
    const-string v19, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1938
    .local v17, state:I
    const-string v19, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 1939
    .local v7, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1940
    .local v4, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x80

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x80

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b8

    const/16 v19, 0x1

    move/from16 v11, v19

    .line 1943
    .local v11, isConnected:Z
    :goto_90
    if-eqz v11, :cond_cb

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_cb

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_cb

    .line 1945
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v19

    if-eqz v19, :cond_bd

    .line 1946
    if-nez v17, :cond_29

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1940
    .end local v11           #isConnected:Z
    :cond_b8
    const/16 v19, 0x0

    move/from16 v11, v19

    goto :goto_90

    .line 1954
    .restart local v11       #isConnected:Z
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1956
    :cond_cb
    if-nez v11, :cond_29

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_dd

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_29

    .line 1959
    :cond_dd
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v19

    if-eqz v19, :cond_106

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4802(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 1971
    :cond_f8
    :goto_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1966
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Z

    move-result v19

    if-eqz v19, :cond_f8

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_f8

    .line 1973
    .end local v4           #address:Ljava/lang/String;
    .end local v7           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v11           #isConnected:Z
    .end local v17           #state:I
    .restart local p1
    :cond_12f
    const-string v19, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21e

    .line 1974
    const-string v19, "android.bluetooth.headset.extra.STATE"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1976
    .restart local v17       #state:I
    const/16 v9, 0x10

    .line 1977
    .local v9, device:I
    const-string v19, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 1978
    .restart local v7       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v4, 0x0

    .line 1979
    .restart local v4       #address:Ljava/lang/String;
    if-eqz v7, :cond_16a

    .line 1980
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1981
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    .line 1982
    .local v6, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v6, :cond_16a

    .line 1983
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v19

    sparse-switch v19, :sswitch_data_6ac

    .line 1995
    .end local v6           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_16a
    :goto_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1df

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1df

    const/16 v19, 0x1

    move/from16 v11, v19

    .line 1998
    .restart local v11       #isConnected:Z
    :goto_19f
    if-eqz v11, :cond_1e4

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1e4

    .line 1999
    const/16 v19, 0x0

    move v0, v9

    move/from16 v1, v19

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_29

    .line 1986
    .end local v11           #isConnected:Z
    .restart local v6       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_1d9
    const/16 v9, 0x20

    .line 1987
    goto :goto_16a

    .line 1989
    :sswitch_1dc
    const/16 v9, 0x40

    goto :goto_16a

    .line 1995
    .end local v6           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_1df
    const/16 v19, 0x0

    move/from16 v11, v19

    goto :goto_19f

    .line 2005
    .restart local v11       #isConnected:Z
    :cond_1e4
    if-nez v11, :cond_29

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_29

    .line 2006
    const/16 v19, 0x1

    move v0, v9

    move/from16 v1, v19

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move v1, v9

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_29

    .line 2012
    .end local v4           #address:Ljava/lang/String;
    .end local v7           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v9           #device:I
    .end local v11           #isConnected:Z
    .end local v17           #state:I
    .restart local p1
    :cond_21e
    const-string v19, "android.intent.action.HEADSET_PLUG"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_504

    .line 2013
    const-string/jumbo v19, "state"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2014
    .restart local v17       #state:I
    const-string v19, "microphone"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2015
    .local v13, microphone:I
    const-string/jumbo v19, "speaker"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2016
    .local v16, speaker:I
    const-string v19, "anc"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2017
    .local v5, anc:I
    const-string v19, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2021
    .local v14, name:Ljava/lang/String;
    if-eqz v13, :cond_2bb

    if-eqz v16, :cond_2bb

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 2023
    .restart local v11       #isConnected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x2000

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2024
    .local v12, isancConnected:Z
    if-nez v17, :cond_357

    if-eqz v11, :cond_357

    if-nez v12, :cond_357

    .line 2025
    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    .end local v11           #isConnected:Z
    .end local v12           #isancConnected:Z
    :cond_2bb
    :goto_2bb
    if-eqz v13, :cond_307

    if-nez v16, :cond_307

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/high16 v20, 0x10

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 2051
    .restart local v11       #isConnected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/high16 v20, 0x40

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2052
    .restart local v12       #isancConnected:Z
    if-nez v17, :cond_3e6

    if-eqz v11, :cond_3e6

    .line 2053
    const/high16 v19, 0x10

    const/16 v20, 0x0

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/high16 v20, 0x10

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    .end local v11           #isConnected:Z
    .end local v12           #isancConnected:Z
    :cond_307
    :goto_307
    if-nez v13, :cond_29

    if-eqz v16, :cond_29

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 2079
    .restart local v11       #isConnected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x4000

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2080
    .restart local v12       #isancConnected:Z
    if-nez v17, :cond_475

    if-eqz v11, :cond_475

    if-nez v12, :cond_475

    .line 2082
    const/16 v19, 0x8

    const/16 v20, 0x0

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2029
    :cond_357
    if-nez v17, :cond_379

    if-eqz v12, :cond_379

    .line 2030
    const/16 v19, 0x2000

    const/16 v20, 0x0

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x2000

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2bb

    .line 2034
    :cond_379
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2bb

    if-nez v11, :cond_2bb

    if-nez v12, :cond_2bb

    .line 2035
    const-string v19, "h2w"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3b8

    const/16 v19, 0x1

    move v0, v5

    move/from16 v1, v19

    if-ne v0, v1, :cond_3b8

    .line 2036
    const/16 v19, 0x2000

    const/16 v20, 0x1

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x2000

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2bb

    .line 2040
    :cond_3b8
    const-string v19, "h2w"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2bb

    if-nez v5, :cond_2bb

    .line 2041
    const/16 v19, 0x4

    const/16 v20, 0x1

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x4

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2bb

    .line 2057
    :cond_3e6
    if-nez v17, :cond_408

    if-eqz v12, :cond_408

    .line 2058
    const/high16 v19, 0x40

    const/16 v20, 0x0

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/high16 v20, 0x40

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_307

    .line 2062
    :cond_408
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_307

    if-nez v11, :cond_307

    if-nez v12, :cond_307

    .line 2063
    const-string v19, "h2w"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_447

    const/16 v19, 0x1

    move v0, v5

    move/from16 v1, v19

    if-ne v0, v1, :cond_447

    .line 2064
    const/high16 v19, 0x40

    const/16 v20, 0x1

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Ljava/lang/Integer;

    const/high16 v21, 0x40

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_307

    .line 2068
    :cond_447
    const-string v19, "h2w"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_307

    if-nez v5, :cond_307

    .line 2069
    const/high16 v19, 0x10

    const/16 v20, 0x1

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Ljava/lang/Integer;

    const/high16 v21, 0x10

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_307

    .line 2086
    :cond_475
    if-nez v17, :cond_497

    if-eqz v12, :cond_497

    .line 2088
    const/16 v19, 0x4000

    const/16 v20, 0x0

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x4000

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2092
    :cond_497
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_29

    if-nez v11, :cond_29

    if-nez v12, :cond_29

    .line 2093
    const-string v19, "h2w"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4d6

    const/16 v19, 0x1

    move v0, v5

    move/from16 v1, v19

    if-ne v0, v1, :cond_4d6

    .line 2094
    const/16 v19, 0x4000

    const/16 v20, 0x1

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x4000

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2098
    :cond_4d6
    const-string v19, "h2w"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_29

    if-nez v5, :cond_29

    .line 2099
    const/16 v19, 0x8

    const/16 v20, 0x1

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x8

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2106
    .end local v5           #anc:I
    .end local v11           #isConnected:Z
    .end local v12           #isancConnected:Z
    .end local v13           #microphone:I
    .end local v14           #name:Ljava/lang/String;
    .end local v16           #speaker:I
    .end local v17           #state:I
    :cond_504
    const-string v19, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_54e

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "preferred_tty_mode"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    packed-switch v19, :pswitch_data_6ba

    .line 2122
    const-string v18, "off"

    .line 2124
    .local v18, tty_mode:Ljava/lang/String;
    :goto_527
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "tty_mode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_29

    .line 2112
    .end local v18           #tty_mode:Ljava/lang/String;
    :pswitch_544
    const-string v18, "full"

    .line 2113
    .restart local v18       #tty_mode:Ljava/lang/String;
    goto :goto_527

    .line 2115
    .end local v18           #tty_mode:Ljava/lang/String;
    :pswitch_547
    const-string/jumbo v18, "vco"

    .line 2116
    .restart local v18       #tty_mode:Ljava/lang/String;
    goto :goto_527

    .line 2118
    .end local v18           #tty_mode:Ljava/lang/String;
    :pswitch_54b
    const-string v18, "hco"

    .line 2119
    .restart local v18       #tty_mode:Ljava/lang/String;
    goto :goto_527

    .line 2125
    .end local v18           #tty_mode:Ljava/lang/String;
    :cond_54e
    const-string v19, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5bf

    .line 2126
    const-string v19, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2128
    .restart local v17       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v19

    monitor-enter v19

    .line 2129
    :try_start_572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5b3

    .line 2130
    packed-switch v17, :pswitch_data_6c4

    .line 2138
    const/16 v17, -0x1

    .line 2141
    :goto_587
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_5b3

    .line 2142
    new-instance v15, Landroid/content/Intent;

    const-string v20, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2143
    .local v15, newIntent:Landroid/content/Intent;
    const-string v20, "android.media.extra.SCO_AUDIO_STATE"

    move-object v0, v15

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2147
    .end local v15           #newIntent:Landroid/content/Intent;
    :cond_5b3
    monitor-exit v19

    goto/16 :goto_29

    :catchall_5b6
    move-exception v20

    monitor-exit v19
    :try_end_5b8
    .catchall {:try_start_572 .. :try_end_5b8} :catchall_5b6

    throw v20

    .line 2132
    :pswitch_5b9
    const/16 v17, 0x1

    .line 2133
    goto :goto_587

    .line 2135
    :pswitch_5bc
    const/16 v17, 0x0

    .line 2136
    goto :goto_587

    .line 2148
    .end local v17           #state:I
    :cond_5bf
    const-string v19, "HDMI_CONNECTED"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5f2

    .line 2149
    const-string v19, "AudioService"

    const-string v20, "HDMI connected"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const/16 v19, 0x800

    const/16 v20, 0x1

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x800

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2154
    :cond_5f2
    const-string v19, "HDMI_DISCONNECTED"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_622

    .line 2155
    const-string v19, "AudioService"

    const-string v20, "HDMI disconnected"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const/16 v19, 0x800

    const/16 v20, 0x0

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x800

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2160
    :cond_622
    const-string v19, "android.intent.action.FM"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 2161
    const-string v19, "AudioService"

    const-string v20, "FM Intent received"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const-string/jumbo v19, "state"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2163
    .restart local v17       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x1000

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 2164
    .restart local v11       #isConnected:Z
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_682

    if-nez v11, :cond_682

    .line 2165
    const/16 v19, 0x1000

    const/16 v20, 0x1

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x1000

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 2169
    :cond_682
    if-nez v17, :cond_29

    if-eqz v11, :cond_29

    .line 2170
    const/16 v19, 0x1000

    const/16 v20, 0x0

    const-string v21, ""

    invoke-static/range {v19 .. v21}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v19

    const/16 v20, 0x1000

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 1923
    :pswitch_data_6a4
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2c
    .end packed-switch

    .line 1983
    :sswitch_data_6ac
    .sparse-switch
        0x404 -> :sswitch_1d9
        0x408 -> :sswitch_1d9
        0x420 -> :sswitch_1dc
    .end sparse-switch

    .line 2108
    :pswitch_data_6ba
    .packed-switch 0x1
        :pswitch_544
        :pswitch_54b
        :pswitch_547
    .end packed-switch

    .line 2130
    :pswitch_data_6c4
    .packed-switch 0x0
        :pswitch_5bc
        :pswitch_5b9
    .end packed-switch
.end method
