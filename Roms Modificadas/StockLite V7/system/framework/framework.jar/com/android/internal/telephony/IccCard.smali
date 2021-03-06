.class public abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCard$2;,
        Lcom/android/internal/telephony/IccCard$State;
    }
.end annotation


# static fields
.field static final CUSTOMER_ECC_LIST:Ljava/lang/String; = "/system/csc/customer.xml"

.field static final EF_ECC:I = 0x6fb7

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0xb

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x8

.field private static final EVENT_CHANGE_ICC_PASSWORD_DONE:I = 0x9

.field private static final EVENT_GET_ECC_DONE:I = 0xd

.field protected static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_ICC_LOCKED_OR_ABSENT:I = 0x1

.field protected static final EVENT_ICC_READY:I = 0x6

.field protected static final EVENT_ICC_STATUS_CHANGED:I = 0xc

.field private static final EVENT_PIN1PUK1_DONE:I = 0x4

.field private static final EVENT_PIN2PUK2_DONE:I = 0xf

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0xa

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x7

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field private static final EVENT_REPOLL_STATUS_DONE:I = 0x5

.field private static final EVENT_SIM_LOCK_INFO_DONE:I = 0xe

.field static final FILE_ECC_LIST:Ljava/lang/String; = "/data/csc/ecclist.dat"

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_BLOCKED:Ljava/lang/String; = "BLOCKED"

.field public static final INTENT_VALUE_ICC_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_ICC_UNUSED:Ljava/lang/String; = "UNUSED"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "SIM NETWORK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"

.field static final LOG_TAG:Ljava/lang/String; = "IccCard"

.field static final PROP_ECC_LIST:Ljava/lang/String; = "ro.ril.ecclist"

.field static final SECURED_LOG:Z = true


# instance fields
.field private arForChangeToPUKState:Landroid/os/AsyncResult;

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field protected mDbg:Z

.field private mDefaultEmergencyNumber:Ljava/lang/String;

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field private mEmergencyNumber:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

.field private mIccFdnAvailable:Z

.field private mIccFdnEnabled:Z

.field private mIccPin2Blocked:Z

.field private mIccPinLocked:Z

.field private mIccPuk2Blocked:Z

.field protected mIsMultimodeCdmaPhone:Z

.field protected mLogTag:Ljava/lang/String;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mNoSimDefaultEmergencyNumber:Ljava/lang/String;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhonePermBlockedRegistrants:Landroid/os/RegistrantList;

.field private mPin1RetryCount:I

.field private mPin2RetryCount:I

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mRead2GEcc:Z

.field private mReadEcc:Z

.field private mRequestSetPINLock:Z

.field mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

