.class Landroid/bluetooth/BluetoothDeviceProfileState$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x66

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 118
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 168
    :cond_1d
    :goto_1d
    return-void

    .line 120
    :cond_1e
    const-string v7, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 121
    const-string v7, "android.bluetooth.headset.extra.STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 122
    .local v4, newState:I
    const-string v7, "android.bluetooth.headset.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 123
    .local v5, oldState:I
    const-string v7, "android.bluetooth.headset.extra.DISCONNECT_INITIATOR"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 127
    .local v2, initiator:I
    if-ne v4, v9, :cond_3f

    .line 128
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v7, v10}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$600(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 130
    :cond_3f
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v7, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$702(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 131
    if-nez v4, :cond_4e

    if-nez v2, :cond_4e

    .line 133
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 135
    :cond_4e
    if-eq v4, v9, :cond_52

    if-nez v4, :cond_1d

    .line 137
    :cond_52
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1d

    .line 139
    .end local v2           #initiator:I
    .end local v4           #newState:I
    .end local v5           #oldState:I
    :cond_58
    const-string v7, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 140
    const-string v7, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 141
    .restart local v4       #newState:I
    const-string v7, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 142
    .restart local v5       #oldState:I
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v7, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$802(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 144
    if-ne v4, v9, :cond_78

    .line 145
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v7, v10}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$600(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 147
    :cond_78
    if-eq v5, v9, :cond_7d

    const/4 v7, 0x4

    if-ne v5, v7, :cond_86

    :cond_7d
    if-nez v4, :cond_86

    .line 150
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 152
    :cond_86
    if-eq v4, v9, :cond_8a

    if-nez v4, :cond_1d

    .line 154
    :cond_8a
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1d

    .line 156
    .end local v4           #newState:I
    .end local v5           #oldState:I
    :cond_90
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 159
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1d

    .line 160
    :cond_9e
    const-string v7, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 161
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 162
    const-string v7, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 164
    .local v6, val:I
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x68

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 165
    .local v3, msg:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 166
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1d
.end method
