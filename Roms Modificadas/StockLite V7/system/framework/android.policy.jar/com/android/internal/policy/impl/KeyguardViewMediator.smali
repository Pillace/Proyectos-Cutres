.class public Lcom/android/internal/policy/impl/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewMediator$6;
    }
.end annotation


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_KEYBOARD_OPEN_MS:I = 0x2710

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x1388

.field private static final BATT_OVERHEAT_COLD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.KeyguardViewMediator.BATT_OVERHEAT_COLD"

.field private static final DBG_WAKE:Z = false

.field private static final DEBUG:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final HIDE:I = 0x3

.field private static final HIDE_BATTERY_STATUS:I = 0xf

.field private static final KEYGUARD_DELAY_MS:I = 0x1388

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field private static final RESET:I = 0x4

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SHOW_BATTERY_STATUS:I = 0xe

.field private static final SHOW_LOW_BATT_WARN:I = 0x10

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final TIMEOUT:I = 0x1

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8


# instance fields
.field private ALARM_ACTION:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBattDimLockReleaser:Ljava/lang/Runnable;

.field private mBattIntent:Landroid/app/PendingIntent;

.field private mBattLevel:I

.field private mBattWakelock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryChargedFull:Z

.field private mBatteryErrorpopup:Z

.field private mBatteryTempError:Z

.field private mBatteryWarnShow:Z

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mExternallyEnabled:Z

.field private mFullBattDimLockReleaser:Ljava/lang/Runnable;

.field private mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

.field private mFullBattWakelockSequence:I

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mKeyboardOpen:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field private mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field mRealPowerManager:Landroid/os/LocalPowerManager;

.field private mScreenOn:Z

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowing:Z

.field private mShowingLockIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSuppressNextUnLockSound:Z