.field protected mState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 9
    .parameter "phone"
    .parameter "logTag"
    .parameter "dbg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 60
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 62
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 63
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhonePermBlockedRegistrants:Landroid/os/RegistrantList;

    .line 67
    const-string/jumbo v0, "ro.config.multimode_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsMultimodeCdmaPhone:Z

    .line 72
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mRequestSetPINLock:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnAvailable:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccPin2Blocked:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccPuk2Blocked:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mReadEcc:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z

    .line 101
    const-string v0, "112,911"

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mDefaultEmergencyNumber:Ljava/lang/String;

    .line 102
    const-string v0, "112,911,08,000,110,118,119,999"

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNoSimDefaultEmergencyNumber:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mEmergencyNumber:Ljava/lang/String;

    .line 109
    iput v3, p0, Lcom/android/internal/telephony/IccCard;->mPin1RetryCount:I

    .line 110
    iput v3, p0, Lcom/android/internal/telephony/IccCard;->mPin2RetryCount:I

    .line 186
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    .line 1051
    new-instance v0, Lcom/android/internal/telephony/IccCard$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$1;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    .line 256
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 257
    iput-object p2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    .line 258
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 259
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccCard;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/IccCard;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/IccCard;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mEmergencyNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccCard;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/IccCard;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccCard;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/IccCard;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mRequestSetPINLock:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccCard;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/IccCard;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/IccCard;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    return v0
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1330
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_a
    add-int v3, p1, p2

    if-ge v0, v3, :cond_14

    .line 1334
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 1335
    .local v2, v:I
    if-le v2, v4, :cond_19

    .line 1343
    .end local v2           #v:I
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1336
    .restart local v2       #v:I
    :cond_19
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1338
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 1339
    if-gt v2, v4, :cond_14

    .line 1340
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1330
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V
    .registers 29
    .parameter "newCardStatus"

    .prologue
    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    move-object v6, v0

    .line 766
    .local v6, oldState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    .line 768
    .local v5, newState:Lcom/android/internal/telephony/IccCard$State;
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 773
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mRequestSetPINLock:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6a

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6a

    .line 774
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mRequestSetPINLock:Z

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    .line 944
    :goto_69
    return-void

    .line 783
    .restart local p0
    .restart local p1
    :cond_6a
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_78

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_86

    :cond_78
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2c2

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2c2

    :cond_86
    const/16 v23, 0x1

    move/from16 v10, v23

    .line 786
    .local v10, transitionedIntoPinLocked:Z
    :goto_8a
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2c8

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2c8

    const/16 v23, 0x1

    move/from16 v7, v23

    .line 787
    .local v7, transitionedIntoAbsent:Z
    :goto_9c
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2ce

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2ce

    const/16 v23, 0x1

    move/from16 v8, v23

    .line 789
    .local v8, transitionedIntoCardIOError:Z
    :goto_ae
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2d4

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2d4

    const/16 v23, 0x1

    move/from16 v9, v23

    .line 793
    .local v9, transitionedIntoNetworkLocked:Z
    :goto_c0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mReadEcc:Z

    move/from16 v23, v0

    if-nez v23, :cond_109

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_e4

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_e4

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_e4

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_109

    .line 800
    :cond_e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x6fb7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0xd

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 802
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mReadEcc:Z

    .line 805
    :cond_109
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mReadEcc:Z

    move/from16 v23, v0

    if-nez v23, :cond_139

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_11f

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_139

    .line 808
    :cond_11f
    const-string v23, ""

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mEmergencyNumber:Ljava/lang/String;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers()V

    .line 814
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mReadEcc:Z

    .line 818
    :cond_139
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2da

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2da

    const/16 v23, 0x1

    move/from16 v20, v23

    .line 820
    .local v20, transitionedIntoSimNetworkSubsetLocked:Z
    :goto_14b
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2e0

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2e0

    const/16 v23, 0x1

    move/from16 v19, v23

    .line 822
    .local v19, transitionedIntoSimCorporateLocked:Z
    :goto_15d
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2e6

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2e6

    const/16 v23, 0x1

    move/from16 v21, v23

    .line 824
    .local v21, transitionedIntoSimServiceProviderLocked:Z
    :goto_16f
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2ec

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2ec

    const/16 v23, 0x1

    move/from16 v22, v23

    .line 826
    .local v22, transitionedIntoSimSimLocked:Z
    :goto_181
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2f2

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2f2

    const/16 v23, 0x1

    move/from16 v15, v23

    .line 828
    .local v15, transitionedIntoRuimNetwork1Locked:Z
    :goto_193
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2f8

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2f8

    const/16 v23, 0x1

    move/from16 v16, v23

    .line 830
    .local v16, transitionedIntoRuimNetwork2Locked:Z
    :goto_1a5
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2fe

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2fe

    const/16 v23, 0x1

    move/from16 v14, v23

    .line 832
    .local v14, transitionedIntoRuimHrpdLocked:Z
    :goto_1b7
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_304

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_304

    const/16 v23, 0x1

    move/from16 v13, v23

    .line 834
    .local v13, transitionedIntoRuimCorporateLocked:Z
    :goto_1c9
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_30a

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_30a

    const/16 v23, 0x1

    move/from16 v18, v23

    .line 836
    .local v18, transitionedIntoRuimServiceProviderLocked:Z
    :goto_1db
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_310

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_310

    const/16 v23, 0x1

    move/from16 v17, v23

    .line 838
    .local v17, transitionedIntoRuimRuimLocked:Z
    :goto_1ed
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_316

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_316

    const/16 v23, 0x1

    move/from16 v12, v23

    .line 840
    .local v12, transitionedIntoReady:Z
    :goto_1ff
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PIN_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_31c

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PIN_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_31c

    const/16 v23, 0x1

    move/from16 v11, v23

    .line 843
    .local v11, transitionedIntoPinPermBlocked:Z
    :goto_211
    if-eqz v10, :cond_326

    .line 844
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v23, v0

    if-eqz v23, :cond_224

    const-string v23, "Notify SIM pin or puk locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 845
    :cond_224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 846
    const-string v23, "LOCKED"

    sget-object v24, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_322

    const-string v24, "PIN"

    :goto_238
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v6

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2b8

    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2b8

    .line 854
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 856
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_27b

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    move-object/from16 v23, v0

    if-eqz v23, :cond_27b

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 861
    :cond_27b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2b8

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    .line 943
    :cond_2b8
    :goto_2b8
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mRequestSetPINLock:Z

    goto/16 :goto_69

    .line 783
    .end local v7           #transitionedIntoAbsent:Z
    .end local v8           #transitionedIntoCardIOError:Z
    .end local v9           #transitionedIntoNetworkLocked:Z
    .end local v10           #transitionedIntoPinLocked:Z
    .end local v11           #transitionedIntoPinPermBlocked:Z
    .end local v12           #transitionedIntoReady:Z
    .end local v13           #transitionedIntoRuimCorporateLocked:Z
    .end local v14           #transitionedIntoRuimHrpdLocked:Z
    .end local v15           #transitionedIntoRuimNetwork1Locked:Z
    .end local v16           #transitionedIntoRuimNetwork2Locked:Z
    .end local v17           #transitionedIntoRuimRuimLocked:Z
    .end local v18           #transitionedIntoRuimServiceProviderLocked:Z
    .end local v19           #transitionedIntoSimCorporateLocked:Z
    .end local v20           #transitionedIntoSimNetworkSubsetLocked:Z
    .end local v21           #transitionedIntoSimServiceProviderLocked:Z
    .end local v22           #transitionedIntoSimSimLocked:Z
    .restart local p1
    :cond_2c2
    const/16 v23, 0x0

    move/from16 v10, v23

    goto/16 :goto_8a

    .line 786
    .restart local v10       #transitionedIntoPinLocked:Z
    :cond_2c8
    const/16 v23, 0x0

    move/from16 v7, v23

    goto/16 :goto_9c

    .line 787
    .restart local v7       #transitionedIntoAbsent:Z
    :cond_2ce
    const/16 v23, 0x0

    move/from16 v8, v23

    goto/16 :goto_ae

    .line 789
    .restart local v8       #transitionedIntoCardIOError:Z
    :cond_2d4
    const/16 v23, 0x0

    move/from16 v9, v23

    goto/16 :goto_c0

    .line 818
    .restart local v9       #transitionedIntoNetworkLocked:Z
    :cond_2da
    const/16 v23, 0x0

    move/from16 v20, v23

    goto/16 :goto_14b

    .line 820
    .restart local v20       #transitionedIntoSimNetworkSubsetLocked:Z
    :cond_2e0
    const/16 v23, 0x0

    move/from16 v19, v23

    goto/16 :goto_15d

    .line 822
    .restart local v19       #transitionedIntoSimCorporateLocked:Z
    :cond_2e6
    const/16 v23, 0x0

    move/from16 v21, v23

    goto/16 :goto_16f

    .line 824
    .restart local v21       #transitionedIntoSimServiceProviderLocked:Z
    :cond_2ec
    const/16 v23, 0x0

    move/from16 v22, v23

    goto/16 :goto_181

    .line 826
    .restart local v22       #transitionedIntoSimSimLocked:Z
    :cond_2f2
    const/16 v23, 0x0

    move/from16 v15, v23

    goto/16 :goto_193

    .line 828
    .restart local v15       #transitionedIntoRuimNetwork1Locked:Z
    :cond_2f8
    const/16 v23, 0x0

    move/from16 v16, v23

    goto/16 :goto_1a5

    .line 830
    .restart local v16       #transitionedIntoRuimNetwork2Locked:Z
    :cond_2fe
    const/16 v23, 0x0

    move/from16 v14, v23

    goto/16 :goto_1b7

    .line 832
    .restart local v14       #transitionedIntoRuimHrpdLocked:Z
    :cond_304
    const/16 v23, 0x0

    move/from16 v13, v23

    goto/16 :goto_1c9

    .line 834
    .restart local v13       #transitionedIntoRuimCorporateLocked:Z
    :cond_30a
    const/16 v23, 0x0

    move/from16 v18, v23

    goto/16 :goto_1db

    .line 836
    .restart local v18       #transitionedIntoRuimServiceProviderLocked:Z
    :cond_310
    const/16 v23, 0x0

    move/from16 v17, v23

    goto/16 :goto_1ed

    .line 838
    .restart local v17       #transitionedIntoRuimRuimLocked:Z
    :cond_316
    const/16 v23, 0x0

    move/from16 v12, v23

    goto/16 :goto_1ff

    .line 840
    .restart local v12       #transitionedIntoReady:Z
    :cond_31c
    const/16 v23, 0x0

    move/from16 v11, v23

    goto/16 :goto_211

    .line 846
    .restart local v11       #transitionedIntoPinPermBlocked:Z
    :cond_322
    const-string v24, "PUK"

    goto/16 :goto_238

    .line 869
    :cond_326
    if-eqz v7, :cond_351

    .line 870
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v23, v0

    if-eqz v23, :cond_339

    const-string v23, "Notify SIM missing."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 871
    :cond_339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 872
    const-string v23, "ABSENT"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 873
    :cond_351
    if-eqz v8, :cond_373

    .line 874
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v23, v0

    if-eqz v23, :cond_364

    const-string v23, "Notify SIM Card IO Error."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 875
    :cond_364
    const-string v23, "CARD_IO_ERROR"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 876
    :cond_373
    if-eqz v9, :cond_3d0

    .line 877
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v23, v0

    if-eqz v23, :cond_386

    const-string v23, "Notify SIM network locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 878
    :cond_386
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v4

    .line 879
    .local v4, index:I
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    .line 880
    .local v3, app:Lcom/android/internal/telephony/IccCardApplication;
    move-object v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimNetwork()Z

    move-result v23

    if-eqz v23, :cond_3bd

    .line 881
    const-string v23, "Notify SIM network locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 887
    :goto_3ae
    const-string v23, "LOCKED"

    const-string v24, "SIM NETWORK"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 884
    :cond_3bd
    const-string v23, "Notify phone blocked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhonePermBlockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_3ae

    .line 889
    .end local v3           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v4           #index:I
    :cond_3d0
    if-eqz v20, :cond_3ea

    .line 890
    const-string v23, "Notify SIM network Subset locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 891
    const-string v23, "LOCKED"

    const-string v24, "SIM NETWORK SUBSET"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 893
    :cond_3ea
    if-eqz v19, :cond_404

    .line 894
    const-string v23, "Notify SIM Corporate locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 895
    const-string v23, "LOCKED"

    const-string v24, "SIM CORPORATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 897
    :cond_404
    if-eqz v21, :cond_41e

    .line 898
    const-string v23, "Notify SIM Service Provider locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 899
    const-string v23, "LOCKED"

    const-string v24, "SIM SERVICE PROVIDER"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 901
    :cond_41e
    if-eqz v22, :cond_438

    .line 902
    const-string v23, "Notify SIM SIM locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 903
    const-string v23, "LOCKED"

    const-string v24, "SIM SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 905
    :cond_438
    if-eqz v15, :cond_452

    .line 906
    const-string v23, "Notify RUIM network1 locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 907
    const-string v23, "LOCKED"

    const-string v24, "RUIM NETWORK1"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 909
    :cond_452
    if-eqz v16, :cond_46c

    .line 910
    const-string v23, "Notify RUIM network2 locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 911
    const-string v23, "LOCKED"

    const-string v24, "RUIM NETWORK2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 913
    :cond_46c
    if-eqz v14, :cond_486

    .line 914
    const-string v23, "Notify RUIM hrpd locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 915
    const-string v23, "LOCKED"

    const-string v24, "RUIM HRPD"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 917
    :cond_486
    if-eqz v13, :cond_4a0

    .line 918
    const-string v23, "Notify RUIM Corporate locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 919
    const-string v23, "LOCKED"

    const-string v24, "RUIM CORPORATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 921
    :cond_4a0
    if-eqz v18, :cond_4ba

    .line 922
    const-string v23, "Notify RUIM Service Provider locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 923
    const-string v23, "LOCKED"

    const-string v24, "RUIM SERVICE PROVIDER"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 925
    :cond_4ba
    if-eqz v17, :cond_4d4

    .line 926
    const-string v23, "Notify RUIM RUIM locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 927
    const-string v23, "LOCKED"

    const-string v24, "RUIM RUIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 929
    :cond_4d4
    if-eqz v12, :cond_4e5

    .line 930
    const-string v23, "READY"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 931
    :cond_4e5
    if-eqz v11, :cond_4ff

    .line 932
    const-string v23, "Notify SIM PIN  Perm Blocked."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 933
    const-string v23, "BLOCKED"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 937
    :cond_4ff
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object v0, v5

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2b8

    .line 938
    const-string v23, "Notify SIM SIM ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 939
    const-string v23, "READY"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b8
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 981
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_22

    .line 982
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 993
    :cond_21
    :goto_21
    return-void

    .line 986
    :cond_22
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 987
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_53

    .line 988
    aget v2, v1, v3

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    :goto_32
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 989
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_21

    :cond_51
    move v2, v3

    .line 988
    goto :goto_32

    .line 991
    :cond_53
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "[IccCard] Bogus facility lock response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 951
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_23

    .line 952
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 974
    :cond_22
    :goto_22
    return-void

    .line 956
    :cond_23
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 957
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_69

    .line 961
    aget v2, v1, v4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5b

    .line 962
    aget v2, v1, v4

    if-eqz v2, :cond_59

    move v2, v5

    :goto_38
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 963
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnAvailable:Z

    .line 969
    :goto_3c
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility lock for FDN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_22

    :cond_59
    move v2, v4

    .line 962
    goto :goto_38

    .line 965
    :cond_5b
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_64

    const-string v2, "Query facility lock: FDN Service Unavailable!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 966
    :cond_64
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnAvailable:Z

    .line 967
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    goto :goto_3c

    .line 972
    :cond_69
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "[IccCard] Bogus facility lock response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    .registers 9
    .parameter "ar"
    .parameter "isPin1"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1000
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v1, v0

    .line 1001
    .local v1, intArray:[I
    array-length v2, v1

    .line 1002
    .local v2, length:I
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->mPin1RetryCount:I

    .line 1003
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->mPin2RetryCount:I

    .line 1004
    if-lez v2, :cond_17

    .line 1005
    if-eqz p2, :cond_18

    .line 1006
    aget v3, v1, v5

    iput v3, p0, Lcom/android/internal/telephony/IccCard;->mPin1RetryCount:I

    .line 1011
    :cond_17
    :goto_17
    return-void

    .line 1008
    :cond_18
    aget v3, v1, v5

    iput v3, p0, Lcom/android/internal/telephony/IccCard;->mPin2RetryCount:I

    goto :goto_17
.end method

.method private readEcclist()V
    .registers 23

    .prologue
    .line 592
    const/4 v12, 0x0

    .line 593
    .local v12, reader:Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 597
    .local v14, str:Ljava/lang/String;
    :try_start_2
    const-string/jumbo v18, "ro.ril.ecclist"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_20

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Ecclist is already set"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_204
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_1c} :catch_16e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1c} :catch_1bb

    .line 729
    if-eqz v12, :cond_1f

    .line 730
    :try_start_1e
    throw v12
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_22d

    .line 738
    :cond_1f
    :goto_1f
    return-void

    .line 608
    :cond_20
    const/16 v17, 0x8

    .line 609
    .local v17, tabLen:I
    :try_start_22
    const-string v16, ""

    .line 610
    .local v16, strSIM:Ljava/lang/String;
    const-string v15, ""

    .line 611
    .local v15, strNOSIM:Ljava/lang/String;
    const-string v11, ""

    .line 613
    .local v11, number:Ljava/lang/String;
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    const-string v19, "/system/csc/customer.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_204
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_37} :catch_16e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_37} :catch_1bb

    .line 614
    .end local v12           #reader:Ljava/io/BufferedReader;
    .local v13, reader:Ljava/io/BufferedReader;
    if-nez v13, :cond_d8

    .line 729
    if-eqz v13, :cond_3e

    .line 730
    :try_start_3b
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_24d

    :cond_3e
    :goto_3e
    move-object v12, v13

    .line 615
    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    goto :goto_1f

    .line 623
    .end local v12           #reader:Ljava/io/BufferedReader;
    .local v10, line:Ljava/lang/String;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    :cond_40
    :try_start_40
    const-string v18, "</SOSNumber>"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 624
    .local v7, lastIndexSIM:I
    const-string v9, "<SOSNumber>"

    .line 625
    .local v9, lenSIM:Ljava/lang/String;
    const/16 v18, -0x1

    move v0, v7

    move/from16 v1, v18

    if-eq v0, v1, :cond_8e

    .line 627
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v17

    move-object v0, v10

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 628
    const-string v18, "[NAM]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ecc number(with SIM) : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14c

    .line 632
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 641
    :cond_8e
    :goto_8e
    const-string v18, "</SOSNumberNoSIM>"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 642
    .local v6, lastIndexNOSIM:I
    const-string v8, "<SOSNumberNoSIM>"

    .line 643
    .local v8, lenNOSIM:Ljava/lang/String;
    const/16 v18, -0x1

    move v0, v6

    move/from16 v1, v18

    if-eq v0, v1, :cond_d8

    .line 645
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v17

    move-object v0, v10

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 646
    const-string v18, "[NAM]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ecc number(no SIM) : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v18, ""

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15f

    .line 650
    invoke-virtual {v15, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 619
    .end local v6           #lastIndexNOSIM:I
    .end local v7           #lastIndexSIM:I
    .end local v8           #lenNOSIM:Ljava/lang/String;
    .end local v9           #lenSIM:Ljava/lang/String;
    .end local v10           #line:Ljava/lang/String;
    :cond_d8
    :goto_d8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 620
    .restart local v10       #line:Ljava/lang/String;
    if-nez v10, :cond_40

    .line 659
    const-string v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_112

    .line 661
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mDefaultEmergencyNumber:Ljava/lang/String;

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Default ecclist: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mDefaultEmergencyNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_112
    const-string v18, ""

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_144

    .line 666
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mNoSimDefaultEmergencyNumber:Ljava/lang/String;

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "No SIM default ecclist: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mNoSimDefaultEmergencyNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_40 .. :try_end_144} :catchall_293
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_144} :catch_29d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_144} :catch_297

    .line 729
    :cond_144
    if-eqz v13, :cond_149

    .line 730
    :try_start_146
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_149} :catch_270

    :cond_149
    :goto_149
    move-object v12, v13

    .line 736
    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_1f

    .line 635
    .end local v12           #reader:Ljava/io/BufferedReader;
    .restart local v7       #lastIndexSIM:I
    .restart local v9       #lenSIM:Ljava/lang/String;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    :cond_14c
    :try_start_14c
    const-string v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 636
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_8e

    .line 653
    .restart local v6       #lastIndexNOSIM:I
    .restart local v8       #lenNOSIM:Ljava/lang/String;
    :cond_15f
    const-string v18, ","

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 654
    invoke-virtual {v15, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16b
    .catchall {:try_start_14c .. :try_end_16b} :catchall_293
    .catch Ljava/io/FileNotFoundException; {:try_start_14c .. :try_end_16b} :catch_29d
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_16b} :catch_297

    move-result-object v15

    goto/16 :goto_d8

    .line 715
    .end local v6           #lastIndexNOSIM:I
    .end local v7           #lastIndexSIM:I
    .end local v8           #lenNOSIM:Ljava/lang/String;
    .end local v9           #lenSIM:Ljava/lang/String;
    .end local v10           #line:Ljava/lang/String;
    .end local v11           #number:Ljava/lang/String;
    .end local v13           #reader:Ljava/io/BufferedReader;
    .end local v15           #strNOSIM:Ljava/lang/String;
    .end local v16           #strSIM:Ljava/lang/String;
    .end local v17           #tabLen:I
    .restart local v12       #reader:Ljava/io/BufferedReader;
    :catch_16e
    move-exception v18

    move-object/from16 v4, v18

    .line 717
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    :goto_171
    :try_start_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readEcclist() FileNotFoundException : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_191
    .catchall {:try_start_171 .. :try_end_191} :catchall_204

    .line 729
    if-eqz v12, :cond_1f

    .line 730
    :try_start_193
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_196} :catch_198

    goto/16 :goto_1f

    .line 732
    :catch_198
    move-exception v3

    .line 734
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readEcclist() Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    :goto_1b6
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 720
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1bb
    move-exception v18

    move-object/from16 v5, v18

    .line 722
    .local v5, ioe:Ljava/io/IOException;
    :goto_1be
    :try_start_1be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readEcclist() IOException : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1de
    .catchall {:try_start_1be .. :try_end_1de} :catchall_204

    .line 729
    if-eqz v12, :cond_1f

    .line 730
    :try_start_1e0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e3} :catch_1e5

    goto/16 :goto_1f

    .line 732
    :catch_1e5
    move-exception v3

    .line 734
    .restart local v3       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readEcclist() Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_1b6

    .line 727
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_204
    move-exception v18

    .line 729
    :goto_205
    if-eqz v12, :cond_20a

    .line 730
    :try_start_207
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_20a} :catch_20b

    .line 727
    :cond_20a
    :goto_20a
    throw v18

    .line 732
    :catch_20b
    move-exception v3

    .line 734
    .restart local v3       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "readEcclist() Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20a

    .line 732
    .end local v3           #e:Ljava/lang/Exception;
    :catch_22d
    move-exception v3

    .line 734
    .restart local v3       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readEcclist() Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1b6

    .line 732
    .end local v3           #e:Ljava/lang/Exception;
    .end local v12           #reader:Ljava/io/BufferedReader;
    .restart local v11       #number:Ljava/lang/String;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    .restart local v15       #strNOSIM:Ljava/lang/String;
    .restart local v16       #strSIM:Ljava/lang/String;
    .restart local v17       #tabLen:I
    :catch_24d
    move-exception v3

    .line 734
    .restart local v3       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readEcclist() Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 732
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v10       #line:Ljava/lang/String;
    :catch_270
    move-exception v3

    .line 734
    .restart local v3       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readEcclist() Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_149

    .line 727
    .end local v3           #e:Ljava/lang/Exception;
    .end local v10           #line:Ljava/lang/String;
    :catchall_293
    move-exception v18

    move-object v12, v13

    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_205

    .line 720
    .end local v12           #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    :catch_297
    move-exception v18

    move-object/from16 v5, v18

    move-object v12, v13

    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_1be

    .line 715
    .end local v12           #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    :catch_29d
    move-exception v18

    move-object/from16 v4, v18

    move-object v12, v13

    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_171
