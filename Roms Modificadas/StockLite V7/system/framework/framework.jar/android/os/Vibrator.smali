.class public Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    .line 36
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    .line 38
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 96
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_5

    .line 104
    :goto_4
    return-void

    .line 100
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_4

    .line 101
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public vibrate(J)V
    .registers 7
    .parameter "milliseconds"

    .prologue
    const-string v3, "Vibrator"

    .line 47
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_e

    .line 48
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_d
    return-void

    .line 52
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IVibratorService;->vibrate(JLandroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_d

    .line 53
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public vibrate([JI)V
    .registers 7
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    const-string v3, "Vibrator"

    .line 73
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_e

    .line 74
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_d
    return-void

    .line 80
    :cond_e
    array-length v1, p1

    if-ge p2, v1, :cond_23

    .line 82
    :try_start_11
    iget-object v1, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IVibratorService;->vibratePattern([JILandroid/os/IBinder;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_d

    .line 83
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 87
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_23
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method
