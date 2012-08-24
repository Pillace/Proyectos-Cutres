.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final APPLICATION_LAYER:I = 0x2

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEFAULT_ACCELEROMETER_ROTATION:I = 0x0

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xd

.field static final INPUT_METHOD_LAYER:I = 0xc

.field static final KEYBOARD_ALWAYS_HIDDEN:Z = false

.field static final KEYGUARD_DIALOG_LAYER:I = 0xf

.field static final KEYGUARD_LAYER:I = 0xe

.field static final PHONE_LAYER:I = 0x3

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0x9

.field static final SEARCH_BAR_LAYER:I = 0x4

.field static final SECURE_SYSTEM_OVERLAY_LAYER:I = 0x11

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static final STATUS_BAR_LAYER:I = 0x8

.field static final STATUS_BAR_PANEL_LAYER:I = 0x5

.field private static final SW_LID:I = 0x0

.field static final SYSTEM_ALERT_LAYER:I = 0xa

.field static final SYSTEM_DIALOG_LAYER:I = 0x6

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0xb

.field static final SYSTEM_OVERLAY_LAYER:I = 0x10

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x7

.field static final WALLPAPER_LAYER:I = 0x2

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;


# instance fields
.field mAccelerometerDefault:I

.field mAllowLockscreenWhenOn:Z

.field mBroadcastDone:Landroid/content/BroadcastReceiver;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:Z

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field mFancyRotationAnimation:I

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field mH:I

.field mHandler:Landroid/os/Handler;

.field mHasSoftInput:Z

.field mHideLockScreen:Z

.field private mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

.field mHomeIntent:Landroid/content/Intent;

.field mHomeLongPress:Ljava/lang/Runnable;

.field mHomePressed:Z

.field mIncallPowerBehavior:I

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpen:Z

.field mLidOpenRotation:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field mLongPressVibePattern:[J

.field mMenuLongPress:Ljava/lang/Runnable;

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field private final mPointerLocationInputHandler:Landroid/view/InputHandler;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mRealLidOpen:Z

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

.field private mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

.field mScreenLockTimeout:Ljava/lang/Runnable;

.field mScreenOn:Z

.field mSearchKeyPressed:Z

.field mSeascapeRotation:I

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field final mStatusBarPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mUiMode:I

.field mUpsideDownRotation:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mW:I

.field mWindowManager:Landroid/view/IWindowManager;

.field private mdelayedupdateRotation:Ljava/lang/Runnable;

.field private mdelayedupdateRotationActive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 291
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 292
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 293
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 294
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1165
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_26
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 226
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 229
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    .line 231
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 242
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 250
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 252
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 254
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 257
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 258
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 261
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    .line 319
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 320
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 321
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 322
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 331
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    .line 335
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    .line 526
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 564
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    .line 579
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 1866
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    .line 1867
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotation:Ljava/lang/Runnable;

    .line 2222
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2228
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 2478
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    .line 2855
    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    return p1
.end method

.method private determineHiddenState(ZIII)I
    .registers 6
    .parameter "lidOpen"
    .parameter "mode"
    .parameter "hiddenValue"
    .parameter "visibleValue"

    .prologue
    .line 853
    packed-switch p2, :pswitch_data_12

    move v0, p4

    .line 859
    :goto_4
    return v0

    .line 855
    :pswitch_5
    if-eqz p1, :cond_9

    move v0, p4

    goto :goto_4

    :cond_9
    move v0, p3

    goto :goto_4

    .line 857
    :pswitch_b
    if-eqz p1, :cond_f

    move v0, p3

    goto :goto_4

    :cond_f
    move v0, p4

    goto :goto_4

    .line 853
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .prologue
    .line 1153
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1155
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_13

    .line 1156
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_13
    return-object v0
.end method

.method private getCurrentLandscapeRotation(I)I
    .registers 4
    .parameter "lastRotation"

    .prologue
    .line 2383
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2384
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    .line 2392
    :goto_d
    return v1

    .line 2388
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, p1

    .line 2389
    goto :goto_d

    .line 2392
    :cond_16
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    goto :goto_d
.end method

.method private getCurrentPortraitRotation(I)I
    .registers 4
    .parameter "lastRotation"

    .prologue
    .line 2400
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2401
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    .line 2409
    :goto_d
    return v1

    .line 2405
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, p1

    .line 2406
    goto :goto_d

    .line 2409
    :cond_16
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    goto :goto_d
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 2440
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2441
    .local v0, ar:[I
    if-nez v0, :cond_8

    .line 2442
    const/4 v3, 0x0

    .line 2448
    :goto_7
    return-object v3

    .line 2444
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 2445
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_17

    .line 2446
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 2445
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    move-object v3, v2

    .line 2448
    goto :goto_7
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 1144
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1146
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 1147
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_13
    return-object v0
.end method

.method private interceptPowerKeyDown(Z)V
    .registers 6
    .parameter "handled"

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 511
    if-nez p1, :cond_f

    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    :cond_f
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .registers 6
    .parameter "canceled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 517
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_13

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 519
    if-nez p1, :cond_11

    move v0, v3

    .line 522
    :goto_10
    return v0

    :cond_11
    move v0, v2

    .line 519
    goto :goto_10

    .line 521
    :cond_13
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move v0, v2

    .line 522
    goto :goto_10
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .parameter "sensorRotation"

    .prologue
    .line 2413
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .parameter "sensorRotation"

    .prologue
    .line 2396
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method private readRotation(I)I
    .registers 4
    .parameter "resID"

    .prologue
    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_17

    move-result v0

    .line 766
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_1a

    .line 779
    .end local v0           #rotation:I
    :goto_d
    const/4 v1, -0x1

    :goto_e
    return v1

    .line 768
    .restart local v0       #rotation:I
    :sswitch_f
    const/4 v1, 0x0

    goto :goto_e

    .line 770
    :sswitch_11
    const/4 v1, 0x1

    goto :goto_e

    .line 772
    :sswitch_13
    const/4 v1, 0x2

    goto :goto_e

    .line 774
    :sswitch_15
    const/4 v1, 0x3

    goto :goto_e

    .line 776
    .end local v0           #rotation:I
    :catch_17
    move-exception v1

    goto :goto_d

    .line 766
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_f
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_15
    .end sparse-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 2308
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2310
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 2314
    :cond_d
    :goto_d
    return-void

    .line 2311
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .prologue
    .line 2489
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 2490
    :try_start_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    move v0, v2

    .line 2491
    .local v0, enable:Z
    :goto_15
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v0, :cond_27

    .line 2492
    if-eqz v0, :cond_2c

    .line 2494
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2499
    :goto_25
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 2501
    :cond_27
    monitor-exit v1

    .line 2502
    return-void

    .line 2490
    .end local v0           #enable:Z
    :cond_29
    const/4 v2, 0x0

    move v0, v2

    goto :goto_15

    .line 2497
    .restart local v0       #enable:Z
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 2501
    .end local v0           #enable:Z
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private writeSlideCount(Z)V
    .registers 11
    .parameter "lidOpen"

    .prologue
    const-string v6, "/data/app/slideCount"

    .line 1881
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SW_LID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :try_start_1a
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    if-eqz v6, :cond_6b

    .line 1884
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/app/slideCount"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1885
    .local v3, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1886
    .local v4, number:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1887
    if-eqz v4, :cond_39

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_40

    .line 1888
    :cond_39
    new-instance v4, Ljava/lang/String;

    .end local v4           #number:Ljava/lang/String;
    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1891
    .restart local v4       #number:Ljava/lang/String;
    :cond_40
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1892
    .local v0, SlideOpenCount:I
    add-int/lit8 v0, v0, 0x1

    .line 1893
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/data/app/slideCount"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1894
    .local v5, out:Ljava/io/BufferedWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1895
    .local v1, countString:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_6b} :catch_6c

    .line 1902
    .end local v0           #SlideOpenCount:I
    .end local v1           #countString:Ljava/lang/String;
    .end local v3           #inReader:Ljava/io/BufferedReader;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #out:Ljava/io/BufferedWriter;
    :cond_6b
    :goto_6b
    return-void

    .line 1899
    :catch_6c
    move-exception v6

    move-object v2, v6

    .line 1900
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;II)Landroid/view/View;
    .registers 21
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"

    .prologue
    .line 959
    if-nez p2, :cond_4

    .line 960
    const/4 v11, 0x0

    .line 1050
    :goto_3
    return-object v11

    .line 964
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_6} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_6} :catch_cc

    .line 965
    .local v3, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 968
    .local v7, setTheme:Z
    if-nez p3, :cond_b

    if-eqz p5, :cond_1d

    .line 970
    :cond_b
    const/4 v11, 0x0

    :try_start_c
    move-object v0, v3

    move-object/from16 v1, p2

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 971
    if-eqz p3, :cond_1d

    .line 972
    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1c} :catch_e7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_1c} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1c} :catch_cc

    .line 973
    const/4 v7, 0x1

    .line 979
    :cond_1d
    :goto_1d
    if-nez v7, :cond_25

    .line 980
    const v11, 0x1030005

    :try_start_22
    invoke-virtual {v3, v11}, Landroid/content/Context;->setTheme(I)V

    .line 983
    :cond_25
    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v9

    .line 984
    .local v9, win:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 986
    const/4 v11, 0x0

    goto :goto_3

    .line 989
    :cond_38
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 990
    .local v6, r:Landroid/content/res/Resources;
    move-object v0, v6

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 992
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/view/Window;->setType(I)V

    .line 998
    const v11, 0x20018

    const v12, 0x20018

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 1006
    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setLayout(II)V

    .line 1009
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1010
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1011
    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1012
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1014
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1016
    const-string v11, "window"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 1018
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 1020
    .local v8, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/Window;->isFloating()Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 1027
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1035
    :cond_a0
    invoke-virtual {v10, v8, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_a6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_22 .. :try_end_a6} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_a6} :catch_cc

    move-result-object v11

    if-eqz v11, :cond_ac

    move-object v11, v8

    goto/16 :goto_3

    :cond_ac
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1040
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #setTheme:Z
    .end local v8           #view:Landroid/view/View;
    .end local v9           #win:Landroid/view/Window;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :catch_af
    move-exception v11

    move-object v4, v11

    .line 1042
    .local v4, e:Landroid/view/WindowManager$BadTokenException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " already running, starting window not displayed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .end local v4           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_c9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1043
    :catch_cc
    move-exception v11

    move-object v4, v11

    .line 1047
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " failed creating starting window"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    .line 975
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v7       #setTheme:Z
    :catch_e7
    move-exception v11

    goto/16 :goto_1d
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "config"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 864
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 865
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 866
    .local v0, lidOpen:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 867
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 870
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 873
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_24

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eqz v1, :cond_28

    :cond_24
    move v1, v2

    :goto_25
    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 877
    return-void

    :cond_28
    move v1, v3

    .line 873
    goto :goto_25
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .parameter "attrs"

    .prologue
    .line 826
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_14

    .line 838
    :goto_5
    return-void

    .line 831
    :sswitch_6
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 835
    :sswitch_d
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 826
    :sswitch_data_14
    .sparse-switch
        0x7d5 -> :sswitch_d
        0x7d6 -> :sswitch_6
        0x7df -> :sswitch_6
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1791
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v7

    .line 1814
    :goto_f
    return v5

    .line 1796
    :cond_10
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5f

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1797
    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1798
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v0, v5, v8

    .local v0, i:I
    :goto_2f
    if-ltz v0, :cond_49

    .line 1799
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1800
    .local v4, w:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1801
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1798
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 1804
    .end local v4           #w:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_49
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    div-int/lit8 v2, v5, 0xa

    .line 1805
    .local v2, insetw:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    div-int/lit8 v1, v5, 0xa

    .line 1806
    .local v1, inseth:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    sub-int/2addr v6, v1

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v5

    if-eqz v5, :cond_5f

    move v5, v7

    .line 1811
    goto :goto_f

    .end local v0           #i:I
    .end local v1           #inseth:I
    .end local v2           #insetw:I
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_5f
    move v5, v8

    .line 1814
    goto :goto_f
