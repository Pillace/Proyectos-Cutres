.class public Lcom/broadcom/bt/service/hid/BluetoothHIDService;
.super Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;
.source "BluetoothHIDService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_HID_SERVICE:Ljava/lang/String; = "bluetooth_hid"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PERM_WARNING:Ljava/lang/String; = "Need BLUETOOTH_ADMIN permission"

.field private static final HH_STATUS_DB_FULL:I = 0x21

.field private static final HH_STATUS_DRIVER_ERR:I = 0x22

.field private static final HH_STATUS_ERR:I = 0x20

.field private static final HH_STATUS_OK:I = 0x0

.field private static final MESSAGE_CORRUPTED_INFO:I = 0x3

.field private static final MESSAGE_DISABLE_BT:I = 0x1

.field private static final MESSAGE_TOO_MANY_DEV:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothHIDService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 69
    invoke-static {}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->classInitNative()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .registers 6
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;-><init>()V

    .line 72
    new-instance v1, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;-><init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v1, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;-><init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    .line 149
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 152
    iput-object p2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 153
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v1, :cond_24

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 159
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->initNative()V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 171
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothEnable()V

    .line 173
    :cond_50
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/hid/BluetoothHIDService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/hid/BluetoothHIDService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->handleBtDisableMsg(I)V

    return-void
.end method

.method private native addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private declared-synchronized completeDisable()V
    .registers 4

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    const-string v1, "BluetoothHIDService"

    const-string v2, "HID profile has been disconnected."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disableNative()V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.PROFILE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 200
    monitor-exit p0

    return-void

    .line 194
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native connectHidNative(Ljava/lang/String;I)V
.end method

.method private native disableNative()V
.end method

.method private native disconnectHidNative(Ljava/lang/String;)V
.end method

.method private native enableNative()V
.end method

.method private declared-synchronized findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 5
    .parameter "address"

    .prologue
    .line 657
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 658
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_26

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v0

    .line 662
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :goto_22
    monitor-exit p0

    return-object v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_22

    .line 657
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native getProtocolModeNative(Ljava/lang/String;)V
.end method

.method private native getReportNative(Ljava/lang/String;BBI)V
.end method

.method private declared-synchronized handleBtDisableMsg(I)V
    .registers 10
    .parameter "delayCount"

    .prologue
    const-string v5, "BluetoothHIDService"

    .line 203
    monitor-enter p0

    :try_start_3
    const-string v5, "BluetoothHIDService"

    const-string v6, "handleBtDisableMsg"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v5, :cond_1a

    .line 206
    const-string v5, "BluetoothHIDService"

    const-string v6, "#### handleBtDisableMsg: mDevices is null ####"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_30

    .line 245
    :goto_18
    monitor-exit p0

    return-void

    .line 211
    :cond_1a
    :try_start_1a
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 212
    const-string v5, "BluetoothHIDService"

    const-string v6, "handleBtDisableMsg: mDevices is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 214
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_30

    goto :goto_18

    .line 203
    :catchall_30
    move-exception v5

    monitor-exit p0

    throw v5

    .line 218
    :cond_33
    const/4 v1, 0x1

    .line 219
    .local v1, disconnectDone:Z
    :try_start_34
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 220
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 221
    .local v4, state:I
    const-string v5, "BluetoothHIDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBtDisableMsg: state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    packed-switch v4, :pswitch_data_92

    goto :goto_3e

    .line 226
    :pswitch_6a
    if-lez p1, :cond_6e

    .line 227
    const/4 v1, 0x0

    goto :goto_3e

    .line 230
    :cond_6e
    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_3e

    .line 236
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #state:I
    :cond_73
    if-eqz v1, :cond_81

    .line 237
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 238
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 239
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V

    goto :goto_18

    .line 242
    :cond_81
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v5, v6, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 243
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_90
    .catchall {:try_start_34 .. :try_end_90} :catchall_30

    goto :goto_18

    .line 222
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method

.method private native initNative()V
.end method

