.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$MediaButtonBroadcastReceiver;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SetModeDeathHandler;
    }
.end annotation


# static fields
.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x8

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x5

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x6

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VIBRATE_SETTING:I = 0x4

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x7

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x9

.field private static final MSG_SET_SYSTEM_VOLUME:I = 0x0

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0xa

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x9

.field private static final PERSIST_DELAY:I = 0xbb8

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SHARED_MSG:I = -0x1

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_EFFECT_VOLUME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private MAX_STREAM_VOLUME:[I

.field private SOUND_EFFECT_FILES_MAP:[[I

.field private STREAM_VOLUME_ALIAS:[I

.field private mAudioFocusDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$AudioFocusDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetConnected:Z

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

.field private mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDockAddress:Ljava/lang/String;

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedUseForComm:I

.field private mForcedUseForFMRadio:I

.field private mIsRinging:Z

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaServerOk:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mNotificationsUseRingVolume:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private mSilentModeOff:Z

.field private mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mVibrateSetting:I

.field private mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TW_Touch.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TW_Silent_mode_off.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 2188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 2190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 293
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 131
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 135
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 149
    const/16 v2, 0xb

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_180

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_188

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_190

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_198

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-array v4, v5, [I

    fill-array-data v4, :array_1a0

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_1a8

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_1b0

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_1b8

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_1c0

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_1c8

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [I

    fill-array-data v4, :array_1d0

    aput-object v4, v2, v3

    iput-object v2, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 165
    new-array v2, v9, [I

    fill-array-data v2, :array_1d8

    iput-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 183
    new-array v2, v9, [I

    fill-array-data v2, :array_1f4

    iput-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 198
    new-instance v2, Landroid/media/AudioService$1;

    invoke-direct {v2, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 252
    new-instance v2, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v2, p0, v7}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v2, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    new-instance v2, Landroid/media/AudioService$MediaButtonBroadcastReceiver;

    invoke-direct {v2, p0, v7}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v2, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 262
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 278
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    .line 1182
    new-instance v2, Landroid/media/AudioService$2;

    invoke-direct {v2, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 2192
    new-instance v2, Landroid/media/AudioService$3;

    invoke-direct {v2, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2263
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 2575
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 294
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 298
    iget-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v3, "ro.config.vc_call_vol_steps"

    iget-object v4, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v6

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    .line 302
    new-instance v2, Landroid/view/VolumePanel;

    invoke-direct {v2, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 303
    new-instance v2, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v2, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 304
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 305
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 306
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 307
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 309
    const/4 v2, -0x2

    iput v2, p0, Landroid/media/AudioService;->mMode:I

    .line 310
    invoke-virtual {p0, v6, v7}, Landroid/media/AudioService;->setMode(ILandroid/os/IBinder;)V

    .line 311
    iput-boolean v8, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 315
    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 316
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    invoke-direct {p0, v2, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 318
    iput-boolean v6, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    .line 319
    iget-object v2, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v2}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 323
    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 324
    new-instance v2, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Landroid/media/AudioService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    invoke-direct {v2, p1, v3}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v2, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 328
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v2, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v2, "HDMI_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v2, "HDMI_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 338
    const-string v2, "android.intent.action.FM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 344
    iget-object v2, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 349
    .local v1, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 350
    return-void

    .line 149
    :array_180
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_188
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_190
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_198
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1a0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1a8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1b0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1b8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1c0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1c8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1d0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 165
    :array_1d8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 183
    :array_1f4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$1102(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    return p1
.end method

.method static synthetic access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    return-void
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 82
    invoke-static/range {p0 .. p7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/AudioService;III)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    return v0
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)[[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$3300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    return v0
.end method

.method static synthetic access$3700(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Landroid/media/AudioService;->getMsgBase(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$4100(Landroid/media/AudioService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$4200(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$4402(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return v0
.end method

.method static synthetic access$4502(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return p1
.end method

.method static synthetic access$4600(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    return-void
.end method

.method static synthetic access$4800(Landroid/media/AudioService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4802(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    return v0
.end method

.method static synthetic access$5202(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$5300()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)Ljava/util/Stack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method private broadcastRingerMode()V
    .registers 6

    .prologue
    .line 1312
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1314
    const/high16 v3, 0x3000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1317
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1318
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1319
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .parameter "vibrateType"

    .prologue
    .line 1323
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1326
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1327
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1329
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private canReassignAudioFocus()Z
    .registers 3

    .prologue
    .line 2344
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2345
    const/4 v0, 0x0

    .line 2347
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private cancelA2dpDeviceTimeout()V
    .registers 3

    .prologue
    .line 1901
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1902
    return-void
.end method

.method private checkForRingerModeChange(II)Z
    .registers 9
    .parameter "oldIndex"
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1213
    const/4 v0, 0x1

    .line 1214
    .local v0, adjustVolumeIndex:Z
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1216
    .local v1, newRingerMode:I
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 1218
    const/4 v2, -0x1

    if-ne p2, v2, :cond_21

    add-int/lit8 v2, p1, 0x5

    div-int/lit8 v2, v2, 0xa

    if-ne v2, v4, :cond_21

    .line 1221
    iget-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_in_silent"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2a

    move v1, v4

    .line 1224
    :goto_1f
    iput-boolean v5, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    .line 1237
    :cond_21
    :goto_21
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v1, v2, :cond_29

    .line 1238
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1245
    const/4 v0, 0x0

    .line 1248
    :cond_29
    return v0

    :cond_2a
    move v1, v5

    .line 1221
    goto :goto_1f

    .line 1227
    :cond_2c
    if-ne p2, v4, :cond_32

    .line 1229
    const/4 v1, 0x2

    .line 1230
    iput-boolean v4, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    goto :goto_21

    .line 1233
    :cond_32
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private createAudioSystemThread()V
    .registers 2

    .prologue
    .line 353
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 354
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 355
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 356
    return-void
.end method

.method private createStreamStates()V
    .registers 8

    .prologue
    .line 373
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 374
    .local v2, numStreamTypes:I
    new-array v3, v2, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 376
    .local v3, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v2, :cond_1e

    .line 377
    new-instance v4, Landroid/media/AudioService$VolumeStreamState;

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v0, v6}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v4, v3, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 381
    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v2, :cond_5f

    .line 382
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    if-eq v4, v0, :cond_5c

    .line 383
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 384
    .local v1, index:I
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 385
    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 386
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 387
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 381
    .end local v1           #index:I
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 390
    :cond_5f
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 2270
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2271
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2272
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2273
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2275
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 2278
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_4b
    move-exception v3

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_4b

    throw v3

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_4e
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    .line 2279
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 2582
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2583
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 2584
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2585
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2586
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 2587
    .local v0, fse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     receiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 2589
    .end local v0           #fse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_33
    move-exception v3

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_33

    throw v3

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 2590
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .parameter "direction"

    .prologue
    .line 1264
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    if-le p1, v0, :cond_1f

    .line 1265
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :cond_1f
    return-void
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .parameter "streamType"

    .prologue
    .line 1270
    if-ltz p1, :cond_7

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 1271
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_20
    return-void
.end method

.method private getActiveStreamType(I)I
    .registers 10
    .parameter "suggestedStreamType"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string v7, "AudioService"

    .line 1276
    const/4 v1, 0x0

    .line 1278
    .local v1, isOffhook:Z
    :try_start_7
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1279
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_18

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_20

    move-result v1

    .line 1284
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_18
    :goto_18
    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v5, :cond_2a

    .line 1286
    const/4 v3, 0x6

    .line 1306
    :goto_1f
    return v3

    .line 1280
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 1281
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    const-string v3, "Couldn\'t connect to phone service"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 1287
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2a
    if-nez v1, :cond_32

    invoke-static {v4}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_32
    move v3, v4

    .line 1289
    goto :goto_1f

    .line 1290
    :cond_34
    invoke-static {v5}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    move v3, v5

    .line 1292
    goto :goto_1f

    .line 1294
    :cond_3c
    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4c

    .line 1295
    const-string v3, "AudioService"

    const-string v3, "getActiveStreamType: Forcing STREAM_FM_RADIO..."

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 1296
    goto :goto_1f

    .line 1298
    :cond_4c
    invoke-static {v6}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_54

    move v3, v6

    .line 1300
    goto :goto_1f

    .line 1301
    :cond_54
    const/high16 v3, -0x8000

    if-ne p1, v3, :cond_5a

    .line 1303
    const/4 v3, 0x2

    goto :goto_1f

    :cond_5a
    move v3, p1

    .line 1306
    goto :goto_1f
.end method

.method private static getMsg(II)I
    .registers 4
    .parameter "baseMsg"
    .parameter "streamType"

    .prologue
    .line 1333
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static getMsgBase(I)I
    .registers 2
    .parameter "msg"

    .prologue
    .line 1337
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 700
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 703
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 705
    return p0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .registers 3

    .prologue
    .line 1905
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isStreamMutedByRingerMode(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1256
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    .line 1868
    const/4 v0, 0x1

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1872
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1873
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 1891
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1893
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1896
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1898
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    const/16 v3, 0x80

    .line 1878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1880
    .local v0, noisyIntent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1881
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1882
    const/4 v1, 0x0

    invoke-static {v3, v1, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1885
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    return-void
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 5

    .prologue
    .line 2228
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_32

    .line 2229
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2231
    :try_start_1a
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_33

    .line 2239
    :cond_32
    :goto_32
    return-void

    .line 2233
    :catch_33
    move-exception v1

    move-object v0, v1

    .line 2234
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method private pushMediaButtonReceiver(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "newReceiver"

    .prologue
    .line 2598
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2610
    :goto_18
    return-void

    .line 2601
    :cond_19
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2602
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2603
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 2604
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2605
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 2609
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_38
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    new-instance v3, Landroid/media/AudioService$RemoteControlStackEntry;

    invoke-direct {v3, p1}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method

.method private readPersistedSettings()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 395
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "mode_ringer"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 397
    const-string/jumbo v1, "vibrate_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 399
    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 404
    const-string v1, "mute_streams_affected"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 407
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 409
    const-string v1, "notifications_use_ring_volume"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    .line 412
    iget v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    if-ne v1, v4, :cond_41

    .line 413
    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    const/4 v2, 0x5

    aput v5, v1, v2

    .line 418
    :cond_41
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 421
    invoke-direct {p0, v3}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 422
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 423
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .registers 6
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 2290
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2293
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2294
    if-eqz p2, :cond_22

    .line 2296
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 2311
    :cond_22
    return-void

    .line 2301
    :cond_23
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2302
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2304
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2307
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .registers 6
    .parameter "cb"

    .prologue
    .line 2319
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    move v1, v3

    .line 2321
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_1a
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2322
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2323
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2324
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2327
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 2319
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_3a
    const/4 v3, 0x0

    move v1, v3

    goto :goto_1a

    .line 2330
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_3d
    if-eqz v1, :cond_42

    .line 2333
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 2335
    :cond_42
    return-void
.end method

.method private removeMediaButtonReceiver(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "newReceiver"

    .prologue
    .line 2617
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2618
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2619
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 2620
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2621
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 2625
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1f
    return-void
.end method

.method private rescaleIndex(III)I
    .registers 6
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 430
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .registers 12
    .parameter "handler"
    .parameter "baseMsg"
    .parameter "streamType"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 1342
    const/4 v1, -0x1

    if-ne p2, v1, :cond_12

    move v0, p1

    .line 1344
    .local v0, msg:I
    :goto_4
    if-nez p3, :cond_18

    .line 1345
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1350
    :cond_9
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p7

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1352
    :goto_11
    return-void

    .line 1342
    .end local v0           #msg:I
    :cond_12
    invoke-static {p1, p2}, Landroid/media/AudioService;->getMsg(II)I

    move-result v1

    move v0, v1

    goto :goto_4

    .line 1346
    .restart local v0       #msg:I
    :cond_18
    const/4 v1, 0x1

    if-ne p3, v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_11
.end method

.method private sendVolumeUpdate(III)V
    .registers 6
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"

    .prologue
    .line 518
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 519
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    return-void
.end method

.method private setRingerModeInt(IZ)V
    .registers 13
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 623
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 629
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 630
    .local v8, numStreamTypes:I
    sub-int v9, v8, v2

    .local v9, streamType:I
    :goto_c
    if-ltz v9, :cond_4a

    .line 631
    invoke-direct {p0, v9}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 632
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v4, :cond_2e

    .line 634
    :cond_1e
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 635
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, v9

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 630
    :cond_2e
    :goto_2e
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    .line 638
    :cond_31
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v4, :cond_2e

    .line 640
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 641
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, v9

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_2e

    .line 647
    :cond_4a
    if-eqz p2, :cond_57

    .line 648
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/16 v7, 0xbb8

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 651
    :cond_57
    return-void
.end method

.method private setStreamVolumeIndex(II)V
    .registers 4
    .parameter "stream"
    .parameter "index"

    .prologue
    .line 426
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 427
    return-void
.end method

.method private setStreamVolumeInt(IIZZ)V
    .registers 13
    .parameter "streamType"
    .parameter "index"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    .line 540
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 543
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 545
    if-eqz p2, :cond_1b

    .line 546
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 548
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 559
    :cond_1b
    :goto_1b
    return-void

    .line 552
    :cond_1c
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_24

    if-eqz p3, :cond_1b

    .line 555
    :cond_24
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_1b
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .prologue
    .line 360
    monitor-enter p0

    .line 361
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 364
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 365
    :catch_9
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 369
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 370
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/os/IBinder;)I
    .registers 12
    .parameter "fl"
    .parameter "clientId"
    .parameter "cb"

    .prologue
    const/4 v7, 0x1

    .line 2466
    :try_start_1
    sget-object v4, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_4} :catch_38

    .line 2467
    const/4 v5, 0x1

    :try_start_5
    invoke-direct {p0, p2, v5}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2469
    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 2471
    iget-object v5, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2473
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v3, :cond_30

    .line 2475
    iget-object v5, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioFocusDeathHandler;

    .line 2477
    .local v0, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    invoke-virtual {v0}, Landroid/media/AudioService$AudioFocusDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne p3, v5, :cond_32

    .line 2478
    const/4 v5, 0x0

    invoke-interface {p3, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2479
    iget-object v5, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2484
    .end local v0           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_30
    monitor-exit v4

    .line 2493
    :goto_31
    return v7

    .line 2473
    .restart local v0       #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .restart local v2       #i:I
    .restart local v3       #size:I
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2484
    .end local v0           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_35
    move-exception v5

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    :try_start_37
    throw v5
    :try_end_38
    .catch Ljava/util/ConcurrentModificationException; {:try_start_37 .. :try_end_38} :catch_38

    .line 2485
    :catch_38
    move-exception v4

    move-object v1, v4

    .line 2489
    .local v1, cme:Ljava/util/ConcurrentModificationException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_31
.end method

.method public adjustStreamVolume(III)V
    .registers 15
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 457
    invoke-direct {p0, p2}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 458
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 461
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, p1

    aget-object v6, v0, v1

    .line 462
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    move v10, v0

    .line 463
    .local v10, oldIndex:I
    :goto_19
    const/4 v8, 0x1

    .line 467
    .local v8, adjustVolume:Z
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_21

    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 471
    :cond_21
    invoke-direct {p0, v10, p2}, Landroid/media/AudioService;->checkForRingerModeChange(II)Z

    move-result v8

    .line 476
    :cond_25
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_4f

    .line 477
    if-eqz v8, :cond_3c

    .line 478
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(I)V

    .line 480
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 483
    :cond_3c
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v9

    .line 494
    .local v9, index:I
    :goto_40
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p1, p3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 496
    invoke-direct {p0, p1, v10, v9}, Landroid/media/AudioService;->sendVolumeUpdate(III)V

    .line 497
    return-void

    .line 462
    .end local v8           #adjustVolume:Z
    .end local v9           #index:I
    .end local v10           #oldIndex:I
    :cond_49
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    move v10, v0

    goto :goto_19

    .line 485
    .restart local v8       #adjustVolume:Z
    .restart local v10       #oldIndex:I
    :cond_4f
    if-eqz v8, :cond_65

    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 488
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 491
    :cond_65
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v9

    .restart local v9       #index:I
    goto :goto_40
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 6
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 445
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 448
    .local v0, streamType:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_d

    .line 449
    and-int/lit8 p3, p3, -0x5

    .line 452
    :cond_d
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    .line 453
    return-void
.end method

.method public adjustVolume(II)V
    .registers 4
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 439
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 440
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 5
    .parameter "method"

    .prologue
    .line 1355
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 1357
    const/4 v1, 0x1

    .line 1363
    :goto_b
    return v1

    .line 1359
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public clearAllScoClients()V
    .registers 6

    .prologue
    .line 1174
    iget-object v3, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1175
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1176
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1b

    .line 1177
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$ScoClient;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 1176
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1179
    :cond_1b
    monitor-exit v3

    .line 1180
    return-void

    .line 1179
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2650
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 2651
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 2652
    return-void
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 816
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRingerMode()I
    .registers 2

    .prologue
    .line 591
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method public getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;
    .registers 8
    .parameter "cb"

    .prologue
    .line 1159
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1161
    :try_start_3
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1162
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_20

    .line 1163
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 1164
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p1, :cond_1d

    .line 1165
    monitor-exit v4

    move-object v1, v0

    .line 1169
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Ljava/lang/Object;
    :goto_1c
    return-object v1

    .line 1162
    .end local v1           #client:Ljava/lang/Object;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1167
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    :cond_20
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 1168
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    monitor-exit v4

    move-object v1, v0

    .restart local v1       #client:Ljava/lang/Object;
    goto :goto_1c

    .line 1170
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .end local v1           #client:Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v5
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 585
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 586
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 579
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 580
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .parameter "vibrateType"

    .prologue
    .line 675
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isBluetoothScoOn()Z
    .registers 3

    .prologue
    .line 1030
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1031
    const/4 v0, 0x1

    .line 1033
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isRadioSpeakerOn()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1005
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    if-ne v0, v1, :cond_7

    move v0, v1

    .line 1008
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isSpeakerphoneOn()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 982
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v1, :cond_7

    move v0, v1

    .line 985
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1260
    iget v0, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1252
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public loadSoundEffects()Z
    .registers 14

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 840
    iget-object v5, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 841
    :try_start_6
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v6, :cond_d

    .line 842
    monitor-exit v5

    move v5, v11

    .line 883
    :goto_c
    return v5

    .line 844
    :cond_d
    new-instance v6, Landroid/media/SoundPool;

    const/16 v7, 0x9

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 845
    const-string v6, "AudioService"

    const-string v7, "############ loadSoundEffects"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v6, :cond_26

    .line 847
    monitor-exit v5

    move v5, v10

    goto :goto_c

    .line 855
    :cond_26
    sget-object v6, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v6, v6

    new-array v3, v6, [I

    .line 856
    .local v3, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_2c
    sget-object v6, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_37

    .line 857
    const/4 v6, -0x1

    aput v6, v3, v1

    .line 856
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 864
    :cond_37
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_38
    const/16 v6, 0xb

    if-ge v0, v6, :cond_a7

    .line 866
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    if-nez v6, :cond_48

    .line 864
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 869
    :cond_48
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aget v6, v3, v6

    if-ne v6, v12, :cond_93

    .line 870
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/audio/ui/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, filePath:Ljava/lang/String;
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    .line 872
    .local v4, sampleId:I
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aput v4, v6, v7

    .line 873
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v4, v3, v6

    .line 874
    if-gtz v4, :cond_45

    goto :goto_45

    .line 878
    .end local v2           #filePath:Ljava/lang/String;
    .end local v4           #sampleId:I
    :cond_93
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    aget v8, v3, v8

    aput v8, v6, v7

    goto :goto_45

    .line 881
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v3           #poolId:[I
    :catchall_a4
    move-exception v6

    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_6 .. :try_end_a6} :catchall_a4

    throw v6

    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v3       #poolId:[I
    :cond_a7
    :try_start_a7
    monitor-exit v5
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a4

    move v5, v11

    .line 883
    goto/16 :goto_c
.end method

.method public playSoundEffect(I)V
    .registers 10
    .parameter "effectType"

    .prologue
    const/4 v2, -0x1

    .line 822
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 824
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 826
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 11
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 830
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 831
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 833
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "eventReceiver"

    .prologue
    .line 2632
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v0

    .line 2633
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/content/ComponentName;)V

    .line 2634
    monitor-exit v0

    .line 2635
    return-void

    .line 2634
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public reloadAudioSettings()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 918
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 921
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 922
    .local v3, numStreamTypes:I
    const/4 v7, 0x0

    .local v7, streamType:I
    :goto_9
    if-ge v7, v3, :cond_c0

    .line 923
    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v8, v7

    .line 925
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    sget-object v8, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    aget-object v4, v8, v9

    .line 926
    .local v4, settingName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_last_audible"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, lastAudibleSettingName:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v9, v9, v7

    invoke-static {v8, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 930
    .local v1, index:I
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v7

    if-eq v8, v7, :cond_a4

    .line 931
    mul-int/lit8 v8, v1, 0xa

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    invoke-direct {p0, v8, v9, v7}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 935
    :goto_44
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    invoke-static {v6, v8}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 937
    add-int/lit8 v8, v1, 0x5

    div-int/lit8 v1, v8, 0xa

    .line 938
    iget-object v8, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v1, :cond_a7

    move v9, v1

    :goto_54
    invoke-static {v8, v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 941
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v7

    if-eq v8, v7, :cond_ac

    .line 942
    mul-int/lit8 v8, v1, 0xa

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    invoke-direct {p0, v8, v9, v7}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 946
    :goto_68
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    invoke-static {v6, v8}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 949
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    if-eqz v8, :cond_af

    invoke-virtual {p0, v7}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v8

    if-nez v8, :cond_af

    .line 950
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 951
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_84
    if-ge v0, v5, :cond_af

    .line 952
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1302(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 953
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v8, v10}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 951
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 933
    .end local v0           #i:I
    .end local v5           #size:I
    :cond_a4
    mul-int/lit8 v1, v1, 0xa

    goto :goto_44

    .line 938
    :cond_a7
    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v9, v9, v7

    goto :goto_54

    .line 944
    :cond_ac
    mul-int/lit8 v1, v1, 0xa

    goto :goto_68

    .line 957
    :cond_af
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    if-nez v8, :cond_bc

    .line 958
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 922
    :cond_bc
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 963
    .end local v1           #index:I
    .end local v2           #lastAudibleSettingName:Ljava/lang/String;
    .end local v4           #settingName:Ljava/lang/String;
    .end local v6           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_c0
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v8

    invoke-direct {p0, v8, v10}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 964
    return-void
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .registers 21
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"

    .prologue
    .line 2384
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    if-eqz p3, :cond_13

    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2385
    :cond_13
    const-string v3, "AudioService"

    const-string v4, " AudioFocus  DOA client for requestAudioFocus(), exiting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    const/4 v3, 0x0

    .line 2458
    :goto_1b
    return v3

    .line 2389
    :cond_1c
    sget-object v10, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2390
    :try_start_1f
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 2391
    const/4 v3, 0x0

    monitor-exit v10

    goto :goto_1b

    .line 2423
    :catchall_28
    move-exception v3

    monitor-exit v10
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v3

    .line 2394
    :cond_2b
    :try_start_2b
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_5d

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 2397
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget v3, v3, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    move v0, v3

    move/from16 v1, p2

    if-ne v0, v1, :cond_58

    .line 2398
    const/4 v3, 0x1

    monitor-exit v10

    goto :goto_1b

    .line 2402
    :cond_58
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2406
    :cond_5d
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_8a

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_6f
    .catchall {:try_start_2b .. :try_end_6f} :catchall_28

    if-eqz v3, :cond_8a

    .line 2408
    :try_start_71
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v4, v3, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v5, p2, -0x1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_71 .. :try_end_8a} :catchall_28
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_8a} :catch_f2

    .line 2418
    :cond_8a
    :goto_8a
    const/4 v3, 0x0

    :try_start_8b
    move-object v0, p0

    move-object/from16 v1, p5

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2421
    iget-object v11, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v3, Landroid/media/AudioService$FocusStackEntry;

    const/4 v6, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioService$FocusStackEntry;-><init>(IIZLandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    monitor-exit v10
    :try_end_a8
    .catchall {:try_start_8b .. :try_end_a8} :catchall_28

    .line 2428
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ef

    .line 2430
    const/4 v14, 0x0

    .line 2431
    .local v14, size:I
    const/4 v13, 0x0

    .line 2432
    .local v13, i:I
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2433
    :try_start_b8
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2434
    const/4 v13, 0x0

    :goto_bf
    if-ge v13, v14, :cond_d2

    .line 2435
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$AudioFocusDeathHandler;

    .line 2437
    .local v11, afdhandler:Landroid/media/AudioService$AudioFocusDeathHandler;
    invoke-virtual {v11}, Landroid/media/AudioService$AudioFocusDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_111

    .line 2441
    .end local v11           #afdhandler:Landroid/media/AudioService$AudioFocusDeathHandler;
    :cond_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_b8 .. :try_end_d3} :catchall_114

    .line 2443
    if-ne v13, v14, :cond_ef

    .line 2444
    new-instance v10, Landroid/media/AudioService$AudioFocusDeathHandler;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 2447
    .local v10, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v3, 0x0

    :try_start_df
    move-object/from16 v0, p3

    move-object v1, v10

    move v2, v3

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2448
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_e9} :catch_11a

    .line 2449
    :try_start_e9
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2450
    monitor-exit v3
    :try_end_ef
    .catchall {:try_start_e9 .. :try_end_ef} :catchall_117

    .line 2458
    .end local v10           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v13           #i:I
    .end local v14           #size:I
    :cond_ef
    :goto_ef
    const/4 v3, 0x1

    goto/16 :goto_1b

    .line 2411
    :catch_f2
    move-exception v3

    move-object v12, v3

    .line 2412
    .local v12, e:Landroid/os/RemoteException;
    :try_start_f4
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Failure to signal loss of focus due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_10f
    .catchall {:try_start_f4 .. :try_end_10f} :catchall_28

    goto/16 :goto_8a

    .line 2434
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v11       #afdhandler:Landroid/media/AudioService$AudioFocusDeathHandler;
    .restart local v13       #i:I
    .restart local v14       #size:I
    :cond_111
    add-int/lit8 v13, v13, 0x1

    goto :goto_bf

    .line 2441
    .end local v11           #afdhandler:Landroid/media/AudioService$AudioFocusDeathHandler;
    :catchall_114
    move-exception v4

    :try_start_115
    monitor-exit v3
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v4

    .line 2450
    .restart local v10       #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    :catchall_117
    move-exception v4

    :try_start_118
    monitor-exit v3
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    :try_start_119
    throw v4
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_11a} :catch_11a

    .line 2451
    :catch_11a
    move-exception v3

    move-object v12, v3

    .line 2453
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef
.end method

.method public setBluetoothScoOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1014
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1026
    :goto_c
    return-void

    .line 1017
    :cond_d
    if-eqz p1, :cond_18

    .line 1018
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1019
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1020
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_c

    .line 1022
    :cond_18
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1023
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1024
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_c
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .registers 13
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v7, -0x1

    .line 756
    const-string/jumbo v6, "setMode()"

    invoke-virtual {p0, v6}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 812
    :cond_a
    :goto_a
    return-void

    .line 760
    :cond_b
    if-lt p1, v7, :cond_a

    const/4 v6, 0x5

    if-ge p1, v6, :cond_a

    .line 764
    iget-object v6, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 765
    if-ne p1, v7, :cond_17

    .line 766
    :try_start_15
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 768
    :cond_17
    iget v7, p0, Landroid/media/AudioService;->mMode:I

    if-eq p1, v7, :cond_60

    .line 769
    invoke-static {p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v7

    if-nez v7, :cond_60

    .line 770
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    .line 772
    iget-object v7, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_7d

    .line 773
    const/4 v1, 0x0

    .line 774
    .local v1, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :try_start_27
    iget-object v8, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 775
    .local v4, iter:Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 776
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$SetModeDeathHandler;

    .line 777
    .local v0, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v0}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v8, p2, :cond_2d

    .line 778
    move-object v1, v0

    .line 780
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_80

    move-object v2, v1

    .line 784
    .end local v0           #h:Landroid/media/AudioService$SetModeDeathHandler;
    .end local v1           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .local v2, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :goto_44
    if-nez v2, :cond_88

    .line 785
    :try_start_46
    new-instance v1, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-direct {v1, p0, p2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_85

    .line 787
    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v1       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    if-eqz p2, :cond_51

    .line 790
    const/4 v8, 0x0

    :try_start_4e
    invoke-interface {p2, v1, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_80
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_83

    .line 799
    :cond_51
    :goto_51
    :try_start_51
    iget-object v8, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 800
    invoke-virtual {v1, p1}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    .line 801
    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_80

    .line 803
    if-eqz p1, :cond_60

    .line 804
    :try_start_5d
    invoke-virtual {p0}, Landroid/media/AudioService;->clearAllScoClients()V

    .line 808
    .end local v1           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .end local v4           #iter:Ljava/util/Iterator;
    :cond_60
    const/high16 v7, -0x8000

    invoke-direct {p0, v7}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v5

    .line 809
    .local v5, streamType:I
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v5

    aget-object v7, v7, v8

    invoke-static {v7}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .line 810
    .local v3, index:I
    iget-object v7, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v7, v7, v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v7, v3, v8, v9}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 811
    monitor-exit v6

    goto :goto_a

    .end local v3           #index:I
    .end local v5           #streamType:I
    :catchall_7d
    move-exception v7

    monitor-exit v6
    :try_end_7f
    .catchall {:try_start_5d .. :try_end_7f} :catchall_7d

    throw v7

    .line 801
    .restart local v1       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :catchall_80
    move-exception v8

    :goto_81
    :try_start_81
    monitor-exit v7
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    :try_start_82
    throw v8
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_7d

    .line 791
    .restart local v4       #iter:Ljava/util/Iterator;
    :catch_83
    move-exception v8

    goto :goto_51

    .line 801
    .end local v1           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :catchall_85
    move-exception v8

    move-object v1, v2

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v1       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_81

    .end local v1           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_88
    move-object v1, v2

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v1       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_51

    :cond_8a
    move-object v2, v1

    .end local v1           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_44
.end method

.method public setRadioSpeakerOn(Z)V
    .registers 6
    .parameter "on"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 991
    const-string/jumbo v0, "setRadioSpeakerOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1001
    :goto_c
    return-void

    .line 994
    :cond_d
    if-eqz p1, :cond_15

    .line 995
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 996
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    goto :goto_c

    .line 998
    :cond_15
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 999
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    goto :goto_c
.end method

.method public setRingerMode(I)V
    .registers 11
    .parameter "ringerMode"

    .prologue
    const/4 v2, 0x1

    const-string v0, "AudioService"

    .line 596
    iget-object v8, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 597
    :try_start_6
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq p1, v0, :cond_14

    .line 598
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 599
    packed-switch p1, :pswitch_data_66

    .line 617
    :goto_11
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 619
    :cond_14
    monitor-exit v8

    .line 620
    return-void

    .line 601
    :pswitch_16
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : silent & set driving mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    goto :goto_11

    .line 619
    :catchall_21
    move-exception v0

    monitor-exit v8
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw v0

    .line 605
    :pswitch_24
    :try_start_24
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    .line 607
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_11

    .line 610
    :pswitch_3c
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    if-ne v0, v2, :cond_57

    .line 612
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 613
    :cond_57
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_21

    goto :goto_11

    .line 599
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_16
        :pswitch_24
        :pswitch_3c
    .end packed-switch
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 968
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 978
    :goto_b
    return-void

    .line 971
    :cond_c
    if-eqz p1, :cond_14

    .line 972
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 973
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_b

    .line 975
    :cond_14
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 976
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_b
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .registers 5
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 573
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 575
    :cond_d
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .registers 6
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 563
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 564
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, p1, :cond_11

    .line 563
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 566
    :cond_11
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_e

    .line 568
    :cond_19
    return-void
.end method

.method public setStreamVolume(III)V
    .registers 9
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 501
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 502
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    aget-object v1, v2, v3

    .line 504
    .local v1, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v0, v2

    .line 506
    .local v0, oldIndex:I
    :goto_16
    mul-int/lit8 v2, p2, 0xa

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    invoke-direct {p0, v2, p1, v3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 507
    iget-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, p2, v3, v4}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 509
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_43

    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move p2, v2

    .line 512
    :goto_34
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2, p1, p3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 514
    invoke-direct {p0, p1, v0, p2}, Landroid/media/AudioService;->sendVolumeUpdate(III)V

    .line 515
    return-void

    .line 504
    .end local v0           #oldIndex:I
    :cond_3d
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v0, v2

    goto :goto_16

    .line 509
    .restart local v0       #oldIndex:I
    :cond_43
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move p2, v2

    goto :goto_34
.end method

.method public setVibrateSetting(II)V
    .registers 11
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    const/4 v4, 0x0

    .line 681
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 684
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 688
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 690
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 5
    .parameter "vibrateType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 656
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    move v0, v1

    .line 669
    :goto_a
    return v0

    .line 659
    :pswitch_b
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_a

    :cond_11
    move v0, v1

    goto :goto_a

    .line 662
    :pswitch_13
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v2, :cond_19

    move v0, v2

    goto :goto_a

    :cond_19
    move v0, v1

    goto :goto_a

    :pswitch_1b
    move v0, v1

    .line 666
    goto :goto_a

    .line 656
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1039
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1044
    :goto_9
    return-void

    .line 1042
    :cond_a
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1043
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_9
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1048
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1053
    :goto_9
    return-void

    .line 1051
    :cond_a
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1052
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_9
.end method

.method public unloadSoundEffects()V
    .registers 8

    .prologue
    .line 892
    iget-object v3, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 893
    :try_start_3
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v4, :cond_9

    .line 894
    monitor-exit v3

    .line 913
    :goto_8
    return-void

    .line 896
    :cond_9
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    new-array v2, v4, [I

    .line 897
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_f
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1a

    .line 898
    const/4 v4, 0x0

    aput v4, v2, v1

    .line 897
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 901
    :cond_1a
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_1b
    const/16 v4, 0xb

    if-ge v0, v4, :cond_58

    .line 902
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_2b

    .line 901
    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 905
    :cond_2b
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    aget v4, v2, v4

    if-nez v4, :cond_28

    .line 906
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 907
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 908
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    aput v5, v2, v4

    goto :goto_28

    .line 912
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_55
    move-exception v4

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v4

    .line 911
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_58
    const/4 v4, 0x0

    :try_start_59
    iput-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 912
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_55

    goto :goto_8
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .parameter "clientId"
    .parameter "cb"

    .prologue
    .line 2498
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2499
    const/4 v4, 0x0

    :try_start_4
    invoke-direct {p0, p1, v4}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2501
    const-string v4, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 2503
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2505
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v2, :cond_2f

    .line 2507
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioFocusDeathHandler;

    .line 2509
    .local v0, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    invoke-virtual {v0}, Landroid/media/AudioService$AudioFocusDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne p2, v4, :cond_31

    .line 2510
    const/4 v4, 0x0

    invoke-interface {p2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2511
    iget-object v4, p0, Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2516
    .end local v0           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_2f
    monitor-exit v3

    .line 2517
    return-void

    .line 2505
    .restart local v0       #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2516
    .end local v0           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_34
    move-exception v4

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_34

    throw v4
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "eventReceiver"

    .prologue
    .line 2641
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v0

    .line 2642
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/content/ComponentName;)V

    .line 2643
    monitor-exit v0

    .line 2644
    return-void

    .line 2643
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