.end method

.method private secureLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "msg"
    .parameter "securedMsg"

    .prologue
    .line 1533
    const-string v0, "IccCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    return-void
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 1041
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1043
    const-string/jumbo v1, "phoneName"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1048
    :cond_48
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin2 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changeIccFdnPassword"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/IccCard;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 530
    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin1 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changeIccLockPassword"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/IccCard;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 511
    return-void
.end method

.method public abstract dispose()V
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_b
    return-void
.end method

.method public getEcclist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mEmergencyNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1347
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_10

    .line 1348
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] IccCardStatus is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 1485
    :goto_f
    return-object v3

    .line 1355
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v3

    if-nez v3, :cond_37

    .line 1356
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardFaulty()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string/jumbo v3, "persist.cust.tel.adapt"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1358
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_f

    .line 1360
    :cond_34
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_f

    .line 1363
    :cond_37
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 1365
    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_5b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_5b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_5b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_5b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_57

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_5e

    :cond_57
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIsMultimodeCdmaPhone:Z

    if-nez v3, :cond_5e

    .line 1372
    :cond_5b
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_f

    .line 1375
    :cond_5e
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_76

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_76

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_76

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_76

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_76

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_232

    .line 1385
    :cond_76
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_7e

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_9f

    .line 1387
    :cond_7e
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v2

    .line 1393
    .local v2, index:I
    :goto_84
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    const/16 v3, 0x8

    if-ge v2, v3, :cond_a6

    if-ltz v2, :cond_a6

    .line 1394
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 1400
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_c2

    .line 1401
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] Subscription Application in not present"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1390
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v2           #index:I
    :cond_9f
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    .restart local v2       #index:I
    goto :goto_84

    .line 1396
    :cond_a6
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IccCard] Invalid Subscription Application index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1405
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_c2
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PIN1 Status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardApplication$PinState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PIN2 Status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardApplication$PinState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardApplication$PinState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PinState;->isPinBlocked()Z

    move-result v3

    if-eqz v3, :cond_107

    .line 1407
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "PIN2 is blocked, PUK2 required."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iput-boolean v7, p0, Lcom/android/internal/telephony/IccCard;->mIccPin2Blocked:Z

    .line 1409
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mIccPuk2Blocked:Z

    .line 1421
    :goto_fb
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPinRequired()Z

    move-result v3

    if-eqz v3, :cond_127

    .line 1422
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1410
    :cond_107
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardApplication$PinState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PinState;->isPukBlocked()Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 1411
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "PUK2 is permanently blocked."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iput-boolean v7, p0, Lcom/android/internal/telephony/IccCard;->mIccPuk2Blocked:Z

    .line 1413
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mIccPin2Blocked:Z

    goto :goto_fb

    .line 1415
    :cond_11b
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "Neither PIN2 nor PUK2 is blocked."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mIccPin2Blocked:Z

    .line 1417
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mIccPuk2Blocked:Z

    goto :goto_fb

    .line 1424
    :cond_127
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPukRequired()Z

    move-result v3

    if-eqz v3, :cond_133

    .line 1425
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1427
    :cond_133
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isSubscriptionPersoEnabled()Z

    move-result v3

    if-eqz v3, :cond_207

    .line 1441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICC is Perso Locked, substate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1442
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimNetwork()Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 1443
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1444
    :cond_15f
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimNetworkPuk()Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 1445
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1446
    :cond_16b
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimNetworkSubset()Z

    move-result v3

    if-eqz v3, :cond_177

    .line 1447
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1448
    :cond_177
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimCorporate()Z

    move-result v3

    if-eqz v3, :cond_183

    .line 1449
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1450
    :cond_183
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimServiceProvider()Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 1451
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1452
    :cond_18f
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimSim()Z

    move-result v3

    if-eqz v3, :cond_19b

    .line 1453
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1454
    :cond_19b
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimNetwork1()Z

    move-result v3

    if-eqz v3, :cond_1a7

    .line 1455
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1456
    :cond_1a7
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimNetwork2()Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 1457
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1458
    :cond_1b3
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimHrpd()Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 1459
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1460
    :cond_1bf
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimCorporate()Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 1461
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1462
    :cond_1cb
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimServiceProvider()Z

    move-result v3

    if-eqz v3, :cond_1d7

    .line 1463
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1464
    :cond_1d7
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimRuim()Z

    move-result v3

    if-eqz v3, :cond_1e3

    .line 1465
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1467
    :cond_1e3
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IccCard] UnSupported De-Personalization, substate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " assuming ICC_NOT_READY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1472
    :cond_207
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppReady()Z

    move-result v3

    if-eqz v3, :cond_213

    .line 1473
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1475
    :cond_213
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardApplication$PinState;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    if-ne v3, v4, :cond_222

    .line 1476
    const-string v3, "RIL_PINSTATE_ENABLED_BLOCKED!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1477
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1479
    :cond_222
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppNotReady()Z

    move-result v3

    if-eqz v3, :cond_22e

    .line 1480
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1482
    :cond_22e
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f

    .line 1485
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v2           #index:I
    :cond_232
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_f
.end method

