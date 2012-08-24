.class public Landroid/hardware/fmradio/FmReceiver;
.super Landroid/hardware/fmradio/FmTransceiver;
.source "FmReceiver.java"


# static fields
.field public static final FM_RX_AUDIO_MODE_MONO:I = 0x1

.field public static final FM_RX_AUDIO_MODE_STEREO:I = 0x0

.field public static final FM_RX_DWELL_PERIOD_1S:I = 0x1

.field public static final FM_RX_DWELL_PERIOD_2S:I = 0x2

.field public static final FM_RX_DWELL_PERIOD_3S:I = 0x3

.field public static final FM_RX_DWELL_PERIOD_4S:I = 0x4

.field public static final FM_RX_DWELL_PERIOD_5S:I = 0x5

.field public static final FM_RX_DWELL_PERIOD_6S:I = 0x6

.field public static final FM_RX_DWELL_PERIOD_7S:I = 0x7

.field public static final FM_RX_LOW_POWER_MODE:I = 0x1

.field public static final FM_RX_MUTE:I = 0x1

.field public static final FM_RX_NORMAL_POWER_MODE:I = 0x0

.field public static final FM_RX_RDS_GRP_AF_EBL:I = 0x4

.field public static final FM_RX_RDS_GRP_PS_EBL:I = 0x2

.field public static final FM_RX_RDS_GRP_PS_SIMPLE_EBL:I = 0x10

.field public static final FM_RX_RDS_GRP_RT_EBL:I = 0x1

.field private static final FM_RX_RSSI_LEVEL_STRONG:I = -0x60

.field private static final FM_RX_RSSI_LEVEL_VERY_STRONG:I = -0x5a

.field private static final FM_RX_RSSI_LEVEL_VERY_WEAK:I = -0x69

.field private static final FM_RX_RSSI_LEVEL_WEAK:I = -0x64

.field public static final FM_RX_SEARCHDIR_DOWN:I = 0x0

.field public static final FM_RX_SEARCHDIR_UP:I = 0x1

.field public static final FM_RX_SIGNAL_STRENGTH_STRONG:I = 0x2

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_STRONG:I = 0x3

.field public static final FM_RX_SIGNAL_STRENGTH_VERY_WEAK:I = 0x0

.field public static final FM_RX_SIGNAL_STRENGTH_WEAK:I = 0x1

.field public static final FM_RX_SRCHLIST_MAX_STATIONS:I = 0xc

.field public static final FM_RX_SRCHLIST_MODE_STRONG:I = 0x2

.field public static final FM_RX_SRCHLIST_MODE_STRONGEST:I = 0x8

.field public static final FM_RX_SRCHLIST_MODE_WEAK:I = 0x3

.field public static final FM_RX_SRCHLIST_MODE_WEAKEST:I = 0x9

.field public static final FM_RX_SRCHRDS_MODE_SCAN_PTY:I = 0x5

.field public static final FM_RX_SRCHRDS_MODE_SEEK_AF:I = 0x7

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PI:I = 0x6

.field public static final FM_RX_SRCHRDS_MODE_SEEK_PTY:I = 0x4

.field public static final FM_RX_SRCH_MODE_SCAN:I = 0x1

.field public static final FM_RX_SRCH_MODE_SEEK:I = 0x0

.field public static final FM_RX_UNMUTE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FMRadio"

.field private static final TAVARUA_BUF_AF_LIST:I = 0x5

.field private static final TAVARUA_BUF_EVENTS:I = 0x1

.field private static final TAVARUA_BUF_MAX:I = 0x6

.field private static final TAVARUA_BUF_PS_RDS:I = 0x3

.field private static final TAVARUA_BUF_RAW_RDS:I = 0x4

.field private static final TAVARUA_BUF_RT_RDS:I = 0x2

.field private static final TAVARUA_BUF_SRCH_LIST:I = 0x0

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_ANTENNA:I = 0x8000012

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008


