.class Landroid/server/BluetoothService$EnableThread;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableThread"
.end annotation


# instance fields
.field private final mSaveSetting:Z

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;Z)V
    .registers 3
    .parameter
    .parameter "saveSetting"

    .prologue
    .line 945
    iput-object p1, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 946
    iput-boolean p2, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    .line 947
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 949
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)I

    move-result v9

    if-nez v9, :cond_3b

    move v5, v13

    .line 950
    .local v5, res:Z
    :goto_b
    if-eqz v5, :cond_54

    .line 951
    const/4 v6, 0x2

    .line 952
    .local v6, retryCount:I
    const/4 v8, 0x0

    .local v8, running:Z
    move v7, v6

    .line 953
    .end local v6           #retryCount:I
    .local v7, retryCount:I
    :goto_10
    add-int/lit8 v6, v7, -0x1

    .end local v7           #retryCount:I
    .restart local v6       #retryCount:I
    if-lez v7, :cond_47

    if-nez v8, :cond_47

    .line 957
    const-wide/16 v9, 0x12c

    :try_start_18
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_e9

    .line 960
    :goto_1b
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothEventLoop;->start()V

    .line 963
    const/4 v2, 0x5

    .local v2, pollCount:I
    move v3, v2

    .line 964
    .end local v2           #pollCount:I
    .local v3, pollCount:I
    :goto_26
    add-int/lit8 v2, v3, -0x1

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    if-lez v3, :cond_39

    if-nez v8, :cond_39

    .line 965
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 966
    const/4 v8, 0x1

    :cond_39
    move v7, v6

    .line 973
    .end local v6           #retryCount:I
    .restart local v7       #retryCount:I
    goto :goto_10

    .end local v2           #pollCount:I
    .end local v5           #res:Z
    .end local v7           #retryCount:I
    .end local v8           #running:Z
    :cond_3b
    move v5, v12

    .line 949
    goto :goto_b

    .line 970
    .restart local v2       #pollCount:I
    .restart local v5       #res:Z
    .restart local v6       #retryCount:I
    .restart local v8       #running:Z
    :cond_3d
    const-wide/16 v9, 0x64

    :try_start_3f
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_44

    move v3, v2

    .line 971
    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_26

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    :catch_44
    move-exception v9

    move v3, v2

    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_26

    .line 974
    .end local v3           #pollCount:I
    :cond_47
    if-nez v8, :cond_54

    .line 975
    const-string v9, "bt EnableThread giving up"

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V

    .line 976
    const/4 v5, 0x0

    .line 977
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)I

    .line 982
    .end local v6           #retryCount:I
    .end local v8           #running:Z
    :cond_54
    if-eqz v5, :cond_94

    .line 983
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_5f

    .line 1030
    :cond_5e
    :goto_5e
    return-void

    .line 986
    :cond_5f
    iget-boolean v9, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    if-eqz v9, :cond_68

    .line 987
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9, v13}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;Z)V

    .line 989
    :cond_68
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9, v12}, Landroid/server/BluetoothService;->access$1702(Landroid/server/BluetoothService;Z)Z

    .line 990
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothService$BondState;->readAutoPairingData()V

    .line 991
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothService$BondState;->loadBondState()V

    .line 992
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1900(Landroid/server/BluetoothService;)V

    .line 999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1001
    .local v0, ident:J
    :try_start_88
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$2000(Landroid/server/BluetoothService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_e1
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_91} :catch_ec

    .line 1004
    :goto_91
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1008
    .end local v0           #ident:J
    :cond_94
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$2102(Landroid/server/BluetoothService;Landroid/server/BluetoothService$EnableThread;)Landroid/server/BluetoothService$EnableThread;

    .line 1010
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    if-eqz v5, :cond_e6

    const/16 v10, 0xc

    :goto_a0
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$2200(Landroid/server/BluetoothService;I)V

    .line 1014
    if-eqz v5, :cond_c2

    .line 1020
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/16 v10, 0x15

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/server/BluetoothService;->access$2300(Landroid/server/BluetoothService;II)Z

    .line 1021
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    const-string v9, "Pairable"

    aput-object v9, v4, v12

    const-string/jumbo v9, "true"

    aput-object v9, v4, v13

    .line 1023
    .local v4, propVal:[Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/server/BluetoothEventLoop;->onPropertyChanged([Ljava/lang/String;)V

    .line 1026
    .end local v4           #propVal:[Ljava/lang/String;
    :cond_c2
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$2400(Landroid/server/BluetoothService;)Z

    move-result v9

    if-eqz v9, :cond_5e

    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$2500(Landroid/server/BluetoothService;)Z

    move-result v9

    if-eqz v9, :cond_5e

    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$2600(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_5e

    .line 1027
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9, v12}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_5e

    .line 1004
    .restart local v0       #ident:J
    :catchall_e1
    move-exception v9

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1010
    .end local v0           #ident:J
    :cond_e6
    const/16 v10, 0xa

    goto :goto_a0

    .line 958
    .restart local v6       #retryCount:I
    .restart local v8       #running:Z
    :catch_e9
    move-exception v9

    goto/16 :goto_1b

    .line 1002
    .end local v6           #retryCount:I
    .end local v8           #running:Z
    .restart local v0       #ident:J
    :catch_ec
    move-exception v9

    goto :goto_91
.end method
