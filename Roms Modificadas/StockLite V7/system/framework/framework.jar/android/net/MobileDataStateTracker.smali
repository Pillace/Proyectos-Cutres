.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$1;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"


# instance fields
.field private mApnName:Ljava/lang/String;

.field private mApnType:Ljava/lang/String;

.field private mApnTypeToWatchFor:Ljava/lang/String;

.field private mEnabled:Z

.field private mIsDefaultOrHipri:Z

.field private mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "target"
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-boolean v7, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    .line 73
    invoke-static {p3}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "hipri"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 75
    const-string v0, "default"

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    .line 79
    :goto_31
    if-eqz p3, :cond_35

    if-ne p3, v9, :cond_37

    .line 81
    :cond_35
    iput-boolean v8, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    .line 84
    :cond_37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 85
    if-nez p3, :cond_b8

    .line 86
    iput-boolean v8, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 91
    :goto_3e
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "net.rmnet0.dns1"

    aput-object v1, v0, v7

    const-string v1, "net.rmnet0.dns2"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "net.rmnet1.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "net.rmnet1.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "net.rmnet2.dns1"

    aput-object v2, v0, v1

    const-string v1, "net.rmnet2.dns2"

    aput-object v1, v0, v9

    const/4 v1, 0x6

    const-string v2, "net.eth0.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "net.eth0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "net.eth0.dns3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "net.eth0.dns4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "net.gprs.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net.gprs.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "net.ppp0.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "net.ppp0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "net.pdp0.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "net.pdp0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "net.pdp1.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "net.pdp1.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "net.pdp2.dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "net.pdp2.dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    .line 117
    return-void

    .line 77
    :cond_b2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    goto/16 :goto_31

    .line 88
    :cond_b8
    iput-boolean v7, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_3e
.end method