.end method

.method public allowKeyRepeat()Z
    .registers 2

    .prologue
    .line 2678
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1683
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_4a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1685
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_14

    .line 1686
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1688
    :cond_14
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_4a

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v3, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_4a

    .line 1694
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1695
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_39

    .line 1697
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1699
    :cond_39
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_42

    .line 1701
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1703
    :cond_42
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    .line 1704
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1708
    :cond_4a
    return-void
.end method

.method public beginAnimationLw(II)V
    .registers 5
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    .line 1672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1673
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1675
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1676
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1677
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1678
    return-void
.end method

.method public beginLayoutLw(II)V
    .registers 8
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v4, 0x0

    .line 1442
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    .line 1443
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    .line 1444
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 1445
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1446
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 1447
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 1448
    const/high16 v3, 0x1000

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1451
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_5e

    .line 1452
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1453
    .local v1, pf:Landroid/graphics/Rect;
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1454
    .local v0, df:Landroid/graphics/Rect;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1455
    .local v2, vf:Landroid/graphics/Rect;
    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1456
    iput v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1457
    iput p1, v2, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 1458
    iput p2, v2, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1460
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v1, v0, v2, v2}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1461
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1464
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1470
    .end local v0           #df:Landroid/graphics/Rect;
    .end local v1           #pf:Landroid/graphics/Rect;
    .end local v2           #vf:Landroid/graphics/Rect;
    :cond_5e
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 948
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_e

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .registers 6
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 784
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 786
    .local v1, type:I
    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_b

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_d

    :cond_b
    move v2, v3

    .line 822
    :goto_c
    return v2

    .line 791
    :cond_d
    const/16 v2, 0xbb6

    if-ne v1, v2, :cond_13

    move v2, v3

    .line 792
    goto :goto_c

    .line 795
    :cond_13
    const/4 v0, 0x0

    .line 796
    .local v0, permission:Ljava/lang/String;
    packed-switch v1, :pswitch_data_2a

    .line 814
    :pswitch_17
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 816
    :goto_19
    :pswitch_19
    if-eqz v0, :cond_28

    .line 817
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_28

    .line 819
    const/4 v2, -0x8

    goto :goto_c

    .line 811
    :pswitch_25
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 812
    goto :goto_19

    :cond_28
    move v2, v3

    .line 822
    goto :goto_c

    .line 796
    :pswitch_data_2a
    .packed-switch 0x7d2
        :pswitch_25
        :pswitch_25
        :pswitch_17
        :pswitch_19
        :pswitch_25
        :pswitch_25
        :pswitch_17
        :pswitch_17
        :pswitch_25
        :pswitch_19
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method public createForceHideEnterAnimation()Landroid/view/animation/Animation;
    .registers 3

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2541
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_18

    .line 2542
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2549
    .local v1, intent:Landroid/content/Intent;
    :goto_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2551
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_22

    move-object v3, v5

    .line 2561
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_17
    return-object v3

    .line 2543
    :cond_18
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    .line 2544
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_8

    .end local v1           #intent:Landroid/content/Intent;
    :cond_20
    move-object v3, v5

    .line 2546
    goto :goto_17

    .line 2555
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_22
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3e

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.dock_home"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2556
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2557
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v2

    .line 2558
    goto :goto_17

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3e
    move-object v3, v5

    .line 2561
    goto :goto_17
