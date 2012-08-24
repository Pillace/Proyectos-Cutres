.class public Landroid/preference/VolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Landroid/preference/VolumePreference;


# direct methods
.method public constructor <init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .registers 7
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 260
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 242
    new-instance v0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 261
    iput-object p2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 262
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 263
    iput p4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 264
    iput-object p3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 266
    invoke-direct {p0, p3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;)V

    .line 267
    return-void
.end method

.method static synthetic access$000(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 229
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;)V
    .registers 8
    .parameter "seekBar"

    .prologue
    const-string v5, "VolumePreference"

    .line 270
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 271
    const-string v2, "VolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSeekBar : seekBar.setMax : mAudioManager.getStreamMaxVolume(mStreamType) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v2, "VolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSeekBar : mStreamType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 274
    const-string v2, "VolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSeekBar : mOriginalStreamVolume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 276
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 278
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, defaultUri:Landroid/net/Uri;
    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    packed-switch v2, :pswitch_data_ce

    .line 302
    :pswitch_95
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 303
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 307
    :goto_9f
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_aa

    .line 308
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 310
    :cond_aa
    return-void

    .line 287
    :pswitch_ab
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 288
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto :goto_9f

    .line 292
    :pswitch_b6
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 293
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto :goto_9f

    .line 297
    :pswitch_c1
    const v0, 0x10c0003

    .line 298
    .local v0, defaultResource:I
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getRingtoneFromResource(Landroid/content/Context;I)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto :goto_9f

    .line 284
    nop

    :pswitch_data_ce
    .packed-switch 0x2
        :pswitch_ab
        :pswitch_c1
        :pswitch_95
        :pswitch_b6
    .end packed-switch
.end method

.method private sample()V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v0, p0}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 366
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    .line 368
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 369
    const-string v0, "VolumePreference"

    const-string/jumbo v1, "sample : mRingtone.play()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_17
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .registers 5
    .parameter "amount"

    .prologue
    .line 384
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 385
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 386
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVolumeBy : (mRingtone != null && !mRingtone.isPlaying()) amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->sample()V

    .line 389
    :cond_2c
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 390
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v3, 0x1

    .line 324
    if-nez p3, :cond_4

    .line 338
    :goto_3
    return-void

    .line 328
    :cond_4
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v3, :cond_3d

    .line 329
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v0, p0}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 330
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->playSoundEffect(I)V

    .line 331
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 332
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 336
    :cond_3d
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_3
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .registers 4
    .parameter "volumeStore"

    .prologue
    .line 400
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 401
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 402
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 403
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 405
    :cond_12
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .registers 3
    .parameter "volumeStore"

    .prologue
    .line 393
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_c

    .line 394
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 395
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 397
    :cond_c
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .parameter "seekBar"

    .prologue
    .line 348
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_f

    .line 349
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->sample()V

    .line 351
    :cond_f
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .parameter "seekBar"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_f

    .line 355
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->sample()V

    .line 357
    :cond_f
    return-void
.end method

.method postSetVolume(I)V
    .registers 3
    .parameter "progress"

    .prologue
    .line 342
    iput p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 343
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public revertVolume()V
    .registers 5

    .prologue
    .line 319
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 320
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 360
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 361
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 314
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 315
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 316
    return-void
.end method

.method public stopSample()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 377
    :cond_9
    return-void
.end method
