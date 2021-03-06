.class abstract Landroid/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountType:Ljava/lang/String;

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V
    .registers 11
    .parameter
    .parameter "response"
    .parameter "accountType"
    .parameter "expectActivityLaunch"
    .parameter "stripAuthTokenFromResult"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1335
    iput-object p1, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    .line 1336
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 1325
    iput v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    .line 1326
    iput v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 1327
    iput v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 1330
    iput-object v4, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1337
    if-nez p2, :cond_1a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1338
    :cond_1a
    if-nez p3, :cond_24

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1339
    :cond_24
    iput-boolean p5, p0, Landroid/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 1340
    iput-object p2, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1341
    iput-object p3, p0, Landroid/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 1342
    iput-boolean p4, p0, Landroid/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 1343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 1344
    invoke-static {p1}, Landroid/accounts/AccountManagerService;->access$400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 1345
    :try_start_37
    invoke-static {p1}, Landroid/accounts/AccountManagerService;->access$400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_4c

    .line 1348
    :try_start_43
    invoke-interface {p2}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4b} :catch_4f

    .line 1353
    :goto_4b
    return-void

    .line 1346
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2

    .line 1349
    :catch_4f
    move-exception v1

    move-object v0, v1

    .line 1350
    .local v0, e:Landroid/os/RemoteException;
    iput-object v4, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1351
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->binderDied()V

    goto :goto_4b
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .registers 10
    .parameter "authenticatorType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v4, "AccountManagerService"

    .line 1525
    iget-object v2, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v2}, Landroid/accounts/AccountManagerService;->access$900(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountAuthenticatorCache;

    move-result-object v2

    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/AccountAuthenticatorCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    .line 1528
    .local v0, authenticatorInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v0, :cond_3e

    .line 1529
    const-string v2, "AccountManagerService"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1530
    const-string v2, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "there is no authenticator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bailing out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move v2, v6

    .line 1550
    :goto_3d
    return v2

    .line 1536
    :cond_3e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1537
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1539
    const-string v2, "AccountManagerService"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1540
    const-string v2, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performing bindService to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_70
    iget-object v2, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v2}, Landroid/accounts/AccountManagerService;->access$500(Landroid/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 1543
    const-string v2, "AccountManagerService"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1544
    const-string v2, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    move v2, v6

    .line 1546
    goto :goto_3d

    :cond_a6
    move v2, v7

    .line 1550
    goto :goto_3d
.end method

.method private close()V
    .registers 4

    .prologue
    .line 1366
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    .line 1367
    :try_start_7
    iget-object v1, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v1}, Landroid/accounts/AccountManagerService;->access$400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    .line 1369
    monitor-exit v0

    .line 1381
    :goto_18
    return-void

    .line 1371
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_32

    .line 1372
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_2b

    .line 1374
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1377
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1379
    :cond_2b
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->cancelTimeout()V

    .line 1380
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$Session;->unbind()V

    goto :goto_18

    .line 1371
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private unbind()V
    .registers 2

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_10

    .line 1412
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1413
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$500(Landroid/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1415
    :cond_10
    return-void
.end method


# virtual methods
.method bind()V
    .registers 4

    .prologue
    const-string v2, "AccountManagerService"

    .line 1401
    const-string v0, "AccountManagerService"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1402
    const-string v0, "AccountManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiating bind to authenticator type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_25
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1405
    const-string v0, "AccountManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind attempt failed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const/4 v0, 0x1

    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 1408
    :cond_4f
    return-void
.end method

.method public binderDied()V
    .registers 2

    .prologue
    .line 1384
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1385
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$Session;->close()V

    .line 1386
    return-void
.end method

.method public cancelTimeout()V
    .registers 3

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$600(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1424
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .registers 3

    .prologue
    .line 1356
    iget-object v1, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v1, :cond_6

    .line 1358
    const/4 v1, 0x0

    .line 1362
    :goto_5
    return-object v1

    .line 1360
    :cond_6
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1361
    .local v0, response:Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$Session;->close()V

    move-object v1, v0

    .line 1362
    goto :goto_5
.end method

.method public onError(ILjava/lang/String;)V
    .registers 9
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    const/4 v5, 0x2

    const-string v4, "AccountManagerService"

    .line 1497
    iget v2, p0, Landroid/accounts/AccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 1498
    const-string v2, "AccountManagerService"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1499
    const-string v2, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session.onError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_33
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 1502
    .local v1, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_5d

    .line 1503
    const-string v2, "AccountManagerService"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1504
    const-string v2, "AccountManagerService"

    const-string v2, "Session.onError: responding"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_48
    :try_start_48
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 1518
    :cond_4b
    :goto_4b
    return-void

    .line 1508
    :catch_4c
    move-exception v0

    .line 1509
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1510
    const-string v2, "AccountManagerService"

    const-string v2, "Session.onError: caught RemoteException while responding"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 1514
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5d
    const-string v2, "AccountManagerService"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1515
    const-string v2, "AccountManagerService"

    const-string v2, "Session.onError: already closed"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method public onRequestContinued()V
    .registers 2

    .prologue
    .line 1493
    iget v0, p0, Landroid/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 1494
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 10
    .parameter "result"

    .prologue
    const-string v6, "authtoken"

    const-string v7, "AccountManagerService"

    .line 1456
    iget v5, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    .line 1457
    if-eqz p1, :cond_44

    const-string v5, "authtoken"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 1458
    const-string v5, "authAccount"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1459
    .local v1, accountName:Ljava/lang/String;
    const-string v5, "accountType"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, accountType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 1461
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v6, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v6, v0}, Landroid/accounts/AccountManagerService;->access$700(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroid/accounts/AccountManagerService;->access$800(Landroid/accounts/AccountManagerService;I)V

    .line 1466
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    :cond_44
    iget-boolean v5, p0, Landroid/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v5, :cond_5f

    if-eqz p1, :cond_5f

    const-string v5, "intent"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1468
    iget-object v4, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1472
    .local v4, response:Landroid/accounts/IAccountManagerResponse;
    :goto_54
    if-eqz v4, :cond_5e

    .line 1474
    if-nez p1, :cond_64

    .line 1475
    const/4 v5, 0x5

    :try_start_59
    const-string v6, "null bundle returned"

    invoke-interface {v4, v5, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5e} :catch_71

    .line 1490
    :cond_5e
    :goto_5e
    return-void

    .line 1470
    .end local v4           #response:Landroid/accounts/IAccountManagerResponse;
    :cond_5f
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4       #response:Landroid/accounts/IAccountManagerResponse;
    goto :goto_54

    .line 1478
    :cond_64
    :try_start_64
    iget-boolean v5, p0, Landroid/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v5, :cond_6d

    .line 1479
    const-string v5, "authtoken"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1481
    :cond_6d
    invoke-interface {v4, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_5e

    .line 1483
    :catch_71
    move-exception v5

    move-object v3, v5

    .line 1485
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1486
    const-string v5, "AccountManagerService"

    const-string v5, "failure while notifying response"

    invoke-static {v7, v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1427
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object v1

    iput-object v1, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1429
    :try_start_6
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->run()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1434
    :goto_9
    return-void

    .line 1430
    :catch_a
    move-exception v0

    .line 1431
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    const-string/jumbo v2, "remote exception"

    invoke-virtual {p0, v1, v2}, Landroid/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 1437
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1438
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 1439
    .local v0, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v0, :cond_f

    .line 1440
    const/4 v1, 0x1

    const-string v2, "disconnected"

    invoke-virtual {p0, v1, v2}, Landroid/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 1443
    :cond_f
    return-void
.end method

.method public onTimedOut()V
    .registers 4

    .prologue
    .line 1448
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 1449
    .local v0, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v0, :cond_d

    .line 1450
    const/4 v1, 0x1

    const-string/jumbo v2, "timeout"

    invoke-virtual {p0, v1, v2}, Landroid/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 1453
    :cond_d
    return-void
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public scheduleTimeout()V
    .registers 5

    .prologue
    .line 1418
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$600(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    invoke-static {v1}, Landroid/accounts/AccountManagerService;->access$600(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/accounts/AccountManagerService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManagerService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1420
    return-void
.end method

.method protected toDebugString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 8
    .parameter "now"

    .prologue
    const-string v2, "/"

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_66

    const/4 v1, 0x1

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/accounts/AccountManagerService$Session;->mCreationTime:J

    sub-long v1, p1, v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_66
    const/4 v1, 0x0

    goto :goto_1e
.end method
