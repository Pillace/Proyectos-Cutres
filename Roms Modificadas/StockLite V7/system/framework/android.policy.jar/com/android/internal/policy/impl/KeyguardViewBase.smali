.class public abstract Lcom/android/internal/policy/impl/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mForegroundInPadding:Z

    .line 49
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setForegroundGravity(I)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080380

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/16 v8, 0x18

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 148
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8b

    .line 149
    sparse-switch v1, :sswitch_data_ac

    :cond_13
    :goto_13
    move v2, v6

    .line 219
    :goto_14
    return v2

    .line 153
    :sswitch_15
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_27

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 157
    :cond_27
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_35

    move v2, v5

    .line 159
    goto :goto_14

    .line 167
    :cond_35
    :sswitch_35
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v2, v5

    .line 170
    goto :goto_14

    .line 175
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_4a
    monitor-enter p0

    .line 176
    :try_start_4b
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_5d

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 180
    :cond_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_71

    .line 182
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 183
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    if-ne v1, v8, :cond_74

    move v4, v5

    :goto_6c
    invoke-virtual {v2, v3, v4, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_6f
    :goto_6f
    move v2, v5

    .line 199
    goto :goto_14

    .line 180
    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2

    :cond_74
    move v4, v7

    .line 183
    goto :goto_6c

    .line 190
    :cond_76
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    if-ne v1, v8, :cond_89

    move v4, v5

    :goto_85
    invoke-virtual {v2, v3, v4, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_6f

    :cond_89
    move v4, v7

    goto :goto_85

    .line 202
    :cond_8b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_13

    .line 203
    packed-switch v1, :pswitch_data_d2

    :pswitch_94
    goto/16 :goto_13

    .line 212
    :pswitch_96
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v2, v5

    .line 215
    goto/16 :goto_14

    .line 149
    :sswitch_data_ac
    .sparse-switch
        0x18 -> :sswitch_4a
        0x19 -> :sswitch_4a
        0x4f -> :sswitch_35
        0x55 -> :sswitch_15
        0x56 -> :sswitch_35
        0x57 -> :sswitch_35
        0x58 -> :sswitch_35
        0x59 -> :sswitch_35
        0x5a -> :sswitch_35
    .end sparse-switch

    .line 203
    :pswitch_data_d2
    .packed-switch 0x4f
        :pswitch_96
        :pswitch_94
        :pswitch_94
        :pswitch_94
        :pswitch_94
        :pswitch_94
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
    .end packed-switch
.end method

.method private shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 135
    :goto_8
    return v0

    .line 128
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 135
    const/4 v0, 0x1

    goto :goto_8

    :pswitch_12
    move v0, v1

    .line 133
    goto :goto_8

    .line 128
    :pswitch_data_14
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 118
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    return-object v0
.end method

.method public abstract onBatteryLowWarn(I)V
.end method

.method public abstract onBatteryStatusHide()V
.end method

.method public abstract onBatteryStatusInform(I)V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract reset()V
.end method

.method setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 58
    return-void
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method