.end method

.method public detectSafeMode()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const-string v5, "WindowManager"

    .line 2418
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x52

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v2

    .line 2419
    .local v2, menuState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x2f

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    .line 2420
    .local v3, sState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x17

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getDPadKeycodeState(I)I

    move-result v0

    .line 2421
    .local v0, dpadState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x110

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getTrackballScancodeState(I)I

    move-result v4

    .line 2422
    .local v4, trackballState:I
    if-gtz v2, :cond_2b

    if-gtz v3, :cond_2b

    if-gtz v0, :cond_2b

    if-lez v4, :cond_7c

    :cond_2b
    move v5, v7

    :goto_2c
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 2423
    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v6, :cond_7e

    const/16 v6, 0x2711

    :goto_35
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2426
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v5, :cond_81

    .line 2427
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAFE MODE ENABLED (menu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dpad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trackball="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :goto_79
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    return v5

    .line 2422
    :cond_7c
    const/4 v5, 0x0

    goto :goto_2c

    .line 2423
    :cond_7e
    const/16 v6, 0x2710

    goto :goto_35

    .line 2430
    :cond_81
    const-string v5, "WindowManager"

    const-string v6, "SAFE MODE not enabled"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_88} :catch_89

    goto :goto_79

    .line 2433
    .end local v0           #dpadState:I
    .end local v2           #menuState:I
    .end local v3           #sState:I
    .end local v4           #trackballState:I
    :catch_89
    move-exception v5

    move-object v1, v5

    .line 2435
    .local v1, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "window manager dead"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 944
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 2283
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .prologue
    .line 2506
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 2507
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2508
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 2288
    return-void
.end method

.method public finishAnimationLw()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1712
    const/4 v0, 0x0

    .line 1714
    .local v0, changes:I
    const/4 v2, 0x0

    .line 1715
    .local v2, hiding:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_16

    .line 1718
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v5, :cond_59

    .line 1720
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    or-int/lit8 v0, v0, 0x1

    .line 1740
    :cond_16
    :goto_16
    if-eqz v0, :cond_29

    if-eqz v2, :cond_29

    .line 1741
    const-string v5, "statusbar"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .line 1742
    .local v4, sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v4, :cond_29

    .line 1745
    :try_start_26
    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_a9

    .line 1753
    .end local v4           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_29
    :goto_29
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_55

    .line 1755
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v5, :cond_85

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_85

    .line 1756
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1757
    or-int/lit8 v0, v0, 0x7

    .line 1761
    :cond_43
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1762
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1786
    :cond_55
    :goto_55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 1787
    return v0

    .line 1721
    :cond_59
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_16

    .line 1725
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1727
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_78

    move v1, v6

    .line 1729
    .local v1, hideStatusBar:Z
    :goto_6a
    if-eqz v1, :cond_7a

    .line 1731
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_76

    or-int/lit8 v0, v0, 0x1

    .line 1732
    :cond_76
    const/4 v2, 0x1

    goto :goto_16

    .end local v1           #hideStatusBar:Z
    :cond_78
    move v1, v7

    .line 1727
    goto :goto_6a

    .line 1735
    .restart local v1       #hideStatusBar:Z
    :cond_7a
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    or-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1768
    .end local v1           #hideStatusBar:Z
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_85
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v5, :cond_99

    .line 1769
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 1770
    or-int/lit8 v0, v0, 0x7

    .line 1774
    :cond_93
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_55

    .line 1776
    :cond_99
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 1777
    or-int/lit8 v0, v0, 0x7

    .line 1781
    :cond_a3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_55

    .line 1746
    .restart local v4       #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_a9
    move-exception v5

    goto/16 :goto_29
.end method

.method public finishLayoutLw()I
    .registers 2

    .prologue
    .line 1667
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 9
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    .line 1429
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1431
    .local v0, fl:I
    const v1, 0x10500

    and-int/2addr v1, v0

    const v2, 0x10100

    if-ne v1, v2, :cond_1d

    .line 1434
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1438
    :goto_1c
    return-void

    .line 1436
    :cond_1d
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1c
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .prologue
    .line 940
    const/16 v0, 0x8

    return v0
.end method

.method goHome()Z
    .registers 16

    .prologue
    .line 2593
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 2595
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v14

    .line 2614
    .local v14, result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_64

    .line 2615
    const/4 v0, 0x0

    .line 2621
    .end local v14           #result:I
    :goto_33
    return v0

    .line 2597
    :cond_34
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 2598
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 2599
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2600
    .local v2, dock:Landroid/content/Intent;
    if-eqz v2, :cond_11

    .line 2601
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5d} :catch_63

    move-result v14

    .line 2605
    .restart local v14       #result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_11

    .line 2606
    const/4 v0, 0x0

    goto :goto_33

    .line 2617
    .end local v2           #dock:Landroid/content/Intent;
    .end local v14           #result:I
    :catch_63
    move-exception v0

    .line 2621
    :cond_64
    const/4 v0, 0x1

    goto :goto_33
.end method

