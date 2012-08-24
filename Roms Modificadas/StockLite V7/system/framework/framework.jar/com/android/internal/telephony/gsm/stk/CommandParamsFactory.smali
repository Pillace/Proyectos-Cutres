.class Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_FILE_CHANGE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field static final SETUP_CALL_CONFIRM_TIMEOUT:I = 0x28

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    .registers 5
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 77
    invoke-static {p0, p2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    .line 78
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    .registers 4
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 66
    const-class v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    if-eqz v1, :cond_b

    .line 67
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 72
    :goto_9
    monitor-exit v0

    return-object v1

    .line 69
    :cond_b
    if-eqz p1, :cond_16

    .line 70
    :try_start_d
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_9

    .line 66
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1

    .line 72
    :cond_16
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-eqz p1, :cond_f

    .line 85
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 87
    .local v1, ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_f

    .line 89
    :try_start_b
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :try_end_e
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v0

    .line 95
    .end local v1           #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_f
    :goto_f
    return-object v0

    .line 90
    .restart local v1       #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :catch_10
    move-exception v2

    .line 91
    .local v2, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    const-string v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 286
    const-string/jumbo v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 289
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 291
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 293
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1c

    .line 294
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 299
    :cond_1c
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_28

    .line 300
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 303
    :cond_28
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_32

    .line 305
    iput-boolean v7, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 318
    :cond_32
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_40

    .line 320
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 324
    :cond_40
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_81

    move v3, v6

    :goto_47
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    .line 325
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_83

    move v3, v6

    :goto_50
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    .line 328
    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-nez v3, :cond_6e

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    if-ne v3, v6, :cond_6e

    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    if-nez v3, :cond_6e

    .line 329
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Duration;

    const/16 v4, 0x1770

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 330
    const-string v3, "display forever"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    :cond_6e
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 335
    if-eqz v1, :cond_85

    .line 336
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 337
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 341
    :goto_80
    return v3

    :cond_81
    move v3, v7

    .line 324
    goto :goto_47

    :cond_83
    move v3, v7

    .line 325
    goto :goto_50

    :cond_85
    move v3, v7

    .line 341
    goto :goto_80
.end method

.method private processEventNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 693
    const-string/jumbo v3, "process EventNotify"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 696
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 698
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 700
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_31

    .line 701
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 714
    iput-boolean v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 715
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 717
    if-eqz v1, :cond_39

    .line 718
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 719
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 723
    :goto_30
    return v3

    .line 703
    :cond_31
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    :cond_39
    move v3, v4

    .line 723
    goto :goto_30
.end method

.method private processGetInkey(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 402
    const-string/jumbo v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .line 405
    .local v2, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v1, 0x0

    .line 407
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 409
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_28

    .line 410
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 411
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    if-nez v3, :cond_30

    .line 412
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 415
    :cond_28
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 426
    :cond_30
    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 427
    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 429
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_6d

    move v3, v6

    :goto_3b
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 430
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6f

    move v3, v6

    :goto_44
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 431
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_71

    move v3, v6

    :goto_4d
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    .line 432
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_73

    move v3, v6

    :goto_56
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 433
    iput-boolean v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    .line 435
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 437
    if-eqz v1, :cond_75

    .line 438
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 439
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 443
    :goto_6c
    return v3

    :cond_6d
    move v3, v4

    .line 429
    goto :goto_3b

    :cond_6f
    move v3, v4

    .line 430
    goto :goto_44

    :cond_71
    move v3, v4

    .line 431
    goto :goto_4d

    :cond_73
    move v3, v4

    .line 432
    goto :goto_56

    :cond_75
    move v3, v4

    .line 443
    goto :goto_6c
.end method

.method private processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 14
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/16 v10, 0x46

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 459
    const-string/jumbo v6, "process GetInput"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .line 462
    .local v3, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v2, 0x0

    .line 464
    .local v2, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 466
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_5c

    .line 467
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 468
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    if-nez v6, :cond_26

    .line 470
    const-string v6, ""

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 476
    :cond_26
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_64

    .line 479
    :try_start_2e
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 480
    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 481
    .local v5, valueIndex:I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 482
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 483
    iget v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    iget v7, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    if-le v6, v7, :cond_6c

    .line 484
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6
    :try_end_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2e .. :try_end_52} :catch_52

    .line 486
    .end local v4           #rawValue:[B
    .end local v5           #valueIndex:I
    :catch_52
    move-exception v6

    move-object v1, v6

    .line 487
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 473
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5c
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 490
    :cond_64
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 493
    .restart local v4       #rawValue:[B
    .restart local v5       #valueIndex:I
    :cond_6c
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_7a

    .line 495
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->defaultText:Ljava/lang/String;

    .line 506
    :cond_7a
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_c4

    move v6, v9

    :goto_81
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 507
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_c6

    move v6, v9

    :goto_8a
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 508
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_c8

    move v6, v9

    :goto_93
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    .line 509
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_ca

    move v6, v9

    :goto_9c
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    .line 510
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_cc

    move v6, v9

    :goto_a5
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 512
    iget-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    if-ne v6, v9, :cond_b1

    iget v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    if-le v6, v10, :cond_b1

    .line 513
    iput v10, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 515
    :cond_b1
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 517
    if-eqz v2, :cond_ce

    .line 518
    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 519
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v2

    throw p0

    move-result-object v8

    throw v6

    move v6, v9

    .line 523
    :goto_c3
    return v6

    :cond_c4
    move v6, v8

    .line 506
    goto :goto_81

    :cond_c6
    move v6, v8

    .line 507
    goto :goto_8a

    :cond_c8
    move v6, v8

    .line 508
    goto :goto_93

    :cond_ca
    move v6, v8

    .line 509
    goto :goto_9c

    :cond_cc
    move v6, v8

    .line 510
    goto :goto_a5

    :cond_ce
    move v6, v8

    .line 523
    goto :goto_c3
.end method

.method private processLanguageNotification(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 9
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    .line 1357
    const-string/jumbo v3, "process Language noti Command"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1358
    const/4 v2, 0x0

    .line 1359
    .local v2, targetLanguage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1361
    .local v1, initialLanguage:Z
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1363
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_3a

    .line 1364
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveLanguage(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    .line 1368
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetLanguage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    if-nez v3, :cond_3c

    const/4 v3, 0x1

    move v1, v3

    .line 1370
    :goto_32
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1372
    return v5

    .line 1366
    :cond_3a
    const/4 v2, 0x0

    goto :goto_15

    :cond_3c
    move v1, v5

    .line 1369
    goto :goto_32
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 16
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v12, 0x1

    .line 777
    const-string/jumbo v9, "process LaunchBrowser"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 780
    .local v0, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .line 781
    .local v3, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v6, 0x0

    .line 783
    .local v6, url:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 784
    .local v1, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_28

    .line 786
    :try_start_16
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 787
    .local v5, rawValue:[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 788
    .local v7, valueIndex:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    .line 789
    .local v8, valueLen:I
    if-lez v8, :cond_61

    .line 790
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_27} :catch_63

    move-result-object v6

    .line 801
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :cond_28
    :goto_28
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 802
    if-eqz v1, :cond_36

    .line 803
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 806
    :cond_36
    iget-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v9, :cond_47

    .line 807
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10402a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 821
    :cond_47
    iget v9, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v9, :pswitch_data_76

    .line 824
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .line 834
    .local v4, mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :goto_4e
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    invoke-direct {v9, p1, v0, v6, v4}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 836
    if-eqz v3, :cond_73

    .line 837
    iput v12, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 838
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v3

    throw p0

    move-result-object v11

    throw v9

    move v9, v12

    .line 842
    :goto_60
    return v9

    .line 793
    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    .restart local v5       #rawValue:[B
    .restart local v7       #valueIndex:I
    .restart local v8       #valueLen:I
    :cond_61
    const/4 v6, 0x0

    goto :goto_28

    .line 795
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :catch_63
    move-exception v9

    move-object v2, v9

    .line 796
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 827
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_6d
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .line 828
    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_4e

    .line 830
    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :pswitch_70
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_4e

    .line 842
    :cond_73
    const/4 v9, 0x0

    goto :goto_60

    .line 821
    nop

    :pswitch_data_76
    .packed-switch 0x2
        :pswitch_6d
        :pswitch_70
    .end packed-switch
.end method

.method private processPlayTone(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 15
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 858
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    const/4 v3, 0x0

    .line 861
    .local v3, tone:Lcom/android/internal/telephony/gsm/stk/Tone;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 862
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v4, 0x0

    .line 863
    .local v4, duration:Lcom/android/internal/telephony/gsm/stk/Duration;
    const/4 v8, 0x0

    .line 865
    .local v8, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 866
    .local v6, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v6, :cond_2a

    .line 868
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_2a

    .line 870
    :try_start_1c
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 871
    .local v9, rawValue:[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 872
    .local v11, valueIndex:I
    aget-byte v10, v9, v11

    .line 873
    .local v10, toneVal:I
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/stk/Tone;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/Tone;
    :try_end_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_29} :catch_65

    move-result-object v3

    .line 881
    .end local v9           #rawValue:[B
    .end local v10           #toneVal:I
    .end local v11           #valueIndex:I
    :cond_2a
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 882
    if-eqz v6, :cond_38

    .line 883
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 886
    :cond_38
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 887
    if-eqz v6, :cond_44

    .line 888
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v4

    .line 900
    :cond_44
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6f

    const/4 v0, 0x1

    move v5, v0

    .line 902
    .local v5, vibrate:Z
    :goto_4c
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 903
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/Tone;Lcom/android/internal/telephony/gsm/stk/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 905
    if-eqz v8, :cond_72

    .line 906
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v8

    const/4 v2, 0x1

    throw p0

    .end local v2           #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    move-result-object v2

    throw v0

    .line 909
    const/4 v0, 0x1

    .line 911
    :goto_64
    return v0

    .line 874
    .end local v5           #vibrate:Z
    .restart local v2       #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    :catch_65
    move-exception v0

    move-object v7, v0

    .line 875
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 900
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_6f
    const/4 v0, 0x0

    move v5, v0

    goto :goto_4c

    .line 911
    .restart local v5       #vibrate:Z
    :cond_72
    const/4 v0, 0x0

    goto :goto_64
.end method

.method private processProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 4
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1340
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process ProvideLocalInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1341
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1342
    const/4 v0, 0x0

    return v0
.end method

.method private processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 6
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v2, 0x0

    .line 536
    const-string/jumbo v1, "process Refresh"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 542
    .local v0, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v1, :pswitch_data_38

    .line 559
    :goto_11
    return v2

    .line 547
    :pswitch_12
    const-string v1, "Inside REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE case"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    const-string v1, "default refresh..."

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 549
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 550
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto :goto_11

    .line 553
    :pswitch_25
    const-string v1, "Inside REFRESH_UICC_RESET case"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    const-string v1, "default reset..."

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 555
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 556
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto :goto_11

    .line 542
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_25
    .end packed-switch
.end method

.method private processSMSCommand(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1270
    const-string/jumbo v6, "process SMS Command"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1272
    .local v5, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .line 1273
    .local v3, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v4, 0x0

    .line 1274
    .local v4, ispackin_required:Z
    const/4 v1, 0x0

    .line 1275
    .local v1, Smscaddress:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1278
    .local v0, Pdu:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1279
    .local v2, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v2, :cond_86

    .line 1280
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1295
    :goto_1f
    iput-boolean v8, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1298
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1299
    if-eqz v2, :cond_43

    .line 1300
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveSMSCaddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    .line 1301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1 result parse tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    :cond_43
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_4a

    .line 1304
    const/4 v4, 0x1

    .line 1305
    :cond_4a
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_51

    .line 1306
    const/4 v4, 0x0

    .line 1309
    :cond_51
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SMSTPDUTAG:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1310
    if-eqz v2, :cond_8b

    .line 1311
    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveSMSTPDU(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v0

    .line 1312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2 result parse tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1316
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    invoke-direct {v6, p1, v5, v1, v0}, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1318
    if-eqz v3, :cond_93

    .line 1319
    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1320
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v3

    throw p0

    move-result-object v8

    throw v6

    move v6, v9

    .line 1324
    :goto_85
    return v6

    .line 1282
    :cond_86
    const-string v6, "null alphaId, default sending..."

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_1f

    .line 1314
    :cond_8b
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    :cond_93
    move v6, v8

    .line 1324
    goto :goto_85
.end method

.method private processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 15
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 575
    const-string/jumbo v8, "process SelectItem"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/stk/Menu;-><init>()V

    .line 578
    .local v4, menu:Lcom/android/internal/telephony/gsm/stk/Menu;
    const/4 v7, 0x0

    .line 579
    .local v7, titleIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v2, 0x0

    .line 580
    .local v2, itemsIconId:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 582
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 584
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_21

    .line 585
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    .line 587
    :cond_21
    const/4 v1, 0x1

    .line 589
    .local v1, is_first:Z
    :goto_22
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 590
    if-ne v1, v11, :cond_56

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    if-nez v8, :cond_56

    .line 593
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_4e

    .line 609
    :cond_3a
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_62

    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    if-nez v8, :cond_62

    .line 610
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 597
    :cond_4e
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :goto_54
    const/4 v1, 0x0

    goto :goto_22

    .line 600
    :cond_56
    if-eqz v0, :cond_3a

    .line 601
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 617
    :cond_62
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_71

    .line 621
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I

    move-result v8

    sub-int/2addr v8, v11

    iput v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->defaultItem:I

    .line 642
    :cond_71
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_a7

    move v5, v11

    .line 643
    .local v5, presentTypeSpecified:Z
    :goto_78
    if-eqz v5, :cond_84

    .line 644
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_a9

    .line 645
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    .line 650
    :cond_84
    :goto_84
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_ae

    move v8, v11

    :goto_8b
    iput-boolean v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->softKeyPreferred:Z

    .line 651
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_b0

    move v8, v11

    :goto_94
    iput-boolean v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->helpAvailable:Z

    .line 653
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    if-eqz v7, :cond_b2

    move v9, v11

    :goto_9b
    invoke-direct {v8, p1, v4, v9}, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Menu;Z)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 656
    iget v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v8, :pswitch_data_d8

    :cond_a5
    :goto_a5
    move v8, v11

    .line 678
    :goto_a6
    return v8

    .end local v5           #presentTypeSpecified:Z
    :cond_a7
    move v5, v10

    .line 642
    goto :goto_78

    .line 647
    .restart local v5       #presentTypeSpecified:Z
    :cond_a9
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    goto :goto_84

    :cond_ae
    move v8, v10

    .line 650
    goto :goto_8b

    :cond_b0
    move v8, v10

    .line 651
    goto :goto_94

    :cond_b2
    move v9, v10

    .line 653
    goto :goto_9b

    :pswitch_b4
    move v8, v10

    .line 658
    goto :goto_a6

    .line 660
    :pswitch_b6
    if-eqz v7, :cond_a5

    .line 661
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v7

    throw p0

    move-result-object v10

    throw v8

    goto :goto_a5

    .line 666
    :pswitch_bf
    throw v2

    .line 667
    .local v6, recordNumbers:[I
    if-eqz v7, :cond_d1

    .line 669
    throw v2

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [I

    .line 670
    throw v7

    aput v8, v6, v10

    .line 671
    throw v2

    throw v2

    array-length v9, v9

    invoke-static {v8, v10, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    :cond_d1
    throw p0

    throw p0

    move-result-object v9

    throw v8

    goto :goto_a5

    .line 656
    nop

    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_b6
        :pswitch_bf
    .end packed-switch
.end method

.method private processSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1225
    const-string/jumbo v4, "process SendDTMF"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1228
    .local v3, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v2, 0x0

    .line 1229
    .local v2, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v1, 0x0

    .line 1231
    .local v1, dtmfString:[B
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1233
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_3e

    .line 1234
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1248
    :goto_1d
    iput-boolean v5, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1250
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DTMF_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1251
    if-eqz v0, :cond_43

    .line 1252
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDTMFstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B

    move-result-object v1

    .line 1256
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    invoke-direct {v4, p1, v3, v1}, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;[B)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1258
    if-eqz v2, :cond_4b

    .line 1259
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1260
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v2

    throw p0

    move-result-object v6

    throw v4

    move v4, v7

    .line 1264
    :goto_3d
    return v4

    .line 1236
    :cond_3e
    const-string v4, "null alphaId, default sending..."

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_1d

    .line 1254
    :cond_43
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    :cond_4b
    move v4, v5

    .line 1264
    goto :goto_3d
.end method

.method private processSendSS(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1115
    const-string/jumbo v4, "process SendSS"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1118
    .local v3, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 1119
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v2, 0x0

    .line 1121
    .local v2, ssString:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1122
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_3e

    .line 1123
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1137
    :goto_1d
    iput-boolean v5, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1139
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SS_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_43

    .line 1141
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveSSstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    .line 1145
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    invoke-direct {v4, p1, v3, v2}, Lcom/android/internal/telephony/gsm/stk/SendSSParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1147
    if-eqz v1, :cond_4b

    .line 1148
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1149
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v6

    throw v4

    move v4, v7

    .line 1153
    :goto_3d
    return v4

    .line 1125
    :cond_3e
    const-string v4, "null alphaId, default sending..."

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_1d

    .line 1143
    :cond_43
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    :cond_4b
    move v4, v5

    .line 1153
    goto :goto_3d
.end method

.method private processSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1169
    const-string/jumbo v4, "process SendUSSD"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1171
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1172
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 1173
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v3, 0x0

    .line 1175
    .local v3, ussdString:[B
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1176
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_42

    .line 1177
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1191
    :goto_1d
    iput-boolean v5, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1193
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_47

    .line 1195
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveUSSDstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B

    move-result-object v3

    .line 1200
    if-nez v3, :cond_2f

    .line 1201
    new-array v3, v5, [B

    .line 1203
    :cond_2f
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;[B)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1205
    if-eqz v1, :cond_4f

    .line 1206
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1207
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v6

    throw v4

    move v4, v7

    .line 1211
    :goto_41
    return v4

    .line 1179
    :cond_42
    const-string v4, "null alphaId, default sending..."

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_1d

    .line 1197
    :cond_47
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    :cond_4f
    move v4, v5

    .line 1211
    goto :goto_41
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v8, 0x0

    .line 738
    const-string/jumbo v6, "process SetUpEventList"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 741
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_32

    .line 744
    :try_start_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 745
    .local v3, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 746
    .local v4, valueIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 747
    .local v5, valueLen:I
    if-eqz v5, :cond_33

    .line 748
    new-array v1, v5, [I

    .line 749
    .local v1, events:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    if-ge v2, v5, :cond_2b

    .line 750
    add-int v6, v4, v2

    aget-byte v6, v3, v6

    aput v6, v1, v2

    .line 749
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 752
    :cond_2b
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;

    invoke-direct {v6, p1, v5, v1}, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I[I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 761
    .end local v1           #events:[I
    .end local v2           #i:I
    .end local v3           #rawValue:[B
    .end local v4           #valueIndex:I
    .end local v5           #valueLen:I
    :cond_32
    :goto_32
    return v8

    .line 755
    .restart local v3       #rawValue:[B
    .restart local v4       #valueIndex:I
    .restart local v5       #valueLen:I
    :cond_33
    const/4 v6, 0x1

    new-array v1, v6, [I

    .line 756
    .restart local v1       #events:[I
    const/4 v6, 0x0

    const/16 v7, 0xff

    aput v7, v1, v6

    .line 757
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v7, v1}, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I[I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    :try_end_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_43} :catch_44

    goto :goto_32

    .line 759
    .end local v1           #events:[I
    .end local v3           #rawValue:[B
    .end local v4           #valueIndex:I
    .end local v5           #valueLen:I
    :catch_44
    move-exception v6

    goto :goto_32
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v6, 0x1

    .line 357
    const-string/jumbo v3, "process SetUpIdleModeText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 360
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 362
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 364
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1b

    .line 365
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 368
    :cond_1b
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 378
    :cond_1f
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 380
    if-eqz v1, :cond_32

    .line 381
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 382
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 386
    :goto_31
    return v3

    :cond_32
    const/4 v3, 0x0

    goto :goto_31
.end method

.method private processSetupCall(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 29
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 926
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string/jumbo v23, "process SetupCall"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 930
    .local v17, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v10, 0x0

    .line 932
    .local v10, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v9}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 934
    .local v9, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 935
    .local v7, callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v8, 0x0

    .line 936
    .local v8, confirmIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v6, 0x0

    .line 937
    .local v6, callIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v5, 0x0

    .line 938
    .local v5, address:Ljava/lang/String;
    const/16 v19, 0x0

    .line 940
    .local v19, subAddress:Z
    new-instance v23, Lcom/android/internal/telephony/gsm/stk/Duration;

    const/16 v24, 0x28

    sget-object v25, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-direct/range {v23 .. v25}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    move-object/from16 v0, v23

    move-object v1, v9

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 964
    sget-object v23, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v10

    .line 965
    if-eqz v10, :cond_49

    .line 966
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    .line 969
    :cond_49
    if-eqz v10, :cond_4d

    if-nez v5, :cond_5f

    .line 970
    :cond_4d
    const-string/jumbo v23, "processSetupCall(): address tag missing"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    new-instance v23, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v24, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct/range {v23 .. v24}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v23

    .line 974
    :cond_5f
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "result parse tag : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 980
    const/4 v14, 0x0

    .local v14, ctlvAlphaIdUserConfirmation:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    const/4 v13, 0x0

    .line 982
    .local v13, ctlvAlphaIdCallSetUp:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    sget-object v23, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v12

    .line 983
    .local v12, ctlvAlphaId:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v12, :cond_ac

    .line 985
    sget-object v23, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v11

    .line 986
    .local v11, ctlvAddress:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v11, :cond_121

    .line 988
    move-object v14, v12

    .line 991
    sget-object v23, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v13

    .line 998
    .end local v11           #ctlvAddress:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_ac
    :goto_ac
    if-eqz v14, :cond_b7

    .line 999
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v9

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1007
    :cond_b7
    if-eqz v13, :cond_c2

    .line 1008
    invoke-static {v13}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v7

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1016
    :cond_c2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "processSetupCall confirmMsg.text is : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object v0, v9

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "processSetupCall callMsg.text is : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    const/4 v15, 0x0

    .local v15, ctlvIconId1:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    const/16 v16, 0x0

    .line 1023
    .local v16, ctlvIconId2:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    const/16 v20, 0x0

    .local v20, temp0:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    const/16 v21, 0x0

    .local v21, temp1:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    const/16 v22, 0x0

    .line 1072
    .local v22, temp2:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    sget-object v23, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SUBADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v10

    .line 1073
    if-eqz v10, :cond_123

    .line 1074
    new-instance v23, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v24, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct/range {v23 .. v24}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v23

    .line 994
    .end local v15           #ctlvIconId1:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .end local v16           #ctlvIconId2:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .end local v20           #temp0:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .end local v21           #temp1:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .end local v22           #temp2:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .restart local v11       #ctlvAddress:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_121
    move-object v13, v12

    goto :goto_ac

    .line 1078
    .end local v11           #ctlvAddress:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .restart local v15       #ctlvIconId1:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .restart local v16       #ctlvIconId2:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .restart local v20       #temp0:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .restart local v21       #temp1:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .restart local v22       #temp2:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_123
    sget-object v23, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v10

    .line 1079
    if-eqz v10, :cond_147

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_147

    .line 1080
    new-instance v23, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v24, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct/range {v23 .. v24}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v23

    .line 1086
    :cond_147
    new-instance v23, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v7

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1088
    if-nez v8, :cond_15d

    if-eqz v6, :cond_1a3

    .line 1089
    :cond_15d
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1090
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1091
    .local v18, recordNumbers:[I
    const/16 v23, 0x0

    if-eqz v8, :cond_19d

    move-object v0, v8

    throw v0

    move/from16 v24, v0

    :goto_175
    aput v24, v18, v23

    .line 1093
    const/16 v23, 0x1

    if-eqz v6, :cond_1a0

    move-object v0, v6

    throw v0

    move/from16 v24, v0

    :goto_17f
    aput v24, v18, v23

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 1098
    const/16 v23, 0x1

    .line 1100
    .end local v18           #recordNumbers:[I
    :goto_19c
    return v23

    .line 1091
    .restart local v18       #recordNumbers:[I
    :cond_19d
    const/16 v24, -0x1

    goto :goto_175

    .line 1093
    :cond_1a0
    const/16 v24, -0x1

    goto :goto_17f

    .line 1100
    .end local v18           #recordNumbers:[I
    :cond_1a3
    const/16 v23, 0x0

    goto :goto_19c
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .registers 6
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v1

    .line 263
    .local v1, tagValue:I
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 264
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    .line 265
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_4

    move-object v2, v0

    .line 269
    .end local v0           #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :goto_17
    return-object v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .registers 5
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 245
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .registers 4
    .parameter "resCode"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendMessageParamsDecoded(Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 231
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;
    .registers 10
    .parameter "data"

    .prologue
    .line 208
    const/4 v5, 0x0

    .line 209
    .local v5, icons:[Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 211
    .local v4, iconIndex:I
    if-nez p1, :cond_7

    .line 212
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 226
    .end local p1
    :goto_6
    return-object v7

    .line 214
    .restart local p1
    :cond_7
    iget v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_2c

    .line 226
    .end local p1
    :cond_c
    :goto_c
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_6

    .line 216
    .restart local p1
    :pswitch_f
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_c

    .line 219
    .restart local p1
    :pswitch_17
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    move-object v0, p1

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 221
    move-object v1, v5

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_20
    if-ge v2, v6, :cond_c

    aget-object v3, v1, v2

    .line 222
    .local v3, icon:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 214
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 205
    :goto_5
    return-void

    .line 202
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_5

    .line 200
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/gsm/stk/BerTlv;)V
    .registers 9
    .parameter "berTlv"

    .prologue
    .line 99
    if-nez p1, :cond_3

    .line 196
    :cond_2
    :goto_2
    return-void

    .line 103
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 104
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_17

    .line 107
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 110
    :cond_17
    const/4 v1, 0x0

    .line 111
    .local v1, cmdPending:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v0

    .line 114
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-nez v0, :cond_28

    .line 115
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 121
    :cond_28
    iget v5, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    .line 123
    .local v2, cmdType:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    if-nez v2, :cond_36

    .line 124
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 129
    :cond_36
    :try_start_36
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_bc

    .line 184
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 185
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    :try_end_4d
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_36 .. :try_end_4d} :catch_4e

    goto :goto_2

    .line 188
    :catch_4e
    move-exception v5

    move-object v4, v5

    .line 189
    .local v4, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 190
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;->result()Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 131
    .end local v4           #e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    :pswitch_5f
    :try_start_5f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    :try_end_62
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_5f .. :try_end_62} :catch_4e

    move-result v1

    .line 193
    :goto_63
    if-nez v1, :cond_2

    .line 194
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 134
    :pswitch_6b
    :try_start_6b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 135
    goto :goto_63

    .line 137
    :pswitch_70
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 138
    goto :goto_63

    .line 140
    :pswitch_75
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 141
    goto :goto_63

    .line 143
    :pswitch_7a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 144
    goto :goto_63

    .line 146
    :pswitch_7f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 147
    goto :goto_63

    .line 149
    :pswitch_84
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendSS(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 150
    goto :goto_63

    .line 152
    :pswitch_89
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 153
    goto :goto_63

    .line 155
    :pswitch_8e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 156
    goto :goto_63

    .line 158
    :pswitch_93
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSMSCommand(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 159
    goto :goto_63

    .line 161
    :pswitch_98
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 162
    goto :goto_63

    .line 164
    :pswitch_9d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    .line 165
    const/4 v1, 0x0

    .line 166
    goto :goto_63

    .line 168
    :pswitch_a2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 169
    goto :goto_63

    .line 171
    :pswitch_a7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 172
    goto :goto_63

    .line 174
    :pswitch_ac
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 175
    goto :goto_63

    .line 177
    :pswitch_b1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 178
    goto :goto_63

    .line 180
    :pswitch_b6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processLanguageNotification(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    :try_end_b9
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_6b .. :try_end_b9} :catch_4e

    move-result v1

    .line 181
    goto :goto_63

    .line 129
    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_6b
        :pswitch_70
        :pswitch_75
        :pswitch_7a
        :pswitch_7f
        :pswitch_84
        :pswitch_89
        :pswitch_8e
        :pswitch_93
        :pswitch_98
        :pswitch_9d
        :pswitch_a2
        :pswitch_a7
        :pswitch_ac
        :pswitch_b1
        :pswitch_b6
    .end packed-switch
.end method
