.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field private static DEBUG:Z = false

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1

.field private static localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    .line 44
    sput-boolean v1, Landroid/app/admin/DevicePolicyManager;->DEBUG:Z

    .line 45
    sget-boolean v0, Landroid/app/admin/DevicePolicyManager;->DEBUG:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_c
    sput-boolean v0, Landroid/app/admin/DevicePolicyManager;->localLOGV:Z

    return-void

    :cond_f
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager;->mHandler:Landroid/os/Handler;

    .line 55
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 57
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 61
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p0, p1}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 62
    .local v0, me:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, v0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_b

    move-object v1, v0

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method public getActiveAdmins()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 142
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 147
    :goto_a
    return-object v1

    .line 143
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAdminInfo(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .registers 10
    .parameter "cn"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Unable to parse device policy "

    .line 1213
    :try_start_3
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_e} :catch_1e

    move-result-object v0

    .line 1220
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1221
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1224
    :try_start_16
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1d} :catch_3a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_56

    .line 1230
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :goto_1d
    return-object v3

    .line 1215
    :catch_1e
    move-exception v3

    move-object v1, v3

    .line 1216
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retrieve device policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 1217
    goto :goto_1d

    .line 1225
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 1226
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse device policy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 1227
    goto :goto_1d

    .line 1228
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_56
    move-exception v3

    move-object v1, v3

    .line 1229
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse device policy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 1230
    goto :goto_1d
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 823
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 825
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 830
    :goto_a
    return v1

    .line 826
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 827
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x2

    goto :goto_a
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 760
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 762
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 767
    :goto_a
    return v1

    .line 763
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 764
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowCamera(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 654
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 656
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 661
    :goto_a
    return v1

    .line 657
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 658
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1075
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1077
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowDesktopSync(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1082
    :goto_a
    return v1

    .line 1078
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1079
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowHTMLEmail(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 738
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 740
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 745
    :goto_a
    return v1

    .line 741
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 781
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 783
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 788
    :goto_a
    return v1

    .line 784
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 785
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1096
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1098
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowIrDA(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1103
    :goto_a
    return v1

    .line 1099
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1100
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 717
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 719
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 724
    :goto_a
    return v1

    .line 720
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 721
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1033
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1035
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1040
    :goto_a
    return v1

    .line 1036
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1037
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1054
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1056
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1061
    :goto_a
    return v1

    .line 1057
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1058
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 633
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 635
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 640
    :goto_a
    return v1

    .line 636
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 637
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 696
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 698
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 703
    :goto_a
    return v1

    .line 699
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 700
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAllowWifi(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 675
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 677
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 682
    :goto_a
    return v1

    .line 678
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 679
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getAttachmentsEnabled(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 589
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 591
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 596
    :goto_a
    return v1

    .line 592
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 593
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getCurrentFailedPasswordAttempts()I
    .registers 4

    .prologue
    .line 378
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 380
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 385
    :goto_a
    return v1

    .line 381
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 382
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getMaxAttachmentSize(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 610
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 612
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 617
    :goto_a
    return v1

    .line 613
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 614
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaxCalendarAge(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 865
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 867
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 872
    :goto_a
    return v1

    .line 868
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 869
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaxEmailAge(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 886
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 888
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 893
    :goto_a
    return v1

    .line 889
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 890
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 907
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 909
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 914
    :goto_a
    return v1

    .line 910
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 911
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 928
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 930
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 935
    :goto_a
    return v1

    .line 931
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 425
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 427
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 432
    :goto_a
    return v1

    .line 428
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 429
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .registers 5
    .parameter "admin"

    .prologue
    .line 504
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 506
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 511
    :goto_a
    return-wide v1

    .line 507
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 508
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const-wide/16 v1, 0x0

    goto :goto_a
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 844
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 846
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 851
    :goto_a
    return v1

    .line 847
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 848
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 547
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 549
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 554
    :goto_a
    return v1

    .line 550
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 551
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 568
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 570
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 575
    :goto_a
    return v1

    .line 571
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordMaximumLength(I)I
    .registers 3
    .parameter "quality"

    .prologue
    .line 324
    const/16 v0, 0x10

    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 306
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 308
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 313
    :goto_a
    return v1

    .line 309
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "admin"

    .prologue
    .line 258
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 260
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 265
    :goto_a
    return v1

    .line 261
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 526
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 528
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 533
    :goto_a
    return v1

    .line 529
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 6
    .parameter "admin"
    .parameter "result"

    .prologue
    .line 1238
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1240
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1245
    :cond_9
    :goto_9
    return-void

    .line 1241
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1242
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1117
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1119
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1124
    :goto_a
    return v1

    .line 1120
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1121
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1124
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 970
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 972
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 977
    :goto_a
    return v1

    .line 973
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 974
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1012
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1014
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1019
    :goto_a
    return v1

    .line 1015
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1016
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 802
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 804
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 809
    :goto_a
    return v1

    .line 805
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 806
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 991
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 993
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 998
    :goto_a
    return v1

    .line 994
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 995
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 949
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 951
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 956
    :goto_a
    return v1

    .line 952
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 953
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "admin"

    .prologue
    .line 1138
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1140
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1145
    :goto_a
    return v1

    .line 1141
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1142
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1145
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isActivePasswordExpired()Z
    .registers 4

    .prologue
    .line 358
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 360
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordExpired()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 365
    :goto_a
    return v1

    .line 361
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 362
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isActivePasswordSufficient()Z
    .registers 4

    .prologue
    .line 340
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 342
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 347
    :goto_a
    return v1

    .line 343
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "who"

    .prologue
    .line 124
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 126
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 131
    :goto_a
    return v1

    .line 127
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public lockNow()V
    .registers 4

    .prologue
    .line 1158
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1160
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->lockNow()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1165
    :cond_9
    :goto_9
    return-void

    .line 1161
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1162
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public notifyChanges(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "notifyChanges"

    .prologue
    .line 1331
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1333
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1338
    :cond_9
    :goto_9
    return-void

    .line 1334
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1335
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 154
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 156
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 161
    :goto_a
    return v1

    .line 157
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public recoverPassword()V
    .registers 4

    .prologue
    .line 1264
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1266
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->recoverPassword()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1271
    :cond_9
    :goto_9
    return-void

    .line 1267
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1268
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "who"

    .prologue
    .line 171
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 173
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 178
    :cond_9
    :goto_9
    return-void

    .line 174
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public reportFailedPasswordAttempt()V
    .registers 4

    .prologue
    .line 1304
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1306
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1311
    :cond_9
    :goto_9
    return-void

    .line 1307
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1308
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 4

    .prologue
    .line 1317
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1319
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1324
    :cond_9
    :goto_9
    return-void

    .line 1320
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1321
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .registers 6
    .parameter "password"
    .parameter "flags"

    .prologue
    .line 464
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 466
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 471
    :goto_a
    return v1

    .line 467
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 468
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "policyReceiver"

    .prologue
    .line 1198
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1200
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1205
    :cond_9
    :goto_9
    return-void

    .line 1201
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1202
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setActivePasswordState(IIIZ)V
    .registers 8
    .parameter "quality"
    .parameter "length"
    .parameter "countComplex"
    .parameter "hasSymbol"

    .prologue
    .line 1290
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1293
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->setActivePasswordState(IIIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1298
    :cond_9
    :goto_9
    return-void

    .line 1294
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1295
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "policyReceiver"

    .prologue
    .line 1249
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1251
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setAdminPermissions(Landroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1256
    :cond_9
    :goto_9
    return-void

    .line 1252
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1253
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 813
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 815
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 820
    :cond_9
    :goto_9
    return-void

    .line 816
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 817
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 750
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 752
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowBrowser(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 757
    :cond_9
    :goto_9
    return-void

    .line 753
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 754
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowCamera(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 644
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 646
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 651
    :cond_9
    :goto_9
    return-void

    .line 647
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 648
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1065
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1067
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1072
    :cond_9
    :goto_9
    return-void

    .line 1068
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1069
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowHTMLEmail(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 728
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 730
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 735
    :cond_9
    :goto_9
    return-void

    .line 731
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 732
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 771
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 773
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 778
    :cond_9
    :goto_9
    return-void

    .line 774
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 775
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1086
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1088
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowIrDA(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1093
    :cond_9
    :goto_9
    return-void

    .line 1089
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1090
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 707
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 709
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 714
    :cond_9
    :goto_9
    return-void

    .line 710
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 711
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1023
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1025
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1030
    :cond_9
    :goto_9
    return-void

    .line 1026
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1027
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1044
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1046
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1051
    :cond_9
    :goto_9
    return-void

    .line 1047
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1048
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 623
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 625
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowStorageCard(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 630
    :cond_9
    :goto_9
    return-void

    .line 626
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 627
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 686
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 688
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 693
    :cond_9
    :goto_9
    return-void

    .line 689
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 690
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAllowWifi(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 665
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 667
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 672
    :cond_9
    :goto_9
    return-void

    .line 668
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 669
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAttachmentsEnabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 579
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 581
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 586
    :cond_9
    :goto_9
    return-void

    .line 582
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 583
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaxAttachmentSize(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 600
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 602
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 607
    :cond_9
    :goto_9
    return-void

    .line 603
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 604
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaxCalendarAge(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 855
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 857
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxCalendarAge(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 862
    :cond_9
    :goto_9
    return-void

    .line 858
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 859
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaxEmailAge(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 876
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 878
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxEmailAge(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 883
    :cond_9
    :goto_9
    return-void

    .line 879
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 880
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 897
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 899
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 904
    :cond_9
    :goto_9
    return-void

    .line 900
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 901
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 918
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 920
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 925
    :cond_9
    :goto_9
    return-void

    .line 921
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 922
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "num"

    .prologue
    .line 408
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 410
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 415
    :cond_9
    :goto_9
    return-void

    .line 411
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 412
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .registers 7
    .parameter "admin"
    .parameter "timeMs"

    .prologue
    .line 488
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 490
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 495
    :cond_9
    :goto_9
    return-void

    .line 491
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 492
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 834
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 836
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 841
    :cond_9
    :goto_9
    return-void

    .line 837
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 838
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 537
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 539
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 544
    :cond_9
    :goto_9
    return-void

    .line 540
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 541
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 558
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 560
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 565
    :cond_9
    :goto_9
    return-void

    .line 561
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 562
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 290
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 292
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 297
    :cond_9
    :goto_9
    return-void

    .line 293
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 294
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "admin"
    .parameter "quality"

    .prologue
    .line 242
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 244
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 249
    :cond_9
    :goto_9
    return-void

    .line 245
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 246
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 516
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 518
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 523
    :cond_9
    :goto_9
    return-void

    .line 519
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 520
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1275
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1277
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1282
    :cond_9
    :goto_9
    return-void

    .line 1278
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1279
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1107
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1109
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1114
    :cond_9
    :goto_9
    return-void

    .line 1110
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1111
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 960
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 962
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 967
    :cond_9
    :goto_9
    return-void

    .line 963
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 964
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1002
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1004
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1009
    :cond_9
    :goto_9
    return-void

    .line 1005
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1006
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 792
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 794
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 799
    :cond_9
    :goto_9
    return-void

    .line 795
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 796
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 981
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 983
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 988
    :cond_9
    :goto_9
    return-void

    .line 984
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 985
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 939
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 941
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 946
    :cond_9
    :goto_9
    return-void

    .line 942
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 943
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1128
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1130
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1135
    :cond_9
    :goto_9
    return-void

    .line 1131
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1132
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public wipeData(I)V
    .registers 5
    .parameter "flags"

    .prologue
    .line 1185
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_9

    .line 1187
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->wipeData(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1192
    :cond_9
    :goto_9
    return-void

    .line 1188
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1189
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