.method handleVolumeKey(II)V
    .registers 8
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 1923
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1924
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_7

    .line 1942
    :goto_6
    return-void

    .line 1931
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1932
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1b

    const/4 v2, 0x1

    :goto_11
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1d

    .line 1940
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .line 1932
    :cond_1b
    const/4 v2, -0x1

    goto :goto_11

    .line 1937
    :catch_1d
    move-exception v2

    move-object v1, v2

    .line 1938
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1f
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_3d

    .line 1940
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_3d
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
    .registers 13
    .parameter "context"
    .parameter "windowManager"
    .parameter "powerManager"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x1020

    const-string v8, "android.intent.action.MAIN"

    .line 605
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 606
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 607
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 608
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v4, p1, p0, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 609
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 610
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 611
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 612
    .local v3, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 613
    new-instance v4, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 614
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 615
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 616
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 619
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 620
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 624
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 628
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 630
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 631
    const v4, 0x10e0004

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 633
    const v4, 0x10e0006

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 635
    const v4, 0x10e0005

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 637
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 639
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 641
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 643
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 646
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 653
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_11e

    .line 655
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 658
    :cond_11e
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 659
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070015

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 661
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070016

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 663
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070017

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 665
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070018

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 667
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070019

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 669
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z
    .registers 32
    .parameter "win"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "metaState"
    .parameter "repeatCount"
    .parameter "policyFlags"

    .prologue
    .line 1174
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v12

    .line 1175
    .local v12, keyguardOn:Z
    if-nez p2, :cond_74

    const/16 v19, 0x1

    move/from16 v6, v19

    .line 1176
    .local v6, down:Z
    :goto_a
    and-int/lit8 v19, p3, 0x20

    if-eqz v19, :cond_79

    const/16 v19, 0x1

    move/from16 v4, v19

    .line 1186
    .local v4, canceled:Z
    :goto_12
    const/16 v19, 0x3

    move/from16 v0, p4

    move/from16 v1, v19

    if-ne v0, v1, :cond_2b

    if-nez v6, :cond_2b

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1192
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9a

    .line 1196
    const/16 v19, 0x3

    move/from16 v0, p4

    move/from16 v1, v19

    if-ne v0, v1, :cond_71

    .line 1197
    if-nez v6, :cond_71

    .line 1198
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1201
    new-instance v11, Landroid/content/Intent;

    const-string v19, "CLOSE_CONTEXT_MENU"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1204
    if-nez v4, :cond_92

    .line 1208
    const/4 v9, 0x0

    .line 1210
    .local v9, incomingRinging:Z
    :try_start_5e
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    .line 1211
    .local v15, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v15, :cond_68

    .line 1212
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_67} :catch_7e

    move-result v9

    .line 1218
    .end local v15           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_68
    :goto_68
    if-eqz v9, :cond_8e

    .line 1219
    const-string v19, "WindowManager"

    const-string v20, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    .end local v9           #incomingRinging:Z
    .end local v11           #intent:Landroid/content/Intent;
    :cond_71
    :goto_71
    const/16 v19, 0x1

    .line 1392
    :goto_73
    return v19

    .line 1175
    .end local v4           #canceled:Z
    .end local v6           #down:Z
    :cond_74
    const/16 v19, 0x0

    move/from16 v6, v19

    goto :goto_a

    .line 1176
    .restart local v6       #down:Z
    :cond_79
    const/16 v19, 0x0

    move/from16 v4, v19

    goto :goto_12

    .line 1214
    .restart local v4       #canceled:Z
    .restart local v9       #incomingRinging:Z
    .restart local v11       #intent:Landroid/content/Intent;
    :catch_7e
    move-exception v19

    move-object/from16 v7, v19

    .line 1215
    .local v7, ex:Landroid/os/RemoteException;
    const-string v19, "WindowManager"

    const-string v20, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    .line 1221
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_8e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_71

    .line 1224
    .end local v9           #incomingRinging:Z
    :cond_92
    const-string v19, "WindowManager"

    const-string v20, "Ignoring HOME; event canceled."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 1236
    .end local v11           #intent:Landroid/content/Intent;
    :cond_9a
    const/16 v19, 0x3

    move/from16 v0, p4

    move/from16 v1, v19

    if-ne v0, v1, :cond_16f

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v16

    .line 1239
    .local v16, topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_c1

    .line 1241
    const/16 v19, 0x0

    goto :goto_73

    .line 1249
    :cond_c1
    if-eqz p1, :cond_e3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    move-object/from16 v3, v19

    .line 1250
    .local v3, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_c9
    if-eqz v3, :cond_106

    .line 1251
    move-object v0, v3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    .line 1252
    .local v17, type:I
    const/16 v19, 0x7d4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_e0

    const/16 v19, 0x7d9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_e8

    .line 1255
    :cond_e0
    const/16 v19, 0x0

    goto :goto_73

    .line 1249
    .end local v3           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v17           #type:I
    :cond_e3
    const/16 v19, 0x0

    move-object/from16 v3, v19

    goto :goto_c9

    .line 1257
    .restart local v3       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v17       #type:I
    :cond_e8
    sget-object v19, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 1258
    .local v18, typeCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_f0
    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_106

    .line 1259
    sget-object v19, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v19, v19, v8

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_103

    .line 1261
    const/16 v19, 0x1

    goto/16 :goto_73

    .line 1258
    :cond_103
    add-int/lit8 v8, v8, 0x1

    goto :goto_f0

    .line 1266
    .end local v8           #i:I
    .end local v17           #type:I
    .end local v18           #typeCount:I
    :cond_106
    if-eqz v6, :cond_16b

    if-nez p7, :cond_16b

    .line 1267
    if-nez v12, :cond_12c

    .line 1269
    const/4 v10, 0x0

    .line 1271
    .local v10, incomingRinging_long:Z
    :try_start_10d
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v13

    .line 1272
    .local v13, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v13, :cond_13c

    .line 1273
    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_116} :catch_144

    move-result v10

    .line 1280
    .end local v13           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_117
    if-nez v10, :cond_12c

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v21

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1288
    .end local v10           #incomingRinging_long:Z
    :cond_12c
    :try_start_12c
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v13

    .line 1289
    .restart local v13       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v13, :cond_163

    .line 1290
    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_135} :catch_154

    move-result v19

    if-eqz v19, :cond_163

    const/16 v19, 0x0

    goto/16 :goto_73

    .line 1275
    .restart local v10       #incomingRinging_long:Z
    :cond_13c
    :try_start_13c
    const-string v19, "WindowManager"

    const-string v20, "Unable to find ITelephony interface"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_143} :catch_144

    goto :goto_117

    .line 1277
    .end local v13           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_144
    move-exception v19

    move-object/from16 v7, v19

    .line 1278
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v19, "WindowManager"

    const-string v20, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_117

    .line 1292
    .end local v7           #ex:Landroid/os/RemoteException;
    .end local v10           #incomingRinging_long:Z
    :catch_154
    move-exception v19

    move-object/from16 v7, v19

    .line 1293
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v19, "WindowManager"

    const-string v20, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1295
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_163
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1297
    :cond_16b
    const/16 v19, 0x1

    goto/16 :goto_73

    .line 1298
    .end local v3           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v16           #topActivity:Landroid/content/ComponentName;
    :cond_16f
    const/16 v19, 0x52

    move/from16 v0, p4

    move/from16 v1, v19

    if-ne v0, v1, :cond_200

    .line 1300
    const/4 v5, 0x1

    .line 1302
    .local v5, chordBug:I
    if-eqz v6, :cond_1c9

    if-nez p7, :cond_1c9

    .line 1305
    const-string v19, "GT-S5830"

    const-string v20, "GT-B7510"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_199

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v21

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1310
    :cond_199
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c9

    and-int/lit8 v19, p6, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c9

    .line 1311
    new-instance v11, Landroid/content/Intent;

    const-string v19, "android.intent.action.BUG_REPORT"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1312
    .restart local v11       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object v1, v11

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1313
    const/16 v19, 0x1

    goto/16 :goto_73

    .line 1333
    .end local v11           #intent:Landroid/content/Intent;
    :cond_1c9
    if-nez v6, :cond_214

    .line 1336
    const-string v19, "GT-S5830"

    const-string v20, "GT-B7510"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_214

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1339
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v19, v0

    if-eqz v19, :cond_214

    .line 1343
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1344
    const/16 v19, 0x1

    goto/16 :goto_73

    .line 1350
    .end local v5           #chordBug:I
    :cond_200
    const/16 v19, 0x54

    move/from16 v0, p4

    move/from16 v1, v19

    if-ne v0, v1, :cond_214

    .line 1351
    if-eqz v6, :cond_254

    .line 1352
    if-nez p7, :cond_214

    .line 1353
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1375
    :cond_214
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_270

    .line 1376
    if-eqz v6, :cond_270

    if-nez p7, :cond_270

    if-nez v12, :cond_270

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v14

    .line 1378
    .local v14, shortcutIntent:Landroid/content/Intent;
    if-eqz v14, :cond_270

    .line 1379
    const/high16 v19, 0x1000

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1386
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1387
    const/16 v19, 0x1

    goto/16 :goto_73

    .line 1364
    .end local v14           #shortcutIntent:Landroid/content/Intent;
    :cond_254
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1366
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v19, v0

    if-eqz v19, :cond_214

    .line 1368
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1369
    const/16 v19, 0x1

    goto/16 :goto_73

    .line 1392
    :cond_270
    const/16 v19, 0x0

    goto/16 :goto_73
.end method

