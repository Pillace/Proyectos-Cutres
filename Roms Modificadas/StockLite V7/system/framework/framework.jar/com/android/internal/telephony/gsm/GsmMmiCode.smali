.class public final Lcom/android/internal/telephony/gsm/GsmMmiCode;
.super Landroid/os/Handler;
.source "GsmMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final EVENT_GET_CLIR_COMPLETE:I = 0x2

.field static final EVENT_GET_SIM_STATUS_DONE:I = 0x8

.field static final EVENT_QUERY_CF_COMPLETE:I = 0x3

.field static final EVENT_QUERY_COMPLETE:I = 0x5

.field static final EVENT_SET_CFF_COMPLETE:I = 0x6

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final EVENT_USSD_CANCEL_COMPLETE:I = 0x7

.field static final EVENT_USSD_COMPLETE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final MCC_COLOMBIA:Ljava/lang/String; = "732"

.field static final MCC_CROATIA:Ljava/lang/String; = "219"

.field static final MCC_INDIA1:Ljava/lang/String; = "404"

.field static final MCC_INDIA2:Ljava/lang/String; = "405"

.field static final MCC_SERBIA:Ljava/lang/String; = "220"

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_CNAP:Ljava/lang/String; = "300"

.field static final SC_COLP:Ljava/lang/String; = "76"

.field static final SC_COLR:Ljava/lang/String; = "77"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field static sPatternSuppService:Ljava/util/regex/Pattern;

.field static sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;


# instance fields
.field action:Ljava/lang/String;

.field context:Landroid/content/Context;

.field dialingNumber:Ljava/lang/String;

.field private isCallFwdRegister:Z

.field private isPendingUSSD:Z

.field private isUssdRequest:Z

.field lastErr:Lcom/android/internal/telephony/CommandException$Error;

.field message:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field poundString:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field sc:Ljava/lang/String;

.field sia:Ljava/lang/String;

.field sib:Ljava/lang/String;

.field sic:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 170
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    .line 183
    const-string v0, "((\\*)(\\d{2,}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 496
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    .line 158
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 162
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->lastErr:Lcom/android/internal/telephony/CommandException$Error;

    .line 497
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 498
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    .line 499
    return-void
.end method

.method private barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "cbType"

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "33"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1668
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1684
    :goto_13
    return-object v0

    .line 1669
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "331"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1670
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1671
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "332"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1672
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1673
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1674
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1675
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "351"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1676
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1677
    :cond_64
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "330"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1679
    :cond_78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "333"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1680
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1681
    :cond_8c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "353"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_13

    .line 1684
    :cond_a1
    const-string v0, " "

    goto/16 :goto_13
.end method

.method private createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .registers 6
    .parameter "serviceClass"

    .prologue
    .line 1952
    const/4 v1, 0x0

    .line 1954
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1955
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1962
    const/4 v0, 0x1

    .line 1963
    .local v0, classMask:I
    :goto_1e
    const/16 v2, 0x80

    if-gt v0, v2, :cond_37

    .line 1966
    and-int v2, v0, p1

    if-eqz v2, :cond_34

    .line 1967
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1964
    :cond_34
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1971
    :cond_37
    return-object v1
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .registers 6
    .parameter "serviceClass"

    .prologue
    .line 1935
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1938
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1939
    .local v0, classMask:I
    :goto_f
    const/16 v2, 0x80

    if-gt v0, v2, :cond_28

    .line 1942
    and-int v2, v0, p1

    if-eqz v2, :cond_25

    .line 1943
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1940
    :cond_25
    shl-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1947
    :cond_28
    return-object v1
.end method

.method private forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "cfType"

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1649
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1660
    :goto_13
    return-object v0

    .line 1650
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1651
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1652
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "67"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1654
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "62"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1656
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "61"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1657
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1658
    :cond_64
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    .line 1660
    :cond_78
    const-string v0, " "

    goto :goto_13
.end method

.method private getScString()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_88

    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1262
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1278
    :goto_15
    return-object v0

    .line 1263
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 1265
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 1267
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1268
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 1269
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1270
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 1271
    :cond_64
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1272
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 1273
    :cond_78
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15

    .line 1278
    :cond_88
    const-string v0, ""

    goto :goto_15
.end method

.method private handlePasswordError(I)V
    .registers 4
    .parameter "res"

    .prologue
    .line 1040
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1042
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1044
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1045
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1046
    return-void
.end method

