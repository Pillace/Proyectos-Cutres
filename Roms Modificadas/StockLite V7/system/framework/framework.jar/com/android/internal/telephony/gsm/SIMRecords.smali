.class public final Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_DATA_MASK:I = 0xf0

.field static final CFF_DATA_RESET:I = 0xf

.field static final CFF_DATA_SHIFT:I = 0x4

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final DBG:Z = true

.field private static EONS_DISABLED:I = 0x0

.field private static EONS_NOT_INITIALIZED:I = 0x0

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x23

.field private static final EVENT_GET_GID1_DONE:I = 0x2b

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_WHEN_LOCKED_DONE:I = 0x2a

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_OPL_DONE:I = 0x24

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SMSC_DONE:I = 0x28

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SPN_SHORT_CPHS_DONE:I = 0x22

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SIM_LOCKED_OR_ABSENT:I = 0x29

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_DEVICE_READY:I = 0x27

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final KEY_ICCID:Ljava/lang/String; = "key_iccid"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static ONLY_PNN_ENABLED:I = 0x0

.field private static PNN_OPL_ENABLED:I = 0x0

.field private static final SECURED_LOG:Z = true

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field private static final SST_CFIS_BIT:I = 0x4

.field private static final SST_CFIS_BYTE:I = 0xd

.field private static final SST_CHV1_BIT:I = 0x0

.field private static final SST_CHV1_BYTE:I = 0x0

.field private static final SST_EONS_BYTE:I = 0xc

.field private static final SST_FDN_BIT:I = 0x4

.field private static final SST_FDN_BYTE:I = 0x0

.field private static final SST_MBDN_BIT:I = 0x0

.field private static final SST_MBDN_BYTE:I = 0xd

.field private static final SST_MSISDN_BIT:I = 0x0

.field private static final SST_MSISDN_BYTE:I = 0x2

.field private static final SST_MWIS_BIT:I = 0x2

.field private static final SST_MWIS_BYTE:I = 0xd

.field private static final SST_OPL_BIT:I = 0x6

.field private static final SST_PNN_BIT:I = 0x4

.field private static final SST_SMS_BIT:I = 0x6

.field private static final SST_SMS_BYTE:I = 0x0

.field private static final SST_SPN_BIT:I = 0x0

.field private static final SST_SPN_BYTE:I = 0x4

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final UST_CFIS_BIT:I = 0x0

.field private static final UST_CFIS_BYTE:I = 0x6

.field private static final UST_EONS_BYTE:I = 0x5

.field private static final UST_FDN_BIT:I = 0x1

.field private static final UST_FDN_BYTE:I = 0x0

.field private static final UST_MBDN_BIT:I = 0x6

.field private static final UST_MBDN_BYTE:I = 0x5

.field private static final UST_MSISDN_BIT:I = 0x4

.field private static final UST_MSISDN_BYTE:I = 0x2

.field private static final UST_MWIS_BIT:I = 0x7

.field private static final UST_MWIS_BYTE:I = 0x5

.field private static final UST_OPL_BIT:I = 0x5

.field private static final UST_PNN_BIT:I = 0x4

.field private static final UST_SMS_BIT:I = 0x1

.field private static final UST_SMS_BYTE:I = 0x1

.field private static final UST_SPN_BIT:I = 0x2

.field private static final UST_SPN_BYTE:I = 0x2

.field static final propNameChangedICC:Ljava/lang/String; = "ril.isIccChanged"


# instance fields
.field IsOPLExist:Z

.field IsOnsExist:Z

.field IsPNNExist:Z

.field NV_cfflag_video:Z

.field NV_cfflag_voice:Z