.method public interceptKeyBeforeQueueing(JIIIIIZ)I
    .registers 37
    .parameter "whenNanos"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 1948
    if-nez p3, :cond_4f

    const/4 v7, 0x1

    move/from16 v18, v7

    .line 1949
    .local v18, down:Z
    :goto_5
    and-int/lit8 v7, p4, 0x20

    if-eqz v7, :cond_53

    const/4 v7, 0x1

    move/from16 v17, v7

    .line 1951
    .local v17, canceled:Z
    :goto_c
    const/high16 v7, 0x100

    and-int v7, v7, p7

    if-eqz v7, :cond_57

    const/4 v7, 0x1

    move/from16 v21, v7

    .line 1957
    .local v21, isInjected:Z
    :goto_15
    if-eqz p8, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v7

    move/from16 v23, v7

    .line 1966
    .local v23, keyguardActive:Z
    :goto_22
    if-eqz v18, :cond_36

    move/from16 v0, p7

    and-int/lit16 v0, v0, 0x100

    move v7, v0

    if-eqz v7, :cond_36

    .line 1967
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1972
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, p8

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->doIninterceptKeyBeforeQueueing(IZZ)I

    move-result v26

    .line 1973
    .local v26, tmpResult:I
    const/4 v7, -0x1

    move/from16 v0, v26

    move v1, v7

    if-eq v0, v1, :cond_67

    move/from16 v7, v26

    .line 2202
    :goto_4e
    return v7

    .line 1948
    .end local v17           #canceled:Z
    .end local v18           #down:Z
    .end local v21           #isInjected:Z
    .end local v23           #keyguardActive:Z
    .end local v26           #tmpResult:I
    :cond_4f
    const/4 v7, 0x0

    move/from16 v18, v7

    goto :goto_5

    .line 1949
    .restart local v18       #down:Z
    :cond_53
    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_c

    .line 1951
    .restart local v17       #canceled:Z
    :cond_57
    const/4 v7, 0x0

    move/from16 v21, v7

    goto :goto_15

    .line 1957
    .restart local v21       #isInjected:Z
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v7

    move/from16 v23, v7

    goto :goto_22

    .line 1987
    .restart local v23       #keyguardActive:Z
    .restart local v26       #tmpResult:I
    :cond_67
    if-nez p8, :cond_6b

    if-eqz v21, :cond_73

    .line 1989
    :cond_6b
    const/16 v24, 0x1

    .line 2009
    .local v24, result:I
    :cond_6d
    :goto_6d
    sparse-switch p5, :sswitch_data_252

    :cond_70
    :goto_70
    move/from16 v7, v24

    .line 2202
    goto :goto_4e

    .line 1993
    .end local v24           #result:I
    :cond_73
    const/16 v24, 0x0

    .line 1995
    .restart local v24       #result:I
    and-int/lit8 v7, p7, 0x3

    if-eqz v7, :cond_8e

    const/4 v7, 0x1

    move/from16 v22, v7

    .line 1997
    .local v22, isWakeKey:Z
    :goto_7c
    if-eqz v18, :cond_6d

    if-eqz v22, :cond_6d

    .line 1998
    if-eqz v23, :cond_92

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_6d

    .line 1995
    .end local v22           #isWakeKey:Z
    :cond_8e
    const/4 v7, 0x0

    move/from16 v22, v7

    goto :goto_7c

    .line 2003
    .restart local v22       #isWakeKey:Z
    :cond_92
    or-int/lit8 v24, v24, 0x2

    goto :goto_6d

    .line 2012
    .end local v22           #isWakeKey:Z
    :sswitch_95
    if-eqz v18, :cond_ec

    .line 2013
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2014
    .local v25, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v25, :cond_be

    .line 2016
    :try_start_9d
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_be

    .line 2023
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_ad} :catch_b0

    .line 2032
    and-int/lit8 v24, v24, -0x2

    goto :goto_70

    .line 2046
    :catch_b0
    move-exception v7

    move-object/from16 v19, v7

    .line 2047
    .local v19, ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2061
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    if-nez v7, :cond_70

    .line 2062
    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->start()V

    goto :goto_70

    .line 2069
    .end local v25           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    if-eqz v7, :cond_70

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2071
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    goto/16 :goto_70

    .line 2079
    :sswitch_10a
    and-int/lit8 v24, v24, -0x2

    .line 2080
    if-eqz v18, :cond_136

    .line 2081
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2082
    .restart local v25       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2083
    .local v20, hungUp:Z
    if-eqz v25, :cond_11a

    .line 2085
    :try_start_116
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_116 .. :try_end_119} :catch_127

    move-result v20

    .line 2090
    :cond_11a
    :goto_11a
    if-eqz p8, :cond_11e

    if-eqz v20, :cond_134

    :cond_11e
    const/4 v7, 0x1

    :goto_11f
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_70

    .line 2086
    :catch_127
    move-exception v19

    .line 2087
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11a

    .line 2090
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_134
    const/4 v7, 0x0

    goto :goto_11f

    .line 2092
    .end local v20           #hungUp:Z
    .end local v25           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_136
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2093
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_14f

    .line 2095
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v7

    if-nez v7, :cond_70

    .line 2099
    :cond_14f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_70

    .line 2101
    and-int/lit8 v7, v24, -0x3

    or-int/lit8 v24, v7, 0x4

    goto/16 :goto_70

    .line 2109
    :sswitch_15e
    and-int/lit8 v24, v24, -0x2

    .line 2110
    if-eqz v18, :cond_1c1

    .line 2111
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2112
    .restart local v25       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2113
    .restart local v20       #hungUp:Z
    if-eqz v25, :cond_173

    .line 2115
    :try_start_16a
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_19c

    .line 2118
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_173
    .catch Landroid/os/RemoteException; {:try_start_16a .. :try_end_173} :catch_1b0

    .line 2130
    :cond_173
    :goto_173
    if-eqz p8, :cond_177

    if-eqz v20, :cond_1bf

    :cond_177
    const/4 v7, 0x1

    :goto_178
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v27

    .line 2134
    .local v27, topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    const/16 v8, 0x1a

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2136
    or-int/lit8 v24, v24, 0x1

    goto/16 :goto_70

    .line 2119
    .end local v27           #topActivity:Landroid/content/ComponentName;
    :cond_19c
    :try_start_19c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_173

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v7

    if-eqz v7, :cond_173

    .line 2124
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1ae
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_1ae} :catch_1b0

    move-result v20

    goto :goto_173

    .line 2126
    :catch_1b0
    move-exception v7

    move-object/from16 v19, v7

    .line 2127
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_173

    .line 2130
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_1bf
    const/4 v7, 0x0

    goto :goto_178

    .line 2142
    .end local v20           #hungUp:Z
    .end local v25           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1c1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_1cf

    .line 2143
    and-int/lit8 v7, v24, -0x3

    or-int/lit8 v24, v7, 0x4

    .line 2147
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v27

    .line 2148
    .restart local v27       #topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    const/16 v8, 0x1a

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2150
    or-int/lit8 v24, v24, 0x1

    .line 2151
    and-int/lit8 v24, v24, -0x5

    goto/16 :goto_70

    .line 2167
    .end local v27           #topActivity:Landroid/content/ComponentName;
    :sswitch_1ef
    and-int/lit8 v7, v24, 0x1

    if-nez v7, :cond_70

    .line 2171
    const-wide/32 v7, 0xf4240

    div-long v5, p1, v7

    .line 2172
    .local v5, when:J
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x101

    move-wide v7, v5

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v14, p6

    move/from16 v15, p4

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2174
    .local v4, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_70

    .line 2181
    .end local v4           #keyEvent:Landroid/view/KeyEvent;
    .end local v5           #when:J
    :sswitch_226
    if-eqz v18, :cond_70

    .line 2182
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2183
    .restart local v25       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v25, :cond_70

    .line 2185
    :try_start_22e
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2186
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_23e
    .catch Landroid/os/RemoteException; {:try_start_22e .. :try_end_23e} :catch_242

    .line 2192
    and-int/lit8 v24, v24, -0x2

    goto/16 :goto_70

    .line 2194
    :catch_242
    move-exception v7

    move-object/from16 v19, v7

    .line 2195
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_70

    .line 2009
    :sswitch_data_252
    .sparse-switch
        0x5 -> :sswitch_226
        0x6 -> :sswitch_10a
        0x18 -> :sswitch_95
        0x19 -> :sswitch_95
        0x1a -> :sswitch_15e
        0x4f -> :sswitch_1ef
        0x55 -> :sswitch_1ef
        0x56 -> :sswitch_1ef
        0x57 -> :sswitch_1ef
        0x58 -> :sswitch_1ef
        0x59 -> :sswitch_1ef
        0x5a -> :sswitch_1ef
    .end sparse-switch
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

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