.method private declared-synchronized onBluetoothDisable()V
    .registers 10

    .prologue
    const-string v5, "BluetoothHIDService"

    .line 248
    monitor-enter p0

    :try_start_3
    const-string v5, "BluetoothHIDService"

    const-string v6, "onBluetoothDisable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v5, :cond_1a

    .line 251
    const-string v5, "BluetoothHIDService"

    const-string v6, "#### onBluetoothDisable: mDevices is null ####"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_30

    .line 289
    :goto_18
    monitor-exit p0

    return-void

    .line 256
    :cond_1a
    :try_start_1a
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 257
    const-string v5, "BluetoothHIDService"

    const-string v6, "onBluetoothDisable: mDevices is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 259
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_30

    goto :goto_18

    .line 248
    :catchall_30
    move-exception v5

    monitor-exit p0

    throw v5

    .line 263
    :cond_33
    const/4 v1, 0x1

    .line 264
    .local v1, disconnectDone:Z
    :try_start_34
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 265
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 266
    .local v4, state:I
    const-string v5, "BluetoothHIDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBluetoothDisable: state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    packed-switch v4, :pswitch_data_98

    goto :goto_3e

    .line 270
    :pswitch_6a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 271
    const/4 v5, 0x3

    invoke-direct {p0, v0, v4, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 272
    const/4 v1, 0x0

    .line 273
    goto :goto_3e

    .line 275
    :pswitch_77
    const/4 v1, 0x0

    goto :goto_3e

    .line 280
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #state:I
    :cond_79
    if-eqz v1, :cond_87

    .line 281
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 282
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 283
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V

    goto :goto_18

    .line 286
    :cond_87
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 287
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_97
    .catchall {:try_start_34 .. :try_end_97} :catchall_30

    goto :goto_18

    .line 267
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_6a
        :pswitch_77
    .end packed-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .registers 3

    .prologue
    const-string v0, "BluetoothHIDService"

    .line 185
    monitor-enter p0

    :try_start_3
    const-string v0, "BluetoothHIDService"

    const-string v1, "onBluetoothEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_15

    .line 187
    const-string v0, "BluetoothHIDService"

    const-string v1, "#### onBluetoothEnable: mDevices is not null ####"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 190
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->enableNative()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    .line 191
    monitor-exit p0

    return-void

    .line 185
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHidConnected(Ljava/lang/String;I)V
    .registers 10
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v3, "BluetoothHIDService"

    .line 538
    monitor-enter p0

    :try_start_3
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidConnected: address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v3, :cond_32

    .line 541
    const-string v3, "BluetoothHIDService"

    const-string v4, "#### onHidConnected: mDevices = null ####"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_7d

    .line 574
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    .line 545
    :cond_32
    :try_start_32
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 546
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_4f

    .line 547
    const-string v3, "BluetoothHIDService"

    const-string v4, "onHidConnected: device = null, must be incoming connection."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 549
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_4f
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 553
    .local v2, state:I
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidConnected: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    if-nez p2, :cond_80

    .line 556
    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 557
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_30

    .line 558
    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_7c
    .catchall {:try_start_32 .. :try_end_7c} :catchall_7d

    goto :goto_30

    .line 538
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :catchall_7d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 561
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #state:I
    :cond_80
    and-int/lit16 v3, p2, 0xff

    const/16 v4, 0x21

    if-ne v3, v4, :cond_9c

    .line 562
    const/4 v3, 0x0

    :try_start_87
    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 564
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    shr-int/lit8 v5, p2, 0x8

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 565
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_30

    .line 567
    .end local v1           #msg:Landroid/os/Message;
    :cond_9c
    const/16 v3, 0x22

    if-ne p2, v3, :cond_a8

    .line 568
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 569
    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_30

    .line 572
    :cond_a8
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_ac
    .catchall {:try_start_87 .. :try_end_ac} :catchall_7d

    goto :goto_30
.end method

.method private declared-synchronized onHidDisabled(I)V
    .registers 5
    .parameter "status"

    .prologue
    const-string v0, "BluetoothHIDService"

    .line 530
    monitor-enter p0

    :try_start_3
    const-string v0, "BluetoothHIDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHidDisabled: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-eqz p1, :cond_35

    .line 533
    const-string v0, "BluetoothHIDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops, failed to disable HID profile. status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 535
    :cond_35
    monitor-exit p0

    return-void

    .line 530
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHidDisconnected(Ljava/lang/String;I)V
    .registers 8
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 577
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidDisconnected: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_28

    .line 580
    const-string v2, "BluetoothHIDService"

    const-string v3, "#### onHidDisconnected: mDevices = null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_36

    .line 596
    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    .line 584
    :cond_28
    :try_start_28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 585
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_39

    .line 586
    const-string v2, "BluetoothHIDService"

    const-string v3, "onHidDisconnected: device = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_36

    goto :goto_26

    .line 577
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2

    .line 590
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_39
    :try_start_39
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 591
    .local v1, state:I
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidDisconnected: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    if-nez p2, :cond_26

    .line 594
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_36

    goto :goto_26
.end method

.method private declared-synchronized onHidEnabled(I)V
    .registers 16
    .parameter "status"

    .prologue
    const-string v11, "BluetoothHIDService"

    .line 485
    monitor-enter p0

    :try_start_3
    const-string v11, "BluetoothHIDService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onHidEnabled: status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    if-eqz p1, :cond_37

    .line 488
    const-string v11, "BluetoothHIDService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Oops, failed to enable HID profile. status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_47

    .line 527
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    .line 492
    :cond_37
    :try_start_37
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v11}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_4a

    .line 493
    const-string v11, "BluetoothHIDService"

    const-string v12, "Oops, onHidEnabled but BT is disabled."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_47

    goto :goto_35

    .line 485
    :catchall_47
    move-exception v11

    monitor-exit p0

    throw v11

    .line 497
    :cond_4a
    :try_start_4a
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v11}, Landroid/server/BluetoothService;->listHidInfo()Ljava/lang/String;

    move-result-object v8

    .line 498
    .local v8, hidList:Ljava/lang/String;
    if-eqz v8, :cond_35

    .line 502
    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, addresses:[Ljava/lang/String;
    if-nez v1, :cond_62

    .line 504
    const-string v11, "BluetoothHIDService"

    const-string v12, "addresses = null"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 508
    :cond_62
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_65
    if-ge v9, v10, :cond_35

    aget-object v0, v2, v9

    .line 509
    .local v0, address:Ljava/lang/String;
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v11, v0}, Landroid/server/BluetoothService;->getHidInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, hidInfo:Ljava/lang/String;
    if-eqz v7, :cond_b4

    .line 511
    invoke-direct {p0, v0, v7}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 514
    .local v5, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v5, :cond_b4

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_b4

    .line 515
    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_89
    .catchall {:try_start_4a .. :try_end_89} :catchall_47

    move-result-object v4

    .line 516
    .local v4, attrMaskStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 518
    .local v3, attrMask:I
    const/16 v11, 0x10

    :try_start_8d
    invoke-static {v4, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 519
    const-string v11, "BluetoothHIDService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hidInfo.attrMask = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    or-int/lit8 v12, v3, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b4
    .catchall {:try_start_8d .. :try_end_b4} :catchall_47
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_b4} :catch_b7

    .line 508
    .end local v3           #attrMask:I
    .end local v4           #attrMaskStr:Ljava/lang/String;
    .end local v5           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_b4
    :goto_b4
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    .line 521
    .restart local v3       #attrMask:I
    .restart local v4       #attrMaskStr:Ljava/lang/String;
    .restart local v5       #device:Landroid/bluetooth/BluetoothDevice;
    :catch_b7
    move-exception v11

    move-object v6, v11

    .line 522
    .local v6, e:Ljava/lang/NumberFormatException;
    :try_start_b9
    const-string v11, "BluetoothHIDService"

    const-string v12, ""

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_47

    goto :goto_b4
