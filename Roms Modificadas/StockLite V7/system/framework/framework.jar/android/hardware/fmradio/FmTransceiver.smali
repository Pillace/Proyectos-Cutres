.class public Landroid/hardware/fmradio/FmTransceiver;
.super Ljava/lang/Object;
.source "FmTransceiver.java"


# static fields
.field public static final FM_CHSPACE_100_KHZ:I = 0x1

.field public static final FM_CHSPACE_200_KHZ:I = 0x0

.field public static final FM_CHSPACE_50_KHZ:I = 0x2

.field public static final FM_DE_EMP50:I = 0x1

.field public static final FM_DE_EMP75:I = 0x0

.field public static final FM_EU_BAND:I = 0x1

.field public static final FM_JAPAN_STANDARD_BAND:I = 0x3

.field public static final FM_JAPAN_WIDE_BAND:I = 0x2

.field public static final FM_RDS_STD_NONE:I = 0x2

.field public static final FM_RDS_STD_RBDS:I = 0x0

.field public static final FM_RDS_STD_RDS:I = 0x1

.field protected static final FM_RX:I = 0x1

.field protected static final FM_TX:I = 0x2

.field public static final FM_USER_DEFINED_BAND:I = 0x4

.field public static final FM_US_BAND:I

.field protected static sFd:I


# instance fields
.field private final MUTE_EVENT:I

.field private final RDS_EVENT:I

.field private final READY_EVENT:I

.field private final SEEK_COMPLETE_EVENT:I

.field private final TAG:Ljava/lang/String;

.field private final TUNE_EVENT:I

.field protected mControl:Landroid/hardware/fmradio/FmRxControls;

.field protected mPowerMode:I

.field protected mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

.field protected mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->READY_EVENT:I

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TUNE_EVENT:I

    .line 101
    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->RDS_EVENT:I

    .line 102
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->MUTE_EVENT:I

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->SEEK_COMPLETE_EVENT:I

    .line 105
    const-string v0, "FmTransceiver"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected acquire(Ljava/lang/String;)Z
    .registers 4
    .parameter "device"

    .prologue
    .line 135
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-nez v1, :cond_14

    .line 137
    const-string v1, "/dev/radio0"

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->acquireFdNative(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 139
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-lez v1, :cond_12

    .line 141
    const/4 v0, 0x1

    .line 153
    .local v0, bStatus:Z
    :goto_11
    return v0

    .line 145
    .end local v0           #bStatus:Z
    :cond_12
    const/4 v0, 0x0

    .restart local v0       #bStatus:Z
    goto :goto_11

    .line 150
    .end local v0           #bStatus:Z
    :cond_14
    const/4 v0, 0x1

    .restart local v0       #bStatus:Z
    goto :goto_11
.end method

.method public configure(Landroid/hardware/fmradio/FmConfig;)Z
    .registers 6
    .parameter "configSettings"

    .prologue
    .line 420
    const/4 v1, 0x1

    .line 421
    .local v1, status:Z
    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v0

    .line 422
    .local v0, lowerFreq:I
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v1

    .line 424
    invoke-virtual {p0, v0}, Landroid/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v1

    .line 425
    return v1
.end method

.method public disable()Z
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->fmOff(I)V

    .line 396
    const-string v0, "/dev/radio0"

    invoke-virtual {p0, v0}, Landroid/hardware/fmradio/FmTransceiver;->release(Ljava/lang/String;)Z

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;I)Z
    .registers 5
    .parameter "configSettings"
    .parameter "device"

    .prologue
    .line 362
    const-string v0, "/dev/radio0"

    invoke-virtual {p0, v0}, Landroid/hardware/fmradio/FmTransceiver;->acquire(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 363
    const/4 v0, 0x0

    .line 369
    :goto_9
    return v0

    .line 366
    :cond_a
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1, p2}, Landroid/hardware/fmradio/FmRxControls;->fmOn(II)V

    .line 369
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v0

    goto :goto_9
.end method

.method public registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .registers 5
    .parameter "callback"

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_c

    .line 230
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxEventListner;->startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    .line 231
    const/4 v0, 0x1

    .line 236
    :goto_b
    return v0

    .line 234
    :cond_c
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public registerTransmitClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .registers 5
    .parameter "callback"

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_5

    .line 298
    const/4 v0, 0x1

    .line 303
    :goto_4
    return v0

    .line 301
    :cond_5
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected release(Ljava/lang/String;)Z
    .registers 4
    .parameter "device"

    .prologue
    .line 183
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-eqz v0, :cond_e

    .line 185
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 186
    const/4 v0, 0x0

    sput v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 192
    :goto_c
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_e
    const-string v0, "FmTransceiver"

    const-string v1, "Error turning off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public setNotchFilter(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 468
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setNotchFilterNative(Z)V

    .line 469
    return-void
.end method

.method public setStation(I)Z
    .registers 4
    .parameter "frequencyKHz"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    invoke-virtual {v0, p1}, Landroid/hardware/fmradio/FmRxControls;->setFreq(I)V

    .line 450
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->setStation(I)V

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterClient()Z
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmRxEventListner;->stopListener()V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterTransmitClient()Z
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method