.method private static isCroatiaShortCode(Ljava/lang/String;)Z
    .registers 8
    .parameter "dialString"

    .prologue
    const/4 v5, 0x0

    const-string v6, "isCroatiaShortCode Returning false"

    const-string v4, "GSM"

    .line 610
    const-string v0, "000"

    .line 611
    .local v0, mcc:Ljava/lang/String;
    const-string v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, numeric:Ljava/lang/String;
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_6c

    .line 614
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 616
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCroatiaShortCode mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v2, "219"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "92"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "93"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "94"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "95"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "96"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 624
    :cond_63
    const-string v2, "GSM"

    const-string v2, "isCroatiaShortCode Returning true"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v2, 0x1

    .line 628
    :goto_6b
    return v2

    .line 618
    :cond_6c
    const-string v2, "GSM"

    const-string v2, "isCroatiaShortCode Returning false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 619
    goto :goto_6b

    .line 627
    :cond_75
    const-string v2, "GSM"

    const-string v2, "isCroatiaShortCode Returning false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 628
    goto :goto_6b
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 347
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isExcludedShortCode(Ljava/lang/String;)Z
    .registers 5
    .parameter "dialString"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 712
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_12

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_24

    :cond_12
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_24

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_24

    move v0, v3

    :goto_23
    return v0

    :cond_24
    move v0, v2

    goto :goto_23
.end method

.method private static isSerbiaShortCode(Ljava/lang/String;)Z
    .registers 8
    .parameter "dialString"

    .prologue
    const/4 v5, 0x0

    const-string v6, "isSerbiaShortCode Returning false"

    const-string v4, "GSM"

    .line 639
    const-string v0, "000"

    .line 640
    .local v0, mcc:Ljava/lang/String;
    const-string v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, numeric:Ljava/lang/String;
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_6c

    .line 643
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 645
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSerbiaShortCode mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v2, "220"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "92"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "93"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "94"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "95"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "96"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 653
    :cond_63
    const-string v2, "GSM"

    const-string v2, "isSerbiaShortCode Returning true"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v2, 0x1

    .line 657
    :goto_6b
    return v2

    .line 647
    :cond_6c
    const-string v2, "GSM"

    const-string v2, "isSerbiaShortCode Returning false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 648
    goto :goto_6b

    .line 656
    :cond_75
    const-string v2, "GSM"

    const-string v2, "isSerbiaShortCode Returning false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 657
    goto :goto_6b
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .registers 2
    .parameter "sc"

    .prologue
    .line 444
    if-eqz p0, :cond_44

    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_42
    const/4 v0, 0x1

    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .registers 2
    .parameter "sc"

    .prologue
    .line 425
    if-eqz p0, :cond_34

    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method static isServiceCodeUnsupported(Ljava/lang/String;)Z
    .registers 2
    .parameter "sc"

    .prologue
    .line 458
    if-eqz p0, :cond_1c

    const-string v0, "76"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "77"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "300"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .registers 7
    .parameter "dialString"
    .parameter "phone"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, shortCodeExclusionFlag:Z
    const-string/jumbo v1, "persist.cust.tel.adapt"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 673
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 674
    const-string v1, "GSM"

    const-string v2, "Adapt, Number needs to be checked for short code exclusion list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isExcludedShortCode(Ljava/lang/String;)Z

    move-result v0

    .line 694
    :cond_1d
    if-eqz p0, :cond_53

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_53

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_3f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_53

    :cond_3f
    if-nez v0, :cond_53

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    :cond_51
    const/4 v1, 0x1

    :goto_52
    return v1

    :cond_53
    move v1, v3

    goto :goto_52
.end method

