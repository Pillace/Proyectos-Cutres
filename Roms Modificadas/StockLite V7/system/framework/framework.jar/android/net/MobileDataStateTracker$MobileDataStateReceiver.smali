.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 170
    monitor-enter p0

    .line 173
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 174
    .local v7, tm:Landroid/telephony/TelephonyManager;
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/MobileDataStateTracker;->setRoamingStatus(Z)V

    .line 175
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v11

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/MobileDataStateTracker;->setSubtype(ILjava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_229

    .line 178
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10, p2}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    .line 179
    .local v6, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string/jumbo v10, "reason"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, reason:Ljava/lang/String;
    const-string v10, "apn"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, apnName:Ljava/lang/String;
    const-string v10, "apnType"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, apnTypeList:Ljava/lang/String;
    const-string v10, "networkUnvailable"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 190
    .local v9, unavailable:Z
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    iget-object v10, v10, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v9, :cond_b3

    const/4 v11, 0x1

    :goto_4e
    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 192
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10, v1}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b5

    .line 194
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10, v0}, Landroid/net/MobileDataStateTracker;->access$302(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Z

    move-result v10

    if-nez v10, :cond_ba

    .line 202
    sget-object v10, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v6, v10, :cond_b1

    .line 203
    const-string v10, "MobileDataStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "replacing old mInterfaceName ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    iget-object v12, v12, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "iface"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v11, "iface"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 209
    :cond_b1
    monitor-exit p0

    .line 316
    .end local v0           #apnName:Ljava/lang/String;
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v5           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v9           #unavailable:Z
    .end local p1
    :goto_b2
    return-void

    .line 190
    .restart local v0       #apnName:Ljava/lang/String;
    .restart local v1       #apnTypeList:Ljava/lang/String;
    .restart local v5       #reason:Ljava/lang/String;
    .restart local v6       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v9       #unavailable:Z
    .restart local p1
    :cond_b3
    const/4 v11, 0x0

    goto :goto_4e

    .line 212
    :cond_b5
    monitor-exit p0

    goto :goto_b2

    .line 315
    .end local v0           #apnName:Ljava/lang/String;
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v5           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    .end local v9           #unavailable:Z
    .end local p1
    :catchall_b7
    move-exception v10

    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_1 .. :try_end_b9} :catchall_b7

    throw v10

    .line 215
    .restart local v0       #apnName:Ljava/lang/String;
    .restart local v1       #apnTypeList:Ljava/lang/String;
    .restart local v5       #reason:Ljava/lang/String;
    .restart local v6       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v7       #tm:Landroid/telephony/TelephonyManager;
    .restart local v9       #unavailable:Z
    .restart local p1
    :cond_ba
    :try_start_ba
    const-string v10, "MobileDataStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Received state= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", old= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", reason= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v5, :cond_11e

    const-string v12, "(unspecified)"

    :goto_ef
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", apnTypeList= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v10

    if-eq v10, v6, :cond_11c

    .line 221
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10, v6}, Landroid/net/MobileDataStateTracker;->access$602(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;

    .line 222
    sget-object v10, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_296

    .line 315
    .end local v0           #apnName:Ljava/lang/String;
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v5           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v9           #unavailable:Z
    .end local p1
    :cond_11c
    :goto_11c
    monitor-exit p0

    goto :goto_b2

    .restart local v0       #apnName:Ljava/lang/String;
    .restart local v1       #apnTypeList:Ljava/lang/String;
    .restart local v5       #reason:Ljava/lang/String;
    .restart local v6       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v9       #unavailable:Z
    .restart local p1
    :cond_11e
    move-object v12, v5

    .line 215
    goto :goto_ef

    .line 224
    :pswitch_120
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v10}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v10

    if-eqz v10, :cond_134

    .line 225
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$402(Landroid/net/MobileDataStateTracker;Z)Z

    .line 226
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 229
    :cond_134
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v10, v11, v5, v0}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v2, 0x1

    .line 231
    .local v2, doReset:Z
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_177

    .line 233
    const-string v10, "default"

    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_187

    const/4 v10, 0x5

    move v8, v10

    .line 236
    .local v8, typeToCheck:I
    :goto_155
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v10, :cond_163

    .line 237
    const-string v10, "connectivity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 241
    :cond_163
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v10, :cond_177

    .line 242
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 244
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_177

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_177

    .line 245
    const/4 v2, 0x0

    .line 249
    .end local v4           #info:Landroid/net/NetworkInfo;
    .end local v8           #typeToCheck:I
    :cond_177
    if-eqz v2, :cond_11c

    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    iget-object v10, v10, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v10, :cond_11c

    .line 250
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    iget-object v10, v10, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    goto :goto_11c

    .line 233
    .restart local p1
    :cond_187
    const/4 v10, 0x0

    move v8, v10

    goto :goto_155

    .line 261
    .end local v2           #doReset:Z
    :pswitch_18a
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v10, v11, v5, v0}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11c

    .line 264
    :pswitch_192
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v10, v11, v5, v0}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11c

    .line 267
    :pswitch_19a
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v11, "iface"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 268
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    iget-object v10, v10, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-nez v10, :cond_1b1

    .line 269
    const-string v10, "MobileDataStateTracker"

    const-string v11, "CONNECTED event did not supply interface name."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1b1
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_220

    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "default"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d5

    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_220

    .line 280
    :cond_1d5
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    iget-object v10, v10, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v10, :cond_220

    .line 281
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "net."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    iget-object v11, v11, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".gw"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, gw:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v3}, Landroid/net/NetworkUtils;->lookupHost(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    .line 284
    const-string v10, "MobileDataStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CONNECTED interface name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    iget-object v12, v12, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v3           #gw:Ljava/lang/String;
    :cond_220
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v10, v11, v5, v0}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 306
    .end local v0           #apnName:Ljava/lang/String;
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v5           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v9           #unavailable:Z
    :cond_229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11c

    .line 308
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$402(Landroid/net/MobileDataStateTracker;Z)Z

    .line 309
    const-string/jumbo v10, "reason"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .restart local v5       #reason:Ljava/lang/String;
    const-string v10, "apn"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0       #apnName:Ljava/lang/String;
    const-string v10, "MobileDataStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " broadcast"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_27b

    const-string v11, ""

    :goto_26f
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v10, v11, v5, v0}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 311
    :cond_27b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_293
    .catchall {:try_start_ba .. :try_end_293} :catchall_b7

    move-result-object v11

    goto :goto_26f

    .line 222
    nop

    :pswitch_data_296
    .packed-switch 0x1
        :pswitch_120
        :pswitch_18a
        :pswitch_192
        :pswitch_19a
    .end packed-switch
.end method