.method isMusicActive()Z
    .registers 4

    .prologue
    .line 1910
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1911
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_15

    .line 1912
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    const/4 v1, 0x0

    .line 1915
    :goto_14
    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_14
.end method

.method public isScreenOn()Z
    .registers 2

    .prologue
    .line 2277
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method keyguardOn()Z
    .registers 2

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method launchHomeFromHotKey()V
    .registers 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1426
    :goto_8
    return-void

    .line 1402
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1405
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_8

    .line 1420
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_30

    .line 1423
    :goto_27
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_8

    .line 1421
    :catch_30
    move-exception v0

    goto :goto_27
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 16
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    const/16 v11, 0x7db

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 1524
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_a

    .line 1663
    :cond_9
    :goto_9
    return-void

    .line 1535
    :cond_a
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1536
    .local v2, fl:I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1538
    .local v3, sim:I
    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1539
    .local v6, pf:Landroid/graphics/Rect;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1540
    .local v7, df:Landroid/graphics/Rect;
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 1541
    .local v8, cf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1543
    .local v9, vf:Landroid/graphics/Rect;
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v11, :cond_a7

    .line 1544
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1545
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1546
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1547
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1549
    const/16 v0, 0x50

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1550
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1624
    :goto_4c
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_6c

    .line 1625
    const/16 v0, -0x2710

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1626
    const/16 v0, 0x2710

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1644
    :cond_6c
    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1648
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v11, :cond_79

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xbb6

    if-ne v0, v1, :cond_9

    :cond_79
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1649
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1650
    .local v10, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1651
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v10, :cond_92

    .line 1652
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 1654
    :cond_92
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1655
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1656
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v0, v10, :cond_9

    .line 1657
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    goto/16 :goto_9

    .line 1552
    .end local v10           #top:I
    :cond_a7
    const v0, 0x10500

    and-int/2addr v0, v2

    const v1, 0x10100

    if-ne v0, v1, :cond_105

    .line 1559
    if-eqz p3, :cond_ba

    .line 1562
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4c

    .line 1564
    :cond_ba
    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1565
    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1566
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1567
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1568
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_f4

    .line 1569
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1570
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1571
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1572
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 1579
    :goto_e2
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1580
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1581
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1582
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4c

    .line 1574
    :cond_f4
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1575
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1576
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1577
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_e2

    .line 1584
    :cond_105
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_137

    .line 1587
    iput v5, v8, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1588
    iput v5, v8, Landroid/graphics/Rect;->top:I

    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1589
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1590
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1591
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1592
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1593
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1594
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4c

    .line 1595
    :cond_137
    if-eqz p3, :cond_141

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 1598
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4c

    .line 1602
    :cond_141
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1603
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1604
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1605
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1606
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_17f

    .line 1607
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1608
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1609
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1610
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1617
    :goto_16d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1618
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1619
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1620
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4c

    .line 1612
    :cond_17f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1613
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1614
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1615
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_16d
.end method

.method needSensorRunningLp()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const-string v3, "OrientationDebug"

    .line 433
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_21

    .line 439
    :cond_18
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #1"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 463
    :goto_20
    return v0

    .line 442
    :cond_21
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    :cond_2a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v2, :cond_3b

    .line 446
    :cond_32
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #2"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 447
    goto :goto_20

    .line 449
    :cond_3b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-nez v0, :cond_48

    .line 458
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return false #3"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    goto :goto_20

    .line 462
    :cond_48
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #4"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 463
    goto :goto_20
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 10
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1820
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    .line 1821
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1822
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    .line 1823
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_43

    .line 1825
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    .line 1826
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotation:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1834
    :goto_1e
    const-string v1, "GT-S5830"

    const-string v2, "GT-I5510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1835
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSlideCount(Z)V

    .line 1839
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doLidChangeTq(Z)Z

    move-result v0

    .line 1841
    .local v0, awakeNow:Z
    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_52

    .line 1845
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1864
    :cond_42
    :goto_42
    return-void

    .line 1828
    .end local v0           #awakeNow:Z
    :cond_43
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 1829
    const-string v1, "WindowManager"

    const-string v2, "updateRotation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    goto :goto_1e

    .line 1846
    .restart local v0       #awakeNow:Z
    :cond_52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1847
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    if-eqz v1, :cond_42

    .line 1851
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_42

    .line 1856
    :cond_6a
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_79

    .line 1857
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v1, v2, v3, v5, v4}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_42

    .line 1860
    :cond_79
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v5, v5}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_42
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 10
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2634
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1f

    move v0, v5

    .line 2636
    .local v0, hapticsDisabled:Z
    :goto_11
    if-nez p3, :cond_21

    if-nez v0, :cond_1d

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1d
    move v2, v4

    .line 2666
    :goto_1e
    return v2

    .end local v0           #hapticsDisabled:Z
    :cond_1f
    move v0, v4

    .line 2634
    goto :goto_11

    .line 2639
    .restart local v0       #hapticsDisabled:Z
    :cond_21
    const/4 v1, 0x0

    .line 2640
    .local v1, pattern:[J
    sparse-switch p2, :sswitch_data_48

    move v2, v4

    .line 2657
    goto :goto_1e

    .line 2642
    :sswitch_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2659
    :goto_29
    array-length v2, v1

    if-ne v2, v5, :cond_41

    .line 2661
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v3, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_33
    move v2, v5

    .line 2666
    goto :goto_1e

    .line 2645
    :sswitch_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 2646
    goto :goto_29

    .line 2648
    :sswitch_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 2649
    goto :goto_29

    .line 2651
    :sswitch_3b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 2652
    goto :goto_29

    .line 2654
    :sswitch_3e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2655
    goto :goto_29

    .line 2664
    :cond_41
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_33

    .line 2640
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_35
        0x3 -> :sswitch_38
        0x2710 -> :sswitch_3b
        0x2711 -> :sswitch_3e
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 8
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x7

    const-string v4, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    .line 1082
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_36

    .line 1107
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 1084
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1b

    move v0, v2

    .line 1090
    goto :goto_b

    .line 1092
    :cond_1b
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_a

    .line 1095
    :sswitch_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1101
    :sswitch_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_33

    move v0, v2

    .line 1102
    goto :goto_b

    .line 1104
    :cond_33
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_a

    .line 1082
    :sswitch_data_36
    .sparse-switch
        0x7d0 -> :sswitch_c
        0x7d4 -> :sswitch_2d
        0x7de -> :sswitch_1e
    .end sparse-switch
.end method

.method readLidState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 842
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getSwitchState(I)I

    move-result v0

    .line 843
    .local v0, sw:I
    if-ltz v0, :cond_f

    .line 844
    if-nez v0, :cond_10

    const/4 v1, 0x1

    :goto_d
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_12

    .line 849
    .end local v0           #sw:I
    :cond_f
    :goto_f
    return-void

    .restart local v0       #sw:I
    :cond_10
    move v1, v3

    .line 844
    goto :goto_d

    .line 846
    .end local v0           #sw:I
    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .registers 6
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 1061
    if-eqz p2, :cond_f

    .line 1062
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 1063
    .local v0, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1065
    .end local v0           #wm:Landroid/view/WindowManagerImpl;
    :cond_f
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 1112
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 1113
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1120
    :goto_7
    return-void

    .line 1115
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 1116
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 1118
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public rotationForOrientationLw(IIZ)I
    .registers 11
    .parameter "orientation"
    .parameter "lastRotation"
    .parameter "displayEnabled"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2319
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-gez v1, :cond_28

    .line 2321
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2323
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_41

    .line 2324
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2325
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2326
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2327
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 2336
    .end local v0           #d:Landroid/view/Display;
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2337
    packed-switch p1, :pswitch_data_b6

    .line 2361
    :pswitch_2e
    :try_start_2e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_85

    move v3, v5

    :goto_35
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2367
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v2, :cond_87

    .line 2368
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_b3

    move v1, v2

    .line 2377
    :goto_40
    return v1

    .line 2329
    .restart local v0       #d:Landroid/view/Display;
    :cond_41
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2330
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2331
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2332
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_28

    .line 2340
    .end local v0           #d:Landroid/view/Display;
    :pswitch_4a
    :try_start_4a
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2343
    :pswitch_4f
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2346
    :pswitch_54
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2349
    :pswitch_59
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2352
    :pswitch_5e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2354
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentLandscapeRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2356
    :pswitch_6f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    if-nez v3, :cond_83

    move v3, v5

    :goto_79
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2358
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentPortraitRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_40

    :cond_83
    move v3, v4

    .line 2356
    goto :goto_79

    :cond_85
    move v3, v4

    .line 2361
    goto :goto_35

    .line 2369
    :cond_87
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v6, :cond_94

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_94

    .line 2370
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2371
    :cond_94
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v5, :cond_a1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_a1

    .line 2372
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2374
    :cond_a1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->useSensorForOrientationLp(I)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 2375
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2377
    :cond_b0
    monitor-exit v1

    move v1, v4

    goto :goto_40

    .line 2379
    :catchall_b3
    move-exception v2

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_4a .. :try_end_b5} :catchall_b3

    throw v2

    .line 2337
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_5e
        :pswitch_6f
        :pswitch_59
        :pswitch_54
    .end packed-switch
