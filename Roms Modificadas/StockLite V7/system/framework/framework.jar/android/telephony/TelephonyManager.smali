.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final ICC_STATE_RUIM_CORPORATE_LOCKED:I = 0xe

.field public static final ICC_STATE_RUIM_HRPD_LOCKED:I = 0xd

.field public static final ICC_STATE_RUIM_NETWORK1_LOCKED:I = 0xb

.field public static final ICC_STATE_RUIM_NETWORK2_LOCKED:I = 0xc

.field public static final ICC_STATE_RUIM_RUIM_LOCKED:I = 0x10

.field public static final ICC_STATE_RUIM_SERVICE_PROVIDER_LOCKED:I = 0xf

.field public static final ICC_STATE_SIM_CORPORATE_LOCKED:I = 0x8

.field public static final ICC_STATE_SIM_NETWORK_SUBSET_LOCKED:I = 0x7

.field public static final ICC_STATE_SIM_SERVICE_PROVIDER_LOCKED:I = 0x9

.field public static final ICC_STATE_SIM_SIM_LOCKED:I = 0xa

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sInstance:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 131
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 67
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 69
    return-void
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 922
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 318
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 319
    .local v0, mode:I
    if-ne v0, v2, :cond_c

    .line 320
    const/4 v1, 0x0

    .line 321
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_b
.end method

.method private getPhoneTypeFromProperty()I
    .registers 4

    .prologue
    .line 308
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 311
    .local v0, type:I
    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 824
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 248
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 252
    :goto_7
    return-void

    .line 250
    :catch_8
    move-exception v0

    goto :goto_7

    .line 249
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 231
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 235
    :goto_7
    return-void

    .line 233
    :catch_8
    move-exception v0

    goto :goto_7

    .line 232
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public getCallState()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 844
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 850
    :goto_9
    return v1

    .line 845
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 847
    goto :goto_9

    .line 848
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 850
    goto :goto_9
.end method

.method public getCdmaEriIconIndex()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 973
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 978
    :goto_9
    return v1

    .line 974
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 976
    goto :goto_9

    .line 977
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 978
    goto :goto_9
.end method

.method public getCdmaEriIconMode()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 991
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 996
    :goto_9
    return v1

    .line 992
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 994
    goto :goto_9

    .line 995
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 996
    goto :goto_9
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1007
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 1012
    :goto_9
    return-object v1

    .line 1008
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1010
    goto :goto_9

    .line 1011
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1012
    goto :goto_9
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 208
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 210
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_1b

    move-result v3

    if-eqz v3, :cond_15

    move-object v3, v4

    .line 216
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :goto_14
    return-object v3

    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #cl:Landroid/telephony/CellLocation;
    :cond_15
    move-object v3, v1

    .line 212
    goto :goto_14

    .line 213
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :catch_17
    move-exception v3

    move-object v2, v3

    .local v2, ex:Landroid/os/RemoteException;
    move-object v3, v4

    .line 214
    goto :goto_14

    .line 215
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1b
    move-exception v3

    move-object v2, v3

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 216
    goto :goto_14
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 777
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 782
    :goto_9
    return-object v1

    .line 778
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 779
    goto :goto_9

    .line 780
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 782
    goto :goto_9
.end method

.method public getDataActivity()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 880
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 886
    :goto_9
    return v1

    .line 881
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 883
    goto :goto_9

    .line 884
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 886
    goto :goto_9
.end method

.method public getDataState()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 912
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 917
    :goto_9
    return v1

    .line 913
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 915
    goto :goto_9

    .line 916
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 917
    goto :goto_9
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 190
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 194
    :goto_9
    return-object v1

    .line 191
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 192
    goto :goto_9

    .line 193
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 194
    goto :goto_9
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 173
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 177
    :goto_9
    return-object v1

    .line 174
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 175
    goto :goto_9

    .line 176
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 177
    goto :goto_9
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 741
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 746
    :goto_9
    return-object v1

    .line 742
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 743
    goto :goto_9

    .line 744
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 746
    goto :goto_9
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 721
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 726
    :goto_9
    return-object v1

    .line 722
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 723
    goto :goto_9

    .line 724
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 726
    goto :goto_9
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 268
    :goto_9
    return-object v1

    .line 265
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 266
    goto :goto_9

    .line 267
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 268
    goto :goto_9
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 370
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 426
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 427
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 428
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_12

    move-result v2

    .line 438
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_b
    return v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_c
    move v2, v3

    .line 431
    goto :goto_b

    .line 433
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_e
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    .line 435
    goto :goto_b

    .line 436
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    .line 438
    goto :goto_b
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 478
    :pswitch_7
    const-string v0, "UNKNOWN"

    :goto_9
    return-object v0

    .line 452
    :pswitch_a
    const-string v0, "GPRS"

    goto :goto_9

    .line 454
    :pswitch_d
    const-string v0, "EDGE"

    goto :goto_9

    .line 456
    :pswitch_10
    const-string v0, "UMTS"

    goto :goto_9

    .line 458
    :pswitch_13
    const-string v0, "HSDPA"

    goto :goto_9

    .line 460
    :pswitch_16
    const-string v0, "HSUPA"

    goto :goto_9

    .line 462
    :pswitch_19
    const-string v0, "HSPA"

    goto :goto_9

    .line 464
    :pswitch_1c
    const-string v0, "CDMA"

    goto :goto_9

    .line 466
    :pswitch_1f
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_9

    .line 468
    :pswitch_22
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_9

    .line 470
    :pswitch_25
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_9

    .line 472
    :pswitch_28
    const-string v0, "CDMA - 1xRTT"

    goto :goto_9

    .line 474
    :pswitch_2b
    const-string v0, "CDMA - EHRPD"

    goto :goto_9

    .line 476
    :pswitch_2e
    const-string v0, "LTE"

    goto :goto_9

    .line 450
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_28
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_7
        :pswitch_25
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method

