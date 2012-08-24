.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$LockscreenWallpaperCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
    }
.end annotation


# static fields
.field public static final BATT_ACTION_COLD:I = 0x66

.field public static final BATT_ACTION_FULL:I = 0x64

.field public static final BATT_ACTION_HEAT:I = 0x65

.field public static final BATT_UNCHECKED:I = 0x67

.field private static final DEBUG:Z = false

.field private static FLAG_ONCE:I = 0x0

.field private static FLAG_RECHARGE:I = 0x0

.field private static final IS_CHANGED_DRAWABLE:I = 0x1

.field private static final IS_NOT_CHANGED_DRAWABLE:I = 0x0

.field private static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final MSG_AIRPLANE_UPDATE:I = 0x133

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_BATTERY_UPDATE2:I = 0x134

.field private static final MSG_BOOT_COMPLETED:I = 0x135

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CONFIGURATION_CHANGED:I = 0x12c

.field private static final MSG_EVENTHANDLE_UPDATE:I = 0x136

.field private static final MSG_LOCKSCREENWALLPAPER_CHANGED:I = 0x140

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static mBatteryInfoState:I

.field private static mPlugedState:I


# instance fields
.field private final BATTERY_INFO_CHARGING:I

.field private final BATTERY_INFO_DEAD:I

.field private final BATTERY_INFO_FULL:I

.field private final BATTERY_INFO_NOT_DISPLAY:I

.field private final BATTERY_INFO_OVERHEAT:I

.field private final PLUG_IN:I

.field private final PLUG_OUT:I

.field private mAirplaneCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryLevel:I

.field private mBootCompleted:Z

.field private mConfigurationChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePluggedIn:Z

.field private mDeviceProvisioned:Z

.field private mFailedAttempts:I

.field private mHandler:Landroid/os/Handler;

.field private mInPortrait:Z

.field private mInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardOpen:Z

.field private mKeyguardBypassEnabled:Z

.field private mLockscreenWallpaperCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$LockscreenWallpaperCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyPlmn:Ljava/lang/CharSequence;

.field private mTelephonySpn:Ljava/lang/CharSequence;

