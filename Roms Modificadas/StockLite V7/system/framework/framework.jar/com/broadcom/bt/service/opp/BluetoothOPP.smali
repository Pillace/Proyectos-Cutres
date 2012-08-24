.class public Lcom/broadcom/bt/service/opp/BluetoothOPP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/BluetoothOPP$1;,
        Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;,
        Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final D:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_opp_service"

.field private static final TAG:Ljava/lang/String; = "BluetoothOPP"

.field private static mRefs:I


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

.field private mService:Lcom/broadcom/bt/service/opp/IOppService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->D:Z

    sput-boolean v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 99
    sget-boolean v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v0, :cond_2a

    .line 100
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 101
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2a
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/opp/IOppService;)V
    .registers 5
    .parameter "service"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 132
    sget-boolean v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v0, :cond_2a

    .line 133
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 134
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2a
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilterAll(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 202
    invoke-static {p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOpc(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 203
    .local v0, f:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOps(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 204
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 205
    return-object v0
.end method

.method public static createFilterOpc(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 243
    if-nez p0, :cond_7

    .line 244
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .restart local p0
    :cond_7
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_OPEN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_ENABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_OBJECT_PUSHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v0, "com.broadcom.bt.app.opp.action.ACTION_ON_OPC_OBJECT_PUSHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    return-object p0
.end method

.method public static createFilterOps(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 225
    if-nez p0, :cond_7

    .line 226
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .restart local p0
    :cond_7
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_OBJECT_RECEIVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    return-object p0
.end method

.method public static createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 209
    if-nez p0, :cond_7

    .line 210
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .restart local p0
    :cond_7
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OP_OWNER_VCARD_NOT_SET"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    return-object p0
.end method

.method private getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .parameter "is"

    .prologue
    .line 634
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 635
    .local v1, r:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 638
    .local v2, s:Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 639
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_1f

    goto :goto_10

    .line 642
    :catch_1f
    move-exception v3

    .line 646
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 644
    :catchall_25
    move-exception v3

    throw v3
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 88
    const-string v1, "bluetooth_opp_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 89
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    .line 93
    :goto_10
    return v1

    .line 92
    :cond_11
    new-instance v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;-><init>()V

    .line 93
    .local v0, p:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.OppService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method


# virtual methods
.method public closeOpcSession()V
    .registers 3

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpcSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 312
    :goto_5
    return-void

    .line 309
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public closeOpsSession()V
    .registers 3

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpsSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 327
    :goto_5
    return-void

    .line 324
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public deleteMergedVcards(Ljava/lang/String;)Z
    .registers 15
    .parameter "filePathPrefix"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 537
    const/4 v8, 0x0

    .line 539
    .local v8, success:Z
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, fPrefix:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 542
    .local v4, parentDir:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 543
    .local v6, rmCmd:Ljava/lang/String;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "sh"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "-c"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    aput-object v6, v7, v9

    .line 545
    .local v7, rmCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_77

    move-result-object v3

    .line 546
    .local v3, p:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 548
    .local v2, is:Ljava/io/InputStream;
    :try_start_3b
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 549
    sget-boolean v9, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v9, :cond_5d

    .line 550
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, result:Ljava/lang/String;
    const-string v9, "BluetoothOPP"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-eqz v5, :cond_54

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_70
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_51} :catch_7d

    move-result v9

    if-nez v9, :cond_5b

    :cond_54
    move v9, v12

    .line 561
    :goto_55
    if-eqz v2, :cond_5a

    .line 563
    :try_start_57
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_88

    .line 574
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :cond_5a
    :goto_5a
    return v9

    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v5       #result:Ljava/lang/String;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :cond_5b
    move v9, v11

    .line 552
    goto :goto_55

    .line 555
    .end local v5           #result:Ljava/lang/String;
    :cond_5d
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_70
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_7d

    move-result v9

    if-gtz v9, :cond_6e

    move v8, v12

    .line 561
    :goto_64
    if-eqz v2, :cond_69

    .line 563
    :try_start_66
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_84

    .line 569
    :cond_69
    :goto_69
    :try_start_69
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_77

    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :goto_6c
    move v9, v8

    .line 574
    goto :goto_5a

    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :cond_6e
    move v8, v11

    .line 555
    goto :goto_64

    .line 561
    :catchall_70
    move-exception v9

    if-eqz v2, :cond_76

    .line 563
    :try_start_73
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_86

    .line 561
    :cond_76
    :goto_76
    :try_start_76
    throw v9
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_77} :catch_77

    .line 571
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :catch_77
    move-exception v9

    move-object v0, v9

    .line 572
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c

    .line 558
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :catch_7d
    move-exception v9

    .line 561
    if-eqz v2, :cond_69

    .line 563
    :try_start_80
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_69

    .line 564
    :catch_84
    move-exception v9

    goto :goto_69

    :catch_86
    move-exception v10

    goto :goto_76

    .restart local v5       #result:Ljava/lang/String;
    :catch_88
    move-exception v10

    goto :goto_5a
.end method

.method public enableOpcSession()V
    .registers 3

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->enableOpcSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 297
    :goto_5
    return-void

    .line 294
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public exchangeVcard(Ljava/lang/String;)V
    .registers 6
    .parameter "peerBDAddress"

    .prologue
    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->exchangeVcard(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 458
    :goto_5
    return-void

    .line 455
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 456
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exchangeVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 461
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 462
    sget-boolean v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v0, :cond_27

    .line 463
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 464
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalize: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_27
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 499
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    if-eqz v1, :cond_8

    .line 500
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 509
    :cond_8
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2c

    if-eqz v1, :cond_1a

    .line 511
    :try_start_10
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 512
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1a} :catch_22

    .line 517
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    :try_start_1b
    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    .line 519
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_2c

    .line 520
    monitor-exit p0

    return-void

    .line 513
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 514
    .local v0, t:Ljava/lang/Throwable;
    :try_start_24
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_1a

    .line 499
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public grantAccess(IILjava/lang/String;)V
    .registers 11
    .parameter "operation"
    .parameter "access"
    .parameter "filePathName"

    .prologue
    const-string v6, "grantAccess("

    const-string v5, "BluetoothOPP"

    const-string v4, ")"

    const-string v3, ":"

    .line 370
    sget-boolean v1, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v1, :cond_3e

    .line 371
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantAccess("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/opp/IOppService;->grantAccess(IILjava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_43} :catch_44

    .line 378
    :goto_43
    return-void

    .line 375
    :catch_44
    move-exception v1

    move-object v0, v1

    .line 376
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantAccess("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 112
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    .line 113
    const/4 v1, 0x1

    .line 116
    :goto_7
    return v1

    .line 114
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public mergeVcards(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "filePathPrefix"
    .parameter "mergedVcardFilepath"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 596
    const/4 v8, 0x0

    .line 598
    .local v8, success:Z
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    .local v3, fPrefix:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 600
    .local v6, parentDir:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cat "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, catCmd:Ljava/lang/String;
    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "sh"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "-c"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    aput-object v0, v1, v9

    .line 603
    .local v1, catCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_80

    move-result-object v5

    .line 604
    .local v5, p:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 606
    .local v4, is:Ljava/io/InputStream;
    :try_start_44
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 607
    sget-boolean v9, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v9, :cond_66

    .line 608
    invoke-direct {p0, v4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 609
    .local v7, result:Ljava/lang/String;
    const-string v9, "BluetoothOPP"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-eqz v7, :cond_5d

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5a} :catch_86

    move-result v9

    if-nez v9, :cond_64

    :cond_5d
    move v9, v12

    .line 618
    :goto_5e
    if-eqz v4, :cond_63

    .line 620
    :try_start_60
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_91

    .line 630
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    .end local v7           #result:Ljava/lang/String;
    :cond_63
    :goto_63
    return v9

    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    .restart local v7       #result:Ljava/lang/String;
    :cond_64
    move v9, v11

    .line 610
    goto :goto_5e

    .line 613
    .end local v7           #result:Ljava/lang/String;
    :cond_66
    :try_start_66
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_86

    move-result v9

    if-gtz v9, :cond_77

    move v8, v12

    .line 618
    :goto_6d
    if-eqz v4, :cond_72

    .line 620
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_8d

    .line 626
    :cond_72
    :goto_72
    :try_start_72
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_80

    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    :goto_75
    move v9, v8

    .line 630
    goto :goto_63

    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    :cond_77
    move v8, v11

    .line 613
    goto :goto_6d

    .line 618
    :catchall_79
    move-exception v9

    if-eqz v4, :cond_7f

    .line 620
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_8f

    .line 618
    :cond_7f
    :goto_7f
    :try_start_7f
    throw v9
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_80} :catch_80

    .line 627
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    :catch_80
    move-exception v9

    move-object v2, v9

    .line 628
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75

    .line 615
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    :catch_86
    move-exception v9

    .line 618
    if-eqz v4, :cond_72

    .line 620
    :try_start_89
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_72

    .line 621
    :catch_8d
    move-exception v9

    goto :goto_72

    :catch_8f
    move-exception v10

    goto :goto_7f

    .restart local v7       #result:Ljava/lang/String;
    :catch_91
    move-exception v10

    goto :goto_63
.end method

.method public pullVcard(Ljava/lang/String;)V
    .registers 6
    .parameter "peerBDAddress"

    .prologue
    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->pullVcard(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 440
    :goto_5
    return-void

    .line 437
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 438
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pullVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public pushObject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "peerBDAddress"
    .parameter "filePathName"

    .prologue
    .line 342
    sget-boolean v1, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v1, :cond_b

    .line 343
    const-string v1, "BluetoothOPP"

    const-string v2, "Call pushObject"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppService;->pushObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 350
    :goto_10
    return-void

    .line 347
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 348
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v0, :cond_d

    .line 151
    const-string v0, "BluetoothOPP"

    const-string/jumbo v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 154
    monitor-exit p0

    return-void

    .line 150
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .registers 8
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 190
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    if-nez v1, :cond_16

    .line 191
    new-instance v1, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;-><init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;Lcom/broadcom/bt/service/opp/BluetoothOPP$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_22

    .line 193
    :try_start_f
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_22
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 199
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 194
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1a
    const-string v1, "BluetoothOPP"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_16

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;ZI)V
    .registers 7
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 163
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 166
    monitor-exit p0

    return-void

    .line 163
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .registers 2

    .prologue
    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .registers 5
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 481
    if-eqz p2, :cond_9

    const/4 v0, 0x0

    :goto_3
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p1, v0, p3}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 482
    return-void

    .line 481
    .restart local p3
    :cond_9
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public setExchangeFolder(Ljava/lang/String;)V
    .registers 8
    .parameter "pathName"

    .prologue
    const-string/jumbo v5, "setExchangeFolder("

    const-string v4, "BluetoothOPP"

    const-string v3, ")"

    .line 412
    sget-boolean v1, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v1, :cond_2a

    .line 413
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExchangeFolder("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setExchangeFolder(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2f} :catch_30

    .line 421
    :goto_2f
    return-void

    .line 418
    :catch_30
    move-exception v1

    move-object v0, v1

    .line 419
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExchangeFolder("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public setOwnerVcard(Ljava/lang/String;)V
    .registers 8
    .parameter "fileName"

    .prologue
    const-string/jumbo v5, "setOwnerVcard("

    const-string v4, "BluetoothOPP"

    const-string v3, ")"

    .line 391
    sget-boolean v1, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v1, :cond_2a

    .line 392
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnerVcard("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setOwnerVcard(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2f} :catch_30

    .line 400
    :goto_2f
    return-void

    .line 397
    :catch_30
    move-exception v1

    move-object v0, v1

    .line 398
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnerVcard("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 4

    .prologue
    const-string v1, "BluetoothOPP"

    .line 265
    monitor-enter p0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/opp/BluetoothOPP;->D:Z

    if-eqz v1, :cond_f

    .line 266
    const-string v1, "BluetoothOPP"

    const-string/jumbo v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_25

    .line 277
    :try_start_12
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_19} :catch_1b

    .line 283
    :goto_19
    monitor-exit p0

    return-void

    .line 278
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1d
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_25

    goto :goto_19

    .line 265
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method
