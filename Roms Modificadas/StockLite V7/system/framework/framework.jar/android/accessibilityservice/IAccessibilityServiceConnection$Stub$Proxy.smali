.class Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 73
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    return-object v0
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 7
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 87
    if-eqz p1, :cond_1f

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    :goto_13
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    return-void

    .line 92
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 97
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