.field private mWallpaperModeValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 145
    sput v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryInfoState:I

    .line 152
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPlugedState:I

    .line 156
    sput v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->FLAG_ONCE:I

    .line 157
    sput v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->FLAG_RECHARGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "device_provisioned"

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 107
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 112
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mConfigurationChangeCallbacks:Ljava/util/ArrayList;

    .line 115
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    .line 116
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    .line 117
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAirplaneCallbacks:Ljava/util/ArrayList;

    .line 118
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockscreenWallpaperCallback:Ljava/util/ArrayList;

    .line 136
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 140
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->BATTERY_INFO_NOT_DISPLAY:I

    .line 141
    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->BATTERY_INFO_CHARGING:I

    .line 142
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->BATTERY_INFO_FULL:I

    .line 143
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->BATTERY_INFO_OVERHEAT:I

    .line 144
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->BATTERY_INFO_DEAD:I

    .line 153
    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->PLUG_IN:I

    .line 154
    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->PLUG_OUT:I

    .line 237
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 239
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyguardBypassEnabled:Z

    .line 287
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_108

    move v1, v5

    :goto_63
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wallpaper_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperModeValue:I

    .line 297
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v1, :cond_a2

    .line 298
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10b

    move v1, v5

    :goto_a0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 324
    :cond_a2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->queryInPortrait()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInPortrait:Z

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->queryKeyboardOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardOpen:Z

    .line 329
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 330
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePluggedIn:Z

    .line 331
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryLevel:I

    .line 333
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 336
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v1, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_108
    move v1, v4

    .line 287
    goto/16 :goto_63

    :cond_10b
    move v1, v4

    .line 319
    goto :goto_a0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleConfigurationChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/database/ContentObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()I
    .registers 1

    .prologue
    .line 81
    sget v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryInfoState:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryInfoState:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatterInfo(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate2(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleAirplaneUpdate(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleLockScreenWallpaperUpdate(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method private getBatterInfo(Landroid/content/Intent;)I
    .registers 13
    .parameter "intent"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 417
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 420
    .local v1, batteryInfo:I
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 421
    const-string v5, "plugged"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 422
    .local v3, plugType:I
    const-string v5, "status"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 423
    .local v4, status:I
    const-string v5, "health"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 427
    .local v2, health:I
    if-nez v3, :cond_33

    move v5, v7

    :goto_27
    sput v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPlugedState:I

    .line 428
    sget v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPlugedState:I

    if-ne v5, v6, :cond_35

    .line 429
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePluggedIn:Z

    .line 433
    :goto_2f
    if-nez v3, :cond_38

    move v5, v7

    .line 446
    .end local v2           #health:I
    .end local v3           #plugType:I
    .end local v4           #status:I
    :goto_32
    return v5

    .restart local v2       #health:I
    .restart local v3       #plugType:I
    .restart local v4       #status:I
    :cond_33
    move v5, v6

    .line 427
    goto :goto_27

    .line 431
    :cond_35
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePluggedIn:Z

    goto :goto_2f

    .line 435
    :cond_38
    if-ne v4, v8, :cond_3e

    if-ne v2, v8, :cond_3e

    move v5, v6

    .line 437
    goto :goto_32

    .line 438
    :cond_3e
    if-ne v2, v9, :cond_42

    move v5, v9

    .line 439
    goto :goto_32

    .line 440
    :cond_42
    if-ne v2, v10, :cond_46

    move v5, v10

    .line 441
    goto :goto_32

    .line 442
    :cond_46
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4b

    move v5, v8

    .line 443
    goto :goto_32

    .end local v2           #health:I
    .end local v3           #plugType:I
    .end local v4           #status:I
    :cond_4b
    move v5, v1

    .line 446
    goto :goto_32
.end method

.method private getCustomerWallpaperLocked(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 7
    .parameter "context"

    .prologue
    const v4, 0x108015d

    .line 985
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 988
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 1008
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1011
    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #is:Ljava/io/InputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    .line 1020
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_16
    return-object v2

    .line 1012
    .end local v2           #is:Ljava/io/InputStream;
    :catch_17
    move-exception v3

    move-object v0, v3

    .line 1014
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 1015
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_16

    .line 1018
    .end local v0           #e:Ljava/io/IOException;
    :cond_22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_16
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104030d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getCustomerWallpaperLocked(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    .line 1027
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_44

    .line 1029
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1030
    .local v4, width:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1032
    .local v1, height:I
    if-lez v4, :cond_1f

    if-gtz v1, :cond_2f

    .line 1035
    :cond_1f
    invoke-static {v2, v6, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1037
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_46

    .line 1040
    :goto_26
    if-eqz v0, :cond_2d

    .line 1041
    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_2d
    move-object v5, v0

    .line 1067
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #height:I
    .end local v4           #width:I
    :goto_2e
    return-object v5

    .line 1048
    .restart local v1       #height:I
    .restart local v4       #width:I
    :cond_2f
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1049
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1050
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1051
    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1053
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_48

    :goto_42
    move-object v5, v0

    .line 1057
    goto :goto_2e

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #height:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #width:I
    :cond_44
    move-object v5, v6

    .line 1067
    goto :goto_2e

    .line 1038
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #height:I
    .restart local v4       #width:I
    :catch_46
    move-exception v5

    goto :goto_26

    .line 1054
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_48
    move-exception v5

    goto :goto_42
.end method

.method private getLockScreenWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 974
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 975
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_19

    .line 976
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 977
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    move-object v2, v1

    .line 980
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private getLockscreenDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-nez v0, :cond_7

    .line 963
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setLockscreenDrawable()V

    .line 965
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "intent"

    .prologue
    .line 648
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 667
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_13

    move-object v1, v0

    .line 675
    .end local v0           #plmn:Ljava/lang/String;
    :goto_12
    return-object v1

    .line 671
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_12

    .line 675
    .end local v0           #plmn:Ljava/lang/String;
    :cond_18
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "intent"

    .prologue
    .line 691
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 692
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_13

    move-object v1, v0

    .line 697
    .end local v0           #spn:Ljava/lang/String;
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private handleAirplaneUpdate(I)V
    .registers 6
    .parameter "on"

    .prologue
    const/4 v3, 0x1

    .line 519
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAirplaneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 520
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAirplaneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;

    if-ne p1, v3, :cond_1b

    move v2, v3

    :goto_15
    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;->onAirplaneModeChanged(Z)V

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 520
    :cond_1b
    const/4 v2, 0x0

    goto :goto_15

    .line 522
    :cond_1d
    return-void
.end method

.method private handleBatteryUpdate(II)V
    .registers 7
    .parameter "pluggedInStatus"
    .parameter "batteryLevel"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(I)Z

    move-result v1

    .line 505
    .local v1, pluggedIn:Z
    sget v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPlugedState:I

    if-gez v2, :cond_d

    .line 506
    if-eqz v1, :cond_32

    const/4 v2, 0x1

    :goto_b
    sput v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPlugedState:I

    .line 508
    :cond_d
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(ZI)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 509
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryLevel:I

    .line 510
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePluggedIn:Z

    .line 511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 512
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v3

    invoke-interface {v2, v3, v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 506
    .end local v0           #i:I
    :cond_32
    const/4 v2, 0x0

    goto :goto_b

    .line 516
    :cond_34
    return-void
.end method

.method private handleBatteryUpdate2(II)V
    .registers 5
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 527
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryLevel:I

    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 530
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onUpdateBatteryInfo(II)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 532
    :cond_19
    return-void
.end method

.method private handleBootCompleted()V
    .registers 2

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setLockscreenDrawable()V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 552
    return-void
.end method

.method private handleCarrierInfoUpdate()V
    .registers 5

    .prologue
    .line 566
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 569
    :cond_1b
    return-void
.end method

.method private handleConfigurationChange()V
    .registers 5

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->queryInPortrait()Z

    move-result v1

    .line 471
    .local v1, inPortrait:Z
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInPortrait:Z

    if-eq v3, v1, :cond_21

    .line 472
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInPortrait:Z

    .line 473
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mConfigurationChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_21

    .line 474
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mConfigurationChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;

    invoke-interface {v3, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;->onOrientationChange(Z)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 478
    .end local v0           #i:I
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->queryKeyboardOpen()Z

    move-result v2

    .line 479
    .local v2, keyboardOpen:Z
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardOpen:Z

    if-eq v3, v2, :cond_42

    .line 480
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardOpen:Z

    .line 481
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2c
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mConfigurationChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_42

    .line 482
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mConfigurationChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;->onKeyboardChange(Z)V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 485
    .end local v0           #i:I
    :cond_42
    return-void
.end method

.method private handleLockScreenWallpaperUpdate(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setWallpaperMode(I)V

    .line 538
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setLockscreenDrawable()V

    .line 544
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .registers 5
    .parameter "simArgs"

    .prologue
    .line 575
    iget-object v1, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 582
    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_23

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_23

    .line 583
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 584
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 585
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 588
    .end local v0           #i:I
    :cond_23
    return-void
.end method

.method private handleTimeUpdate()V
    .registers 3

    .prologue
    .line 493
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 494
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 496
    :cond_17
    return-void
.end method

.method private isBatteryUpdateInteresting(ZI)Z
    .registers 6
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x1

    .line 600
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePluggedIn:Z

    if-eq v0, p1, :cond_9

    move v0, v1

    .line 621
    :goto_8
    return v0

    .line 605
    :cond_9
    if-eqz p1, :cond_11

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryLevel:I

    if-eq v0, p2, :cond_11

    move v0, v1

    .line 606
    goto :goto_8

    .line 609
    :cond_11
    if-nez p1, :cond_23

    .line 611
    if-ge p2, v2, :cond_1b

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryLevel:I

    if-lt v0, v2, :cond_1b

    move v0, v1

    .line 613
    goto :goto_8

    .line 616
    :cond_1b
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryLevel:I

    if-ge v0, v2, :cond_23

    if-lt p2, v2, :cond_23

    move v0, v1

    .line 618
    goto :goto_8

    .line 621
    :cond_23
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isPluggedIn(I)Z
    .registers 3
    .parameter "status"

    .prologue
    .line 595
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setLockscreenDrawable()V
    .registers 2

    .prologue
    .line 954
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockScreenWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 955
    return-void
.end method

.method private setWallpaperMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wallpaper_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 943
    .local v0, chechValue:Z
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperModeValue:I

    .line 944
    return-void
.end method


# virtual methods
.method public clearFailedAttempts()V
    .registers 2

    .prologue
    .line 904
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 905
    return-void
.end method

.method public getBatteryInfoState()I
    .registers 2

    .prologue
    .line 872
    sget v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryInfoState:I

    return v0
.end method

.method public getBatteryLevel()I
    .registers 2

    .prologue
    .line 868
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryLevel:I

    return v0
.end method

.method public getBatteryPlugedState()I
    .registers 2

    .prologue
    .line 876
    sget v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPlugedState:I

    return v0
.end method

.method public getFailedAttempts()I
    .registers 2

    .prologue
    .line 900
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getFlagOnce()I
    .registers 2

    .prologue
    .line 920
    sget v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->FLAG_ONCE:I

    return v0
.end method

.method public getFlagRecharge()I
    .registers 2

    .prologue
    .line 934
    sget v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->FLAG_RECHARGE:I

    return v0
.end method

.method public getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockscreenDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .registers 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWallpaperMode()I
    .registers 2

    .prologue
    .line 948
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mWallpaperModeValue:I

    return v0
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 451
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 452
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(Ljava/lang/String;)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    :cond_17
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 458
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 459
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 461
    :cond_17
    return-void
.end method

.method public isBootCompleted()Z
    .registers 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public isDevicePluggedIn()Z
    .registers 2

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePluggedIn:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 896
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method

.method public isInPortrait()Z
    .registers 2

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInPortrait:Z

    return v0
.end method

.method public isKeyboardOpen()Z
    .registers 2

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardOpen:Z

    return v0
.end method

.method public isKeyguardBypassEnabled()Z
    .registers 2

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyguardBypassEnabled:Z

    return v0
.end method

.method queryInPortrait()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 629
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 630
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_11

    move v1, v2

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method queryKeyboardOpen()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 637
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 639
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_11

    move v1, v2

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAirplaneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    return-void
.end method

.method public registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mConfigurationChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    return-void
.end method

.method public registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V
    .registers 6
    .parameter "callback"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    :goto_d
    return-void

    .line 806
    :cond_e
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another INFO callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V
    .registers 6
    .parameter "callback"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    :goto_d
    return-void

    .line 818
    :cond_e
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another SIM callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mConfigurationChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 709
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAirplaneCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 712
    return-void
.end method

.method public reportFailedAttempt()V
    .registers 2

    .prologue
    .line 908
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 909
    return-void
.end method

.method public reportSimPinUnlocked()V
    .registers 2

    .prologue
    .line 846
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 847
    return-void
.end method

.method public resetFlagOnce()V
    .registers 2

    .prologue
    .line 916
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->FLAG_ONCE:I

    .line 917
    return-void
.end method

.method public resetFlagRecharge()V
    .registers 2

    .prologue
    .line 930
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->FLAG_RECHARGE:I

    .line 931
    return-void
.end method

.method public setFlagOnce()V
    .registers 2

    .prologue
    .line 912
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->FLAG_ONCE:I

    .line 913
    return-void
.end method

.method public setFlagRecharge()V
    .registers 2

    .prologue
    .line 926
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->FLAG_RECHARGE:I

    .line 927
    return-void
.end method

.method public shouldShowBatteryInfo()Z
    .registers 3

    .prologue
    .line 880
    sget v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryInfoState:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryLevel:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