# instance fields
.field private mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 277
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 278
    new-instance v0, Landroid/hardware/fmradio/FmRxRdsData;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 279
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;)V
    .registers 4
    .parameter "devicePath"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 293
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 294
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 297
    iput-object p2, p0, Landroid/hardware/fmradio/FmReceiver;->mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    .line 298
    return-void
.end method


# virtual methods
.method public cancelSearch()Z
    .registers 3

    .prologue
    .line 908
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->cancelSearch(I)V

    .line 909
    const/4 v0, 0x1

    return v0
.end method

.method public disable()Z
    .registers 3

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmReceiver;->unregisterClient()Z

    move-result v0

    .line 441
    .local v0, status:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 442
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->disable()Z

    move-result v0

    .line 448
    :goto_b
    return v0

    .line 445
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;)Z
    .registers 5
    .parameter "configSettings"

    .prologue
    const/4 v1, 0x1

    .line 405
    invoke-super {p0, p1, v1}, Landroid/hardware/fmradio/FmTransceiver;->enable(Landroid/hardware/fmradio/FmConfig;I)Z

    move-result v0

    .line 407
    .local v0, status:Z
    if-ne v0, v1, :cond_17

    .line 409
    iget-object v1, p0, Landroid/hardware/fmradio/FmReceiver;->mCallback:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    invoke-virtual {p0, v1}, Landroid/hardware/fmradio/FmReceiver;->registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v0

    .line 410
    new-instance v1, Landroid/hardware/fmradio/FmRxRdsData;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-direct {v1, v2}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 415
    :goto_16
    return v0

    .line 413
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public enableAFjump(Z)Z
    .registers 6
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1565
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v1, v3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1567
    .local v0, re:I
    if-eqz v0, :cond_c

    move v1, v2

    .line 1575
    :goto_b
    return v1

    .line 1570
    :cond_c
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v1, p1}, Landroid/hardware/fmradio/FmRxRdsData;->enableAFjump(Z)I

    move-result v0

    .line 1572
    if-nez v0, :cond_16

    move v1, v3

    .line 1573
    goto :goto_b

    :cond_16
    move v1, v2

    .line 1575
    goto :goto_b
.end method