.method public getPhoneType()I
    .registers 4

    .prologue
    .line 288
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 289
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 290
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 302
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 293
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_17

    move-result v2

    goto :goto_a

    .line 295
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 298
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 299
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 302
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 667
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 649
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 660
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 679
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 684
    :goto_9
    return-object v1

    .line 680
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 681
    goto :goto_9

    .line 682
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 684
    goto :goto_9
.end method

.method public getSimState()I
    .registers 3

    .prologue
    .line 586
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 588
    const/4 v1, 0x1

    .line 636
    :goto_f
    return v1

    .line 590
    :cond_10
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 591
    const/4 v1, 0x2

    goto :goto_f

    .line 593
    :cond_1a
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 594
    const/4 v1, 0x3

    goto :goto_f

    .line 596
    :cond_24
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 597
    const/4 v1, 0x4

    goto :goto_f

    .line 599
    :cond_2e
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 600
    const/4 v1, 0x5

    goto :goto_f

    .line 602
    :cond_38
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 603
    const/4 v1, 0x6

    goto :goto_f

    .line 605
    :cond_42
    const-string v1, "SIM_NETWORK_SUBSET_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 606
    const/4 v1, 0x7

    goto :goto_f

    .line 608
    :cond_4c
    const-string v1, "SIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 609
    const/16 v1, 0x8

    goto :goto_f

    .line 611
    :cond_57
    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 612
    const/16 v1, 0x9

    goto :goto_f

    .line 614
    :cond_62
    const-string v1, "SIM_SIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 615
    const/16 v1, 0xa

    goto :goto_f

    .line 617
    :cond_6d
    const-string v1, "RUIM_NETWORK1_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 618
    const/16 v1, 0xb

    goto :goto_f

    .line 620
    :cond_78
    const-string v1, "RUIM_NETWORK2_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 621
    const/16 v1, 0xc

    goto :goto_f

    .line 623
    :cond_83
    const-string v1, "RUIM_HRPD_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 624
    const/16 v1, 0xd

    goto :goto_f

    .line 626
    :cond_8e
    const-string v1, "RUIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 627
    const/16 v1, 0xe

    goto/16 :goto_f

    .line 629
    :cond_9a
    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 630
    const/16 v1, 0xf

    goto/16 :goto_f

    .line 632
    :cond_a6
    const-string v1, "RUIM_RUIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 633
    const/16 v1, 0x10

    goto/16 :goto_f

    .line 636
    :cond_b2
    const/4 v1, 0x0

    goto/16 :goto_f
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 703
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 708
    :goto_9
    return-object v1

    .line 704
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 705
    goto :goto_9

    .line 706
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 708
    goto :goto_9
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 813
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 818
    :goto_9
    return-object v1

    .line 814
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 815
    goto :goto_9

    .line 816
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 818
    goto :goto_9
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 758
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 763
    :goto_9
    return-object v1

    .line 759
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 760
    goto :goto_9

    .line 761
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 763
    goto :goto_9
.end method

.method public getVoiceMessageCount()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 795
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 800
    :goto_9
    return v1

    .line 796
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 797
    goto :goto_9

    .line 798
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 800
    goto :goto_9
.end method

.method public hasIccCard()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 553
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 559
    :goto_9
    return v1

    .line 554
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 556
    goto :goto_9

    .line 557
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 559
    goto :goto_9
.end method

.method public isNetworkRoaming()Z
    .registers 3

    .prologue
    .line 358
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 8
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 955
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 957
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_b
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 958
    .local v0, notifyNow:Ljava/lang/Boolean;
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_21} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_21} :catch_28

    .line 964
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :goto_21
    return-void

    .line 955
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_22
    const-string v2, "<unknown>"

    move-object v1, v2

    goto :goto_b

    .line 957
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_26
    const/4 v2, 0x0

    goto :goto_12

    .line 961
    :catch_28
    move-exception v2

    goto :goto_21

    .line 959
    :catch_2a
    move-exception v2

    goto :goto_21
.end method