.end method

.method private declared-synchronized onHidInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .parameter "address"
    .parameter "info"
    .parameter "attrMask"

    .prologue
    const/4 v6, 0x3

    const-string v3, "BluetoothHIDService"

    .line 624
    monitor-enter p0

    :try_start_4
    const-string v3, "BluetoothHIDService"

    const-string v4, "onHidInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v3, :cond_18

    .line 627
    const-string v3, "BluetoothHIDService"

    const-string v4, "#### onHidInfo: mDevices = null ####"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_26

    .line 654
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 631
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 632
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_29

    .line 633
    const-string v3, "BluetoothHIDService"

    const-string v4, "onHidInfo: device = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_26

    goto :goto_16

    .line 624
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_26
    move-exception v3

    monitor-exit p0

    throw v3

    .line 637
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_29
    if-eqz p2, :cond_34

    .line 638
    :try_start_2b
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1, p2}, Landroid/server/BluetoothService;->addHidInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0, v0, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setAttrMask(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_16

    .line 642
    :cond_34
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 643
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 645
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 646
    .local v2, state:I
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidInfo: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-eq v2, v6, :cond_16

    if-eqz v2, :cond_16

    .line 650
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 651
    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_69
    .catchall {:try_start_2b .. :try_end_69} :catchall_26

    goto :goto_16
.end method

.method private declared-synchronized onHidVup(Ljava/lang/String;I)V
    .registers 8
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 599
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidVup: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_28

    .line 602
    const-string v2, "BluetoothHIDService"

    const-string v3, "#### onHidVup: mDevices = null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_36

    .line 621
    :goto_26
    monitor-exit p0

    return-void

    .line 606
    :cond_28
    :try_start_28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 607
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_39

    .line 608
    const-string v2, "BluetoothHIDService"

    const-string v3, "onHidVup: device = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_36

    goto :goto_26

    .line 599
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2

    .line 612
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_39
    :try_start_39
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 613
    .local v1, state:I
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidVup: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-nez p2, :cond_5b

    .line 616
    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 620
    :cond_5b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_36

    goto :goto_26
.end method

.method private native sendDataNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private declared-synchronized setAttrMask(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8
    .parameter "device"
    .parameter "attrMask"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 453
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAttrMask: attrMask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_2a

    .line 456
    const-string v2, "BluetoothHIDService"

    const-string/jumbo v3, "setAttrMask() but mDevices is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_47

    .line 467
    :goto_28
    monitor-exit p0

    return-void

    .line 460
    :cond_2a
    move v0, p2

    .line 461
    .local v0, intValue:I
    :try_start_2b
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 462
    .local v1, value:Ljava/lang/Integer;
    if-eqz v1, :cond_3d

    .line 463
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 466
    :cond_3d
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_47

    goto :goto_28

    .line 453
    .end local v0           #intValue:I
    .end local v1           #value:Ljava/lang/Integer;
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native setProtocolModeNative(Ljava/lang/String;B)V
.end method

.method private native setReportNative(Ljava/lang/String;BLjava/lang/String;)V
.end method

.method private setState(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 10
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    .line 414
    if-ne p3, p2, :cond_3

    .line 438
    :goto_2
    return-void

    .line 418
    :cond_3
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setState: state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v3, 0x4

    if-eq p3, v3, :cond_60

    .line 422
    shl-int/lit8 v0, p3, 0x10

    .line 427
    .local v0, intValue:I
    :goto_2b
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 428
    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_3e

    .line 429
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 432
    :cond_3e
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 436
    const-string v3, "com.broadcom.bt.service.hid.extra.STATE"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    .line 425
    .end local v0           #intValue:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_60
    const/4 v0, 0x0

    .restart local v0       #intValue:I
    goto :goto_2b
.end method

.method private native virtualUnplugHidNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .parameter "device"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "BluetoothHIDService"

    .line 292
    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "BluetoothHIDService"

    const-string v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 300
    const-string v1, "BluetoothHIDService"

    const-string v2, "Oops, connect but BT is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_84

    move v1, v4

    .line 325
    :goto_25
    monitor-exit p0

    return v1

    .line 303
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v1, :cond_34

    .line 304
    const-string v1, "BluetoothHIDService"

    const-string v2, "#### connect but mDevices is null ####"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 305
    goto :goto_25

    .line 309
    :cond_34
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 310
    const-string v1, "BluetoothHIDService"

    const-string v2, "connect new device"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, state:I
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_4e
    if-eqz v0, :cond_6f

    .line 319
    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect device but state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 320
    goto :goto_25

    .line 315
    .end local v0           #state:I
    :cond_6a
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .restart local v0       #state:I
    goto :goto_4e

    .line 323
    :cond_6f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->connectHidNative(Ljava/lang/String;I)V

    .line 324
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_82
    .catchall {:try_start_27 .. :try_end_82} :catchall_84

    move v1, v5

    .line 325
    goto :goto_25

    .line 292
    .end local v0           #state:I
    :catchall_84
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 329
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v2, "BluetoothHIDService"

    const-string v3, "disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_24

    .line 333
    const-string v2, "BluetoothHIDService"

    const-string v3, "Oops, disconnect but BT is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_30

    .line 356
    :goto_22
    monitor-exit p0

    return-void

    .line 336
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_33

    .line 337
    const-string v2, "BluetoothHIDService"

    const-string v3, "#### disconnect but mDevices is null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_30

    goto :goto_22

    .line 329
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2

    .line 340
    :cond_33
    :try_start_33
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 341
    const-string v2, "BluetoothHIDService"

    const-string v3, "disconnect: no such HID device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 345
    :cond_43
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 346
    .local v1, state:I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, address:Ljava/lang/String;
    packed-switch v1, :pswitch_data_70

    .line 354
    :pswitch_4e
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 355
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_22

    .line 350
    :pswitch_56
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect: no action, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_33 .. :try_end_6e} :catchall_30

    goto :goto_22

    .line 347
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_56
        :pswitch_4e
        :pswitch_4e
        :pswitch_56
    .end packed-switch
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->cleanupNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 180
    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->finalize()V

    .line 182
    return-void

    .line 180
    :catchall_7
    move-exception v0

    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getAttrMask(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 441
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1e

    if-nez v1, :cond_9

    move v1, v2

    .line 449
    :goto_7
    monitor-exit p0

    return v1

    .line 445
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 446
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_15

    move v1, v2

    .line 447
    goto :goto_7

    .line 449
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1e

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    goto :goto_7

    .line 441
    .end local v0           #value:Ljava/lang/Integer;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;
    .registers 7

    .prologue
    .line 470
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 473
    .local v1, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 474
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 475
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 476
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3c

    goto :goto_25

    .line 470
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_3c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 481
    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3f
    :try_start_3f
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_3c

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 389
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    move-result v0

    monitor-exit p0

    return v0

    .line 389
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .parameter "device"

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getProtocolModeNative(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 6
    .parameter "device"
    .parameter "reportType"
    .parameter "reportId"
    .parameter "bufferSize"

    .prologue
    .line 683
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getReportNative(Ljava/lang/String;BBI)V

    .line 684
    return-void
.end method

.method public declared-synchronized getState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 402
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1c

    if-nez v1, :cond_9

    move v1, v2

    .line 410
    :goto_7
    monitor-exit p0

    return v1

    .line 406
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 407
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_15

    move v1, v2

    .line 408
    goto :goto_7

    .line 410
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    goto :goto_7

    .line 402
    .end local v0           #value:Ljava/lang/Integer;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .registers 4
    .parameter "device"
    .parameter "cData"

    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->sendDataNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method public declared-synchronized setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 396
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    move-result v0

    monitor-exit p0

    return v0

    .line 396
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 4
    .parameter "device"
    .parameter "protocolMode"

    .prologue
    .line 676
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setProtocolModeNative(Ljava/lang/String;B)V

    .line 677
    return-void
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)V
    .registers 5
    .parameter "device"
    .parameter "reportType"
    .parameter "cData"

    .prologue
    .line 690
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setReportNative(Ljava/lang/String;BLjava/lang/String;)V

    .line 691
    return-void
.end method

.method public declared-synchronized virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 359
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v2, "BluetoothHIDService"

    const-string/jumbo v3, "virtualUnplug"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_25

    .line 363
    const-string v2, "BluetoothHIDService"

    const-string v3, "Oops, virtualUnplug but BT is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_31

    .line 386
    :goto_23
    monitor-exit p0

    return-void

    .line 366
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_34

    .line 367
    const-string v2, "BluetoothHIDService"

    const-string v3, "#### virtualUnplug but mDevices is null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_31

    goto :goto_23

    .line 359
    :catchall_31
    move-exception v2

    monitor-exit p0

    throw v2

    .line 370
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 371
    const-string v2, "BluetoothHIDService"

    const-string/jumbo v3, "virtualUnplug: no such HID device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 375
    :cond_45
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 376
    .local v1, state:I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, address:Ljava/lang/String;
    packed-switch v1, :pswitch_data_72

    .line 384
    :pswitch_50
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->virtualUnplugHidNative(Ljava/lang/String;)V

    .line 385
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_23

    .line 380
    :pswitch_58
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virtualUnplug: no action, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_34 .. :try_end_71} :catchall_31

    goto :goto_23

    .line 377
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_58
        :pswitch_50
        :pswitch_50
        :pswitch_58
    .end packed-switch
.end method