.method public getIccCardStatusDone(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "ar"

    .prologue
    .line 561
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mRequestSetPINLock:Z

    .line 570
    :goto_10
    return-void

    .line 569
    :cond_11
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    goto :goto_10
.end method

.method public getIccFdnAvailable()Z
    .registers 2

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnAvailable:Z

    return v0
.end method

.method public getIccFdnEnabled()Z
    .registers 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method public getIccLockEnabled()Z
    .registers 2

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method public getIccPin1RetryCount()I
    .registers 2

    .prologue
    .line 430
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->mPin1RetryCount:I

    return v0
.end method

.method public getIccPin2Blocked()Z
    .registers 2

    .prologue
    .line 1517
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPin2Blocked:Z

    return v0
.end method

.method public getIccPin2RetryCount()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->mPin2RetryCount:I

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .registers 2

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPuk2Blocked:Z

    return v0
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public getSimLockInfo(II)V
    .registers 6
    .parameter "num_lock_type"
    .parameter "lock_type"

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "num_lock_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lock_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1021
    :cond_24
    const-string v0, "IccCard"

    const-string v1, "IccCard: getSimLockInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSIMLockInfo(IILandroid/os/Message;)V

    .line 1024
    return-void
.end method

.method public getSimLockInfoRefresh()Lcom/android/internal/telephony/SimLockInfoResult;
    .registers 6

    .prologue
    .line 1034
    const-string v0, "IccCard"

    const-string v1, "getSimLockInfo-Refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSIMLockInfo(IILandroid/os/Message;)V

    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

    return-object v0
.end method

.method public getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;
    .registers 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    if-nez v0, :cond_2d

    .line 226
    sget-object v0, Lcom/android/internal/telephony/IccCard$2;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccCard.getState(): case should never be reached"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :goto_20
    return-object v0

    .line 235
    :pswitch_21
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 239
    :pswitch_24
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 243
    :pswitch_27
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 245
    :pswitch_2a
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 248
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 226
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_24
        :pswitch_24
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method public hasIccCard()Z
    .registers 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v0, :cond_6

    .line 1506
    const/4 v0, 0x0

    .line 1509
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    goto :goto_5
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 1490
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v2, :cond_7

    move v2, v3

    .line 1498
    :goto_6
    return v2

    .line 1492
    :cond_7
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1493
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 1494
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_1e

    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v2, p1, :cond_1e

    .line 1495
    const/4 v2, 0x1

    goto :goto_6

    .line 1492
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_21
    move v2, v3

    .line 1498
    goto :goto_6
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 271
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 273
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_15

    .line 276
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 278
    :cond_15
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 323
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 328
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 330
    :cond_17
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 288
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 290
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_15

    .line 293
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 295
    :cond_15
    return-void
.end method

.method public registerForPhonePermBlocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 305
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhonePermBlockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_15

    .line 310
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 312
    :cond_15
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 482
    const/16 v4, 0xf

    .line 487
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 492
    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 455
    const/4 v4, 0x7

    .line 459
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mRequestSetPINLock:Z

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 466
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Despersonalization: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "supplyNetworkDepersonalization"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/IccCard;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 391
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 362
    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 376
    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 369
    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 383
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 282
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 334
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 299
    return-void
.end method

.method public unregisterForPhonePermBlocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhonePermBlockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 316
    return-void
.end method

.method public updateStateProperty()V
    .registers 4

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStateProperty() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method
