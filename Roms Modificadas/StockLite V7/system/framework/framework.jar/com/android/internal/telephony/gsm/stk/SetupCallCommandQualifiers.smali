.class final enum Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;
.super Ljava/lang/Enum;
.source "StkService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

.field public static final enum SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

.field public static final enum SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

.field public static final enum SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

.field public static final enum SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

.field public static final enum SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

.field public static final enum SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->mValue:I

    .line 66
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;
    .registers 6
    .parameter "value"

    .prologue
    .line 78
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->values()[Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 79
    .local v1, e:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->mValue:I

    if-ne v4, p0, :cond_10

    move-object v4, v1

    .line 83
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;
    :goto_f
    return-object v4

    .line 78
    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 83
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;
    .registers 2
    .parameter "name"

    .prologue
    .line 54
    const-class v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->mValue:I

    return v0
.end method