.method private static isUSSDExceptionCountry()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "isUSSDExceptionCountry Returning false"

    const-string v4, "GSM"

    .line 574
    const-string v0, "000"

    .line 575
    .local v0, mcc:Ljava/lang/String;
    const-string v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, numeric:Ljava/lang/String;
    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_54

    .line 578
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 580
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUSSDExceptionCountry mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v2, "404"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    const-string v2, "405"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    const-string v2, "732"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 587
    :cond_4b
    const-string v2, "GSM"

    const-string v2, "isUSSDExceptionCountry Returning true"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v2, 0x1

    .line 591
    :goto_53
    return v2

    .line 582
    :cond_54
    const-string v2, "GSM"

    const-string v2, "isUSSDExceptionCountry Returning false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 583
    goto :goto_53

    .line 590
    :cond_5d
    const-string v2, "GSM"

    const-string v2, "isUSSDExceptionCountry Returning false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 591
    goto :goto_53
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .registers 13
    .parameter "info"
    .parameter "serviceClassMask"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1693
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v5, "{0}"

    aput-object v5, v3, v8

    const-string/jumbo v5, "{1}"

    aput-object v5, v3, v7

    const-string/jumbo v5, "{2}"

    aput-object v5, v3, v9

    .line 1694
    .local v3, sources:[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 1700
    .local v1, destinations:[Ljava/lang/CharSequence;
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, v9, :cond_6e

    move v2, v7

    .line 1703
    .local v2, needTimeTemplate:Z
    :goto_1c
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v7, :cond_7a

    .line 1704
    if-eqz v2, :cond_70

    .line 1705
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400fd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1732
    .local v4, template:Ljava/lang/CharSequence;
    :goto_2b
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, p2

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v8

    .line 1733
    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 1734
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 1737
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v5, :cond_69

    .line 1738
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v7, :cond_a6

    move v0, v7

    .line 1740
    .local v0, cffEnabled:Z
    :goto_4f
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, p2

    if-ne v5, v7, :cond_5b

    .line 1742
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v7, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1744
    :cond_5b
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, p2

    const/16 v6, 0x10

    if-ne v5, v6, :cond_69

    .line 1746
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v7, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVideoCallForwardingFlag(IZ)V

    .line 1758
    .end local v0           #cffEnabled:Z
    :cond_69
    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5

    .end local v2           #needTimeTemplate:Z
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_6e
    move v2, v8

    .line 1700
    goto :goto_1c

    .line 1708
    .restart local v2       #needTimeTemplate:Z
    :cond_70
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400fc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_2b

    .line 1711
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_7a
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v5, :cond_90

    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 1712
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400fb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_2b

    .line 1718
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_90
    if-eqz v2, :cond_9c

    .line 1719
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400ff

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_2b

    .line 1722
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_9c
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_2b

    :cond_a6
    move v0, v8

    .line 1738
    goto :goto_4f
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 339
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 341
    :goto_9
    return-object v0

    :cond_a
    move-object v0, p0

    goto :goto_9
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .registers 7
    .parameter "dialString"
    .parameter "phone"

    .prologue
    const-string v4, "#"

    .line 216
    const/4 v1, 0x0

    .line 237
    .local v1, ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 241
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 242
    const-string v2, "*104#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "*140#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "#100#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "*400#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "*567#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "*140*#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "*220#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    :cond_47
    const-string v2, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 251
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v1           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 252
    .restart local v1       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    .line 267
    :goto_56
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUSSDExceptionCountry()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 269
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v2, :cond_77

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string v2, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 272
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    .line 273
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    .line 298
    :cond_77
    :goto_77
    return-object v1

    .line 256
    :cond_78
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v1           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 257
    .restart local v1       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    .line 258
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    .line 259
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    .line 260
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    .line 261
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    .line 262
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    .line 263
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->pwd:Ljava/lang/String;

    .line 264
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    goto/16 :goto_56

    .line 278
    :cond_da
    const-string v2, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 283
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v1           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 284
    .restart local v1       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    goto :goto_77

    .line 285
    :cond_ea
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCroatiaShortCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 287
    const/4 v1, 0x0

    goto :goto_77

    .line 288
    :cond_f2
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSerbiaShortCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 291
    const/4 v1, 0x0

    goto/16 :goto_77

    .line 292
    :cond_fb
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 294
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v1           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 295
    .restart local v1       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    goto/16 :goto_77
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .registers 4
    .parameter "ussdMessge"
    .parameter "phone"

    .prologue
    .line 323
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 325
    .local v0, ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 326
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    .line 329
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .registers 5
    .parameter "ussdMessage"
    .parameter "isUssdRequest"
    .parameter "phone"

    .prologue
    .line 306
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 308
    .local v0, ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 309
    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest:Z

    .line 312
    if-eqz p1, :cond_13

    .line 313
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    .line 314
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 319
    :goto_12
    return-object v0

    .line 316
    :cond_13
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_12
.end method

.method private onGetClirComplete(Landroid/os/AsyncResult;)V
    .registers 10
    .parameter "ar"

    .prologue
    const v7, 0x10400d9

    const v6, 0x10400d6

    const v5, 0x10400ba

    const/4 v4, 0x0

    .line 1495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1496
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_31

    .line 1499
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1500
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1570
    :goto_29
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1571
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1572
    return-void

    .line 1504
    :cond_31
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v1, v0

    .line 1507
    .local v1, clirArgs:[I
    const/4 v3, 0x1

    aget v3, v1, v3

    packed-switch v3, :pswitch_data_c6

    goto :goto_29

    .line 1509
    :pswitch_40
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1511
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_29

    .line 1515
    :pswitch_51
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1517
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_29

    .line 1521
    :pswitch_62
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1523
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_29

    .line 1529
    :pswitch_70
    aget v3, v1, v4

    packed-switch v3, :pswitch_data_d4

    .line 1532
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1544
    :goto_7e
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_29

    .line 1536
    :pswitch_83
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 1540
    :pswitch_8d
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400d7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 1549
    :pswitch_9a
    aget v3, v1, v4

    packed-switch v3, :pswitch_data_dc

    .line 1552
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1565
    :goto_a8
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_29

    .line 1556
    :pswitch_ae
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_a8

    .line 1560
    :pswitch_bb
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_a8

    .line 1507
    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_40
        :pswitch_51
        :pswitch_62
        :pswitch_70
        :pswitch_9a
    .end packed-switch

    .line 1529
    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_83
        :pswitch_8d
    .end packed-switch

    .line 1549
    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_bb
    .end packed-switch
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .registers 16
    .parameter "ar"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "\n"

    .line 1764
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1765
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v9, "\n"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_4e

    .line 1768
    sget-object v9, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1770
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v10, 0x10402cc

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1771
    const-string v9, "\n"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1773
    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1850
    :goto_46
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1851
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1853
    return-void

    .line 1782
    :cond_4e
    iget-object v9, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v9

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v4, v0

    .line 1784
    .local v4, infos:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v9, v4

    if-nez v9, :cond_82

    .line 1786
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1789
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v10, 0x10400be

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1793
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v12, v10, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1847
    :cond_7d
    :goto_7d
    sget-object v9, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_46

    .line 1799
    :cond_82
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1808
    .local v8, tb:Landroid/text/SpannableStringBuilder;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1809
    const-string v9, "\n"

    invoke-virtual {v8, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1812
    const/4 v2, 0x0

    .line 1813
    .local v2, fi_voice:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v1, 0x0

    .line 1815
    .local v1, fi_video:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v7, 0x1

    .line 1816
    .local v7, serviceClassMask:I
    :goto_98
    const/16 v9, 0x80

    if-gt v7, v9, :cond_c5

    .line 1819
    const/4 v3, 0x0

    .local v3, i:I
    array-length v5, v4

    .local v5, s:I
    :goto_9e
    if-ge v3, v5, :cond_c2

    .line 1820
    aget-object v9, v4, v3

    iget v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v9, v7

    if-eqz v9, :cond_bf

    .line 1821
    aget-object v9, v4, v3

    invoke-direct {p0, v9, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1823
    const-string v9, "\n"

    invoke-virtual {v8, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1825
    if-ne v7, v12, :cond_b9

    .line 1826
    aget-object v2, v4, v3

    .line 1828
    :cond_b9
    const/16 v9, 0x10

    if-ne v7, v9, :cond_bf

    .line 1829
    aget-object v1, v4, v3

    .line 1819
    :cond_bf
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 1817
    :cond_c2
    shl-int/lit8 v7, v7, 0x1

    goto :goto_98

    .line 1834
    .end local v3           #i:I
    .end local v5           #s:I
    :cond_c5
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1837
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v10, "21"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 1838
    if-nez v2, :cond_db

    .line 1839
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v9, v12, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1841
    :cond_db
    if-nez v1, :cond_7d

    .line 1842
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v9, v12, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVideoCallForwardingFlag(IZ)V

    goto :goto_7d
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .registers 11
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const v6, 0x10400ba

    const/4 v5, 0x0

    const-string v4, "\n"

    const-string v7, " "

    .line 1857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1858
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_70

    .line 1861
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1862
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1864
    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1866
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1929
    :cond_44
    :goto_44
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1930
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1931
    return-void

    .line 1867
    :cond_4c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1868
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1869
    const-string v3, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 1875
    :cond_70
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v1, v0

    .line 1877
    .local v1, ints:[I
    array-length v3, v1

    if-eqz v3, :cond_134

    .line 1878
    aget v3, v1, v5

    if-nez v3, :cond_c1

    .line 1880
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 1881
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1882
    const-string v3, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    :cond_95
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "30"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 1886
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10402ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1926
    :goto_af
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_44

    .line 1889
    :cond_b4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 1895
    :cond_c1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 1897
    aget v3, v1, v8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 1898
    :cond_d5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 1900
    aget v3, v1, v5

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 1901
    :cond_e7
    aget v3, v1, v5

    if-ne v3, v8, :cond_129

    .line 1903
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 1904
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1905
    const-string v3, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    :cond_101
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v3, :cond_11c

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "30"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 1909
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10402cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 1913
    :cond_11c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400bc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 1921
    :cond_129
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_af

    .line 1924
    :cond_134
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_af
.end method

.method private onSetComplete(Landroid/os/AsyncResult;)V
    .registers 13
    .parameter "ar"

    .prologue
    const v6, 0x10400bf

    const/4 v10, 0x0

    const v9, 0x10400ba

    const-string v8, "\n"

    const-string v7, " "

    .line 1283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1284
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 1285
    .local v1, attemptsLeft:I
    const-string v5, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_21a

    .line 1288
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1289
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_20f

    .line 1290
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1291
    .local v2, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v5, :cond_151

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 1295
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v6, "05"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v6, "052"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 1296
    :cond_50
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1299
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_80

    .line 1300
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v3, v0

    .line 1301
    .local v3, intArray:[I
    array-length v5, v3

    if-lez v5, :cond_80

    aget v5, v3, v10

    if-ltz v5, :cond_80

    .line 1302
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10402ab

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1304
    aget v5, v3, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1313
    .end local v3           #intArray:[I
    :cond_80
    :goto_80
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1317
    :cond_8d
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 1318
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1319
    const-string v5, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1321
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1484
    .end local v2           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_be
    :goto_be
    const-string v5, "22210"

    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_351

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    if-eqz v5, :cond_351

    .line 1485
    const-string v5, "GSM"

    const-string v6, "OMN does not want to display a notification when it set call forward in STK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :goto_d9
    return-void

    .line 1308
    .restart local v2       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_da
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400c3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 1324
    :cond_e7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 1325
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1326
    const-string v5, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1328
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_be

    .line 1331
    :cond_119
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v6, "43"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_143

    .line 1332
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10402cc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1333
    const-string v5, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1337
    :cond_143
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1357
    :cond_151
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v5, :cond_174

    .line 1358
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400c3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1360
    const-string v5, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400c8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1364
    :cond_174
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a7

    .line 1365
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1366
    const-string v5, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1368
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1371
    :cond_1a7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1da

    .line 1372
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1373
    const-string v5, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1375
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1378
    :cond_1da
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v6, "43"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_204

    .line 1379
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10402cc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1380
    const-string v5, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1384
    :cond_204
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1393
    .end local v2           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_20f
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1396
    :cond_21a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-eqz v5, :cond_27f

    .line 1397
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1398
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    if-eqz v5, :cond_245

    .line 1399
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1400
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    .line 1417
    :goto_233
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v6, "31"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 1418
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto/16 :goto_be

    .line 1403
    :cond_245
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_268

    .line 1404
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1405
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    :cond_25b
    :goto_25b
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400bc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_233

    .line 1407
    :cond_268
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25b

    .line 1408
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1409
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25b

    .line 1420
    :cond_27f
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_2d4

    .line 1421
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1423
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2bd

    .line 1424
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1425
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    :cond_29f
    :goto_29f
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400be

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1436
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v6, "31"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 1437
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto/16 :goto_be

    .line 1427
    :cond_2bd
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29f

    .line 1428
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1429
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29f

    .line 1439
    :cond_2d4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_2ff

    .line 1440
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1442
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f4

    .line 1443
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1451
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    :cond_2f4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1457
    :cond_2ff
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v5

    if-eqz v5, :cond_342

    .line 1458
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1460
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_334

    .line 1462
    const-string v5, "26803"

    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32f

    .line 1463
    const-string v5, "GSM"

    const-string v6, "Operator is not OPT!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1472
    :cond_32f
    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    :cond_334
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x10400c0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1479
    :cond_342
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1480
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_be

    .line 1488
    :cond_351
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1489
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_d9
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "sc"

    .prologue
    const-string v2, "invalid call barring sc"

    .line 466
    if-nez p0, :cond_c

    .line 467
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_c
    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 471
    const-string v0, "AO"

    .line 485
    :goto_16
    return-object v0

    .line 472
    :cond_17
    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 473
    const-string v0, "OI"

    goto :goto_16

    .line 474
    :cond_22
    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 475
    const-string v0, "OX"

    goto :goto_16

    .line 476
    :cond_2d
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 477
    const-string v0, "AI"

    goto :goto_16

    .line 478
    :cond_38
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 479
    const-string v0, "IR"

    goto :goto_16

    .line 480
    :cond_43
    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 481
    const-string v0, "AB"

    goto :goto_16

    .line 482
    :cond_4e
    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 483
    const-string v0, "AG"

    goto :goto_16

    .line 484
    :cond_59
    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 485
    const-string v0, "AC"

    goto :goto_16

    .line 487
    :cond_64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .registers 4
    .parameter "sc"

    .prologue
    const-string v2, "invalid call forward sc"

    .line 353
    if-nez p0, :cond_c

    .line 354
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_c
    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 358
    const/4 v0, 0x4

    .line 368
    :goto_15
    return v0

    .line 359
    :cond_16
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 360
    const/4 v0, 0x0

    goto :goto_15

    .line 361
    :cond_20
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 362
    const/4 v0, 0x1

    goto :goto_15

    .line 363
    :cond_2a
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 364
    const/4 v0, 0x3

    goto :goto_15

    .line 365
    :cond_34
    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 366
    const/4 v0, 0x2

    goto :goto_15

    .line 367
    :cond_3e
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 368
    const/4 v0, 0x5

    goto :goto_15

    .line 370
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serviceClassString(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter "serviceClass"

    .prologue
    .line 1624
    sparse-switch p1, :sswitch_data_a6

    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0

    .line 1625
    :sswitch_d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1626
    :sswitch_17
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1627
    :sswitch_21
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1628
    :sswitch_2b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1629
    :sswitch_35
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1630
    :sswitch_3f
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1631
    :sswitch_49
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1632
    :sswitch_53
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1633
    :sswitch_5d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1634
    :sswitch_67
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1635
    :sswitch_71
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1636
    :sswitch_7b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1637
    :sswitch_85
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_c

    .line 1638
    :sswitch_90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_c

    .line 1639
    :sswitch_9b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_c

    .line 1624
    :sswitch_data_a6
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_17
        0x4 -> :sswitch_21
        0x5 -> :sswitch_85
        0x8 -> :sswitch_2b
        0xc -> :sswitch_7b
        0xd -> :sswitch_71
        0x10 -> :sswitch_35
        0x11 -> :sswitch_9b
        0x20 -> :sswitch_3f
        0x30 -> :sswitch_90
        0x40 -> :sswitch_49
        0x60 -> :sswitch_67
        0x80 -> :sswitch_53
        0xa0 -> :sswitch_5d
    .end sparse-switch
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter "serviceClass"

    .prologue
    .line 1582
    sparse-switch p1, :sswitch_data_56

    .line 1600
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1584
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1586
    :sswitch_f
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1588
    :sswitch_19
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1590
    :sswitch_23
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1592
    :sswitch_2d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1594
    :sswitch_37
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1596
    :sswitch_41
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1598
    :sswitch_4b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1582
    nop

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_f
        0x4 -> :sswitch_19
        0x8 -> :sswitch_23
        0x10 -> :sswitch_2d
        0x20 -> :sswitch_37
        0x40 -> :sswitch_41
        0x80 -> :sswitch_4b
    .end sparse-switch
.end method

.method private serviceModeToCFString(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter "reason"

    .prologue
    .line 1609
    packed-switch p1, :pswitch_data_42

    .line 1616
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1610
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1611
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1612
    :pswitch_19
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1613
    :pswitch_23
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1614
    :pswitch_2d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1615
    :pswitch_37
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10402ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1609
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_5
        :pswitch_f
        :pswitch_19
        :pswitch_23
        :pswitch_2d
        :pswitch_37
    .end packed-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .registers 5
    .parameter "si"

    .prologue
    .line 376
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 377
    :cond_8
    const/4 v1, 0x0

    .line 405
    :goto_9
    return v1

    .line 380
    :cond_a
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 382
    .local v0, serviceCode:I
    sparse-switch v0, :sswitch_data_52

    .line 408
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :sswitch_2d
    const/16 v1, 0xd

    goto :goto_9

    .line 384
    :sswitch_30
    const/4 v1, 0x1

    goto :goto_9

    .line 385
    :sswitch_32
    const/16 v1, 0xc

    goto :goto_9

    .line 386
    :sswitch_35
    const/4 v1, 0x4

    goto :goto_9

    .line 388
    :sswitch_37
    const/16 v1, 0x8

    goto :goto_9

    .line 390
    :sswitch_3a
    const/4 v1, 0x5

    goto :goto_9

    .line 398
    :sswitch_3c
    const/16 v1, 0x30

    goto :goto_9

    .line 400
    :sswitch_3f
    const/16 v1, 0xa0

    goto :goto_9

    .line 401
    :sswitch_42
    const/16 v1, 0x50

    goto :goto_9

    .line 402
    :sswitch_45
    const/16 v1, 0x10

    goto :goto_9

    .line 403
    :sswitch_48
    const/16 v1, 0x20

    goto :goto_9

    .line 404
    :sswitch_4b
    const/16 v1, 0x11

    goto :goto_9

    .line 405
    :sswitch_4e
    const/16 v1, 0x40

    goto :goto_9

    .line 382
    nop

    :sswitch_data_52
    .sparse-switch
        0xa -> :sswitch_2d
        0xb -> :sswitch_30
        0xc -> :sswitch_32
        0xd -> :sswitch_35
        0x10 -> :sswitch_37
        0x13 -> :sswitch_3a
        0x14 -> :sswitch_3c
        0x15 -> :sswitch_3f
        0x16 -> :sswitch_42
        0x18 -> :sswitch_45
        0x19 -> :sswitch_48
        0x1a -> :sswitch_4b
        0x63 -> :sswitch_4e
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .registers 2
    .parameter "si"

    .prologue
    .line 415
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 416
    :cond_8
    const/4 v0, 0x0

    .line 419
    :goto_9
    return v0

    :cond_a
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_d

    .line 542
    :cond_c
    :goto_c
    return-void

    .line 521
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 523
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    if-eqz v0, :cond_22

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->cancelPendingUssd(Landroid/os/Message;)V

    goto :goto_c

    .line 539
    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_c
.end method

.method getCLIRMode()I
    .registers 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 746
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 747
    const/4 v0, 0x2

    .line 753
    :goto_15
    return v0

    .line 748
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 749
    const/4 v0, 0x1

    goto :goto_15

    .line 753
    :cond_1e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 1143
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1144
    .local v1, ar:Landroid/os/AsyncResult;
    if-eqz v1, :cond_21

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_21

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_21

    .line 1145
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->lastErr:Lcom/android/internal/telephony/CommandException$Error;

    .line 1149
    :cond_21
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_dc

    .line 1255
    :cond_26
    :goto_26
    return-void

    .line 1151
    :pswitch_27
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1153
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_26

    .line 1157
    :pswitch_33
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1166
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_76

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_76

    .line 1167
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_7a

    move v2, v6

    .line 1169
    .local v2, cffEnabled:Z
    :goto_49
    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_56

    .line 1170
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3, v6, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1172
    :cond_56
    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_63

    .line 1173
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3, v6, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVideoCallForwardingFlag(IZ)V

    .line 1175
    :cond_63
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_76

    .line 1176
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1190
    .end local v2           #cffEnabled:Z
    :cond_76
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_26

    .line 1167
    :cond_7a
    const/4 v3, 0x0

    move v2, v3

    goto :goto_49

    .line 1194
    :pswitch_7d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1195
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_26

    .line 1199
    :pswitch_89
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1200
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto :goto_26

    .line 1204
    :pswitch_95
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1205
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_26

    .line 1209
    :pswitch_a1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1211
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_26

    .line 1212
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1213
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400ba

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1234
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_26

    .line 1245
    :pswitch_c3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_26

    .line 1249
    :pswitch_ca
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1250
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/SimCard;->handleSimState(Landroid/os/AsyncResult;)V

    goto/16 :goto_26

    .line 1149
    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_27
        :pswitch_7d
        :pswitch_89
        :pswitch_a1
        :pswitch_95
        :pswitch_33
        :pswitch_c3
        :pswitch_ca
    .end packed-switch
.end method

.method isActivate()Z
    .registers 3

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isCancelable()Z
    .registers 2

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    return v0
.end method

.method isDeactivate()Z
    .registers 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method isErasure()Z
    .registers 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method isInterrogate()Z
    .registers 3

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method isMMI()Z
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPendingUSSD()Z
    .registers 2

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    return v0
.end method

.method isPinCommand()Z
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method isRegister()Z
    .registers 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method isShortCode()Z
    .registers 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method isTemporaryModeCLIR()Z
    .registers 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public isUssdRequest()Z
    .registers 2

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest:Z

    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .registers 5
    .parameter "ussdMessage"
    .parameter "isUssdRequest"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_20

    .line 1060
    if-nez p1, :cond_21

    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1065
    :goto_13
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest:Z

    .line 1067
    if-nez p2, :cond_1b

    .line 1068
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1091
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1093
    :cond_20
    return-void

    .line 1063
    :cond_21
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    goto :goto_13
.end method

.method onUssdFinishedError()V
    .registers 3

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1a

    .line 1104
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1109
    :cond_1a
    return-void
.end method

.method processCode()V
    .registers 27

    .prologue
    .line 792
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 793
    const-string v5, "GSM"

    const-string v6, "isShortCode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1037
    :cond_18
    :goto_18
    return-void

    .line 796
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_4f

    .line 798
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_28} :catch_28

    .line 1032
    :catch_28
    move-exception v5

    move-object/from16 v22, v5

    .line 1033
    .local v22, exc:Ljava/lang/RuntimeException;
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x10400ba

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_18

    .line 799
    .end local v22           #exc:Ljava/lang/RuntimeException;
    :cond_4f
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "30"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 800
    const-string v5, "GSM"

    const-string v6, "is CLIP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto :goto_18

    .line 805
    :cond_85
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 807
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "31"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_106

    .line 808
    const-string v5, "GSM"

    const-string v6, "is CLIR"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_18

    .line 812
    :cond_c5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_18

    .line 815
    :cond_e2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto/16 :goto_18

    .line 819
    :cond_fe
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 821
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_207

    .line 822
    const-string v5, "GSM"

    const-string v6, "is CF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v9, v0

    .line 825
    .local v9, dialingNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v8

    .line 826
    .local v8, serviceClass:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v7

    .line 827
    .local v7, reason:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v10

    .line 829
    .local v10, time:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_154

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v7, v8, v9, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_18

    .line 836
    :cond_154
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-eqz v5, :cond_1e0

    .line 837
    if-eqz v9, :cond_1de

    .line 838
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    .line 839
    const/4 v6, 0x3

    .line 856
    .local v6, cfAction:I
    :goto_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_1ae

    .line 857
    const-string v5, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #dialingNumber:Ljava/lang/String;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Extract Network Portion["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "].."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 859
    .restart local v9       #dialingNumber:Ljava/lang/String;
    const-string v5, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Forward-to-Number: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_1ae
    const/16 v21, -0x1

    .line 864
    .local v21, enableDesiredIfCfu:I
    if-eqz v7, :cond_1b5

    const/4 v5, 0x4

    if-ne v7, v5, :cond_1be

    .line 866
    :cond_1b5
    const/4 v5, 0x1

    if-eq v6, v5, :cond_1bb

    const/4 v5, 0x3

    if-ne v6, v5, :cond_203

    :cond_1bb
    const/4 v5, 0x1

    move/from16 v21, v5

    .line 870
    :cond_1be
    :goto_1be
    const-string v5, "GSM"

    const-string v11, "is CF setCallForward"

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x6

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move/from16 v3, v21

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_18

    .line 841
    .end local v6           #cfAction:I
    .end local v21           #enableDesiredIfCfu:I
    :cond_1de
    const/4 v6, 0x1

    .restart local v6       #cfAction:I
    goto :goto_163

    .line 843
    .end local v6           #cfAction:I
    :cond_1e0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_1e9

    .line 844
    const/4 v6, 0x0

    .restart local v6       #cfAction:I
    goto/16 :goto_163

    .line 845
    .end local v6           #cfAction:I
    :cond_1e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_1f2

    .line 846
    const/4 v6, 0x3

    .restart local v6       #cfAction:I
    goto/16 :goto_163

    .line 847
    .end local v6           #cfAction:I
    :cond_1f2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v5

    if-eqz v5, :cond_1fb

    .line 848
    const/4 v6, 0x4

    .restart local v6       #cfAction:I
    goto/16 :goto_163

    .line 850
    .end local v6           #cfAction:I
    :cond_1fb
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "invalid action"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 866
    .restart local v6       #cfAction:I
    .restart local v21       #enableDesiredIfCfu:I
    :cond_203
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_1be

    .line 895
    .end local v6           #cfAction:I
    .end local v7           #reason:I
    .end local v8           #serviceClass:I
    .end local v9           #dialingNumber:Ljava/lang/String;
    .end local v10           #time:I
    .end local v21           #enableDesiredIfCfu:I
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_274

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v14, v0

    .line 900
    .local v14, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v8

    .line 901
    .restart local v8       #serviceClass:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 903
    .local v12, facility:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_245

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v12, v14, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_18

    .line 906
    :cond_245
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-nez v5, :cond_251

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_26c

    .line 907
    :cond_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v13

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move v15, v8

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_18

    .line 910
    :cond_26c
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 913
    .end local v8           #serviceClass:I
    .end local v12           #facility:Ljava/lang/String;
    .end local v14           #password:Ljava/lang/String;
    :cond_274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "03"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e0

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 920
    .local v17, oldPwd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 921
    .local v18, newPwd:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-nez v5, :cond_2a0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_2d8

    .line 923
    :cond_2a0
    const-string v5, "**"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_2ce

    .line 927
    const-string v12, "AB"

    .line 932
    .restart local v12       #facility:Ljava/lang/String;
    :goto_2b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v15, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->pwd:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v16, v12

    invoke-interface/range {v15 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_18

    .line 929
    .end local v12           #facility:Ljava/lang/String;
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #facility:Ljava/lang/String;
    goto :goto_2b0

    .line 945
    .end local v12           #facility:Ljava/lang/String;
    :cond_2d8
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 948
    .end local v17           #oldPwd:Ljava/lang/String;
    .end local v18           #newPwd:Ljava/lang/String;
    :cond_2e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_347

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "43"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_347

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v8

    .line 952
    .restart local v8       #serviceClass:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-nez v5, :cond_309

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_323

    .line 953
    :cond_309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_18

    .line 955
    :cond_323
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_33f

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_18

    .line 959
    :cond_33f
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 961
    .end local v8           #serviceClass:I
    :cond_347
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v5

    if-eqz v5, :cond_46f

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 966
    .local v24, oldPinOrPuk:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 967
    .local v23, newPin:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    .line 968
    .local v25, pinLen:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_467

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37c

    .line 971
    const v5, 0x10400c5

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_18

    .line 972
    :cond_37c
    const/4 v5, 0x4

    move/from16 v0, v25

    move v1, v5

    if-lt v0, v1, :cond_389

    const/16 v5, 0x8

    move/from16 v0, v25

    move v1, v5

    if-le v0, v1, :cond_394

    .line 974
    :cond_389
    const v5, 0x10400c6

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_18

    .line 975
    :cond_394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "04"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v6, :cond_3bb

    .line 978
    const v5, 0x10400c7

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_18

    .line 982
    :cond_3bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "04"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e6

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_18

    .line 990
    :cond_3e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "042"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_411

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_18

    .line 998
    :cond_411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "05"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43c

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_18

    .line 1006
    :cond_43c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "052"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_18

    .line 1018
    :cond_467
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1020
    .end local v23           #newPin:Ljava/lang/String;
    .end local v24           #oldPinOrPuk:Ljava/lang/String;
    .end local v25           #pinLen:I
    :cond_46f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_4d0

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeUnsupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c3

    .line 1022
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported MMI code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x10402aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_18

    .line 1027
    :cond_4c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1030
    :cond_4d0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4d8
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4d8} :catch_28
.end method

.method sendEncodedUssd([BII)V
    .registers 6
    .parameter "ussdMessage"
    .parameter "length"
    .parameter "dcsCode"

    .prologue
    .line 1126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendEncodedUSSD([BIILandroid/os/Message;)V

    .line 1135
    return-void
.end method

.method sendUssd(Ljava/lang/String;)V
    .registers 4
    .parameter "ussdMessage"

    .prologue
    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1122
    return-void
.end method