.end method

.method public screenOnStoppedLw()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2670
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2671
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2672
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 2674
    .end local v0           #curTime:J
    :cond_1a
    return-void
.end method

.method public screenTurnedOff(I)V
    .registers 4
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 2255
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 2257
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2258
    const/4 v1, 0x0

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2259
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2260
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2261
    monitor-exit v0

    .line 2262
    return-void

    .line 2261
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2266
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2267
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 2268
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2269
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2270
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2271
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2272
    monitor-exit v0

    .line 2273
    return-void

    .line 2272
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 4
    .parameter "win"
    .parameter "transit"

    .prologue
    .line 1128
    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 1129
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1131
    const v0, 0x10a0011

    .line 1135
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2301
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2305
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .parameter "win"
    .parameter "fl"
    .parameter "sim"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 1474
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_3c

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_3c

    .line 1482
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 1483
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 1484
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 1485
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 1516
    :goto_30
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_94

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_38
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1518
    return-void

    .line 1493
    :cond_3c
    and-int/lit16 v0, p3, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5a

    .line 1494
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1510
    :cond_49
    :goto_49
    if-eqz p5, :cond_92

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_4f
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1511
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_30

    .line 1502
    :cond_5a
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1503
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_49

    .line 1504
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_73

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 1505
    :cond_73
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_7d

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 1506
    :cond_7d
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_87

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 1507
    :cond_87
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_49

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_49

    :cond_92
    move-object v0, p8

    .line 1510
    goto :goto_4f

    :cond_94
    move-object v0, p7

    .line 1516
    goto :goto_38
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .parameter "newOrientation"

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2626
    :try_start_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_c

    .line 2627
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 2628
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2630
    :cond_c
    monitor-exit v0

    .line 2631
    return-void

    .line 2630
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method showGlobalActionsDialog()V
    .registers 4

    .prologue
    .line 546
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_d

    .line 547
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 549
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .line 550
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 551
    if-eqz v0, :cond_23

    .line 554
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 556
    :cond_23
    return-void
.end method

.method showRecentAppsDialog()V
    .registers 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-nez v0, :cond_d

    .line 597
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    .line 599
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->show()V

    .line 600
    return-void
.end method

.method startDockOrHome()V
    .registers 4

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2566
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 2568
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_b} :catch_c

    .line 2574
    :goto_b
    return-void

    .line 2570
    :catch_c
    move-exception v1

    .line 2573
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public subWindowTypeToLayerLw(I)I
    .registers 5
    .parameter "type"

    .prologue
    .line 924
    packed-switch p1, :pswitch_data_26

    .line 935
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 927
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 929
    :pswitch_1f
    const/4 v0, -0x2

    goto :goto_1c

    .line 931
    :pswitch_21
    const/4 v0, -0x1

    goto :goto_1c

    .line 933
    :pswitch_23
    const/4 v0, 0x2

    goto :goto_1c

    .line 924
    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 2455
    const-string v0, "dev.bootcomplete"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2457
    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2458
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 2459
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2464
    monitor-exit v0

    .line 2465
    return-void

    .line 2464
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw v1
.end method

.method updateOrientationListenerLp()V
    .registers 5

    .prologue
    const-string v3, "OrientationDebug"

    .line 477
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp()"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_12

    .line 507
    :cond_11
    :goto_11
    return-void

    .line 484
    :cond_12
    const-string v1, "OrientationDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateOrientationListenerLp(), Screen status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x1

    .line 488
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v1, :cond_63

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 490
    const/4 v0, 0x0

    .line 492
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_63

    .line 493
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp(), now call mOrientationListener.enable(), and mOrientationSensorEnabled = true #1"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 496
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 501
    :cond_63
    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_11

    .line 502
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp(), now call mOrientationListener.disable(), and mOrientationSensorEnabled = false #2"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 505
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_11
.end method

.method updateRotation(I)V
    .registers 6
    .parameter "animFlags"

    .prologue
    const/4 v3, 0x1

    .line 2511
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-interface {v1, v2}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 2512
    const/4 v0, 0x0

    .line 2513
    .local v0, rotation:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_19

    .line 2514
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 2523
    :cond_f
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    or-int/2addr v3, p1

    invoke-interface {v1, v0, v2, v3}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_30

    .line 2528
    :goto_18
    return-void

    .line 2515
    :cond_19
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v1, :cond_25

    .line 2516
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_f

    .line 2517
    :cond_25
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v1, v3, :cond_f

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v1, :cond_f

    .line 2518
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_f

    .line 2525
    :catch_30
    move-exception v1

    goto :goto_18
.end method

