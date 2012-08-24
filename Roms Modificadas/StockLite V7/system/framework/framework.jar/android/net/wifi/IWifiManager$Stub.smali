.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x1c

.field static final TRANSACTION_acquireWifiLock:I = 0x17

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xc

.field static final TRANSACTION_getDhcpInfo:I = 0x16

.field static final TRANSACTION_getNumAllowedChannels:I = 0x12

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getValidChannelCounts:I = 0x14

.field static final TRANSACTION_getWifiApConfiguration:I = 0x20

.field static final TRANSACTION_getWifiApEnabledState:I = 0x1f

.field static final TRANSACTION_getWifiEnabledState:I = 0x11

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1a

.field static final TRANSACTION_isMulticastEnabled:I = 0x1b

.field static final TRANSACTION_isShowingAccessPointListDialog:I = 0xf

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_reassociate:I = 0xb

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x1d

.field static final TRANSACTION_releaseWifiLock:I = 0x19

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x15

.field static final TRANSACTION_setNumAllowedChannels:I = 0x13

.field static final TRANSACTION_setShowAccessPointListDialog:I = 0x10

.field static final TRANSACTION_setWifiApConfiguration:I = 0x21

.field static final TRANSACTION_setWifiApEnabled:I = 0x1e

.field static final TRANSACTION_setWifiEnabled:I = 0xd