.method public getAFInfo()[I
    .registers 8

    .prologue
    const/16 v4, 0x28

    const/4 v6, 0x4

    .line 1211
    new-array v1, v4, [B

    .line 1212
    .local v1, buff:[B
    new-array v0, v4, [I

    .line 1215
    .local v0, AfList:[I
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v5, 0x5

    invoke-static {v4, v1, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1217
    aget-byte v4, v1, v6

    if-lez v4, :cond_17

    aget-byte v4, v1, v6

    const/16 v5, 0x19

    if-le v4, v5, :cond_19

    .line 1218
    :cond_17
    const/4 v4, 0x0

    .line 1235
    :goto_18
    return-object v4

    .line 1220
    :cond_19
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v3

    .line 1230
    .local v3, lowerBand:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    aget-byte v4, v1, v6

    if-ge v2, v4, :cond_32

    .line 1231
    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v3

    aput v4, v0, v2

    .line 1230
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_32
    move-object v4, v0

    .line 1235
    goto :goto_18
.end method

.method public getInternalAntenna()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1647
    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v2, 0x8000012

    invoke-static {v1, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 1649
    .local v0, re:I
    if-ne v0, v3, :cond_e

    move v1, v3

    .line 1652
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getPSInfo()Landroid/hardware/fmradio/FmRxRdsData;
    .registers 9

    .prologue
    const/4 v7, 0x3

    .line 1111
    const/16 v6, 0x40

    new-array v0, v6, [B

    .line 1112
    .local v0, buff:[B
    const/4 v4, 0x0

    .line 1113
    .local v4, piLower:I
    const/4 v3, 0x0

    .line 1115
    .local v3, piHigher:I
    sget v6, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v6, v0, v7}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1119
    aget-byte v6, v0, v7

    and-int/lit16 v4, v6, 0xff

    .line 1120
    const/4 v6, 0x2

    aget-byte v6, v0, v6

    and-int/lit16 v3, v6, 0xff

    .line 1121
    shl-int/lit8 v6, v3, 0x8

    or-int v2, v6, v4

    .line 1122
    .local v2, pi:I
    iget-object v6, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v6, v2}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1123
    iget-object v6, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit8 v7, v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1124
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit8 v1, v6, 0xf

    .line 1128
    .local v1, numOfPs:I
    :try_start_2d
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x5

    mul-int/lit8 v7, v1, 0x8

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 1129
    .local v5, rdsStr:Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v6, v5}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2d .. :try_end_3a} :catch_3d

    .line 1135
    .end local v5           #rdsStr:Ljava/lang/String;
    :goto_3a
    iget-object v6, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    return-object v6

    .line 1131
    :catch_3d
    move-exception v6

    goto :goto_3a
.end method

.method public getPowerMode()I
    .registers 3

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->getPwrMode(I)I

    move-result v0

    return v0
.end method

.method public getRTInfo()Landroid/hardware/fmradio/FmRxRdsData;
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 1161
    const/16 v5, 0x78

    new-array v0, v5, [B

    .line 1162
    .local v0, buff:[B
    const/4 v3, 0x0

    .line 1163
    .local v3, piLower:I
    const/4 v2, 0x0

    .line 1165
    .local v2, piHigher:I
    sget v5, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v5, v0, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 1166
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 1170
    .local v4, rdsStr:Ljava/lang/String;
    const/4 v5, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v3, v5, 0xff

    .line 1171
    aget-byte v5, v0, v6

    and-int/lit16 v2, v5, 0xff

    .line 1172
    shl-int/lit8 v5, v2, 0x8

    or-int v1, v5, v3

    .line 1173
    .local v1, pi:I
    iget-object v5, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v5, v1}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1174
    iget-object v5, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit8 v6, v6, 0x1f

    invoke-virtual {v5, v6}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1177
    const/4 v5, 0x5

    const/4 v6, 0x0

    :try_start_2f
    aget-byte v6, v0, v6

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1178
    iget-object v5, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v5, v4}, Landroid/hardware/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2f .. :try_end_3c} :catch_3f

    .line 1184
    :goto_3c
    iget-object v5, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    return-object v5

    .line 1180
    :catch_3f
    move-exception v5

    goto :goto_3c
.end method

.method public getRawRDS(I)[B
    .registers 8
    .parameter "numBlocks"

    .prologue
    const/4 v5, 0x0

    .line 1713
    mul-int/lit8 v3, p1, 0x3

    new-array v1, v3, [B

    .line 1716
    .local v1, rawRds:[B
    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    mul-int/lit8 v4, p1, 0x3

    invoke-static {v3, v1, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getRawRdsNative(I[BI)I

    move-result v2

    .line 1718
    .local v2, re:I
    mul-int/lit8 v3, p1, 0x3

    if-ne v2, v3, :cond_13

    move-object v3, v1

    .line 1728
    :goto_12
    return-object v3

    .line 1721
    :cond_13
    if-gtz v2, :cond_17

    .line 1722
    const/4 v3, 0x0

    goto :goto_12

    .line 1724
    :cond_17
    new-array v0, v2, [B

    .line 1726
    .local v0, buff:[B
    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    .line 1728
    goto :goto_12
.end method

.method public getRssi()I
    .registers 4

    .prologue
    const/16 v2, 0x64

    .line 1621
    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getRSSINative(I)I

    move-result v0

    .line 1623
    .local v0, rssi:I
    add-int/lit8 v0, v0, 0x78

    .line 1625
    if-le v0, v2, :cond_e

    move v1, v2

    .line 1628
    :goto_d
    return v1

    :cond_e
    move v1, v0

    goto :goto_d
.end method

.method public getRssiLimit()[I
    .registers 3

    .prologue
    .line 1327
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    .line 1329
    .local v0, rssiLimits:[I
    return-object v0

    .line 1327
    nop

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getSignalThreshold()I
    .registers 8

    .prologue
    const/16 v6, -0x60

    const/16 v5, -0x64

    .line 1362
    const/4 v2, 0x0

    .line 1363
    .local v2, threshold:I
    sget v3, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v4, 0x8000008

    invoke-static {v3, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 1366
    .local v0, rmssiThreshold:I
    const/16 v3, -0x69

    if-ge v3, v0, :cond_1a

    if-gt v0, v5, :cond_1a

    .line 1368
    const/16 v1, -0x64

    .line 1383
    .local v1, signalStrength:I
    :goto_16
    sparse-switch v1, :sswitch_data_32

    .line 1402
    :goto_19
    return v2

    .line 1370
    .end local v1           #signalStrength:I
    :cond_1a
    if-ge v5, v0, :cond_21

    if-gt v0, v6, :cond_21

    .line 1372
    const/16 v1, -0x60

    .restart local v1       #signalStrength:I
    goto :goto_16

    .line 1374
    .end local v1           #signalStrength:I
    :cond_21
    if-ge v6, v0, :cond_26

    .line 1376
    const/16 v1, -0x5a

    .restart local v1       #signalStrength:I
    goto :goto_16

    .line 1380
    .end local v1           #signalStrength:I
    :cond_26
    const/16 v1, -0x69

    .restart local v1       #signalStrength:I
    goto :goto_16

    .line 1386
    :sswitch_29
    const/4 v2, 0x0

    .line 1387
    goto :goto_19

    .line 1389
    :sswitch_2b
    const/4 v2, 0x1

    .line 1390
    goto :goto_19

    .line 1392
    :sswitch_2d
    const/4 v2, 0x2

    .line 1393
    goto :goto_19

    .line 1395
    :sswitch_2f
    const/4 v2, 0x3

    .line 1396
    goto :goto_19

    .line 1383
    nop

    :sswitch_data_32
    .sparse-switch
        -0x69 -> :sswitch_29
        -0x64 -> :sswitch_2b
        -0x60 -> :sswitch_2d
        -0x5a -> :sswitch_2f
    .end sparse-switch
.end method

.method public getStationList()[I
    .registers 4

    .prologue
    .line 1596
    const/16 v1, 0x64

    new-array v0, v1, [I

    .line 1598
    .local v0, stnList:[I
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->stationList(I)[I

    move-result-object v0

    .line 1600
    return-object v0
.end method

.method public getTunedFrequency()I
    .registers 3

    .prologue
    .line 1077
    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .line 1081
    .local v0, frequency:I
    return v0
.end method

.method public registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .registers 3
    .parameter "callback"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/hardware/fmradio/FmTransceiver;->registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    move-result v0

    .line 337
    .local v0, status:Z
    return v0
.end method

.method public registerRdsGroupProcessing(I)Z
    .registers 6
    .parameter "fmGrpsToProc"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1531
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v1, v3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1533
    .local v0, re:I
    if-eqz v0, :cond_c

    move v1, v2

    .line 1541
    :goto_b
    return v1

    .line 1536
    :cond_c
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v1, p1}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOptions(I)I

    move-result v0

    .line 1538
    if-nez v0, :cond_16

    move v1, v3

    .line 1539
    goto :goto_b

    :cond_16
    move v1, v2

    .line 1541
    goto :goto_b
.end method

.method public searchStationList(IIII)Z
    .registers 13
    .parameter "mode"
    .parameter "direction"
    .parameter "maximumStations"
    .parameter "pty"

    .prologue
    .line 839
    const/4 v6, 0x1

    .line 840
    .local v6, bStatus:Z
    const/4 v7, 0x0

    .line 849
    .local v7, re:I
    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    const/16 v0, 0x9

    if-eq p1, v0, :cond_11

    .line 855
    const/4 v6, 0x0

    .line 857
    :cond_11
    if-ltz p3, :cond_17

    const/16 v0, 0xc

    if-le p3, v0, :cond_18

    .line 860
    :cond_17
    const/4 v6, 0x0

    .line 862
    :cond_18
    if-eqz p2, :cond_1e

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1e

    .line 865
    const/4 v6, 0x0

    .line 868
    :cond_1e
    if-eqz v6, :cond_34

    .line 870
    const/16 v0, 0x8

    if-eq p1, v0, :cond_28

    const/16 v0, 0x9

    if-ne p1, v0, :cond_38

    .line 871
    :cond_28
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    .line 876
    :cond_34
    :goto_34
    if-nez v7, :cond_45

    .line 877
    const/4 v0, 0x1

    .line 879
    :goto_37
    return v0

    .line 873
    :cond_38
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmRxControls;->searchStationList(IIIII)I

    move-result v7

    goto :goto_34

    .line 879
    :cond_45
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public searchStations(III)Z
    .registers 13
    .parameter "mode"
    .parameter "dwellPeriod"
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 555
    const/4 v7, 0x1

    .line 560
    .local v7, bStatus:Z
    if-eqz p1, :cond_8

    if-eq p1, v8, :cond_8

    .line 564
    const/4 v7, 0x0

    .line 566
    :cond_8
    if-lt p2, v8, :cond_d

    const/4 v0, 0x7

    if-le p2, v0, :cond_e

    .line 570
    :cond_d
    const/4 v7, 0x0

    .line 572
    :cond_e
    if-eqz p3, :cond_13

    if-eq p3, v8, :cond_13

    .line 576
    const/4 v7, 0x0

    .line 579
    :cond_13
    if-eqz v7, :cond_20

    .line 582
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fmradio/FmRxControls;->searchStations(IIIIII)V

    .line 584
    :cond_20
    return v8
.end method

.method public searchStations(IIIII)Z
    .registers 15
    .parameter "mode"
    .parameter "dwellPeriod"
    .parameter "direction"
    .parameter "pty"
    .parameter "pi"

    .prologue
    const/4 v1, 0x7

    const/4 v8, 0x1

    .line 714
    const/4 v7, 0x1

    .line 719
    .local v7, bStatus:Z
    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    const/4 v0, 0x5

    if-eq p1, v0, :cond_f

    const/4 v0, 0x6

    if-eq p1, v0, :cond_f

    if-eq p1, v1, :cond_f

    .line 726
    const/4 v7, 0x0

    .line 728
    :cond_f
    if-lt p2, v8, :cond_13

    if-le p2, v1, :cond_14

    .line 732
    :cond_13
    const/4 v7, 0x0

    .line 734
    :cond_14
    if-eqz p3, :cond_19

    if-eq p3, v8, :cond_19

    .line 738
    const/4 v7, 0x0

    .line 741
    :cond_19
    if-eqz v7, :cond_27

    .line 750
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fmradio/FmRxControls;->searchStations(IIIIII)V

    .line 752
    :cond_27
    return v8
.end method

.method public setInternalAntenna(Z)Z
    .registers 6
    .parameter "intAnt"

    .prologue
    .line 1674
    if-eqz p1, :cond_10

    .line 1675
    const/4 v0, 0x1

    .line 1680
    .local v0, iAntenna:I
    :goto_3
    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 1682
    .local v1, re:I
    if-nez v1, :cond_12

    .line 1683
    const/4 v2, 0x1

    .line 1685
    :goto_f
    return v2

    .line 1677
    .end local v0           #iAntenna:I
    .end local v1           #re:I
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #iAntenna:I
    goto :goto_3

    .line 1685
    .restart local v1       #re:I
    :cond_12
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public setMuteMode(I)Z
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 934
    packed-switch p1, :pswitch_data_16

    .line 946
    :goto_4
    return v3

    .line 937
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fmradio/FmRxControls;->muteControl(IZ)V

    goto :goto_4

    .line 940
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v0, v1, v3}, Landroid/hardware/fmradio/FmRxControls;->muteControl(IZ)V

    goto :goto_4

    .line 934
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_5
        :pswitch_e
    .end packed-switch
.end method

.method public setPowerMode(I)Z
    .registers 7
    .parameter "powerMode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1268
    if-ne p1, v3, :cond_10

    .line 1269
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .line 1275
    .local v0, re:I
    :goto_c
    if-nez v0, :cond_19

    move v1, v3

    .line 1277
    :goto_f
    return v1

    .line 1272
    .end local v0           #re:I
    :cond_10
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, v4}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .restart local v0       #re:I
    goto :goto_c

    :cond_19
    move v1, v4

    .line 1277
    goto :goto_f
.end method

.method public setRdsGroupOptions(IIZ)Z
    .registers 8
    .parameter "enRdsGrpsMask"
    .parameter "rdsBuffSize"
    .parameter "enRdsChangeFilter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1461
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v1, v3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 1463
    .local v0, re:I
    if-eqz v0, :cond_c

    move v1, v2

    .line 1471
    :goto_b
    return v1

    .line 1466
    :cond_c
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/fmradio/FmRxRdsData;->rdsGrpOptions(IIZ)I

    move-result v0

    .line 1468
    if-nez v0, :cond_16

    move v1, v3

    .line 1469
    goto :goto_b

    :cond_16
    move v1, v2

    .line 1471
    goto :goto_b
.end method

.method public setSignalThreshold(I)Z
    .registers 8
    .parameter "threshold"

    .prologue
    .line 1002
    const/4 v0, 0x1

    .line 1005
    .local v0, bStatus:Z
    const/4 v3, 0x0

    .line 1007
    .local v3, rssiLev:I
    packed-switch p1, :pswitch_data_24

    .line 1023
    const/4 v0, 0x0

    move v1, v0

    .line 1035
    .end local v0           #bStatus:Z
    .local v1, bStatus:I
    :goto_7
    return v1

    .line 1010
    .end local v1           #bStatus:I
    .restart local v0       #bStatus:Z
    :pswitch_8
    const/16 v3, -0x69

    .line 1028
    :goto_a
    if-eqz v0, :cond_18

    .line 1029
    sget v4, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    const v5, 0x8000008

    invoke-static {v4, v5, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .line 1031
    .local v2, re:I
    if-eqz v2, :cond_18

    .line 1032
    const/4 v0, 0x0

    .end local v2           #re:I
    :cond_18
    move v1, v0

    .line 1035
    .restart local v1       #bStatus:I
    goto :goto_7

    .line 1013
    .end local v1           #bStatus:I
    :pswitch_1a
    const/16 v3, -0x64

    .line 1014
    goto :goto_a

    .line 1016
    :pswitch_1d
    const/16 v3, -0x60

    .line 1017
    goto :goto_a

    .line 1019
    :pswitch_20
    const/16 v3, -0x5a

    .line 1020
    goto :goto_a

    .line 1007
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public setStereoMode(Z)Z
    .registers 5
    .parameter "stereoEnable"

    .prologue
    .line 968
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmReceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxControls;->stereoControl(IZ)I

    move-result v0

    .line 970
    .local v0, re:I
    if-nez v0, :cond_c

    .line 971
    const/4 v1, 0x1

    .line 972
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public unregisterClient()Z
    .registers 2

    .prologue
    .line 359
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->unregisterClient()Z

    move-result v0

    .line 362
    .local v0, status:Z
    return v0
.end method