.field private mSystemReady:Z

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUserPresentIntent:Landroid/content/Intent;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
    .registers 15
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "keyguardWakeAndHandOff"

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 168
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 205
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 212
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 216
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 219
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    .line 246
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    .line 248
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 251
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 262
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 266
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 267
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 268
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 269
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    .line 270
    iput v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattLevel:I

    .line 272
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattDimLockReleaser:Ljava/lang/Runnable;

    .line 286
    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->ALARM_ACTION:Ljava/lang/String;

    .line 984
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 1208
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 291
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 293
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    .line 294
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v1, "show keyguard"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v1, "keyguardWakeAndHandOff"

    invoke-virtual {v0, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 307
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v0, "com.android.internal.policy.impl.KeyguardViewMediator.BATT_OVERHEAT_COLD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->ALARM_ACTION:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 320
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 322
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 326
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    .line 329
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 337
    .local v6, cr:Landroid/content/ContentResolver;
    const-string v0, "show_status_bar_lock"

    invoke-static {v6, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_12e

    move v0, v9

    :goto_10a
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string v2, "keyguardWakeAndHandOff"

    invoke-virtual {v0, v1, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "keyguardWakeAndHandOff"

    invoke-virtual {v0, v1, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 346
    return-void

    :cond_12e
    move v0, v8

    .line 337
    goto :goto_10a
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->informOkayBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->ALARM_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->informBatterypopup(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleBatteryStatus(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHideBatteryStatus()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShowLowBatteryWarn(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->informBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->informLowBatteryWarn(Landroid/content/Intent;)V

    return-void
.end method

.method private adjustStatusBarLocked()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "secure"

    .line 1424
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_14

    .line 1425
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1428
    :cond_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_20

    .line 1429
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :goto_1f
    return-void

    .line 1431
    :cond_20
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v1, :cond_3e

    .line 1433
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1434
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v1, :cond_3e

    .line 1435
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "secure"

    const v2, 0x10802d8

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1437
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 1449
    :cond_3e
    :goto_3e
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eqz v1, :cond_64

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_64

    :cond_4c
    move v0, v4

    .line 1450
    .local v0, enable:Z
    :goto_4d
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_66

    move v2, v3

    :goto_52
    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1f

    .line 1440
    .end local v0           #enable:Z
    :cond_56
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v1, :cond_3e

    .line 1441
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "secure"

    invoke-virtual {v1, v5}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 1442
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    goto :goto_3e

    :cond_64
    move v0, v3

    .line 1449
    goto :goto_4d

    .restart local v0       #enable:Z
    :cond_66
    move v2, v4

    .line 1450
    goto :goto_52
.end method

.method private adjustUserActivityLocked()V
    .registers 5

    .prologue
    .line 1414
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustUserActivityLocked mShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eqz v1, :cond_3f

    :cond_2e
    const/4 v1, 0x1

    move v0, v1

    .line 1416
    .local v0, enabled:Z
    :goto_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->enableUserActivity(Z)V

    .line 1417
    if-nez v0, :cond_3e

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v1, :cond_3e

    .line 1419
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1421
    :cond_3e
    return-void

    .line 1415
    .end local v0           #enabled:Z
    :cond_3f
    const/4 v1, 0x0

    move v0, v1

    goto :goto_30
.end method

.method private doKeyguard()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "KeyguardViewMediator"

    .line 581
    monitor-enter p0

    .line 583
    :try_start_5
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v5, :cond_12

    .line 584
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because externally disabled"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    monitor-exit p0

    .line 636
    :goto_11
    return-void

    .line 599
    :cond_12
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 600
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because it is already showing"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    monitor-exit p0

    goto :goto_11

    .line 635
    :catchall_23
    move-exception v5

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v5

    .line 606
    :cond_26
    :try_start_26
    const-string v5, "true"

    const-string v6, "ril.FS"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 607
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because factory mode"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    monitor-exit p0

    goto :goto_11

    .line 611
    :cond_3d
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 612
    .local v4, value:I
    if-ne v4, v9, :cond_55

    .line 613
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because automatic shutdown is enabled"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    monitor-exit p0

    goto :goto_11

    .line 619
    :cond_55
    const-string v5, "keyguard.no_require_sim"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_85

    move v2, v9

    .line 621
    .local v2, requireSim:Z
    :goto_5f
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    .line 622
    .local v1, provisioned:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 623
    .local v3, state:Lcom/android/internal/telephony/IccCard$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v5

    if-nez v5, :cond_77

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v5, :cond_87

    if-eqz v2, :cond_87

    :cond_77
    move v0, v9

    .line 626
    .local v0, lockedOrMissing:Z
    :goto_78
    if-nez v0, :cond_89

    if-nez v1, :cond_89

    .line 627
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    monitor-exit p0

    goto :goto_11

    .end local v0           #lockedOrMissing:Z
    .end local v1           #provisioned:Z
    .end local v2           #requireSim:Z
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_85
    move v2, v8

    .line 619
    goto :goto_5f

    .restart local v1       #provisioned:Z
    .restart local v2       #requireSim:Z
    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_87
    move v0, v8

    .line 623
    goto :goto_78

    .line 632
    .restart local v0       #lockedOrMissing:Z
    :cond_89
    const-string v5, "KeyguardViewMediator"

    const-string v6, "doKeyguard: showing the lock screen"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 634
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    .line 635
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_26 .. :try_end_97} :catchall_23

    goto/16 :goto_11
.end method

.method private handleBatteryStatus(I)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1536
    monitor-enter p0

    .line 1537
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleBatteryStatus"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onBatteryStatusIndicate(I)V

    .line 1539
    monitor-exit p0

    .line 1540
    return-void

    .line 1539
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleHide()V
    .registers 3

    .prologue
    const-string v0, "KeyguardViewMediator"

    .line 1389
    monitor-enter p0

    .line 1390
    :try_start_3
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1392
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    monitor-exit p0

    .line 1410
    :goto_1a
    return-void

    .line 1398
    :cond_1b
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1399
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    if-eqz v0, :cond_30

    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    .line 1405
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V

    .line 1406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1407
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1408
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1409
    monitor-exit p0

    goto :goto_1a

    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0
.end method

.method private handleHideBatteryStatus()V
    .registers 3

    .prologue
    .line 1547
    monitor-enter p0

    .line 1548
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHideBatteryStatus"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onBatteryStatusHide()V

    .line 1550
    monitor-exit p0

    .line 1551
    return-void

    .line 1550
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleKeyguardDone(Z)V
    .registers 6
    .parameter "wakeup"

    .prologue
    const-string v1, "KeyguardViewMediator"

    .line 1270
    const-string v0, "KeyguardViewMediator"

    const-string v0, "handleKeyguardDone"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1274
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    .line 1278
    :cond_12
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-eqz v0, :cond_2a

    .line 1279
    const-string v0, "KeyguardViewMediator"

    const-string v0, "handleKeyguardDone -- reset battery popup"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 1281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 1282
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1285
    :cond_2a
    if-eqz p1, :cond_36

    .line 1286
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1288
    :cond_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1289
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1290
    return-void
.end method

.method private handleKeyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 1297
    monitor-enter p0

    .line 1299
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_19

    .line 1300
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1302
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1307
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    :cond_19
    monitor-exit p0

    .line 1310
    return-void

    .line 1309
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .registers 3

    .prologue
    .line 1513
    monitor-enter p0

    .line 1514
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOff()V

    .line 1516
    monitor-exit p0

    .line 1517
    return-void

    .line 1516
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleNotifyScreenOn()V
    .registers 3

    .prologue
    .line 1524
    monitor-enter p0

    .line 1525
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOn()V

    .line 1527
    monitor-exit p0

    .line 1528
    return-void

    .line 1527
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleReset()V
    .registers 3

    .prologue
    .line 1490
    monitor-enter p0

    .line 1491
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->reset()V

    .line 1493
    monitor-exit p0

    .line 1494
    return-void

    .line 1493
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleSetHidden(Z)V
    .registers 3
    .parameter "isHidden"

    .prologue
    .line 531
    monitor-enter p0

    .line 532
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_d

    .line 533
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    .line 534
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 535
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 537
    :cond_d
    monitor-exit p0

    .line 538
    return-void

    .line 537
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleShow()V
    .registers 3

    .prologue
    .line 1366
    monitor-enter p0

    .line 1367
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_e

    monitor-exit p0

    .line 1382
    :goto_d
    return-void

    .line 1370
    :cond_e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    .line 1372
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V

    .line 1373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1374
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1375
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_30

    .line 1377
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_30
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_33

    .line 1380
    :goto_29
    :try_start_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1381
    monitor-exit p0

    goto :goto_d

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw v0

    .line 1378
    :catch_33
    move-exception v0

    goto :goto_29
.end method

.method private handleShowLowBatteryWarn(I)V
    .registers 4
    .parameter "level"

    .prologue
    .line 1558
    monitor-enter p0

    .line 1559
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHideBatteryStatus"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onBatteryLowWarn(I)V

    .line 1561
    monitor-exit p0

    .line 1562
    return-void

    .line 1561
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleTimeout(I)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 1319
    monitor-enter p0

    .line 1320
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    if-ne p1, v0, :cond_11

    .line 1322
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1324
    :cond_11
    monitor-exit p0

    .line 1325
    return-void

    .line 1324
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private handleVerifyUnlock()V
    .registers 3

    .prologue
    .line 1501
    monitor-enter p0

    .line 1502
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->verifyUnlock()V

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1505
    monitor-exit p0

    .line 1506
    return-void

    .line 1505
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private handleWakeWhenReady(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    const-string v0, "KeyguardViewMediator"

    .line 1462
    monitor-enter p0

    .line 1467
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1469
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1477
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1479
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1480
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mWakeLock not held in mKeyguardViewManager.wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_29
    monitor-exit p0

    .line 1483
    return-void

    .line 1482
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private hideBatteryStatus()V
    .registers 4

    .prologue
    .line 918
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideBatteryStatus"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 920
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 921
    return-void
.end method

.method private hideLocked()V
    .registers 4

    .prologue
    .line 897
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 899
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 900
    return-void
.end method

.method private informBatteryStatus(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v11, "KeyguardViewMediator"

    .line 664
    const-string v6, "level"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattLevel:I

    .line 665
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5a

    move v2, v8

    .line 666
    .local v2, battPlugged:Z
    :goto_18
    const-string v6, "status"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 667
    .local v3, battStatus:I
    const-string v6, "health"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 670
    .local v1, battHealth:I
    const-string v6, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "informBatteryStatus ~ battPlugged / battStatus / battHealth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v6, :cond_73

    .line 676
    const/4 v6, 0x5

    if-ne v3, v6, :cond_5c

    .line 677
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 786
    :cond_59
    :goto_59
    return-void

    .end local v1           #battHealth:I
    .end local v2           #battPlugged:Z
    .end local v3           #battStatus:I
    :cond_5a
    move v2, v10

    .line 665
    goto :goto_18

    .line 678
    .restart local v1       #battHealth:I
    .restart local v2       #battPlugged:Z
    .restart local v3       #battStatus:I
    :cond_5c
    if-ne v3, v9, :cond_63

    .line 679
    if-ne v1, v9, :cond_59

    .line 680
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    goto :goto_59

    .line 682
    :cond_63
    if-ne v3, v12, :cond_67

    if-eq v1, v12, :cond_6c

    :cond_67
    const/4 v6, 0x4

    if-eq v3, v6, :cond_6c

    if-ne v3, v9, :cond_59

    .line 684
    :cond_6c
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 685
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 686
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    goto :goto_59

    .line 691
    :cond_73
    if-eq v3, v9, :cond_78

    const/4 v6, 0x4

    if-ne v3, v6, :cond_123

    .line 692
    :cond_78
    if-ne v1, v9, :cond_59

    .line 694
    const-string v6, "KeyguardViewMediator"

    const-string v6, "OVERHEAT or COLD in informBatteryStatus"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v6, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OVERHEAT or COLD mBatteryChargedFull = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mBatteryTempError ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    if-eqz v6, :cond_bb

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 699
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 700
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 701
    const-string v6, "KeyguardViewMediator"

    const-string v6, "OVERHEAT or COLD in informBatteryStatus ---  mBatteryChargedFull"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 702
    :cond_bb
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    if-nez v6, :cond_59

    .line 703
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v6, :cond_cd

    .line 704
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 705
    const-string v6, "KeyguardViewMediator"

    const-string v6, "OVERHEAT or COLD in informBatteryStatus ---  hideBatteryStatus"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_cd
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-nez v6, :cond_ed

    .line 711
    const-string v6, "KeyguardViewMediator"

    const-string v6, "OVERHEAT or COLD in informBatteryStatus ---  !mBattWakelock.isHeld()"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/16 v6, 0x32

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 713
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 719
    :cond_ed
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 720
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 722
    if-ne v1, v9, :cond_120

    const/16 v6, 0x65

    :goto_f5
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showBatteryStatus(I)V

    .line 725
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.internal.policy.impl.KeyguardViewMediator.BATT_OVERHEAT_COLD"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, TEMPintent:Landroid/content/Intent;
    const-string v6, "health"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long v4, v6, v8

    .line 729
    .local v4, when:J
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/high16 v7, 0x1000

    invoke-static {v6, v10, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    .line 730
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v12, v4, v5, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_59

    .line 722
    .end local v0           #TEMPintent:Landroid/content/Intent;
    .end local v4           #when:J
    :cond_120
    const/16 v6, 0x66

    goto :goto_f5

    .line 733
    :cond_123
    const/4 v6, 0x5

    if-ne v3, v6, :cond_159

    .line 736
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v6, :cond_12e

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    if-eqz v6, :cond_13f

    .line 737
    :cond_12e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 738
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 739
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 740
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 741
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 743
    :cond_13f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakeDimlock()V

    .line 745
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    if-nez v6, :cond_155

    .line 746
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 747
    const-string v6, "KeyguardViewMediator"

    const-string v6, "Call showBatteryStatus in informBatteryStatus 2"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/16 v6, 0x64

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showBatteryStatus(I)V

    .line 750
    :cond_155
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    goto/16 :goto_59

    .line 751
    :cond_159
    if-ne v3, v12, :cond_189

    .line 753
    if-ne v1, v12, :cond_59

    .line 754
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v6, :cond_165

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    if-eqz v6, :cond_176

    .line 755
    :cond_165
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 756
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 757
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 758
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 759
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 761
    :cond_176
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    if-eqz v6, :cond_182

    .line 763
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    .line 764
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 765
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 767
    :cond_182
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 769
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakeDimlock()V

    goto/16 :goto_59

    .line 771
    :cond_189
    const/4 v6, 0x4

    if-eq v3, v6, :cond_18e

    if-ne v3, v9, :cond_59

    .line 773
    :cond_18e
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v6, :cond_196

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    if-eqz v6, :cond_1a7

    .line 774
    :cond_196
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 775
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 776
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 777
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 778
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 780
    :cond_1a7
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    if-nez v6, :cond_1ae

    .line 781
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 782
    :cond_1ae
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 784
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakeDimlock()V

    goto/16 :goto_59
.end method

.method private informBatterypopup(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 641
    const-string v1, "health"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 643
    .local v0, battHealth:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    if-eqz v1, :cond_36

    .line 644
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 645
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 646
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 650
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 652
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 653
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 654
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 657
    :cond_2d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3e

    const/16 v1, 0x65

    :goto_32
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showBatteryStatus(I)V

    .line 659
    return-void

    .line 647
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v1, :cond_14

    .line 648
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    goto :goto_14

    .line 657
    :cond_3e
    const/16 v1, 0x66

    goto :goto_32
.end method

.method private informLowBatteryWarn(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 790
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Call informLowBatteryWarn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_f

    .line 793
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    .line 807
    :goto_e
    return-void

    .line 796
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    if-eqz v0, :cond_16

    .line 797
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 799
    :cond_16
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_31

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 802
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 805
    :cond_31
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattLevel:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLowBatteryWarn(I)V

    .line 806
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    goto :goto_e
.end method

.method private informOkayBattery(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    if-eqz v0, :cond_a

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    .line 812
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 814
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 815
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakeDimlock()V

    .line 816
    return-void
.end method

.method private isWakeKeyWhenKeyguardShowing(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 1073
    sparse-switch p1, :sswitch_data_8

    .line 1087
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 1085
    :sswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1073
    nop

    :sswitch_data_8
    .sparse-switch
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1b -> :sswitch_5
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
    .end sparse-switch
.end method

.method private notifyScreenOffLocked()V
    .registers 3

    .prologue
    .line 845
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 847
    return-void
.end method

.method private notifyScreenOnLocked()V
    .registers 3

    .prologue
    .line 855
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOnLocked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 857
    return-void
.end method

.method private playSounds(Z)V
    .registers 11
    .parameter "locked"

    .prologue
    const/4 v7, 0x1

    const-string v8, "KeyguardViewMediator"

    .line 1330
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v5, :cond_b

    .line 1331
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1359
    :cond_a
    :goto_a
    return-void

    .line 1335
    :cond_b
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1336
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 1338
    if-eqz p1, :cond_4c

    const-string v5, "lock_sound"

    move-object v4, v5

    .line 1341
    .local v4, whichSound:Ljava/lang/String;
    :goto_1e
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1342
    .local v2, soundPath:Ljava/lang/String;
    if-eqz v2, :cond_82

    .line 1343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1344
    .local v3, soundUri:Landroid/net/Uri;
    if-eqz v3, :cond_69

    .line 1345
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 1346
    .local v1, sfx:Landroid/media/Ringtone;
    if-eqz v1, :cond_50

    .line 1347
    invoke-virtual {v1, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1348
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_a

    .line 1338
    .end local v1           #sfx:Landroid/media/Ringtone;
    .end local v2           #soundPath:Ljava/lang/String;
    .end local v3           #soundUri:Landroid/net/Uri;
    .end local v4           #whichSound:Ljava/lang/String;
    :cond_4c
    const-string v5, "unlock_sound"

    move-object v4, v5

    goto :goto_1e

    .line 1350
    .restart local v1       #sfx:Landroid/media/Ringtone;
    .restart local v2       #soundPath:Ljava/lang/String;
    .restart local v3       #soundUri:Landroid/net/Uri;
    .restart local v4       #whichSound:Ljava/lang/String;
    :cond_50
    const-string v5, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSounds: failed to load ringtone from uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1353
    .end local v1           #sfx:Landroid/media/Ringtone;
    :cond_69
    const-string v5, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSounds: could not parse Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1356
    .end local v3           #soundUri:Landroid/net/Uri;
    :cond_82
    const-string v5, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSounds: whichSound = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; soundPath was null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a
.end method

.method private pokeWakeDimlock()V
    .registers 3

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1178
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1179
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1181
    :cond_14
    return-void
.end method

.method private resetStateLocked()V
    .registers 4

    .prologue
    .line 824
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 827
    return-void
.end method

.method private showBatteryStatus(I)V
    .registers 6
    .parameter "action"

    .prologue
    .line 908
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showBatteryStatus"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 910
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 911
    return-void
.end method

.method private showLocked()V
    .registers 4

    .prologue
    .line 885
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 888
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 889
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    return-void
.end method

.method private showLowBatteryWarn(I)V
    .registers 6
    .parameter "level"

    .prologue
    .line 928
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLowBatteryWarn"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 930
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 931
    return-void
.end method

.method private verifyUnlockLocked()V
    .registers 3

    .prologue
    .line 834
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 836
    return-void
.end method

.method private wakeWhenReadyLocked(I)V
    .registers 6
    .parameter "keyCode"

    .prologue
    .line 867
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeWhenReadyLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 876
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 877
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 878
    return-void
.end method


# virtual methods
.method public doKeyguardTimeout()V
    .registers 4

    .prologue
    const/16 v2, 0xd

    .line 545
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 547
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    return-void
.end method

.method public doLidChangeTq(Z)Z
    .registers 5
    .parameter "isLidOpen"

    .prologue
    const/4 v2, 0x1

    .line 564
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    .line 566
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    if-nez v0, :cond_9

    move v0, v2

    .line 574
    :goto_8
    return v0

    .line 568
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 570
    const-string v0, "KeyguardViewMediator"

    const-string v1, "bypassing keyguard on sliding open of keyboard with non-secure keyguard"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 572
    goto :goto_8

    .line 574
    :cond_35
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isInputRestricted()Z
    .registers 2

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .registers 2

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public keyguardDone(Z)V
    .registers 3
    .parameter "authenticated"

    .prologue
    .line 1130
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 1131
    return-void
.end method

.method public keyguardDone(ZZ)V
    .registers 9
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1134
    monitor-enter p0

    .line 1135
    const v1, 0x11170

    const/4 v2, 0x2

    :try_start_7
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1136
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguardDone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1138
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_57

    move v1, v5

    :goto_33
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1139
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1141
    if-eqz p1, :cond_41

    .line 1142
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->clearFailedAttempts()V

    .line 1145
    :cond_41
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_55

    .line 1146
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1149
    if-eqz p1, :cond_55

    .line 1152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1156
    :cond_55
    monitor-exit p0

    .line 1157
    return-void

    :cond_57
    move v1, v4

    .line 1138
    goto :goto_33

    .line 1156
    .end local v0           #msg:Landroid/os/Message;
    :catchall_59
    move-exception v1

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public keyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1166
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .registers 10
    .parameter "why"

    .prologue
    const-string v4, "KeyguardViewMediator"

    .line 366
    monitor-enter p0

    .line 367
    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 368
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScreenTurnedOff("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v4, :cond_41

    .line 371
    const-string v4, "KeyguardViewMediator"

    const-string v5, "pending exit secure callback cancelled"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 373
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 374
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v4, :cond_3f

    .line 375
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    .line 404
    :cond_3f
    :goto_3f
    monitor-exit p0

    .line 405
    return-void

    .line 377
    :cond_41
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v4, :cond_63

    .line 379
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 380
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 381
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    :cond_59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 384
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_3f

    .line 404
    :catchall_60
    move-exception v4

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v4

    .line 385
    :cond_63
    const/4 v4, 0x3

    if-ne p1, v4, :cond_a6

    .line 390
    :try_start_66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long v2, v4, v6

    .line 391
    .local v2, when:J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "seq"

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 395
    .local v1, sender:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 397
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting alarm to turn off keyguard, seq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 399
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sender:Landroid/app/PendingIntent;
    .end local v2           #when:J
    :cond_a6
    const/4 v4, 0x4

    if-eq p1, v4, :cond_3f

    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V
    :try_end_ac
    .catchall {:try_start_66 .. :try_end_ac} :catchall_60

    goto :goto_3f
.end method

.method public onScreenTurnedOn()V
    .registers 4

    .prologue
    .line 411
    monitor-enter p0

    .line 412
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 413
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 414
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOnLocked()V

    .line 416
    monitor-exit p0

    .line 417
    return-void

    .line 416
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 5
    .parameter "simState"

    .prologue
    const-string v2, "KeyguardViewMediator"

    .line 936
    const-string v0, "KeyguardViewMediator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$6;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8c

    .line 978
    :cond_25
    :goto_25
    return-void

    .line 942
    :pswitch_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_25

    .line 943
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 944
    const-string v0, "KeyguardViewMediator"

    const-string v0, "INTENT_VALUE_ICC_ABSENT and keygaurd isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    goto :goto_25

    .line 948
    :cond_3f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_25

    .line 954
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_54

    .line 955
    const-string v0, "KeyguardViewMediator"

    const-string v0, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing, we need to show the keyguard so the user can enter their sim pin"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    goto :goto_25

    .line 959
    :cond_54
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_25

    .line 964
    :pswitch_58
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 965
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_25

    .line 970
    :pswitch_62
    const-string v0, "KeyguardViewMediator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTENT_VALUE_ICC_BLOCKED and keygaurd isn\'t showing : isShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_88

    .line 972
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    goto :goto_25

    .line 974
    :cond_88
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_25

    .line 938
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_43
        :pswitch_43
        :pswitch_58
        :pswitch_62
    .end packed-switch
.end method

.method public onSystemReady()V
    .registers 3

    .prologue
    .line 352
    monitor-enter p0

    .line 353
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    .line 355
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    .line 356
    monitor-exit p0

    .line 357
    return-void

    .line 356
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(I)Z
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 1059
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeKeyWhenKeyguardShowing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardShowing(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1065
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    .line 1066
    const/4 v0, 0x1

    .line 1068
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public pokeFullBattWakelock()V
    .registers 6

    .prologue
    .line 1114
    monitor-enter p0

    .line 1116
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1117
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1118
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelockSequence:I

    .line 1119
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1120
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1121
    monitor-exit p0

    .line 1122
    return-void

    .line 1121
    .end local v0           #msg:Landroid/os/Message;
    :catchall_27
    move-exception v1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public pokeWakeDimlock(I)V
    .registers 10
    .parameter "millis"

    .prologue
    .line 1184
    int-to-long v0, p1

    .line 1185
    .local v0, mills:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_9

    const-wide/16 v0, 0x0

    .line 1187
    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long v2, v4, v6

    .line 1189
    .local v2, when:J
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1191
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1199
    return-void
.end method

.method public pokeWakelock()V
    .registers 2

    .prologue
    .line 1096
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x2710

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 1098
    return-void

    .line 1096
    :cond_a
    const/16 v0, 0x1388

    goto :goto_6
.end method

.method public pokeWakelock(I)V
    .registers 7
    .parameter "holdMs"

    .prologue
    .line 1102
    monitor-enter p0

    .line 1104
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1105
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1106
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    .line 1107
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1108
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1109
    monitor-exit p0

    .line 1110
    return-void

    .line 1109
    .end local v0           #msg:Landroid/os/Message;
    :catchall_24
    move-exception v1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setHidden(Z)V
    .registers 7
    .parameter "isHidden"

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_17

    const/4 v2, 0x1

    :goto_d
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_17
    move v2, v3

    .line 523
    goto :goto_d
.end method

.method public setKeyguardEnabled(Z)V
    .registers 7
    .parameter "enabled"

    .prologue
    const-string v1, "KeyguardViewMediator"

    .line 425
    monitor-enter p0

    .line 426
    :try_start_3
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 431
    if-nez p1, :cond_48

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_48

    .line 432
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_36

    .line 433
    const-string v1, "KeyguardViewMediator"

    const-string v2, "in process of verifyUnlock request, ignoring"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    monitor-exit p0

    .line 475
    :goto_35
    return-void

    .line 440
    :cond_36
    const-string v1, "KeyguardViewMediator"

    const-string v2, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 443
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    .line 474
    :cond_43
    :goto_43
    monitor-exit p0

    goto :goto_35

    :catchall_45
    move-exception v1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1

    .line 444
    :cond_48
    if-eqz p1, :cond_43

    :try_start_4a
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_43

    .line 446
    const-string v1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 450
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_70

    .line 451
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onKeyguardExitResult(false), resetting"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 454
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_43

    .line 456
    :cond_70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    .line 461
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 462
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 463
    const-string v1, "KeyguardViewMediator"

    const-string v2, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_86
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_88
    .catchall {:try_start_4a .. :try_end_88} :catchall_45

    if-eqz v1, :cond_97

    .line 466
    :try_start_8a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_45
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_86

    .line 467
    :catch_8e
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_8f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_86

    .line 471
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_97
    const-string v1, "KeyguardViewMediator"

    const-string v2, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_45

    goto :goto_43
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 4
    .parameter "callback"

    .prologue
    const-string v0, "KeyguardViewMediator"

    .line 481
    monitor-enter p0

    .line 482
    :try_start_3
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 485
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 500
    :goto_1d
    monitor-exit p0

    .line 501
    return-void

    .line 487
    :cond_1f
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_32

    .line 491
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_1d

    .line 500
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    .line 493
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_3b

    .line 495
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_1d

    .line 497
    :cond_3b
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 498
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2f

    goto :goto_1d
.end method