.field OPL_INDEX:[I

.field OPL_LAC1:[I

.field OPL_LAC2:[I

.field OPL_MCCMNC:[Ljava/lang/String;

.field OPL_count:I

.field PNN_Value:[Ljava/lang/String;

.field cspPlmn:I

.field delayReadIMSI:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field fImsiDone:Z

.field gid1:Ljava/lang/String;

.field iccType:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field isAvailableCFIS:Z

.field isAvailableCHV1:Z

.field isAvailableFDN:Z

.field isAvailableMBDN:Z

.field isAvailableMSISDN:Z

.field isAvailableMWIS:Z

.field isAvailableSMS:Z

.field isAvailableSPN:Z

.field isEnabledCSP:Z

.field isEnabledOPL:Z

.field isEnabledPNN:Z

.field private mCphsInfo:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field spnDisplayRuleOverride:I

.field spnOverride:Ljava/lang/String;

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

.field spn_cphs:Ljava/lang/String;

.field videocallForwardingEnabled:Z

.field voicecallForwardingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 298
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_NOT_INITIALIZED:I

    .line 299
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    .line 300
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    .line 301
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 7
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 305
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->fImsiDone:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 129
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 130
    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    .line 132
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 133
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 134
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 135
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 140
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 142
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 144
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    .line 147
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->gid1:Ljava/lang/String;

    .line 150
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    .line 153
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledCSP:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    .line 157
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->delayReadIMSI:Z

    .line 307
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 309
    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 310
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 312
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 315
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 318
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 319
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x27

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x29

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 331
    return-void
.end method

.method private checkCFISavailable([B)V
    .registers 8
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const-string v4, "GSM"

    .line 1159
    const-string v1, "GSM"

    const-string v1, "Enter checkCFIS"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1164
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[SST_CFIS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/16 v1, 0xd

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z
    :try_end_40
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_40} :catch_90

    .line 1184
    :goto_40
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableCFIS is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :goto_5a
    return-void

    .line 1167
    :cond_5b
    :try_start_5b
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1169
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[UST_MWIS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/4 v1, 0x6

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z
    :try_end_8f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5b .. :try_end_8f} :catch_90

    goto :goto_40

    .line 1177
    :catch_90
    move-exception v1

    move-object v0, v1

    .line 1179
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    goto :goto_5a

    .line 1174
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9c
    :try_start_9c
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9c .. :try_end_a3} :catch_90

    goto :goto_5a
.end method

.method private checkCHV1available([B)V
    .registers 8
    .parameter "table"

    .prologue
    const/4 v5, 0x1

    const-string v4, "GSM"

    .line 954
    const-string v1, "GSM"

    const-string v1, "Enter  checkCHV1available"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 959
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[SST_CHV1_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z
    :try_end_3e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_3e} :catch_6e

    .line 979
    :goto_3e
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableCHV1 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :goto_58
    return-void

    .line 962
    :cond_59
    :try_start_59
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 964
    const-string v1, "GSM"

    const-string v2, "3G - CHV1 available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z
    :try_end_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_59 .. :try_end_6d} :catch_6e

    goto :goto_3e

    .line 972
    :catch_6e
    move-exception v1

    move-object v0, v1

    .line 974
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCHV1:Z

    goto :goto_58

    .line 969
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_7a
    :try_start_7a
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7a .. :try_end_81} :catch_6e

    goto :goto_58
.end method

.method private checkEONSavailable([B)V
    .registers 8
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const-string v4, "GSM"

    .line 889
    const-string v1, "GSM"

    const-string v1, "Enter checkEONS"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 894
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[SST_EONS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/16 v1, 0xc

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 896
    const/16 v1, 0xc

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z
    :try_end_4b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_4b} :catch_bf

    .line 917
    :goto_4b
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabledPNN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabledOPL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :goto_7f
    return-void

    .line 898
    :cond_80
    :try_start_80
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 900
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[UST_EONS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 902
    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z
    :try_end_be
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_80 .. :try_end_be} :catch_bf

    goto :goto_4b

    .line 909
    :catch_bf
    move-exception v1

    move-object v0, v1

    .line 911
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    .line 913
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    goto :goto_7f

    .line 906
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_cd
    :try_start_cd
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_cd .. :try_end_d4} :catch_bf

    goto :goto_7f
.end method

.method private checkFDNavailable([B)V
    .registers 8
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const-string v4, "GSM"

    .line 923
    const-string v1, "GSM"

    const-string v1, "Enter  checkFDNavailable"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 928
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[SST_FDN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z
    :try_end_3e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_3e} :catch_8e

    .line 948
    :goto_3e
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableFDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :goto_58
    return-void

    .line 931
    :cond_59
    :try_start_59
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 933
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[UST_FDN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z
    :try_end_8d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_59 .. :try_end_8d} :catch_8e

    goto :goto_3e

    .line 941
    :catch_8e
    move-exception v1

    move-object v0, v1

    .line 943
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableFDN:Z

    goto :goto_58

    .line 938
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9a
    :try_start_9a
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9a .. :try_end_a1} :catch_8e

    goto :goto_58
.end method

.method private checkMBDNavailable([B)V
    .registers 10
    .parameter "table"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "GSM"

    .line 1086
    const-string v2, "GSM"

    const-string v2, "Enter  checkMBDNavailable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, code:Ljava/lang/String;
    :try_start_12
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 1094
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "table[SST_MBDN_BYTE]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd

    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/16 v2, 0xd

    aget-byte v2, p1, v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z
    :try_end_48
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12 .. :try_end_48} :catch_d4

    .line 1114
    :goto_48
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableMBDN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    if-eqz v0, :cond_8c

    const-string v2, "XFA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v6, :cond_94

    const-string v2, "XFM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v6, :cond_94

    const-string v2, "XFC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v6, :cond_94

    const-string v2, "XFE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v6, :cond_94

    const-string v2, "XFV"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v6, :cond_94

    :cond_8c
    const-string v2, "TMH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_9d

    .line 1122
    :cond_94
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    .line 1123
    const-string v2, "GSM"

    const-string v2, "[MTN SIM] isAvailableMBDN is false OR [TMH operator] isAvailableMBDN is false"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_9d
    :goto_9d
    return-void

    .line 1097
    :cond_9e
    :try_start_9e
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 1099
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "table[UST_MBDN_BYTE]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z
    :try_end_d2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9e .. :try_end_d2} :catch_d4

    goto/16 :goto_48

    .line 1108
    :catch_d4
    move-exception v2

    move-object v1, v2

    .line 1109
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "GSM"

    const-string v2, "ArrayIndexOutOfBoundsException"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    goto :goto_9d

    .line 1105
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_e0
    :try_start_e0
    const-string v2, "GSM"

    const-string v3, "ICCType is Unknown"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e0 .. :try_end_e7} :catch_d4

    goto :goto_9d
.end method

.method private checkMSISDNavailable([B)V
    .registers 10
    .parameter "table"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v7, "1"

    const-string v5, "GSM"

    .line 1017
    const-string v1, "GSM"

    const-string v1, "Enter  checkMSISDNavailable"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1022
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[SST_MSISDN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z
    :try_end_41
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_41} :catch_bd

    .line 1042
    :goto_41
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    if-ne v1, v6, :cond_6d

    .line 1043
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    if-eqz v3, :cond_d1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    const/16 v3, 0x6f4a

    :goto_5e
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1045
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1048
    :cond_6d
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableMSISDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :goto_87
    return-void

    .line 1025
    :cond_88
    :try_start_88
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1027
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[UST_SPN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z
    :try_end_bc
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_88 .. :try_end_bc} :catch_bd

    goto :goto_41

    .line 1036
    :catch_bd
    move-exception v1

    move-object v0, v1

    .line 1037
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMSISDN:Z

    goto :goto_87

    .line 1033
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_c9
    :try_start_c9
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c9 .. :try_end_d0} :catch_bd

    goto :goto_87

    .line 1043
    :cond_d1
    const/16 v3, 0x6f4e

    goto :goto_5e
.end method

.method private checkMWISavailable([B)V
    .registers 7
    .parameter "table"

    .prologue
    const-string v4, "GSM"

    .line 1129
    const-string v1, "GSM"

    const-string v1, "Enter checkMWIS"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :try_start_9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1134
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[SST_MWIS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/16 v1, 0xd

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z
    :try_end_3f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_3f} :catch_8f

    .line 1154
    :goto_3f
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableMWIS is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :goto_59
    return-void

    .line 1137
    :cond_5a
    :try_start_5a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1139
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[UST_MWIS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z
    :try_end_8e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5a .. :try_end_8e} :catch_8f

    goto :goto_3f

    .line 1147
    :catch_8f
    move-exception v1

    move-object v0, v1

    .line 1149
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    goto :goto_59

    .line 1144
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9c
    :try_start_9c
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9c .. :try_end_a3} :catch_8f

    goto :goto_59
.end method

.method private checkSMSavailable([B)V
    .registers 8
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const-string v4, "GSM"

    .line 1054
    const-string v1, "GSM"

    const-string v1, "Enter  checkSMSavailable"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1059
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[SST_SMS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z
    :try_end_3e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_3e} :catch_8e

    .line 1079
    :goto_3e
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSMS is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :goto_58
    return-void

    .line 1062
    :cond_59
    :try_start_59
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1064
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[UST_SMS_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z
    :try_end_8d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_59 .. :try_end_8d} :catch_8e

    goto :goto_3e

    .line 1073
    :catch_8e
    move-exception v1

    move-object v0, v1

    .line 1074
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSMS:Z

    goto :goto_58

    .line 1070
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9a
    :try_start_9a
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9a .. :try_end_a1} :catch_8e

    goto :goto_58
.end method

.method private checkSPNavailable([B)V
    .registers 8
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const-string v4, "GSM"

    .line 985
    const-string v1, "GSM"

    const-string v1, "Enter  checkSPNavailable"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 990
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[SST_SPN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z
    :try_end_3e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_3e} :catch_8e

    .line 1011
    :goto_3e
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSPN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :goto_58
    return-void

    .line 993
    :cond_59
    :try_start_59
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 995
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "table[UST_SPN_BYTE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z
    :try_end_8d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_59 .. :try_end_8d} :catch_8e

    goto :goto_3e

    .line 1004
    :catch_8e
    move-exception v1

    move-object v0, v1

    .line 1006
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "GSM"

    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    goto :goto_58

    .line 1001
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9a
    :try_start_9a
    const-string v1, "GSM"

    const-string v2, "ICCType is Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9a .. :try_end_a1} :catch_8e

    goto :goto_58
.end method

.method private checkSimChanged()V
    .registers 9

    .prologue
    const-string v7, "GSM"

    const-string v6, "key_iccid"

    .line 2046
    const-string v4, "GSM"

    const-string v4, "checkSimChanged enter"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2051
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "key_iccid"

    const-string v4, ""

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2053
    .local v2, old:Ljava/lang/String;
    if-nez v2, :cond_2e

    .line 2055
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2057
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_iccid"

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2058
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2076
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2d
    :goto_2d
    return-void

    .line 2063
    :cond_2e
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old iccid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  current is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    const/4 v4, 0x1

    move v1, v4

    .line 2067
    .local v1, isSimChanged:Z
    :goto_5c
    if-eqz v1, :cond_2d

    .line 2068
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2070
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "key_iccid"

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2071
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2073
    const-string/jumbo v4, "ril.isIccChanged"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 2065
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isSimChanged:Z
    :cond_75
    const/4 v4, 0x0

    move v1, v4

    goto :goto_5c
.end method

.method private fetchSimRecords()V
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v7, "persist.cust.tel.adapt"

    const-string v5, "GSM"

    .line 2445
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 2446
    const-string/jumbo v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    .line 2447
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 2449
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords:fetchSimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2468
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2470
    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2471
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2473
    const/16 v1, 0x6f3e

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2474
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2479
    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2480
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2482
    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2483
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2486
    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2487
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2494
    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2497
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2501
    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2502
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2503
    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2504
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2507
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 2509
    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2510
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2512
    const/16 v1, 0x6fc6

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2513
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2515
    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2516
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2518
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EONS: Properties persist.cust.tel.adapt is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "persist.cust.tel.adapt"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", persist.cust.tel.eons is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "persist.cust.tel.eons"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", persist.cust.tel.efcsp.plmn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "persist.cust.tel.efcsp.plmn"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const-string v1, "Try to read ONS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2527
    const/16 v1, 0x6f14

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2529
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2534
    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2535
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2537
    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2538
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2540
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-nez v1, :cond_197

    .line 2541
    const-string v1, "GSM"

    const-string v1, "imsi retrying started."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->fImsiDone:Z

    .line 2543
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2544
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2556
    :cond_197
    const-string/jumbo v1, "persist.cust.tel.adapt"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1a9

    const-string/jumbo v1, "persist.cust.tel.efcsp.plmn"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 2558
    :cond_1a9
    const/16 v1, 0x6f15

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2559
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2580
    :cond_1ba
    return-void
.end method

.method private findTheEnabledServiceInSST(BI)Z
    .registers 6
    .parameter "b"
    .parameter "position"

    .prologue
    const-string v2, "GSM"

    .line 859
    const-string v0, "GSM"

    const-string v0, "findTheEnabledServiceInSST"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    shr-int v0, p1, p2

    int-to-byte p1, v0

    .line 864
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte After = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_64

    .line 867
    const/4 v0, 0x1

    .line 869
    :goto_63
    return v0

    :cond_64
    const/4 v0, 0x0

    goto :goto_63
.end method

.method private findTheEnabledServiceInUST(BI)Z
    .registers 7
    .parameter "b"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const-string v2, "GSM"

    .line 874
    const-string v0, "GSM"

    const-string v0, "findTheEnabledServiceInUST"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    shr-int v0, p1, p2

    int-to-byte p1, v0

    .line 879
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte After = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_64

    move v0, v3

    .line 884
    :goto_63
    return v0

    :cond_64
    const/4 v0, 0x0

    goto :goto_63
.end method

.method private getRegOperatorPlmnDigits(Ljava/lang/String;)[I
    .registers 7
    .parameter "regOperator"

    .prologue
    .line 3008
    const/4 v3, 0x6

    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    .line 3009
    .local v0, bcchPlmn:[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3011
    .local v1, bcchPlmnLength:I
    const/4 v2, 0x0

    .local v2, ind:I
    :goto_b
    if-ge v2, v1, :cond_19

    .line 3012
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    sub-int/2addr v3, v4

    aput v3, v0, v2

    .line 3011
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3015
    :cond_19
    return-object v0

    .line 3008
    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "spnOverrideString"

    .prologue
    .line 3067
    if-nez p1, :cond_4

    .line 3068
    const/4 v10, 0x0

    .line 3095
    :goto_3
    return-object v10

    .line 3074
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 3075
    .local v2, curLoc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 3076
    .local v5, l:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3078
    .local v1, c:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3079
    .local v9, spnOverrides:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_19
    if-ge v4, v6, :cond_51

    aget-object v8, v0, v4

    .line 3080
    .local v8, so:Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3082
    .local v7, s:[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2b

    .line 3084
    const/4 v10, 0x0

    aget-object v10, v7, v10

    goto :goto_3

    .line 3087
    :cond_2b
    const/4 v10, 0x0

    aget-object v10, v7, v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3088
    .local v3, entryLoc:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 3089
    array-length v10, v3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4a

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 3090
    :cond_4a
    const/4 v10, 0x1

    aget-object v10, v7, v10

    goto :goto_3

    .line 3079
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3095
    .end local v3           #entryLoc:[Ljava/lang/String;
    .end local v7           #s:[Ljava/lang/String;
    .end local v8           #so:Ljava/lang/String;
    :cond_51
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .registers 11
    .parameter "start"
    .parameter "ar"

    .prologue
    const/4 v7, 0x1

    const/16 v5, 0xc

    const/4 v4, 0x0

    const-string v6, "gsm.sim.operator.alpha"

    .line 2758
    if-eqz p1, :cond_c

    .line 2759
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2762
    :cond_c
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_15c

    .line 2831
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2833
    .end local p0
    :goto_1d
    return-void

    .line 2764
    .restart local p0
    :pswitch_1e
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2766
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f46

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2768
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2770
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_1d

    .line 2773
    :pswitch_3b
    if-eqz p2, :cond_92

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_92

    .line 2774
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 2775
    .local v1, data:[B
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 2776
    array-length v2, v1

    sub-int/2addr v2, v7

    invoke-static {v1, v7, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spnDisplayCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2780
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2783
    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_1d

    .line 2785
    .end local v1           #data:[B
    .restart local p0
    :cond_92
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f14

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2787
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2789
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2793
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_1d

    .line 2797
    :pswitch_b0
    if-eqz p2, :cond_f5

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f5

    .line 2798
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 2799
    .restart local v1       #data:[B
    array-length v2, v1

    invoke-static {v1, v4, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2803
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2806
    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_1d

    .line 2808
    .end local v1           #data:[B
    .restart local p0
    :cond_f5
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f18

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2810
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2812
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1d

    .line 2816
    :pswitch_110
    if-eqz p2, :cond_155

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_155

    .line 2817
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 2818
    .restart local v1       #data:[B
    array-length v2, v1

    invoke-static {v1, v4, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2822
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 2828
    .end local v1           #data:[B
    :goto_14f
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1d

    .line 2825
    :cond_155
    const-string v2, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_14f

    .line 2762
    nop

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_3b
        :pswitch_b0
        :pswitch_110
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .registers 9
    .parameter "data"

    .prologue
    const-string v6, "GSM"

    .line 3038
    const/16 v2, 0xd

    .line 3041
    .local v2, usedCspGroups:I
    const/16 v3, -0x40

    .line 3042
    .local v3, valueAddedServicesGroup:B
    const/4 v0, 0x0

    .line 3044
    .local v0, i:I
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_50

    .line 3045
    mul-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    if-ne v4, v3, :cond_4d

    .line 3046
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSP: Sevice Group 0xC0, value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_3e

    .line 3050
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    .line 3063
    :goto_3d
    return-void

    .line 3052
    :cond_3e
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    .line 3055
    const/16 v4, 0x12c

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3056
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_3d

    .line 3044
    .end local v1           #msg:Landroid/os/Message;
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3062
    :cond_50
    const-string v4, "GSM"

    const-string v4, "Value Added Service Group (0xC0), not found in EF CSP"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private handleFileUpdate(I)V
    .registers 7
    .parameter "efid"

    .prologue
    const/4 v4, 0x1

    const-string v1, "GSM"

    .line 2080
    sparse-switch p1, :sswitch_data_e8

    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2132
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2135
    :goto_e
    return-void

    .line 2082
    :sswitch_f
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2083
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_e

    .line 2087
    :sswitch_2b
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2088
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_e

    .line 2092
    :sswitch_46
    const-string v0, "GSM"

    const-string v0, "EONS: SIM Refresh called for EF_OPL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateOplCache()V

    goto :goto_e

    .line 2096
    :sswitch_51
    const-string v0, "GSM"

    const-string v0, "EONS: SIM Refresh called for EF_PNN"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updatePnnCache()V

    goto :goto_e

    .line 2100
    :sswitch_5c
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2101
    const-string v0, "GSM"

    const-string v0, "EONS: SIM Refresh called for EF_SST"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_e

    .line 2106
    :sswitch_7b
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2107
    const-string v0, "GSM"

    const-string v0, "CSP: SIM Refresh called for EF_CSP_CPHS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f15

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_e

    .line 2112
    :sswitch_9b
    const-string v0, "GSM"

    const-string v0, "SIM Refresh called for EF_SPN"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_e

    .line 2116
    :sswitch_a8
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2117
    const-string v0, "GSM"

    const-string v0, "SIM Refresh called for EF_CFIS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_e

    .line 2122
    :sswitch_c8
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2123
    const-string v0, "GSM"

    const-string v0, "SIM Refresh called for EF_CFF_CPHS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_e

    .line 2080
    :sswitch_data_e8
    .sparse-switch
        0x6f13 -> :sswitch_c8
        0x6f15 -> :sswitch_7b
        0x6f17 -> :sswitch_2b
        0x6f38 -> :sswitch_5c
        0x6f46 -> :sswitch_9b
        0x6fc5 -> :sswitch_51
        0x6fc6 -> :sswitch_46
        0x6fc7 -> :sswitch_f
        0x6fcb -> :sswitch_a8
    .end sparse-switch
.end method

.method private handleOPL(Ljava/util/ArrayList;)V
    .registers 16
    .parameter "messages"

    .prologue
    const/4 v13, 0x6

    const/16 v11, 0x10

    const/4 v9, 0x0

    const-string v12, "]="

    const-string v10, "GSM"

    .line 2285
    const-string v3, "ffffffffffffffff"

    .line 2287
    .local v3, fdata:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2289
    .local v1, count:I
    iput v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    .line 2291
    new-array v6, v1, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    .line 2292
    new-array v6, v1, [I

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    .line 2293
    new-array v6, v1, [I

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    .line 2294
    new-array v6, v1, [I

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    .line 2296
    const/4 v4, 0x0

    .local v4, i:I
    :goto_21
    if-ge v4, v1, :cond_149

    .line 2298
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 2300
    .local v2, data:[B
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 2303
    .local v5, sdata:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_f4

    .line 2304
    const-string v6, "GSM"

    const-string v6, "[PNN] [handleOPL] EF_OPL contains Null"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v4

    .line 2307
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aput v9, v6, v4

    .line 2308
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aput v9, v6, v4

    .line 2309
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aput v9, v6, v4

    .line 2330
    :goto_4f
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [handleOPL]Load OPL_MCCMNC["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [handleOPL]Load OPL_LAC1["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [handleOPL]Load OPL_LAC2["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [handleOPL]Load OPL_INDEX["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    .line 2341
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    .line 2296
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_21

    .line 2311
    :cond_f4
    const-string v6, "GSM"

    const-string v6, "[PNN] [handleOPL] EF_OPL contains Data(Not Null)"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    invoke-virtual {v5, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->MccMncConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 2318
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v6, v6, v4

    if-eqz v6, :cond_13b

    .line 2319
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    const/16 v7, 0xa

    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v4

    .line 2320
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    const/16 v7, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v4

    .line 2321
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    const/16 v7, 0xe

    invoke-virtual {v5, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v4

    goto/16 :goto_4f

    .line 2324
    :cond_13b
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aput v9, v6, v4

    .line 2325
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aput v9, v6, v4

    .line 2326
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aput v9, v6, v4

    goto/16 :goto_4f

    .line 2345
    .end local v2           #data:[B
    .end local v5           #sdata:Ljava/lang/String;
    :cond_149
    return-void
.end method

.method private handlePNN(Ljava/util/ArrayList;)V
    .registers 14
    .parameter "messages"

    .prologue
    const/4 v10, 0x0

    const-string v11, "GSM"

    .line 2247
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2249
    .local v1, count:I
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    .line 2251
    const-string v3, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    .line 2253
    .local v3, fdata:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_e
    if-ge v4, v1, :cond_85

    .line 2254
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 2256
    .local v2, data:[B
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 2258
    .local v5, sdata:Ljava/lang/String;
    if-eqz v2, :cond_7d

    .line 2259
    new-instance v6, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v7, v2

    invoke-direct {v6, v2, v10, v7}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2261
    .local v6, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 2262
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    const/16 v8, 0x43

    if-ne v7, v8, :cond_3f

    .line 2263
    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6b

    .line 2264
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v7, v4

    .line 2272
    :cond_3f
    :goto_3f
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PNN] [handlePnns]Load PNN Value["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    .line 2253
    .end local v6           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 2266
    .restart local v6       #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_6b
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v8, v10, v9}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_3f

    .line 2278
    .end local v6           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_7d
    const-string v7, "GSM"

    const-string v7, "[PNN] [handlePNNs] data is  Null!!!"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 2282
    .end local v2           #data:[B
    .end local v5           #sdata:Ljava/lang/String;
    :cond_85
    return-void
.end method

.method private handleSimRefresh([I)V
    .registers 4
    .parameter "result"

    .prologue
    .line 2138
    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_b

    .line 2139
    :cond_5
    const-string v1, "handleSimRefresh without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2179
    :goto_a
    return-void

    .line 2143
    :cond_b
    const/4 v1, 0x0

    aget v1, p1, v1

    packed-switch v1, :pswitch_data_38

    .line 2176
    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 2145
    :pswitch_17
    const-string v1, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2147
    const/4 v1, 0x1

    aget v0, p1, v1

    .line 2148
    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_a

    .line 2151
    .end local v0           #efid:I
    :pswitch_23
    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2153
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2160
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_a

    .line 2163
    :pswitch_31
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 2143
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_17
        :pswitch_23
        :pswitch_31
    .end packed-switch
.end method

.method private handleSms([B)V
    .registers 10
    .parameter "ba"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2182
    aget-byte v3, p1, v6

    if-eqz v3, :cond_21

    .line 2183
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_21
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3d

    .line 2188
    array-length v1, p1

    .line 2192
    .local v1, n:I
    sub-int v3, v1, v7

    new-array v2, v3, [B

    .line 2193
    .local v2, pdu:[B
    sub-int v3, v1, v7

    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2194
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 2196
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2198
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_3d
    return-void
.end method

.method private handleSmsServiceCenter(Ljava/lang/String;)V
    .registers 3
    .parameter "smsc"

    .prologue
    .line 2243
    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchSmsServiceCenter(Ljava/lang/String;)V

    .line 2244
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .registers 14
    .parameter "messages"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2204
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v2, :cond_5d

    .line 2205
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .line 2207
    .local v1, ba:[B
    aget-byte v7, v1, v10

    if-eqz v7, :cond_3c

    .line 2208
    const-string v7, "ENF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :cond_3c
    aget-byte v7, v1, v10

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5a

    .line 2214
    array-length v5, v1

    .line 2218
    .local v5, n:I
    sub-int v7, v5, v11

    new-array v6, v7, [B

    .line 2219
    .local v6, pdu:[B
    sub-int v7, v5, v11

    invoke-static {v1, v11, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2220
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v4

    .line 2222
    .local v4, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v7, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2227
    aput-byte v11, v1, v10

    .line 2204
    .end local v4           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v5           #n:I
    .end local v6           #pdu:[B
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2235
    .end local v1           #ba:[B
    :cond_5d
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2928
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v0, :cond_8

    move v0, v2

    .line 2929
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x30

    if-ne v0, v1, :cond_14

    move v0, v3

    goto :goto_7

    :cond_14
    move v0, v2

    goto :goto_7
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .registers 7
    .parameter "plmn"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2690
    if-nez p1, :cond_6

    move v2, v3

    .line 2703
    :goto_5
    return v2

    .line 2692
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v4

    .line 2693
    goto :goto_5

    .line 2696
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v2, :cond_30

    .line 2697
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2698
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v4

    .line 2699
    goto :goto_5

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #spdiNet:Ljava/lang/String;
    :cond_30
    move v2, v3

    .line 2703
    goto :goto_5
.end method

.method private isOnMatchingPlmnForSENA(Ljava/lang/String;)Z
    .registers 8
    .parameter "plmn"

    .prologue
    const/4 v5, 0x0

    .line 2716
    const-string v2, "24007"

    .line 2717
    .local v2, plmnTele2:Ljava/lang/String;
    const-string v3, "24001"

    .line 2718
    .local v3, plmnTelia:Ljava/lang/String;
    const-string v1, "24005"

    .line 2720
    .local v1, plmnSweden3G:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2722
    .local v0, operatorSIM:Ljava/lang/String;
    if-nez p1, :cond_f

    move v4, v5

    .line 2728
    :goto_e
    return v4

    .line 2724
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2725
    :cond_21
    const/4 v4, 0x1

    goto :goto_e

    :cond_23
    move v4, v5

    .line 2728
    goto :goto_e
.end method

.method private isSIMexist()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2836
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    move v0, v2

    .line 2849
    .end local p0
    :goto_c
    return v0

    .line 2840
    .restart local p0
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v2

    .line 2842
    goto :goto_c

    .line 2844
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_39

    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_39

    move v0, v2

    .line 2847
    goto :goto_c

    .line 2849
    :cond_39
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private onSimReady()V
    .registers 4

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 2438
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2442
    return-void
.end method

.method private parseEfSpdi([B)V
    .registers 10
    .parameter "data"

    .prologue
    const-string v7, "GSM"

    .line 2860
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-direct {v4, p1, v5, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2862
    .local v4, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 2863
    .local v2, plmnEntries:[B
    const/4 v3, 0x2

    .line 2871
    .local v3, tagSpdiPlmnListOffset:B
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/SimTlv;->incrementCurOffset(B)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 2872
    const-string v5, "GSM"

    const-string v5, "SPDI: invalid call to incrementCurOffset."

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_18
    :goto_18
    return-void

    .line 2877
    :cond_19
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    :cond_1c
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2878
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_19

    .line 2879
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 2884
    :cond_2e
    if-nez v2, :cond_38

    .line 2885
    const-string v5, "GSM"

    const-string v5, "SPDI: plmnEntries is null"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2889
    :cond_38
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 2895
    const/4 v0, 0x0

    .local v0, i:I
    :goto_43
    add-int/lit8 v5, v0, 0x2

    array-length v6, v2

    if-ge v5, v6, :cond_18

    .line 2899
    const/4 v5, 0x3

    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2917
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_6f

    .line 2918
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2919
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2895
    :cond_6f
    add-int/lit8 v0, v0, 0x3

    goto :goto_43
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .registers 4
    .parameter "carrier"

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2393
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2395
    :cond_14
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccRefresh(Landroid/os/Handler;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 343
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 346
    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .parameter "MCCMNC"
    .parameter "LAC"

    .prologue
    const/4 v8, 0x0

    const-string v5, "]=["

    const-string v9, "GSM"

    const-string v5, "LOG_TAG"

    const-string v7, "]"

    .line 410
    const/4 v0, 0x0

    .line 413
    .local v0, EonsName:Ljava/lang/String;
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PNN] [getAllEonsNames] mccmnc=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], lac=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :try_start_32
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16f

    const/4 v5, 0x1

    move v4, v5

    .line 418
    .local v4, isVPLMN:Z
    :goto_3e
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] getSIMOperatorNumeric()=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], isVPLMN=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] isPnnExist=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], isEnabledPNN=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] IsOPLExist=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], isEnabledOPL=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] IsOnsExist=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] PNN_Value=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsPNNExist:Z

    if-eqz v5, :cond_13b

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledPNN:Z

    if-eqz v5, :cond_13b

    .line 426
    if-nez v4, :cond_172

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    if-eqz v5, :cond_118

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    if-nez v5, :cond_172

    .line 427
    :cond_118
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 428
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] eonsName=PNN_Value[0]=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_13b
    :goto_13b
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    if-eqz v5, :cond_165

    if-nez v0, :cond_165

    .line 457
    if-nez v4, :cond_2cf

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 460
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] using eonsName=spn_cphs=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_165
    :goto_165
    if-eqz v0, :cond_16e

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_16e

    .line 469
    const/4 v0, 0x0

    .line 478
    .end local v4           #isVPLMN:Z
    :cond_16e
    :goto_16e
    return-object v0

    :cond_16f
    move v4, v8

    .line 416
    goto/16 :goto_3e

    .line 430
    .restart local v4       #isVPLMN:Z
    :cond_172
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOPLExist:Z

    if-eqz v5, :cond_13b

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isEnabledOPL:Z

    if-eqz v5, :cond_13b

    .line 431
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17b
    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_count:I

    if-ge v3, v5, :cond_13b

    .line 433
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] OPL_MCCMNC["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] OPL_LAC1["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] OPL_LAC2["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] OPL_INDEX["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_2cb

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v6, v6, v3

    const/16 v7, 0x64

    const/16 v8, 0x2e

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, expr:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2cb

    const/4 v5, -0x1

    if-eq p2, v5, :cond_26f

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC1:[I

    aget v5, v5, v3

    if-lt p2, v5, :cond_2cb

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_LAC2:[I

    aget v5, v5, v3

    if-gt p2, v5, :cond_2cb

    .line 442
    :cond_26f
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v5, v5, v3

    if-eqz v5, :cond_2ab

    .line 443
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_Value:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->OPL_INDEX:[I

    aget v6, v6, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget-object v0, v5, v6

    .line 444
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] EonsName found=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29d
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_29d} :catch_29f

    goto/16 :goto_13b

    .line 473
    .end local v2           #expr:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #isVPLMN:Z
    :catch_29f
    move-exception v5

    move-object v1, v5

    .line 474
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v5, "[PNN] [getAllEonsNames] Got exception while searching for EONS name, falling back to null"

    invoke-static {v9, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    const/4 v0, 0x0

    goto/16 :goto_16e

    .line 446
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v2       #expr:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #isVPLMN:Z
    :cond_2ab
    :try_start_2ab
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PNN] [getAllEonsNames] EonsName found but OPL_INDEX["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c9
    .catch Ljava/lang/RuntimeException; {:try_start_2ab .. :try_end_2c9} :catch_29f

    goto/16 :goto_13b

    .line 431
    .end local v2           #expr:Ljava/lang/String;
    :cond_2cb
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17b

    .line 463
    .end local v3           #i:I
    :cond_2cf
    const/4 v0, 0x0

    goto/16 :goto_165
.end method

.method public getCspPlmn()I
    .registers 2

    .prologue
    .line 3027
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    return v0
.end method

.method protected getDisplayRule(Ljava/lang/String;)I
    .registers 9
    .parameter "plmn"

    .prologue
    const-string v6, "GSM"

    .line 2596
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getDisplayRule] spnDisplayCondition=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] binary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getDisplayRule] spn=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], plmn=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    const/4 v1, 0x0

    .line 2601
    .local v1, rule:I
    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    if-lez v4, :cond_7b

    .line 2602
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    .line 2654
    :cond_57
    :goto_57
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 2655
    .local v3, ss:Landroid/telephony/ServiceState;
    if-eqz v3, :cond_7a

    .line 2656
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 2657
    .local v0, plmnName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    .line 2668
    .local v2, spnName:Ljava/lang/String;
    const/4 v4, 0x3

    if-ne v1, v4, :cond_7a

    if-eqz v2, :cond_7a

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2669
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] spn string == plmn string, showing only plmn-pnn"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    const/4 v1, 0x2

    .line 2675
    .end local v0           #plmnName:Ljava/lang/String;
    .end local v2           #spnName:Ljava/lang/String;
    :cond_7a
    return v1

    .line 2603
    .end local v3           #ss:Landroid/telephony/ServiceState;
    :cond_7b
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableSPN:Z

    if-nez v4, :cond_88

    .line 2606
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] SPN disabled"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    const/4 v1, 0x2

    goto :goto_57

    .line 2608
    :cond_88
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-eqz v4, :cond_99

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_99

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a2

    .line 2609
    :cond_99
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] showing plmn only"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    const/4 v1, 0x2

    goto :goto_57

    .line 2613
    :cond_a2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 2614
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] plmn==spn or plmn in spdiNetworks; showing spn"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    const/4 v1, 0x1

    .line 2617
    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c3

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-eqz v4, :cond_c3

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_57

    .line 2618
    :cond_c3
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] Showing plmn (plmn bit = 1)"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    or-int/lit8 v1, v1, 0x2

    goto :goto_57

    .line 2622
    :cond_cd
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmnForSENA(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 2623
    const/4 v1, 0x1

    .line 2624
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-eqz v4, :cond_e0

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_57

    .line 2626
    :cond_e0
    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_57

    .line 2629
    :cond_e4
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] Showing plmn"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    const/4 v1, 0x2

    .line 2643
    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_57

    .line 2644
    const-string v4, "GSM"

    const-string v4, "[getDisplayRule] Showing spn (spn bit == 0)"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_57
.end method

.method getFakeHomeOn()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 3144
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3146
    .local v0, simOper:Ljava/lang/String;
    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3147
    :cond_10
    const/4 v1, 0x0

    .line 3150
    :goto_11
    return-object v1

    :cond_12
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method getFakeRoamingOn()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 3154
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3155
    .local v0, simOper:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getFakeRoamingOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGid1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->gid1:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 821
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-nez v2, :cond_11

    .line 822
    :cond_f
    const/4 v2, 0x0

    .line 854
    :goto_10
    return-object v2

    .line 828
    :cond_11
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_30c

    .line 830
    const/16 v2, 0x7a

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "405805"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, "405799"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "405025"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "405026"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "405027"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "405028"

    aput-object v3, v0, v2

    const-string v2, "405029"

    aput-object v2, v0, v5

    const/4 v2, 0x7

    const-string v3, "405030"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "405031"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "405032"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "405033"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "405034"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "405035"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "405036"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "405037"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "405038"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "405039"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "405040"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "405041"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "405042"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "405043"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "405044"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "405045"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "405046"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "405047"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "405800"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "405803"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "405804"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "405809"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "405852"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "405853"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "405846"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "405848"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "405849"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "405750"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "405751"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "405752"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "405753"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "405754"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "405755"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "405756"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "405808"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "405810"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "405811"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "405813"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "405814"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string v3, "405815"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "405816"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "405817"

    aput-object v3, v0, v2

    const/16 v2, 0x31

    const-string v3, "405801"

    aput-object v3, v0, v2

    const/16 v2, 0x32

    const-string v3, "405820"

    aput-object v3, v0, v2

    const/16 v2, 0x33

    const-string v3, "405819"

    aput-object v3, v0, v2

    const/16 v2, 0x34

    const-string v3, "405821"

    aput-object v3, v0, v2

    const/16 v2, 0x35

    const-string v3, "405925"

    aput-object v3, v0, v2

    const/16 v2, 0x36

    const-string v3, "405875"

    aput-object v3, v0, v2

    const/16 v2, 0x37

    const-string v3, "405876"

    aput-object v3, v0, v2

    const/16 v2, 0x38

    const-string v3, "405877"

    aput-object v3, v0, v2

    const/16 v2, 0x39

    const-string v3, "405879"

    aput-object v3, v0, v2

    const/16 v2, 0x3a

    const-string v3, "405818"

    aput-object v3, v0, v2

    const/16 v2, 0x3b

    const-string v3, "405878"

    aput-object v3, v0, v2

    const/16 v2, 0x3c

    const-string v3, "405927"

    aput-object v3, v0, v2

    const/16 v2, 0x3d

    const-string v3, "405928"

    aput-object v3, v0, v2

    const/16 v2, 0x3e

    const-string v3, "405929"

    aput-object v3, v0, v2

    const/16 v2, 0x3f

    const-string v3, "405926"

    aput-object v3, v0, v2

    const/16 v2, 0x40

    const-string v3, "405932"

    aput-object v3, v0, v2

    const/16 v2, 0x41

    const-string v3, "405850"

    aput-object v3, v0, v2

    const/16 v2, 0x42

    const-string v3, "405823"

    aput-object v3, v0, v2

    const/16 v2, 0x43

    const-string v3, "405824"

    aput-object v3, v0, v2

    const/16 v2, 0x44

    const-string v3, "405825"

    aput-object v3, v0, v2

    const/16 v2, 0x45

    const-string v3, "405826"

    aput-object v3, v0, v2

    const/16 v2, 0x46

    const-string v3, "405827"

    aput-object v3, v0, v2

    const/16 v2, 0x47

    const-string v3, "405828"

    aput-object v3, v0, v2

    const/16 v2, 0x48

    const-string v3, "405829"

    aput-object v3, v0, v2

    const/16 v2, 0x49

    const-string v3, "405830"

    aput-object v3, v0, v2

    const/16 v2, 0x4a

    const-string v3, "405831"

    aput-object v3, v0, v2

    const/16 v2, 0x4b

    const-string v3, "405832"

    aput-object v3, v0, v2

    const/16 v2, 0x4c

    const-string v3, "405833"

    aput-object v3, v0, v2

    const/16 v2, 0x4d

    const-string v3, "405834"

    aput-object v3, v0, v2

    const/16 v2, 0x4e

    const-string v3, "405835"

    aput-object v3, v0, v2

    const/16 v2, 0x4f

    const-string v3, "405836"

    aput-object v3, v0, v2

    const/16 v2, 0x50

    const-string v3, "405837"

    aput-object v3, v0, v2

    const/16 v2, 0x51

    const-string v3, "405838"

    aput-object v3, v0, v2

    const/16 v2, 0x52

    const-string v3, "405839"

    aput-object v3, v0, v2

    const/16 v2, 0x53

    const-string v3, "405840"

    aput-object v3, v0, v2

    const/16 v2, 0x54

    const-string v3, "405841"

    aput-object v3, v0, v2

    const/16 v2, 0x55

    const-string v3, "405842"

    aput-object v3, v0, v2

    const/16 v2, 0x56

    const-string v3, "405843"

    aput-object v3, v0, v2

    const/16 v2, 0x57

    const-string v3, "405844"

    aput-object v3, v0, v2

    const/16 v2, 0x58

    const-string v3, "405845"

    aput-object v3, v0, v2

    const/16 v2, 0x59

    const-string v3, "405847"

    aput-object v3, v0, v2

    const/16 v2, 0x5a

    const-string v3, "405851"

    aput-object v3, v0, v2

    const/16 v2, 0x5b

    const-string v3, "405822"

    aput-object v3, v0, v2

    const/16 v2, 0x5c

    const-string v3, "405880"

    aput-object v3, v0, v2

    const/16 v2, 0x5d

    const-string v3, "405881"

    aput-object v3, v0, v2

    const/16 v2, 0x5e

    const-string v3, "405882"

    aput-object v3, v0, v2

    const/16 v2, 0x5f

    const-string v3, "405883"

    aput-object v3, v0, v2

    const/16 v2, 0x60

    const-string v3, "405884"

    aput-object v3, v0, v2

    const/16 v2, 0x61

    const-string v3, "405885"

    aput-object v3, v0, v2

    const/16 v2, 0x62

    const-string v3, "405886"

    aput-object v3, v0, v2

    const/16 v2, 0x63

    const-string v3, "405908"

    aput-object v3, v0, v2

    const/16 v2, 0x64

    const-string v3, "405909"

    aput-object v3, v0, v2

    const/16 v2, 0x65

    const-string v3, "405910"

    aput-object v3, v0, v2

    const/16 v2, 0x66

    const-string v3, "405911"

    aput-object v3, v0, v2

    const/16 v2, 0x67

    const-string v3, "405812"

    aput-object v3, v0, v2

    const/16 v2, 0x68

    const-string v3, "405802"

    aput-object v3, v0, v2

    const/16 v2, 0x69

    const-string v3, "405807"

    aput-object v3, v0, v2

    const/16 v2, 0x6a

    const-string v3, "405806"

    aput-object v3, v0, v2

    const/16 v2, 0x6b

    const-string v3, "405912"

    aput-object v3, v0, v2

    const/16 v2, 0x6c

    const-string v3, "405913"

    aput-object v3, v0, v2

    const/16 v2, 0x6d

    const-string v3, "405914"

    aput-object v3, v0, v2

    const/16 v2, 0x6e

    const-string v3, "405915"

    aput-object v3, v0, v2

    const/16 v2, 0x6f

    const-string v3, "405916"

    aput-object v3, v0, v2

    const/16 v2, 0x70

    const-string v3, "405917"

    aput-object v3, v0, v2

    const/16 v2, 0x71

    const-string v3, "405918"

    aput-object v3, v0, v2

    const/16 v2, 0x72

    const-string v3, "405919"

    aput-object v3, v0, v2

    const/16 v2, 0x73

    const-string v3, "405920"

    aput-object v3, v0, v2

    const/16 v2, 0x74

    const-string v3, "405921"

    aput-object v3, v0, v2

    const/16 v2, 0x75

    const-string v3, "405922"

    aput-object v3, v0, v2

    const/16 v2, 0x76

    const-string v3, "405923"

    aput-object v3, v0, v2

    const/16 v2, 0x77

    const-string v3, "405924"

    aput-object v3, v0, v2

    const/16 v2, 0x78

    const-string v3, "405930"

    aput-object v3, v0, v2

    const/16 v2, 0x79

    const-string v3, "405931"

    aput-object v3, v0, v2

    .line 842
    .local v0, IndExceptMccMnc:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f0
    array-length v2, v0

    if-ge v1, v2, :cond_30c

    .line 844
    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_309

    .line 846
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10

    .line 842
    :cond_309
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f0

    .line 854
    .end local v0           #IndExceptMccMnc:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_30c
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 2683
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    goto :goto_6
.end method

.method public getVideoCallForwardingFlag()Z
    .registers 2

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .registers 2

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getisVoiceMailFixed()Z
    .registers 4

    .prologue
    .line 524
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceMailFixed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 30
    .parameter "msg"

    .prologue
    .line 1195
    const/16 v21, 0x0

    .line 1197
    .local v21, isRecordLoadResponse:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v3, :cond_3c

    .line 1198
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    .end local p1
    :cond_3b
    :goto_3b
    return-void

    .line 1202
    .restart local p1
    :cond_3c
    :try_start_3c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_41} :catch_62

    sparse-switch v3, :sswitch_data_10c6

    .line 2035
    .end local p1
    :cond_44
    :goto_44
    if-eqz v21, :cond_3b

    .line 2036
    :goto_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    goto :goto_3b

    .line 1206
    .restart local p1
    :sswitch_4a
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v11

    .line 1207
    .local v11, Fh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v3, 0x2fe2

    const/16 v4, 0x2a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_61} :catch_62

    goto :goto_44

    .line 2030
    .end local v11           #Fh:Lcom/android/internal/telephony/IccFileHandler;
    .end local p1
    :catch_62
    move-exception v3

    move-object/from16 v18, v3

    .line 2032
    .local v18, exc:Ljava/lang/RuntimeException;
    :try_start_65
    const-string v3, "GSM"

    const-string v4, "Exception parsing SIM record"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_77

    .line 2035
    if-eqz v21, :cond_3b

    goto :goto_46

    .line 1212
    .end local v18           #exc:Ljava/lang/RuntimeException;
    .restart local p1
    :sswitch_73
    :try_start_73
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_76} :catch_62

    goto :goto_44

    .line 2035
    .end local p1
    :catchall_77
    move-exception v3

    if-eqz v21, :cond_7d

    .line 2036
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 2035
    :cond_7d
    throw v3

    .line 1217
    .restart local p1
    :sswitch_7e
    :try_start_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x28

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    goto :goto_44

    .line 1223
    :sswitch_92
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1225
    .local v12, ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1228
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmsServiceCenter(Ljava/lang/String;)V

    goto :goto_44

    .line 1233
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_a8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    goto :goto_44

    .line 1238
    :sswitch_ac
    const/16 v21, 0x1

    .line 1240
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1241
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_10e

    .line 1242
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v17

    .line 1243
    .local v17, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v17

    move-object v1, v3

    if-ne v0, v1, :cond_f2

    .line 1244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->fImsiDone:Z

    move v3, v0

    if-eqz v3, :cond_f2

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 1246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1249
    :cond_f2
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1253
    .end local v17           #err:Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1
    :cond_10e
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->fImsiDone:Z

    .line 1255
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_14e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_141

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_14e

    .line 1260
    :cond_141
    const-string v3, "GSM"

    const-string v4, "invalid IMSI "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_14e
    .catchall {:try_start_7e .. :try_end_14e} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_14e} :catch_62

    .line 1265
    :cond_14e
    :try_start_14e
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "xxxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_178
    .catchall {:try_start_14e .. :try_end_178} :catchall_77
    .catch Ljava/lang/NullPointerException; {:try_start_14e .. :try_end_178} :catch_24e
    .catch Ljava/lang/RuntimeException; {:try_start_14e .. :try_end_178} :catch_62

    .line 1270
    :goto_178
    :try_start_178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0
    :try_end_17d
    .catchall {:try_start_178 .. :try_end_17d} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_17d} :catch_62

    if-nez v3, :cond_197

    .line 1274
    :try_start_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1275
    .local v23, mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_197
    .catchall {:try_start_17f .. :try_end_197} :catchall_77
    .catch Ljava/lang/NullPointerException; {:try_start_17f .. :try_end_197} :catch_26a
    .catch Ljava/lang/NumberFormatException; {:try_start_17f .. :try_end_197} :catch_28c
    .catch Ljava/lang/RuntimeException; {:try_start_17f .. :try_end_197} :catch_62

    .line 1285
    .end local v23           #mcc:I
    :cond_197
    :goto_197
    :try_start_197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_1c6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_1c6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1c6

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1291
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_1ef

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_1ef

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1ef

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    move-object v3, v0

    const-string v4, "IMSI"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :cond_1ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_44

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 1300
    .local v25, sp:Landroid/content/SharedPreferences;
    const-string v3, "cf_imsikey"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1302
    .local v10, CF_Imsi:Ljava/lang/String;
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1303
    .local v15, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cf_imsikey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1304
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1308
    if-eqz v10, :cond_2d3

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    .line 1314
    const-string v3, "cf_iconkey_voice"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1315
    const-string v3, "cf_iconkey_video"

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    goto/16 :goto_44

    .line 1266
    .end local v10           #CF_Imsi:Ljava/lang/String;
    .end local v15           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v25           #sp:Landroid/content/SharedPreferences;
    :catch_24e
    move-exception v3

    move-object v14, v3

    .line 1267
    .local v14, e:Ljava/lang/NullPointerException;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_178

    .line 1276
    .end local v14           #e:Ljava/lang/NullPointerException;
    :catch_26a
    move-exception v3

    move-object v14, v3

    .line 1277
    .restart local v14       #e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1278
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords: Corrupt IMSI! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_197

    .line 1279
    .end local v14           #e:Ljava/lang/NullPointerException;
    :catch_28c
    move-exception v3

    move-object v14, v3

    .line 1280
    .local v14, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1281
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords: Corrupt IMSI! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_197

    .line 1320
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #CF_Imsi:Ljava/lang/String;
    .restart local v15       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v25       #sp:Landroid/content/SharedPreferences;
    :cond_2ae
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1321
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 1322
    const-string v3, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v4, v0

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1323
    const-string v3, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v4, v0

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1324
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_44

    .line 1329
    :cond_2d3
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1330
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 1331
    const-string v3, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v4, v0

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1332
    const-string v3, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v4, v0

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1333
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_44

    .line 1342
    .end local v10           #CF_Imsi:Ljava/lang/String;
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v15           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v25           #sp:Landroid/content/SharedPreferences;
    .restart local p1
    :sswitch_2f8
    const/16 v21, 0x1

    .line 1344
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1345
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1347
    .local v13, data:[B
    const/16 v22, 0x0

    .line 1348
    .local v22, isValidMbdn:Z
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_352

    .line 1350
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MBI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/4 v3, 0x0

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 1357
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    move v3, v0

    if-eqz v3, :cond_3a4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    move v3, v0

    const/16 v4, 0xff

    if-eq v3, v4, :cond_3a4

    .line 1358
    const-string v3, "GSM"

    const-string v4, "Got valid mailbox number for MBDN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/16 v22, 0x1

    .line 1369
    :cond_352
    :goto_352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1370
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAvailableMBDN is is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    if-eqz v22, :cond_3b2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    move v3, v0

    if-eqz v3, :cond_3b2

    .line 1374
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    move v6, v0

    const/4 v7, 0x6

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_44

    .line 1363
    :cond_3a4
    const-string v3, "GSM"

    const-string v4, "Got invalid mailbox number for MBDN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    goto :goto_352

    .line 1379
    :cond_3b2
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_44

    .line 1392
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v22           #isValidMbdn:Z
    .restart local p1
    :sswitch_3cf
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1393
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1394
    const/16 v21, 0x1

    .line 1396
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1398
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_43f

    .line 1400
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing EF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0xb

    if-ne v5, v6, :cond_43c

    const-string v5, "[MAILBOX]"

    :goto_400
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    const/4 v4, 0x6

    if-ne v3, v4, :cond_44

    .line 1410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1411
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_44

    .line 1400
    :cond_43c
    const-string v5, "[MBDN]"

    goto :goto_400

    .line 1418
    :cond_43f
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    .line 1420
    .local v4, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0xb

    if-ne v5, v6, :cond_4a5

    const-string v5, " EF[MAILBOX]"

    :goto_45d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "VM: *"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    const/4 v5, 0x6

    if-ne v3, v5, :cond_4a8

    .line 1427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1428
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_44

    .line 1420
    .restart local v4       #adn:Lcom/android/internal/telephony/AdnRecord;
    :cond_4a5
    const-string v5, " EF[MBDN]"

    goto :goto_45d

    .line 1435
    :cond_4a8
    const-string v3, "TMU"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c4

    .line 1436
    const-string v3, "GSM"

    const-string v5, "Voicemail number is fixed on TMU"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 1440
    :cond_4c4
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1441
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_44

    .line 1445
    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_4d8
    const/16 v21, 0x1

    .line 1447
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1449
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4ee

    .line 1450
    const-string v3, "GSM"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1454
    :cond_4ee
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    .line 1456
    .restart local v4       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1457
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSISDN: "

    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MSISDN: *"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44

    .line 1465
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_527
    const/16 v21, 0x0

    .line 1466
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1468
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_44

    .line 1469
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1471
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_44

    .line 1476
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_54f
    const/16 v21, 0x1

    .line 1478
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1479
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1481
    .restart local v13       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1485
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MWIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 1490
    const/4 v3, 0x0

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_59b

    .line 1491
    const-string v3, "GSM"

    const-string v4, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1496
    :cond_59b
    const/4 v3, 0x0

    aget-byte v3, v13, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5bc

    const/4 v3, 0x1

    move/from16 v27, v3

    .line 1497
    .local v27, voiceMailWaiting:Z
    :goto_5a5
    const/4 v3, 0x1

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto/16 :goto_44

    .line 1496
    .end local v27           #voiceMailWaiting:Z
    :cond_5bc
    const/4 v3, 0x0

    move/from16 v27, v3

    goto :goto_5a5

    .line 1511
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_5c0
    const/16 v21, 0x1

    .line 1513
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1514
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1516
    .restart local v13       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1520
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    move-object v3, v0

    if-eqz v3, :cond_5ec

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMWIS:Z

    move v3, v0

    if-nez v3, :cond_44

    .line 1526
    :cond_5ec
    const/4 v3, 0x0

    aget-byte v3, v13, v3

    and-int/lit8 v20, v3, 0xf

    .line 1529
    .local v20, indicator:I
    const/16 v3, 0xa

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_60b

    .line 1531
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1536
    :cond_5fe
    :goto_5fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto/16 :goto_44

    .line 1532
    :cond_60b
    const/4 v3, 0x5

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_5fe

    .line 1533
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto :goto_5fe

    .line 1541
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v20           #indicator:I
    .restart local p1
    :sswitch_618
    const/16 v21, 0x1

    .line 1546
    :sswitch_61a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1547
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1549
    .restart local v13       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1553
    const/4 v3, 0x0

    array-length v4, v13

    invoke-static {v13, v3, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 1555
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_44

    .line 1558
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSimChanged()V

    goto/16 :goto_44

    .line 1564
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_665
    const/16 v21, 0x1

    .line 1566
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1567
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1569
    .restart local v13       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1573
    const/4 v3, 0x0

    array-length v4, v13

    invoke-static {v13, v3, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->gid1:Ljava/lang/String;

    .line 1575
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gid1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->gid1:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a6
    .catchall {:try_start_197 .. :try_end_6a6} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_197 .. :try_end_6a6} :catch_62

    goto/16 :goto_44

    .line 1580
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_6a8
    const/16 v21, 0x1

    .line 1582
    :try_start_6aa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1583
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1585
    .restart local v13       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_6bf
    .catchall {:try_start_6aa .. :try_end_6bf} :catchall_8b9

    if-eqz v3, :cond_718

    .line 1617
    :try_start_6c1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_6d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6ef

    .line 1618
    :cond_6d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0
    :try_end_6d5
    .catchall {:try_start_6c1 .. :try_end_6d5} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_6c1 .. :try_end_6d5} :catch_62

    if-eqz v3, :cond_1045

    .line 1620
    :try_start_6d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1622
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_6ef
    .catchall {:try_start_6d7 .. :try_end_6ef} :catchall_77
    .catch Ljava/lang/NumberFormatException; {:try_start_6d7 .. :try_end_6ef} :catch_1054
    .catch Ljava/lang/RuntimeException; {:try_start_6d7 .. :try_end_6ef} :catch_62

    .line 1634
    .end local v23           #mcc:I
    :cond_6ef
    :goto_6ef
    :try_start_6ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_44

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_716
    .catchall {:try_start_6ef .. :try_end_716} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_6ef .. :try_end_716} :catch_62

    goto/16 :goto_44

    .line 1589
    :cond_718
    :try_start_718
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_AD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    array-length v3, v13

    const/4 v4, 0x3

    if-ge v3, v4, :cond_796

    .line 1593
    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73f
    .catchall {:try_start_718 .. :try_end_73f} :catchall_8b9

    .line 1617
    :try_start_73f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_74e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_76d

    .line 1618
    :cond_74e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0
    :try_end_753
    .catchall {:try_start_73f .. :try_end_753} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_73f .. :try_end_753} :catch_62

    if-eqz v3, :cond_1065

    .line 1620
    :try_start_755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1622
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_76d
    .catchall {:try_start_755 .. :try_end_76d} :catchall_77
    .catch Ljava/lang/NumberFormatException; {:try_start_755 .. :try_end_76d} :catch_1074
    .catch Ljava/lang/RuntimeException; {:try_start_755 .. :try_end_76d} :catch_62

    .line 1634
    .end local v23           #mcc:I
    :cond_76d
    :goto_76d
    :try_start_76d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_44

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_794
    .catchall {:try_start_76d .. :try_end_794} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_76d .. :try_end_794} :catch_62

    goto/16 :goto_44

    .line 1597
    :cond_796
    :try_start_796
    array-length v3, v13

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7f8

    .line 1598
    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a1
    .catchall {:try_start_796 .. :try_end_7a1} :catchall_8b9

    .line 1617
    :try_start_7a1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_7b0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7cf

    .line 1618
    :cond_7b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0
    :try_end_7b5
    .catchall {:try_start_7a1 .. :try_end_7b5} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_7a1 .. :try_end_7b5} :catch_62

    if-eqz v3, :cond_1085

    .line 1620
    :try_start_7b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1622
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_7cf
    .catchall {:try_start_7b7 .. :try_end_7cf} :catchall_77
    .catch Ljava/lang/NumberFormatException; {:try_start_7b7 .. :try_end_7cf} :catch_1094
    .catch Ljava/lang/RuntimeException; {:try_start_7b7 .. :try_end_7cf} :catch_62

    .line 1634
    .end local v23           #mcc:I
    :cond_7cf
    :goto_7cf
    :try_start_7cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_44

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_7f6
    .catchall {:try_start_7cf .. :try_end_7f6} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_7cf .. :try_end_7f6} :catch_62

    goto/16 :goto_44

    .line 1602
    :cond_7f8
    const/4 v3, 0x3

    :try_start_7f9
    aget-byte v3, v13, v3

    and-int/lit8 v3, v3, 0xf

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1604
    const-string v3, "XFA"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84d

    const-string v3, "XFM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84d

    const-string v3, "XFC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84d

    const-string v3, "XFE"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84d

    const-string v3, "XFV"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_853

    .line 1610
    :cond_84d
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1613
    :cond_853
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/16 v4, 0xf

    if-ne v3, v4, :cond_862

    .line 1614
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_862
    .catchall {:try_start_7f9 .. :try_end_862} :catchall_8b9

    .line 1617
    :cond_862
    :try_start_862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_871

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_890

    .line 1618
    :cond_871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0
    :try_end_876
    .catchall {:try_start_862 .. :try_end_876} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_862 .. :try_end_876} :catch_62

    if-eqz v3, :cond_10a5

    .line 1620
    :try_start_878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1622
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_890
    .catchall {:try_start_878 .. :try_end_890} :catchall_77
    .catch Ljava/lang/NumberFormatException; {:try_start_878 .. :try_end_890} :catch_10b4
    .catch Ljava/lang/RuntimeException; {:try_start_878 .. :try_end_890} :catch_62

    .line 1634
    .end local v23           #mcc:I
    :cond_890
    :goto_890
    :try_start_890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v3, v0

    if-eqz v3, :cond_44

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    goto/16 :goto_44

    .line 1617
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :catchall_8b9
    move-exception v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_8c9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8e8

    .line 1618
    :cond_8c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_8ce
    .catchall {:try_start_890 .. :try_end_8ce} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_890 .. :try_end_8ce} :catch_62

    if-eqz v4, :cond_1025

    .line 1620
    :try_start_8d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1622
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_8e8
    .catchall {:try_start_8d0 .. :try_end_8e8} :catchall_77
    .catch Ljava/lang/NumberFormatException; {:try_start_8d0 .. :try_end_8e8} :catch_1034
    .catch Ljava/lang/RuntimeException; {:try_start_8d0 .. :try_end_8e8} :catch_62

    .line 1634
    .end local v23           #mcc:I
    :cond_8e8
    :goto_8e8
    :try_start_8e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_90f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_90f

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1617
    :cond_90f
    throw v3

    .line 1643
    .restart local p1
    :sswitch_910
    const/16 v21, 0x1

    .line 1644
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1645
    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_44

    .line 1649
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_923
    const/16 v21, 0x1

    .line 1651
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1652
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1654
    .restart local v13       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1658
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFF_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    move-object v3, v0

    if-eqz v3, :cond_96b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableCFIS:Z

    move v3, v0

    if-nez v3, :cond_44

    .line 1664
    :cond_96b
    const/4 v3, 0x0

    aget-byte v3, v13, v3

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0xa

    if-ne v3, v4, :cond_99c

    const/4 v3, 0x1

    :goto_975
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 1671
    array-length v3, v13

    const/4 v4, 0x1

    if-le v3, v4, :cond_98f

    .line 1672
    const/4 v3, 0x1

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_99e

    const/4 v3, 0x1

    :goto_98a
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 1684
    :cond_98f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_44

    .line 1664
    :cond_99c
    const/4 v3, 0x0

    goto :goto_975

    .line 1672
    :cond_99e
    const/4 v3, 0x0

    goto :goto_98a

    .line 1689
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_9a0
    const/16 v21, 0x1

    .line 1691
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1692
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1694
    .restart local v13       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1698
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPDI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_44

    .line 1704
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_9dd
    const-string v3, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_OPL_DONE "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const/16 v21, 0x1

    .line 1708
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1709
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1712
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleOPL(Ljava/util/ArrayList;)V

    goto/16 :goto_44

    .line 1717
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_9fd
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1718
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_44

    .line 1719
    const-string v3, "GSM"

    const-string v4, "SIMRecords update failed"

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_44

    .line 1724
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_a13
    const-string v3, "GSM"

    const-string v4, "[PNN] [handleMessage] EVENT_GET_PNN_DONE "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const/16 v21, 0x1

    .line 1728
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1730
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1733
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handlePNN(Ljava/util/ArrayList;)V

    goto/16 :goto_44

    .line 1737
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_a33
    const/16 v21, 0x1

    .line 1739
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1740
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1743
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_44

    .line 1747
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_a4c
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1752
    :sswitch_a6b
    const/16 v21, 0x0

    .line 1754
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1756
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v19, v0

    .line 1758
    .local v19, index:[I
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a8c

    move-object/from16 v0, v19

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_ab6

    .line 1759
    :cond_a8c
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1762
    :cond_ab6
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READ EF_SMS RECORD index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v19, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v19, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_44

    .line 1769
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v19           #index:[I
    .restart local p1
    :sswitch_aed
    const/16 v21, 0x0

    .line 1770
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1771
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b08

    .line 1772
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_44

    .line 1774
    .restart local p1
    :cond_b08
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1779
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_b24
    const/16 v21, 0x1

    .line 1781
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1784
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1786
    .restart local v13       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1790
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SST: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkEONSavailable([B)V

    .line 1793
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkFDNavailable([B)V

    .line 1794
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkCHV1available([B)V

    .line 1795
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSPNavailable([B)V

    .line 1796
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMSISDNavailable([B)V

    .line 1797
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkSMSavailable([B)V

    .line 1798
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMBDNavailable([B)V

    .line 1799
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMWISavailable([B)V

    .line 1800
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkCFISavailable([B)V

    goto/16 :goto_44

    .line 1805
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_bae
    const/16 v21, 0x1

    .line 1807
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1809
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1813
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 1815
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_44

    .line 1819
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_bee
    const/16 v21, 0x1

    .line 1821
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1823
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_c17

    .line 1824
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in fetching EF CSP data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1828
    :cond_c17
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1830
    .restart local v13       #data:[B
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSP Hex Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_44

    .line 1835
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_c47
    const/16 v21, 0x0

    .line 1837
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1839
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_c5d

    .line 1840
    const-string v3, "GSM"

    const-string v4, "CSP: Automatic network selection: Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1842
    :cond_c5d
    const-string v3, "GSM"

    const-string v4, "CSP: Automatic network selection: Success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1847
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_c66
    const/16 v21, 0x0

    .line 1848
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1850
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_c87

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1855
    :cond_c87
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v3

    if-eqz v3, :cond_ced

    .line 1856
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v4, v3, v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    .restart local v4       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    .line 1866
    .local v24, onCphsCompleted:Landroid/os/Message;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_ccd

    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_ccd

    .line 1867
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v5, 0x0

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1869
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    .line 1871
    const-string v3, "Callback with MBDN successful."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1873
    const/16 v24, 0x0

    .line 1876
    :cond_ccd
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x19

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_44

    .line 1881
    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v24           #onCphsCompleted:Landroid/os/Message;
    .restart local p1
    :cond_ced
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_44

    .line 1882
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1884
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_44

    .line 1889
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_d0c
    const/16 v21, 0x0

    .line 1890
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1891
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_d54

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1898
    :goto_d2d
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_44

    .line 1899
    const-string v3, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1900
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1902
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_44

    .line 1895
    .restart local p1
    :cond_d54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_d2d

    .line 1906
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_d70
    const/16 v21, 0x0

    .line 1907
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1908
    .restart local v12       #ar:Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1909
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 1910
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_44

    .line 1914
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_da6
    const/16 v21, 0x1

    .line 1916
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1917
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1919
    .restart local v13       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_eb1

    .line 1925
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isSIMexist()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e21

    .line 1927
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] IccID exist - cf icon voice value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] IccID exist - cf icon video value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 1931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_44

    .line 1937
    :cond_e21
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] IccID ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ), hasIccCard ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimCard;->hasIccCard()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    .line 1939
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 1941
    .local v26, sp2:Landroid/content/SharedPreferences;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 1942
    .local v16, editor2:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cf_iconkey_voice"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_voice:Z

    move v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1943
    const-string v3, "cf_iconkey_video"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NV_cfflag_video:Z

    move v4, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1944
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1945
    const-string v3, "cf_imsikey"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1946
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_44

    .line 1953
    .end local v16           #editor2:Landroid/content/SharedPreferences$Editor;
    .end local v26           #sp2:Landroid/content/SharedPreferences;
    :cond_eb1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFIS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EF_CFIS: *"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 1960
    const/4 v3, 0x1

    aget-byte v3, v13, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f07

    .line 1962
    const/4 v3, 0x1

    aget-byte v3, v13, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f03

    const/4 v3, 0x1

    :goto_ee4
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 1963
    const/4 v3, 0x1

    aget-byte v3, v13, v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_f05

    const/4 v3, 0x1

    :goto_ef1
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 1972
    :goto_ef6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_44

    .line 1962
    :cond_f03
    const/4 v3, 0x0

    goto :goto_ee4

    .line 1963
    :cond_f05
    const/4 v3, 0x0

    goto :goto_ef1

    .line 1967
    :cond_f07
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 1968
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    goto :goto_ef6

    .line 1977
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_f14
    const-string v3, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_SPN_CPHS_DONE "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const/16 v21, 0x1

    .line 1980
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1981
    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1983
    if-eqz v12, :cond_f8a

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_f8a

    .line 1985
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 1987
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1988
    .restart local v13       #data:[B
    const/4 v3, 0x0

    array-length v4, v13

    invoke-static {v13, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 1991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_CPHS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1994
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Load EF_SPN_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1999
    .end local v13           #data:[B
    .restart local p1
    :cond_f8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6f18

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2001
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_44

    .line 2008
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_faf
    const-string v3, "GSM"

    const-string v4, "[handleMessage] EVENT_GET_SPN_SHORT_CPHS_DONE "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const/16 v21, 0x1

    .line 2010
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 2011
    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 2013
    if-eqz v12, :cond_44

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_44

    .line 2015
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->IsOnsExist:Z

    .line 2016
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 2017
    .restart local v13       #data:[B
    const/4 v3, 0x0

    array-length v4, v13

    invoke-static {v13, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 2020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2023
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn_cphs:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1629
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :cond_1025
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1631
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e8

    .line 1623
    :catch_1034
    move-exception v4

    move-object v14, v4

    .line 1624
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1625
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e8

    .line 1629
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #ar:Landroid/os/AsyncResult;
    .restart local v13       #data:[B
    :cond_1045
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1631
    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ef

    .line 1623
    :catch_1054
    move-exception v3

    move-object v14, v3

    .line 1624
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1625
    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ef

    .line 1629
    .end local v14           #e:Ljava/lang/NumberFormatException;
    :cond_1065
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1631
    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76d

    .line 1623
    :catch_1074
    move-exception v3

    move-object v14, v3

    .line 1624
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1625
    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76d

    .line 1629
    .end local v14           #e:Ljava/lang/NumberFormatException;
    :cond_1085
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1631
    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7cf

    .line 1623
    :catch_1094
    move-exception v3

    move-object v14, v3

    .line 1624
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1625
    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7cf

    .line 1629
    .end local v14           #e:Ljava/lang/NumberFormatException;
    :cond_10a5
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1631
    const-string v3, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_890

    .line 1623
    :catch_10b4
    move-exception v3

    move-object v14, v3

    .line 1624
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1625
    const-string v3, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c3
    .catchall {:try_start_8e8 .. :try_end_10c3} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_8e8 .. :try_end_10c3} :catch_62

    goto/16 :goto_890

    .line 1202
    nop

    :sswitch_data_10c6
    .sparse-switch
        0x1 -> :sswitch_73
        0x2 -> :sswitch_a8
        0x3 -> :sswitch_ac
        0x4 -> :sswitch_618
        0x5 -> :sswitch_2f8
        0x6 -> :sswitch_3cf
        0x7 -> :sswitch_54f
        0x8 -> :sswitch_5c0
        0x9 -> :sswitch_6a8
        0xa -> :sswitch_4d8
        0xb -> :sswitch_3cf
        0xc -> :sswitch_910
        0xd -> :sswitch_9a0
        0xe -> :sswitch_9fd
        0xf -> :sswitch_a13
        0x11 -> :sswitch_b24
        0x12 -> :sswitch_a33
        0x13 -> :sswitch_a4c
        0x14 -> :sswitch_c66
        0x15 -> :sswitch_a6b
        0x16 -> :sswitch_aed
        0x18 -> :sswitch_923
        0x19 -> :sswitch_d0c
        0x1a -> :sswitch_bae
        0x1e -> :sswitch_527
        0x1f -> :sswitch_d70
        0x20 -> :sswitch_da6
        0x21 -> :sswitch_f14
        0x22 -> :sswitch_faf
        0x23 -> :sswitch_bee
        0x24 -> :sswitch_9dd
        0x27 -> :sswitch_7e
        0x28 -> :sswitch_92
        0x29 -> :sswitch_4a
        0x2a -> :sswitch_61a
        0x2b -> :sswitch_665
        0x12c -> :sswitch_c47
    .end sparse-switch
.end method

.method public isAvailableVoiceMailInSIM()Z
    .registers 4

    .prologue
    .line 529
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableMBDN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCphsMailboxEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-nez v0, :cond_32

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 531
    :cond_32
    const/4 v0, 0x1

    .line 533
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 3019
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    return-void
.end method

.method matchSimPlmn([I[II)Z
    .registers 14
    .parameter "simPlmn"
    .parameter "bcchPlmn"
    .parameter "length"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 2940
    const/16 v2, 0xd

    .line 2941
    .local v2, wildCardDigit:I
    const/4 v1, 0x0

    .line 2944
    .local v1, match:Z
    aget v3, p1, v6

    const/16 v4, 0xf

    if-ne v3, v4, :cond_10

    .line 2945
    aput v5, p1, v6

    .line 2950
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, p3, :cond_1e

    .line 2951
    aget v3, p1, v0

    if-ne v3, v2, :cond_1b

    .line 2952
    aget v3, p2, v0

    aput v3, p1, v0

    .line 2950
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2957
    :cond_1e
    aget v3, p1, v5

    aget v4, p2, v5

    if-ne v3, v4, :cond_41

    aget v3, p1, v7

    aget v4, p2, v7

    if-ne v3, v4, :cond_41

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    if-ne v3, v4, :cond_41

    .line 2960
    if-ne p3, v6, :cond_44

    .line 2963
    aget v3, p1, v8

    aget v4, p2, v8

    if-ne v3, v4, :cond_42

    aget v3, p1, v9

    aget v4, p2, v9

    if-ne v3, v4, :cond_42

    move v1, v7

    .line 2972
    :cond_41
    :goto_41
    return v1

    :cond_42
    move v1, v5

    .line 2963
    goto :goto_41

    .line 2967
    :cond_44
    aget v3, p1, v8

    aget v4, p2, v8

    if-ne v3, v4, :cond_58

    aget v3, p1, v9

    aget v4, p2, v9

    if-ne v3, v4, :cond_58

    aget v3, p1, v6

    aget v4, p2, v6

    if-ne v3, v4, :cond_58

    move v1, v7

    :goto_57
    goto :goto_41

    :cond_58
    move v1, v5

    goto :goto_57
.end method

.method protected onAllRecordsLoaded()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2362
    const-string v1, "GSM"

    const-string v2, "SIMRecords: record load complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2368
    .local v0, operator:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.numeric"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 2371
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.iso-country"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    :goto_2e
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2385
    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    const-string v2, "LOADED"

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    return-void

    .line 2375
    .restart local p0
    :cond_44
    const-string v1, "SIM"

    const-string v2, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method protected onRadioOffOrNotAvailable()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 350
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 351
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 352
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 353
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 354
    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 355
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 357
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 358
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 359
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 360
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 361
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.numeric"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.iso-country"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "gsm.eons.name"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 374
    return-void
.end method

.method protected onRecordLoaded()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2351
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2353
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-ne v0, v1, :cond_12

    .line 2354
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 2359
    :cond_11
    :goto_11
    return-void

    .line 2355
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_11

    .line 2356
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_11
.end method

.method public onRefresh(Z[I)V
    .registers 3
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 809
    if-eqz p1, :cond_5

    .line 813
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 815
    :cond_5
    return-void
.end method

.method protected secureLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "msg"
    .parameter "securedMsg"

    .prologue
    .line 3159
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    return-void
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 16
    .parameter "line"
    .parameter "voiceEnable"
    .parameter "videoEnable"

    .prologue
    const/4 v10, 0x1

    const-string v11, "GSM"

    .line 699
    if-eq p1, v10, :cond_6

    .line 800
    :cond_5
    :goto_5
    return-void

    .line 701
    :cond_6
    if-eqz p2, :cond_e

    .line 702
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    .line 703
    :cond_e
    if-eqz p3, :cond_16

    .line 704
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    .line 709
    :cond_16
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NAM] Write cf icon voice value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NAM] Write cf icon video value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 713
    .local v8, sp:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 714
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "cf_iconkey_voice"

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voicecallForwardingEnabled:Z

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 715
    const-string v0, "cf_iconkey_video"

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->videocallForwardingEnabled:Z

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 716
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 723
    :try_start_70
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_b7

    .line 725
    if-eqz p2, :cond_88

    .line 726
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 733
    :cond_88
    :goto_88
    if-eqz p3, :cond_9c

    .line 734
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 735
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 744
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x6fcb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 749
    :cond_b7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_5

    .line 750
    if-eqz p2, :cond_d4

    .line 751
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 764
    :cond_d4
    :goto_d4
    if-eqz p3, :cond_f2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    array-length v0, v0

    if-le v0, v10, :cond_f2

    .line 765
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xa0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 790
    :cond_f2
    :goto_f2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_10b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_70 .. :try_end_10b} :catch_10d

    goto/16 :goto_5

    .line 794
    :catch_10d
    move-exception v0

    move-object v7, v0

    .line 795
    .local v7, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v0, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v11, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 729
    .end local v7           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_118
    :try_start_118
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_88

    .line 737
    :cond_124
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xef

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_9c

    .line 755
    :cond_130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_d4

    .line 769
    :cond_140
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    or-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_14f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_118 .. :try_end_14f} :catch_10d

    goto :goto_f2
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 503
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 504
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",icctype = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Set MSISDN: *, IccType = *"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccType:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    const/16 v3, 0x6f4a

    :goto_58
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 513
    return-void

    .line 511
    :cond_64
    const/16 v3, 0x6f4e

    goto :goto_58
.end method

.method setSpnDynamic(Ljava/lang/String;)V
    .registers 13
    .parameter "currentPlmn"

    .prologue
    .line 3100
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 3101
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    .line 3104
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3106
    .local v5, simOper:Ljava/lang/String;
    if-eqz v5, :cond_16

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v9, v5}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 3140
    :cond_16
    :goto_16
    return-void

    .line 3110
    :cond_17
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3111
    .local v8, spnOverrideString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getDisplayRule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 3112
    .local v6, spnDisplayRule:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/gsm/SpnOverride;->getOverrideOnlyOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3114
    .local v3, onlyOn:[Ljava/lang/String;
    if-nez v8, :cond_39

    if-ltz v6, :cond_16

    .line 3118
    :cond_39
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3120
    .local v7, spnForCurrentLocale:Ljava/lang/String;
    if-nez v3, :cond_44

    .line 3121
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 3122
    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_16

    .line 3129
    :cond_44
    if-eqz p1, :cond_16

    .line 3133
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_49
    if-ge v1, v2, :cond_16

    aget-object v4, v0, v1

    .line 3134
    .local v4, p:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5f

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 3135
    :cond_5f
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 3136
    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_16

    .line 3133
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_49
.end method

.method public setVideoCallForwardingFlag(IZ)V
    .registers 5
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 695
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 696
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .registers 5
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 691
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 692
    return-void
.end method

.method public setVoiceMailByCountry(Ljava/lang/String;)V
    .registers 7
    .parameter "spn"

    .prologue
    const/4 v3, 0x1

    const-string v4, "GSM"

    .line 2400
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceMailByCountry: NetworkName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    if-nez p1, :cond_1f

    .line 2430
    :cond_1e
    :goto_1e
    return-void

    .line 2405
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2406
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 2407
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 2408
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceMailByCountry: voiceMailNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " voiceMailTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2412
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2413
    .local v0, code:Ljava/lang/String;
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 2415
    if-eqz v0, :cond_1e

    const-string v1, "XFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_b9

    const-string v1, "XFM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_b9

    const-string v1, "XFC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_b9

    const-string v1, "XFE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_b9

    const-string v1, "XFV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_b9

    const-string v1, "DTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_b9

    const-string v1, "KPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_b9

    const-string v1, "KPN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_b9

    const-string v1, "TNL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1e

    .line 2422
    :cond_b9
    const-string v1, "GSM"

    const-string v1, "[setVoiceMailByCountry] isVoiceMailFixed is false"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    goto/16 :goto_1e
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 562
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_16

    .line 563
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 565
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 595
    :goto_15
    return-void

    .line 569
    :cond_16
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 570
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 572
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_48

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableMBDN:Z

    if-eqz v0, :cond_48

    .line 576
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_15

    .line 580
    :cond_48
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 582
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_15

    .line 588
    :cond_64
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 591
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 593
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15
.end method

.method public setVoiceMessageWaiting(II)V
    .registers 12
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 611
    if-eq p1, v4, :cond_5

    .line 679
    :cond_4
    :goto_4
    return-void

    .line 617
    :cond_5
    if-gez p2, :cond_cb

    .line 618
    const/4 p2, -0x1

    .line 625
    :cond_8
    :goto_8
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 633
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 634
    .local v6, code:Ljava/lang/String;
    if-eqz v6, :cond_4d

    const-string v0, "FTM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_43

    const-string v0, "ORA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_43

    const-string v0, "AMN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_43

    const-string v0, "ORO"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_43

    const-string v0, "ORG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_43

    const-string v0, "SPQ"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_4d

    .line 638
    :cond_43
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.vmi"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_4d
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    .line 645
    :try_start_54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v0, :cond_8e

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xfe

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v3, :cond_d3

    move v3, v5

    :goto_67
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 653
    if-gez p2, :cond_d5

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 661
    :goto_73
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v8, 0x6fca

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 666
    :cond_8e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_4

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v3, :cond_dc

    const/4 v3, 0x5

    :goto_a1
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_be
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_54 .. :try_end_be} :catch_c0

    goto/16 :goto_4

    .line 675
    :catch_c0
    move-exception v0

    move-object v7, v0

    .line 676
    .local v7, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 619
    .end local v6           #code:Ljava/lang/String;
    .end local v7           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_cb
    const/16 v0, 0xff

    if-le p2, v0, :cond_8

    .line 622
    const/16 p2, 0xff

    goto/16 :goto_8

    .restart local v6       #code:Ljava/lang/String;
    :cond_d3
    move v3, v4

    .line 649
    goto :goto_67

    .line 658
    :cond_d5
    :try_start_d5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_db
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d5 .. :try_end_db} :catch_c0

    goto :goto_73

    .line 668
    :cond_dc
    const/16 v3, 0xa

    goto :goto_a1
.end method

.method updateOplCache()V
    .registers 4

    .prologue
    .line 2980
    const-string v0, "GSM"

    const-string v1, "EONS: Updating OPL Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc6

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2985
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2986
    return-void
.end method

.method updatePnnCache()V
    .registers 4

    .prologue
    .line 2993
    const-string v0, "GSM"

    const-string v1, "EONS: Updating PNN Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2998
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2999
    return-void
.end method