.method public updateSettings()V
    .registers 15

    .prologue
    .line 672
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 673
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 674
    .local v9, updateRotation:Z
    const/4 v1, 0x0

    .line 675
    .local v1, addView:Landroid/view/View;
    const/4 v7, 0x0

    .line 676
    .local v7, removeView:Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 677
    :try_start_c
    const-string v12, "end_button_behavior"

    const/4 v13, 0x2

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 680
    const-string v12, "incall_power_button_behavior"

    const/4 v13, 0x1

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 683
    const-string v12, "fancy_rotation_anim"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_f7

    const/16 v12, 0x80

    :goto_29
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    .line 685
    const-string v12, "accelerometer_rotation"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 687
    .local v0, accelerometerDefault:I
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eq v12, v0, :cond_42

    .line 688
    const-string v12, "OrientationDebug"

    const-string v13, "[pwm] in updateSettings(), mAccelerometerDefault != accelerometerDefault, now call updateOrientationListenerLp()"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 692
    :cond_42
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v12, :cond_6a

    .line 693
    const-string v12, "pointer_location"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 695
    .local v6, pointerLocation:I
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v12, v6, :cond_6a

    .line 696
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 697
    if-eqz v6, :cond_fa

    .line 698
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v12, :cond_6a

    .line 699
    new-instance v12, Lcom/android/internal/widget/PointerLocationView;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 700
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 701
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 710
    .end local v6           #pointerLocation:I
    :cond_6a
    :goto_6a
    const-string v12, "screen_off_timeout"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 712
    const-string v12, "default_input_method"

    invoke-static {v8, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, imId:Ljava/lang/String;
    if-eqz v4, :cond_104

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_104

    const/4 v12, 0x1

    move v3, v12

    .line 715
    .local v3, hasSoftInput:Z
    :goto_83
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v12, v3, :cond_8a

    .line 716
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 717
    const/4 v9, 0x1

    .line 719
    :cond_8a
    monitor-exit v11
    :try_end_8b
    .catchall {:try_start_c .. :try_end_8b} :catchall_101

    .line 720
    if-eqz v9, :cond_91

    .line 721
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 723
    :cond_91
    if-eqz v1, :cond_d6

    .line 724
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v5, v11, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 727
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v11, 0x7df

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 728
    const/16 v11, 0x118

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 732
    const/4 v11, -0x3

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 733
    const-string v11, "PointerLocation"

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 736
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v10, v1, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-nez v11, :cond_d6

    .line 740
    :try_start_bb
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const-string v12, "PointerLocationView"

    invoke-interface {v11, v12}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 742
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_d6} :catch_108

    .line 750
    .end local v5           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :cond_d6
    :goto_d6
    if-eqz v7, :cond_f6

    .line 751
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v11, :cond_e9

    .line 752
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {v11}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 753
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    .line 754
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 757
    :cond_e9
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 759
    .restart local v10       #wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v10, v7}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 761
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :cond_f6
    return-void

    .line 683
    .end local v0           #accelerometerDefault:I
    .end local v3           #hasSoftInput:Z
    .end local v4           #imId:Ljava/lang/String;
    :cond_f7
    const/4 v12, 0x0

    goto/16 :goto_29

    .line 704
    .restart local v0       #accelerometerDefault:I
    .restart local v6       #pointerLocation:I
    :cond_fa
    :try_start_fa
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 705
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    goto/16 :goto_6a

    .line 719
    .end local v0           #accelerometerDefault:I
    .end local v6           #pointerLocation:I
    :catchall_101
    move-exception v12

    monitor-exit v11
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_101

    throw v12

    .line 714
    .restart local v0       #accelerometerDefault:I
    .restart local v4       #imId:Ljava/lang/String;
    :cond_104
    const/4 v12, 0x0

    move v3, v12

    goto/16 :goto_83

    .line 744
    .restart local v3       #hasSoftInput:Z
    .restart local v5       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v10       #wm:Landroid/view/WindowManagerImpl;
    :catch_108
    move-exception v11

    move-object v2, v11

    .line 745
    .local v2, ex:Landroid/os/RemoteException;
    const-string v11, "WindowManager"

    const-string v12, "Could not set up input monitoring channel for PointerLocation."

    invoke-static {v11, v12, v2}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d6
.end method

.method useSensorForOrientationLp(I)Z
    .registers 6
    .parameter "appOrientation"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 401
    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/16 v0, 0xa

    if-eq p1, v0, :cond_10

    const/4 v0, 0x6

    if-eq p1, v0, :cond_10

    const/4 v0, 0x7

    if-ne p1, v0, :cond_12

    :cond_10
    move v0, v1

    .line 424
    :goto_11
    return v0

    .line 408
    :cond_12
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eqz v0, :cond_1c

    if-eq p1, v2, :cond_1a

    if-ne p1, v3, :cond_1c

    :cond_1a
    move v0, v1

    .line 411
    goto :goto_11

    .line 414
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_2c

    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v1, :cond_35

    .line 417
    :cond_2c
    if-eq p1, v2, :cond_33

    if-eq p1, v3, :cond_33

    const/4 v0, 0x5

    if-ne p1, v0, :cond_35

    :cond_33
    move v0, v1

    .line 420
    goto :goto_11

    .line 424
    :cond_35
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public userActivity()V
    .registers 6

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v0

    .line 2470
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_18

    .line 2472
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2473
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2475
    :cond_18
    monitor-exit v0

    .line 2476
    return-void

    .line 2475
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public windowTypeToLayerLw(I)I
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    .line 881
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    const/16 v0, 0x63

    if-gt p1, v0, :cond_a

    move v0, v3

    .line 919
    :goto_9
    return v0

    .line 884
    :cond_a
    packed-switch p1, :pswitch_data_52

    .line 918
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 919
    goto :goto_9

    .line 886
    :pswitch_27
    const/16 v0, 0x8

    goto :goto_9

    .line 888
    :pswitch_2a
    const/4 v0, 0x5

    goto :goto_9

    .line 890
    :pswitch_2c
    const/4 v0, 0x6

    goto :goto_9

    .line 892
    :pswitch_2e
    const/4 v0, 0x4

    goto :goto_9

    .line 894
    :pswitch_30
    const/4 v0, 0x3

    goto :goto_9

    .line 896
    :pswitch_32
    const/16 v0, 0xe

    goto :goto_9

    .line 898
    :pswitch_35
    const/16 v0, 0xf

    goto :goto_9

    .line 900
    :pswitch_38
    const/16 v0, 0xa

    goto :goto_9

    .line 902
    :pswitch_3b
    const/16 v0, 0xb

    goto :goto_9

    .line 904
    :pswitch_3e
    const/16 v0, 0xc

    goto :goto_9

    .line 906
    :pswitch_41
    const/16 v0, 0xd

    goto :goto_9

    .line 908
    :pswitch_44
    const/16 v0, 0x10

    goto :goto_9

    .line 910
    :pswitch_47
    const/16 v0, 0x11

    goto :goto_9

    .line 912
    :pswitch_4a
    const/16 v0, 0x9

    goto :goto_9

    .line 914
    :pswitch_4d
    const/4 v0, 0x7

    goto :goto_9

    :pswitch_4f
    move v0, v3

    .line 916
    goto :goto_9

    .line 884
    nop

    :pswitch_data_52
    .packed-switch 0x7d0
        :pswitch_27
        :pswitch_2e
        :pswitch_30
        :pswitch_38
        :pswitch_32
        :pswitch_4d
        :pswitch_44
        :pswitch_4a
        :pswitch_2c
        :pswitch_35
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_4f
        :pswitch_2a
        :pswitch_47
    .end packed-switch
.end method
