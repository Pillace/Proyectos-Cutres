.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .registers 3
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 175
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private connectToSupplicant()Z
    .registers 4

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 301
    .local v0, connectTries:I
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->connectToSupplicant()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 302
    const/4 v2, 0x1

    .line 310
    :goto_e
    return v2

    .line 304
    :cond_f
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1a

    .line 305
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$300(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1

    .line 310
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_1a
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_e
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 318
    if-nez p1, :cond_3

    .line 328
    :cond_2
    :goto_2
    return-void

    .line 321
    :cond_3
    const-string v0, "STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 322
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStopped()V

    goto :goto_2

    .line 323
    :cond_15
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 324
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStarted()V

    goto :goto_2

    .line 325
    :cond_27
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverHung()V

    goto :goto_2
.end method

.method private handlePasswordKeyMayBeIncorrect()V
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyPasswordKeyMayBeIncorrect()V

    .line 315
    return-void
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .registers 20
    .parameter "dataString"

    .prologue
    .line 367
    const-string v15, " "

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, dataTokens:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 370
    .local v2, BSSID:Ljava/lang/String;
    const/4 v9, -0x1

    .line 371
    .local v9, networkId:I
    const/4 v10, -0x1

    .line 372
    .local v10, newState:I
    move-object v3, v4

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_f
    if-ge v6, v7, :cond_73

    aget-object v13, v3, v6

    .line 373
    .local v13, token:Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, nameValue:[Ljava/lang/String;
    array-length v15, v8

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_24

    .line 372
    :cond_21
    :goto_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 378
    :cond_24
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, "BSSID"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_33

    .line 379
    const/4 v15, 0x1

    aget-object v2, v8, v15

    .line 380
    goto :goto_21

    .line 385
    :cond_33
    const/4 v15, 0x1

    :try_start_34
    aget-object v15, v8, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_39} :catch_47

    move-result v14

    .line 391
    .local v14, value:I
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, "id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_65

    .line 392
    move v9, v14

    goto :goto_21

    .line 386
    .end local v14           #value:I
    :catch_47
    move-exception v15

    move-object v5, v15

    .line 387
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v15, "WifiMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "STATE-CHANGE non-integer parameter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 393
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v14       #value:I
    :cond_65
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string/jumbo v16, "state"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 394
    move v10, v14

    goto :goto_21

    .line 398
    .end local v8           #nameValue:[Ljava/lang/String;
    .end local v13           #token:Ljava/lang/String;
    .end local v14           #value:I
    :cond_73
    const/4 v15, -0x1

    if-ne v10, v15, :cond_77

    .line 411
    .end local v3           #arr$:[Ljava/lang/String;
    :goto_76
    return-void

    .line 400
    .restart local v3       #arr$:[Ljava/lang/String;
    :cond_77
    sget-object v11, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 401
    .local v11, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_7f
    if-ge v6, v7, :cond_8a

    aget-object v12, v3, v6

    .line 402
    .local v12, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v12}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v15

    if-ne v15, v10, :cond_b6

    .line 403
    move-object v11, v12

    .line 407
    .end local v12           #state:Landroid/net/wifi/SupplicantState;
    :cond_8a
    sget-object v15, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v11, v15, :cond_a9

    .line 408
    const-string v15, "WifiMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid supplicant state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    move-object v15, v0

    invoke-static {v15}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v15

    invoke-virtual {v15, v9, v2, v11}, Landroid/net/wifi/WifiStateTracker;->notifyStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_76

    .line 401
    .restart local v12       #state:Landroid/net/wifi/SupplicantState;
    :cond_b6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .registers 5
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 337
    packed-switch p1, :pswitch_data_28

    .line 359
    :goto_3
    :pswitch_3
    return-void

    .line 339
    :pswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$400(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_3

    .line 343
    :pswitch_c
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$400(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_3

    .line 347
    :pswitch_14
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyScanResultsAvailable()V

    goto :goto_3

    .line 352
    :pswitch_1e
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyShowApListDialog()V

    goto :goto_3

    .line 337
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1e
    .end packed-switch
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v8, -0x1

    const-string v9, "WifiMonitor"

    .line 180
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 183
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantConnection()V

    .line 191
    :cond_15
    :goto_15
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, eventStr:Ljava/lang/String;
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_21

    .line 197
    :cond_21
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 198
    const-string v6, "WPA:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string/jumbo v6, "pre-shared key may be incorrect"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_15

    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handlePasswordKeyMayBeIncorrect()V

    goto :goto_15

    .line 185
    .end local v3           #eventStr:Ljava/lang/String;
    :cond_3e
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    .line 295
    :goto_47
    return-void

    .line 205
    .restart local v3       #eventStr:Ljava/lang/String;
    :cond_48
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$100()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, eventName:Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 207
    .local v5, nameEnd:I
    if-eq v5, v8, :cond_5c

    .line 208
    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 209
    :cond_5c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6a

    .line 210
    const-string v6, "WifiMonitor"

    const-string v6, "Received wpa_supplicant event with empty event name"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 217
    :cond_6a
    const-string v6, "CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 218
    const/4 v0, 0x1

    .line 238
    .local v0, event:I
    :goto_73
    move-object v1, v3

    .line 239
    .local v1, eventData:Ljava/lang/String;
    if-eq v0, v12, :cond_79

    const/4 v6, 0x5

    if-ne v0, v6, :cond_d7

    .line 240
    :cond_79
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v1, v6, v7

    .line 257
    :cond_82
    :goto_82
    if-ne v0, v11, :cond_fd

    .line 258
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 293
    :goto_87
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6, v10}, Landroid/net/wifi/WifiMonitor;->access$202(Landroid/net/wifi/WifiMonitor;I)I

    goto :goto_15

    .line 219
    .end local v0           #event:I
    .end local v1           #eventData:Ljava/lang/String;
    :cond_8d
    const-string v6, "DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 220
    const/4 v0, 0x2

    .restart local v0       #event:I
    goto :goto_73

    .line 221
    .end local v0           #event:I
    :cond_97
    const-string v6, "STATE-CHANGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 222
    const/4 v0, 0x3

    .restart local v0       #event:I
    goto :goto_73

    .line 223
    .end local v0           #event:I
    :cond_a1
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 224
    const/4 v0, 0x4

    .restart local v0       #event:I
    goto :goto_73

    .line 225
    .end local v0           #event:I
    :cond_ab
    const-string v6, "LINK-SPEED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 226
    const/4 v0, 0x5

    .restart local v0       #event:I
    goto :goto_73

    .line 227
    .end local v0           #event:I
    :cond_b5
    const-string v6, "TERMINATING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 228
    const/4 v0, 0x6

    .restart local v0       #event:I
    goto :goto_73

    .line 229
    .end local v0           #event:I
    :cond_bf
    const-string v6, "DRIVER-STATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 230
    const/4 v0, 0x7

    .restart local v0       #event:I
    goto :goto_73

    .line 232
    .end local v0           #event:I
    :cond_c9
    const-string v6, "NO-CONNECTION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 233
    const/16 v0, 0x9

    .restart local v0       #event:I
    goto :goto_73

    .line 236
    .end local v0           #event:I
    :cond_d4
    const/16 v0, 0x8

    .restart local v0       #event:I
    goto :goto_73

    .line 241
    .restart local v1       #eventData:Ljava/lang/String;
    :cond_d7
    if-ne v0, v11, :cond_e8

    .line 242
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 243
    .local v4, ind:I
    if-eq v4, v8, :cond_82

    .line 244
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_82

    .line 248
    .end local v4           #ind:I
    :cond_e8
    const/16 v6, 0x9

    if-ne v0, v6, :cond_ee

    .line 249
    const/4 v1, 0x0

    goto :goto_82

    .line 251
    :cond_ee
    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 252
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_82

    .line 253
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_82

    .line 259
    .end local v4           #ind:I
    :cond_fd
    if-ne v0, v12, :cond_103

    .line 260
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_87

    .line 261
    :cond_103
    const/4 v6, 0x6

    if-ne v0, v6, :cond_13d

    .line 266
    const-string v6, "connection closed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 268
    const-string v6, "WifiMonitor"

    const-string v6, "Monitor socket is closed, exiting thread"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47

    .line 277
    :cond_117
    const-string/jumbo v6, "recv error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_132

    .line 278
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$204(Landroid/net/wifi/WifiMonitor;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_15

    .line 280
    const-string v6, "WifiMonitor"

    const-string/jumbo v6, "too many recv errors, closing connection"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_132
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    goto/16 :goto_47

    .line 291
    :cond_13d
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_87
.end method