.field static final TRANSACTION_setWifiEnabledDialog:I = 0xe

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x18


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.net.wifi.IWifiManager"

    .line 43
    sparse-switch p1, :sswitch_data_374

    .line 398
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_b
    return v7

    .line 47
    :sswitch_c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 48
    goto :goto_b

    .line 52
    :sswitch_13
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 54
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 56
    goto :goto_b

    .line 60
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_24
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_43

    .line 63
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_37
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 69
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 71
    goto :goto_b

    .line 66
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_43
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_37

    .line 75
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_45
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 79
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_5d

    move v7, v8

    :goto_58
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 81
    goto :goto_b

    :cond_5d
    move v7, v10

    .line 80
    goto :goto_58

    .line 85
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_5f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7e

    move v1, v8

    .line 90
    .local v1, _arg1:Z
    :goto_6f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 91
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v4, :cond_80

    move v7, v8

    :goto_79
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 93
    goto :goto_b

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_7e
    move v1, v10

    .line 89
    goto :goto_6f

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_80
    move v7, v10

    .line 92
    goto :goto_79

    .line 97
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_82
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 101
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_9b

    move v7, v8

    :goto_95
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 103
    goto/16 :goto_b

    :cond_9b
    move v7, v10

    .line 102
    goto :goto_95

    .line 107
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_9d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 109
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_b2

    move v7, v8

    :goto_ac
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 111
    goto/16 :goto_b

    :cond_b2
    move v7, v10

    .line 110
    goto :goto_ac

    .line 115
    .end local v4           #_result:Z
    :sswitch_b4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c9

    move v0, v8

    .line 118
    .local v0, _arg0:Z
    :goto_c0
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 120
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_c9
    move v0, v10

    .line 117
    goto :goto_c0

    .line 124
    :sswitch_cb
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 126
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 128
    goto/16 :goto_b

    .line 132
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_dd
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()Z

    move-result v4

    .line 134
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_f2

    move v7, v8

    :goto_ec
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 136
    goto/16 :goto_b

    :cond_f2
    move v7, v10

    .line 135
    goto :goto_ec

    .line 140
    .end local v4           #_result:Z
    :sswitch_f4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()Z

    move-result v4

    .line 142
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v4, :cond_109

    move v7, v8

    :goto_103
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 144
    goto/16 :goto_b

    :cond_109
    move v7, v10

    .line 143
    goto :goto_103

    .line 148
    .end local v4           #_result:Z
    :sswitch_10b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()Z

    move-result v4

    .line 150
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v4, :cond_120

    move v7, v8

    :goto_11a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 152
    goto/16 :goto_b

    :cond_120
    move v7, v10

    .line 151
    goto :goto_11a

    .line 156
    .end local v4           #_result:Z
    :sswitch_122
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 158
    .local v4, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v4, :cond_139

    .line 160
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_136
    move v7, v8

    .line 166
    goto/16 :goto_b

    .line 164
    :cond_139
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_136

    .line 170
    .end local v4           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_13d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_159

    move v0, v8

    .line 173
    .restart local v0       #_arg0:Z
    :goto_149
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 174
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v4, :cond_15b

    move v7, v8

    :goto_153
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 176
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_159
    move v0, v10

    .line 172
    goto :goto_149

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_15b
    move v7, v10

    .line 175
    goto :goto_153

    .line 180
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_15d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_179

    move v0, v8

    .line 183
    .restart local v0       #_arg0:Z
    :goto_169
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledDialog(Z)Z

    move-result v4

    .line 184
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v4, :cond_17b

    move v7, v8

    :goto_173
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 186
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_179
    move v0, v10

    .line 182
    goto :goto_169

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_17b
    move v7, v10

    .line 185
    goto :goto_173

    .line 190
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_17d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isShowingAccessPointListDialog()Z

    move-result v4

    .line 192
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v4, :cond_192

    move v7, v8

    :goto_18c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 194
    goto/16 :goto_b

    :cond_192
    move v7, v10

    .line 193
    goto :goto_18c

    .line 198
    .end local v4           #_result:Z
    :sswitch_194
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b0

    move v0, v8

    .line 201
    .restart local v0       #_arg0:Z
    :goto_1a0
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setShowAccessPointListDialog(Z)Z

    move-result v4

    .line 202
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_1b2

    move v7, v8

    :goto_1aa
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 204
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_1b0
    move v0, v10

    .line 200
    goto :goto_1a0

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_1b2
    move v7, v10

    .line 203
    goto :goto_1aa

    .line 208
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_1b4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 210
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 212
    goto/16 :goto_b

    .line 216
    .end local v4           #_result:I
    :sswitch_1c6
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNumAllowedChannels()I

    move-result v4

    .line 218
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 220
    goto/16 :goto_b

    .line 224
    .end local v4           #_result:I
    :sswitch_1d8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1f8

    move v1, v8

    .line 229
    .restart local v1       #_arg1:Z
    :goto_1e8
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setNumAllowedChannels(IZ)Z

    move-result v4

    .line 230
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_1fa

    move v7, v8

    :goto_1f2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 232
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_1f8
    move v1, v10

    .line 228
    goto :goto_1e8

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_1fa
    move v7, v10

    .line 231
    goto :goto_1f2

    .line 236
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_1fc
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getValidChannelCounts()[I

    move-result-object v4

    .line 238
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v7, v8

    .line 240
    goto/16 :goto_b

    .line 244
    .end local v4           #_result:[I
    :sswitch_20e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 246
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v4, :cond_223

    move v7, v8

    :goto_21d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 248
    goto/16 :goto_b

    :cond_223
    move v7, v10

    .line 247
    goto :goto_21d

    .line 252
    .end local v4           #_result:Z
    :sswitch_225
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 254
    .local v4, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v4, :cond_23c

    .line 256
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    invoke-virtual {v4, p3, v8}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_239
    move v7, v8

    .line 262
    goto/16 :goto_b

    .line 260
    :cond_23c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_239

    .line 266
    .end local v4           #_result:Landroid/net/DhcpInfo;
    :sswitch_240
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 270
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_26f

    .line 275
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 280
    .local v3, _arg3:Landroid/os/WorkSource;
    :goto_25f
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 281
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v4, :cond_271

    move v7, v8

    :goto_269
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 283
    goto/16 :goto_b

    .line 278
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :cond_26f
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/WorkSource;
    goto :goto_25f

    .restart local v4       #_result:Z
    :cond_271
    move v7, v10

    .line 282
    goto :goto_269

    .line 287
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :sswitch_273
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 291
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_293

    .line 292
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 297
    .local v1, _arg1:Landroid/os/WorkSource;
    :goto_28a
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 299
    goto/16 :goto_b

    .line 295
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :cond_293
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/WorkSource;
    goto :goto_28a

    .line 303
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :sswitch_295
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 306
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 307
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v4, :cond_2ae

    move v7, v8

    :goto_2a8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 309
    goto/16 :goto_b

    :cond_2ae
    move v7, v10

    .line 308
    goto :goto_2a8

    .line 313
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_2b0
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 316
    goto/16 :goto_b

    .line 320
    :sswitch_2be
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 322
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v4, :cond_2d3

    move v7, v8

    :goto_2cd
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 324
    goto/16 :goto_b

    :cond_2d3
    move v7, v10

    .line 323
    goto :goto_2cd

    .line 328
    .end local v4           #_result:Z
    :sswitch_2d5
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 332
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 335
    goto/16 :goto_b

    .line 339
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_2eb
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 342
    goto/16 :goto_b

    .line 346
    :sswitch_2f9
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_323

    .line 349
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 355
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_30c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_325

    move v1, v8

    .line 356
    .local v1, _arg1:Z
    :goto_313
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    .line 357
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v4, :cond_327

    move v7, v8

    :goto_31d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 359
    goto/16 :goto_b

    .line 352
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_323
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_30c

    :cond_325
    move v1, v10

    .line 355
    goto :goto_313

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_327
    move v7, v10

    .line 358
    goto :goto_31d

    .line 363
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_329
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 365
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 367
    goto/16 :goto_b

    .line 371
    .end local v4           #_result:I
    :sswitch_33b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 373
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v4, :cond_352

    .line 375
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_34f
    move v7, v8

    .line 381
    goto/16 :goto_b

    .line 379
    :cond_352
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34f

    .line 385
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_356
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_372

    .line 388
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 393
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_369
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 395
    goto/16 :goto_b

    .line 391
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_372
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_369

    .line 43
    :sswitch_data_374
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_45
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_82
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_dd
        0xa -> :sswitch_f4
        0xb -> :sswitch_10b
        0xc -> :sswitch_122
        0xd -> :sswitch_13d
        0xe -> :sswitch_15d
        0xf -> :sswitch_17d
        0x10 -> :sswitch_194
        0x11 -> :sswitch_1b4
        0x12 -> :sswitch_1c6
        0x13 -> :sswitch_1d8
        0x14 -> :sswitch_1fc
        0x15 -> :sswitch_20e
        0x16 -> :sswitch_225
        0x17 -> :sswitch_240
        0x18 -> :sswitch_273
        0x19 -> :sswitch_295
        0x1a -> :sswitch_2b0
        0x1b -> :sswitch_2be
        0x1c -> :sswitch_2d5
        0x1d -> :sswitch_2eb
        0x1e -> :sswitch_2f9
        0x1f -> :sswitch_329
        0x20 -> :sswitch_33b
        0x21 -> :sswitch_356
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