.method static synthetic access$100(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mApnName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/MobileDataStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return v0
.end method

.method static synthetic access$402(Landroid/net/MobileDataStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return p1
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/MobileDataStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    return v0
.end method

.method private getDnsList()[Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x2

    .line 632
    iget-object v8, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-nez v8, :cond_a

    .line 633
    invoke-super {p0}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v8

    .line 649
    :goto_9
    return-object v8

    .line 635
    :cond_a
    new-array v1, v10, [Ljava/lang/String;

    .line 637
    .local v1, dnsAddresses:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 639
    .local v3, j:I
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_12
    if-ge v2, v5, :cond_3b

    aget-object v6, v0, v2

    .line 640
    .local v6, propName:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3d

    .line 641
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, value:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3d

    const-string v8, "0.0.0.0"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 643
    if-ge v4, v10, :cond_3d

    .line 644
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    aput-object v7, v1, v4

    .line 639
    .end local v7           #value:Ljava/lang/String;
    :goto_37
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_12

    .end local v6           #propName:Ljava/lang/String;
    :cond_3b
    move-object v8, v1

    .line 649
    goto :goto_9

    .restart local v6       #propName:Ljava/lang/String;
    :cond_3d
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_37
.end method

.method private getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 5
    .parameter "intent"

    .prologue
    .line 141
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 143
    const-string v2, "apnType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, apnTypeList:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 146
    const-class v2, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v2, p0

    .line 149
    .end local v0           #apnTypeList:Ljava/lang/String;
    :goto_1e
    return-object v2

    .restart local p0
    :cond_1f
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1e
.end method

.method private getPhoneService(Z)V
    .registers 3
    .parameter "forceRefresh"

    .prologue
    .line 320
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_13

    .line 321
    :cond_6
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 323
    :cond_13
    return-void
.end method

.method private isApnTypeIncluded(Ljava/lang/String;)Z
    .registers 7
    .parameter "typeList"

    .prologue
    const/4 v4, 0x0

    .line 154
    if-nez p1, :cond_5

    move v2, v4

    .line 164
    :goto_4
    return v2

    .line 157
    :cond_5
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 159
    aget-object v2, v1, v0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    aget-object v2, v1, v0

    const-string v3, "*"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 161
    :cond_23
    const/4 v2, 0x1

    goto :goto_4

    .line 158
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_28
    move v2, v4

    .line 164
    goto :goto_4
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .registers 4
    .parameter "netType"

    .prologue
    .line 609
    packed-switch p0, :pswitch_data_34

    .line 621
    :pswitch_3
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error mapping networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to apnType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v0, 0x0

    :goto_22
    return-object v0

    .line 611
    :pswitch_23
    const-string v0, "default"

    goto :goto_22

    .line 613
    :pswitch_26
    const-string v0, "mms"

    goto :goto_22

    .line 615
    :pswitch_29
    const-string/jumbo v0, "supl"

    goto :goto_22

    .line 617
    :pswitch_2d
    const-string v0, "dun"

    goto :goto_22

    .line 619
    :pswitch_30
    const-string v0, "hipri"

    goto :goto_22

    .line 609
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_23
        :pswitch_3
        :pswitch_26
        :pswitch_29
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .registers 8
    .parameter "apnType"
    .parameter "enable"

    .prologue
    const-string v4, "MobileDataStateTracker"

    .line 580
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 585
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 586
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_43

    .line 587
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_15
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_5e

    const-string v3, "enable"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v2, 0x3

    :goto_42
    return v2

    .line 593
    :cond_43
    if-eqz p2, :cond_4c

    .line 594
    :try_start_45
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_42

    .line 596
    :cond_4c
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_51} :catch_53

    move-result v2

    goto :goto_42

    .line 598
    :catch_53
    move-exception v2

    move-object v0, v2

    .line 599
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_5b

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 585
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 603
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5e
    const-string v3, "disable"

    goto :goto_26
.end method


# virtual methods
.method public getNameServers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;->getDnsList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 355
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 363
    const-string/jumbo v0, "unknown"

    .line 364
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 366
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 401
    :goto_11
    :pswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 368
    :pswitch_25
    const-string v0, "gprs"

    .line 369
    goto :goto_11

    .line 371
    :pswitch_28
    const-string v0, "edge"

    .line 372
    goto :goto_11

    .line 374
    :pswitch_2b
    const-string/jumbo v0, "umts"

    .line 375
    goto :goto_11

    .line 377
    :pswitch_2f
    const-string v0, "hsdpa"

    .line 378
    goto :goto_11

    .line 380
    :pswitch_32
    const-string v0, "hsupa"

    .line 381
    goto :goto_11

    .line 383
    :pswitch_35
    const-string v0, "hspa"

    .line 384
    goto :goto_11

    .line 386
    :pswitch_38
    const-string v0, "cdma"

    .line 387
    goto :goto_11

    .line 389
    :pswitch_3b
    const-string v0, "1xrtt"

    .line 390
    goto :goto_11

    .line 392
    :pswitch_3e
    const-string v0, "evdo"

    .line 393
    goto :goto_11

    .line 395
    :pswitch_41
    const-string v0, "evdo"

    .line 396
    goto :goto_11

    .line 398
    :pswitch_44
    const-string v0, "evdo"

    goto :goto_11

    .line 366
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_38
        :pswitch_3e
        :pswitch_41
        :pswitch_3b
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_11
        :pswitch_44
    .end packed-switch
.end method

.method public isAvailable()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 335
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_5
    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    .line 336
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_e

    :cond_c
    move v2, v3

    .line 346
    :goto_d
    return v2

    .line 339
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v2

    goto :goto_d

    .line 340
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 342
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_1d

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 335
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public reconnect()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "default"

    const-string v5, "apnChanged"

    .line 423
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 424
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_8e

    .line 467
    const-string v1, "MobileDataStateTracker"

    const-string v2, "Error in reconnect - unexpected response."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iput-boolean v3, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 471
    :cond_1b
    :goto_1b
    iget-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    :goto_1d
    return v1

    .line 427
    :pswitch_1e
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 429
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 430
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "apnChanged"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v5, v2}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "state"

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string/jumbo v1, "reason"

    const-string v2, "apnChanged"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v1, "apnType"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "apn"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v1, "iface"

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "networkUnvailable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    const-string v1, "gateway"

    iget v2, p0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1b

    .line 444
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_74
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_1b

    .line 448
    :pswitch_77
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v2, "default"

    if-ne v1, v6, :cond_85

    .line 455
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    move v1, v3

    .line 456
    goto :goto_1d

    .line 462
    :cond_85
    :pswitch_85
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v2, "default"

    if-eq v1, v6, :cond_1b

    .line 463
    iput-boolean v3, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_1b

    .line 424
    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_74
        :pswitch_85
        :pswitch_77
    .end packed-switch
.end method

.method public requestRouteToHost(I)Z
    .registers 6
    .parameter "hostAddress"

    .prologue
    const/4 v3, 0x0

    .line 554
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested host route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_4e

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4e

    .line 558
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    .line 560
    :goto_4b
    return v0

    :cond_4c
    move v0, v3

    .line 558
    goto :goto_4b

    :cond_4e
    move v0, v3

    .line 560
    goto :goto_4b
.end method

.method public setRadio(Z)Z
    .registers 8
    .parameter "turnOn"

    .prologue
    const/4 v4, 0x0

    const-string v5, "MobileDataStateTracker"

    .line 480
    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 485
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 486
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_33

    .line 487
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_15
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set radio power to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_45

    const-string v3, "on"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 500
    :goto_32
    return v2

    .line 493
    :cond_33
    :try_start_33
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_3a

    move-result v2

    goto :goto_32

    .line 494
    :catch_3a
    move-exception v2

    move-object v0, v2

    .line 495
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_42

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 485
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 499
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_45
    const-string v3, "off"

    goto :goto_26
.end method

.method public startMonitoring()V
    .registers 5

    .prologue
    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, filter:Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 129
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance v2, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 134
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2f

    .line 135
    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 138
    :goto_2e
    return-void

    .line 137
    :cond_2f
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_2e
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 525
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 541
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 416
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    move v0, v3

    :goto_f
    return v0

    :cond_10
    move v0, v2

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Mobile data state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 569
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
