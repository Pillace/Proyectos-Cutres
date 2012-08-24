.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final COUNTLY_CALLING_CALL:[Z = null

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    .line 73
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1051
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 1470
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 1472
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1473
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1475
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1476
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1478
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1479
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1481
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1482
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1484
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1485
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1487
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1488
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1490
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1491
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1493
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1494
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1924
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_246

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    .line 1936
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 1924
    :array_246
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1959
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    .line 1784
    const/4 v3, 0x1

    if-ne p0, v3, :cond_16

    .line 1785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1786
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1787
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1794
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_15
    return-object v2

    .line 1791
    .end local v2           #retStr:Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1792
    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_15
.end method

.method private static bcdToChar(B)C
    .registers 2
    .parameter "b"

    .prologue
    .line 899
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 900
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 907
    :goto_7
    return v0

    .line 901
    :cond_8
    packed-switch p0, :pswitch_data_1a

    .line 907
    const/4 v0, 0x0

    goto :goto_7

    .line 902
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 903
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 904
    :pswitch_13
    const/16 v0, 0x2c

    goto :goto_7

    .line 905
    :pswitch_16
    const/16 v0, 0x4e

    goto :goto_7

    .line 901
    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 891
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 893
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 15
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v11, ""

    .line 746
    const/4 v2, 0x0

    .line 747
    .local v2, prependPlus:Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 749
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ge p2, v8, :cond_16

    .line 750
    const-string v5, ""

    move-object v5, v11

    .line 841
    :goto_15
    return-object v5

    .line 754
    :cond_16
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1f

    .line 755
    const/4 v2, 0x1

    .line 758
    :cond_1f
    add-int/lit8 v5, p1, 0x1

    sub-int v6, p2, v7

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 761
    if-eqz v2, :cond_32

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_32

    .line 763
    const-string v5, ""

    move-object v5, v11

    goto :goto_15

    .line 766
    :cond_32
    if-eqz v2, :cond_7b

    .line 792
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, retString:Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 794
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 795
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_af

    .line 796
    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v4           #retString:Ljava/lang/String;
    :cond_7b
    :goto_7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_15

    .line 810
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #p:Ljava/util/regex/Pattern;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_80
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 819
    :cond_af
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 820
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 834
    :cond_e6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "dialStr"

    .prologue
    const-string v4, ""

    .line 1532
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1533
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1535
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1538
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1544
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    :goto_41
    return-object v2

    :cond_42
    move-object v2, p0

    goto :goto_41
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormt"

    .prologue
    const/4 v7, 0x1

    .line 1576
    move-object v3, p0

    .line 1579
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_49

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_49

    .line 1583
    if-ne p1, p2, :cond_62

    if-ne p1, v7, :cond_62

    .line 1585
    const/4 v2, 0x0

    .line 1586
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 1589
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1596
    :cond_14
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1601
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 1602
    if-nez v3, :cond_4b

    .line 1603
    move-object v3, v1

    .line 1614
    :goto_25
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1615
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1616
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 1619
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_57

    .line 1620
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1623
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1635
    .end local v0           #dialableIndex:I
    :cond_3d
    :goto_3d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_49
    :goto_49
    move-object v5, v3

    .line 1643
    :goto_4a
    return-object v5

    .line 1605
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    :cond_4b
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 1611
    :cond_50
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    .line 1612
    goto :goto_4a

    .line 1628
    .restart local v0       #dialableIndex:I
    :cond_57
    if-gez v0, :cond_5b

    .line 1629
    const-string v2, ""

    .line 1631
    :cond_5b
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1640
    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_62
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private static charToBCD(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/16 v1, 0x30

    .line 913
    if-lt p0, v1, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 914
    sub-int v0, p0, v1

    .line 922
    :goto_a
    return v0

    .line 915
    :cond_b
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_12

    .line 916
    const/16 v0, 0xa

    goto :goto_a

    .line 917
    :cond_12
    const/16 v0, 0x23

    if-ne p0, v0, :cond_19

    .line 918
    const/16 v0, 0xb

    goto :goto_a

    .line 919
    :cond_19
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_20

    .line 920
    const/16 v0, 0xc

    goto :goto_a

    .line 921
    :cond_20
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    .line 922
    const/16 v0, 0xd

    goto :goto_a

    .line 924
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v2, 0x0

    .line 2087
    const/4 v0, 0x0

    .line 2088
    .local v0, trunk_prefix_was_read:Z
    :goto_2
    if-lt p2, p1, :cond_22

    .line 2089
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    if-ltz v1, :cond_16

    .line 2090
    if-eqz v0, :cond_12

    move v1, v2

    .line 2105
    :goto_11
    return v1

    .line 2096
    :cond_12
    const/4 v0, 0x1

    .line 2102
    :cond_13
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2098
    :cond_16
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    .line 2100
    goto :goto_11

    .line 2105
    :cond_22
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 354
    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    .line 361
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "a"
    .parameter "b"

    .prologue
    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, numNonDialableCharsInA:I
    const/4 v4, 0x0

    .line 385
    .local v4, numNonDialableCharsInB:I
    if-eqz p0, :cond_6

    if-nez p1, :cond_f

    :cond_6
    if-ne p0, p1, :cond_d

    const/4 p0, 0x1

    .end local p0
    :goto_9
    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .line 469
    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    :goto_c
    return v0

    .line 385
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_d
    const/4 p0, 0x0

    goto :goto_9

    .line 387
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 388
    :cond_1b
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_c

    .line 391
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_20
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    .line 392
    .local v0, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 393
    .local v1, ib:I
    const/4 v2, 0x0

    .local v2, matched:I
    move v6, v4

    .end local v4           #numNonDialableCharsInB:I
    .local v6, numNonDialableCharsInB:I
    move v4, v2

    .end local v2           #matched:I
    .local v4, matched:I
    move v2, v3

    .end local v3           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v3, v1

    .end local v1           #ib:I
    .local v3, ib:I
    move v1, v0

    .line 395
    .end local v0           #ia:I
    .local v1, ia:I
    :goto_2e
    if-ltz v1, :cond_e8

    if-ltz v3, :cond_e8

    .line 397
    const/4 v5, 0x0

    .line 399
    .local v5, skipCmp:Z
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 401
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_e3

    .line 402
    add-int/lit8 v1, v1, -0x1

    .line 403
    const/4 v5, 0x1

    .line 404
    add-int/lit8 v2, v2, 0x1

    move v7, v5

    .end local v5           #skipCmp:Z
    .local v7, skipCmp:Z
    move v5, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v5, numNonDialableCharsInA:I
    move v2, v1

    .line 407
    .end local v1           #ia:I
    .local v2, ia:I
    :goto_45
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 409
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v8

    if-nez v8, :cond_54

    .line 410
    add-int/lit8 v3, v3, -0x1

    .line 411
    const/4 v7, 0x1

    .line 412
    add-int/lit8 v6, v6, 0x1

    .line 415
    :cond_54
    if-nez v7, :cond_df

    .line 416
    if-eq v1, v0, :cond_7a

    const/16 v7, 0x4e

    if-eq v0, v7, :cond_7a

    .end local v7           #skipCmp:Z
    const/16 v0, 0x4e

    if-eq v1, v0, :cond_7a

    .end local v0           #ca:C
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v3, v6

    .end local v6           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    move v2, v5

    .line 423
    .end local v5           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    :goto_64
    const/4 v5, 0x7

    if-ge v4, v5, :cond_8a

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    sub-int/2addr p0, v2

    .line 425
    .local p0, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1           #b:Ljava/lang/String;
    sub-int/2addr p1, v3

    .line 430
    .local p1, effectiveBLen:I
    if-ne p0, p1, :cond_85

    if-ne p0, v4, :cond_85

    .line 431
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_c

    .line 419
    .end local v0           #ia:I
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v5       #numNonDialableCharsInA:I
    .restart local v6       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_7a
    add-int/lit8 v0, v2, -0x1

    .end local v2           #ia:I
    .restart local v0       #ia:I
    add-int/lit8 v1, v3, -0x1

    .end local v3           #ib:I
    .local v1, ib:I
    add-int/lit8 v2, v4, 0x1

    .end local v4           #matched:I
    .local v2, matched:I
    :goto_80
    move v4, v2

    .end local v2           #matched:I
    .restart local v4       #matched:I
    move v3, v1

    .end local v1           #ib:I
    .restart local v3       #ib:I
    move v2, v5

    .end local v5           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v1, v0

    .line 421
    .end local v0           #ia:I
    .local v1, ia:I
    goto :goto_2e

    .line 434
    .end local v6           #numNonDialableCharsInB:I
    .restart local v0       #ia:I
    .local v1, ib:I
    .local v3, numNonDialableCharsInB:I
    .local p0, effectiveALen:I
    .local p1, effectiveBLen:I
    :cond_85
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_c

    .line 438
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_8a
    const/4 v5, 0x7

    if-lt v4, v5, :cond_97

    if-ltz v0, :cond_91

    if-gez v1, :cond_97

    .line 439
    :cond_91
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 451
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_97
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    .end local v4           #matched:I
    move-result v4

    if-eqz v4, :cond_ad

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 454
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 457
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_ad
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c3

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 460
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 463
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_c3
    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    .end local v1           #ib:I
    move-result p1

    .end local p1           #b:Ljava/lang/String;
    if-eqz p1, :cond_d9

    add-int/lit8 p1, v0, 0x1

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    if-eqz p0, :cond_d9

    .line 466
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 469
    .end local p0           #numNonDialableCharsInA:I
    .end local p1           #numNonDialableCharsInB:I
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    :cond_d9
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .restart local p1       #numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .restart local p0       #numNonDialableCharsInA:I
    goto/16 :goto_c

    .local v0, ca:C
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v4       #matched:I
    .restart local v5       #numNonDialableCharsInA:I
    .restart local v6       #numNonDialableCharsInB:I
    .restart local v7       #skipCmp:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_df
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v2, v4

    .end local v4           #matched:I
    .local v2, matched:I
    goto :goto_80

    .end local v7           #skipCmp:Z
    .local v0, ca:C
    .local v1, ia:I
    .local v2, numNonDialableCharsInA:I
    .restart local v3       #ib:I
    .restart local v4       #matched:I
    .local v5, skipCmp:Z
    :cond_e3
    move v7, v5

    .end local v5           #skipCmp:Z
    .restart local v7       #skipCmp:Z
    move v5, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v5, numNonDialableCharsInA:I
    move v2, v1

    .end local v1           #ia:I
    .local v2, ia:I
    goto/16 :goto_45

    .end local v0           #ca:C
    .end local v5           #numNonDialableCharsInA:I
    .end local v7           #skipCmp:Z
    .restart local v1       #ia:I
    .local v2, numNonDialableCharsInA:I
    :cond_e8
    move v0, v1

    .end local v1           #ia:I
    .local v0, ia:I
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v3, v6

    .end local v6           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    goto/16 :goto_64
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 477
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    .line 485
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 486
    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    .line 623
    .end local p0
    .end local p1
    .end local p2
    :goto_7
    return p0

    .line 486
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_8
    const/4 p0, 0x0

    goto :goto_7

    .line 487
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 488
    const/4 p0, 0x0

    goto :goto_7

    .line 491
    :cond_18
    const/4 v3, 0x0

    .line 492
    .local v3, forwardIndexA:I
    const/4 v4, 0x0

    .line 494
    .local v4, forwardIndexB:I
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v1

    .line 496
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v2

    .line 498
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v0, 0x0

    .line 499
    .local v0, bothHasCountryCallingCode:Z
    const/4 v5, 0x1

    .line 500
    .local v5, okToIgnorePrefix:Z
    const/4 v6, 0x0

    .line 501
    .local v6, trunkPrefixIsOmittedA:Z
    const/4 v7, 0x0

    .line 502
    .local v7, trunkPrefixIsOmittedB:Z
    if-eqz v1, :cond_6f

    if-eqz v2, :cond_6f

    .line 503
    iget v0, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v0           #bothHasCountryCallingCode:Z
    iget v3, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v3           #forwardIndexA:I
    if-eq v0, v3, :cond_32

    .line 505
    const/4 p0, 0x0

    goto :goto_7

    .line 509
    :cond_32
    const/4 v3, 0x0

    .line 510
    .end local v5           #okToIgnorePrefix:Z
    .local v3, okToIgnorePrefix:Z
    const/4 v0, 0x1

    .line 511
    .restart local v0       #bothHasCountryCallingCode:Z
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 512
    .local v1, forwardIndexA:I
    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v10, trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v9, trunkPrefixIsOmittedA:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v3

    .end local v3           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v2, v0

    .line 538
    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 539
    .local v0, backwardIndexA:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 540
    .local v1, backwardIndexB:I
    :cond_4a
    :goto_4a
    if-lt v0, v5, :cond_aa

    if-lt v1, v6, :cond_aa

    .line 541
    const/4 v8, 0x0

    .line 542
    .local v8, skip_compare:Z
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 543
    .local v3, chA:C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 544
    .local v4, chB:C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_60

    .line 545
    add-int/lit8 v0, v0, -0x1

    .line 546
    const/4 v8, 0x1

    .line 548
    :cond_60
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 549
    add-int/lit8 v1, v1, -0x1

    .line 550
    const/4 v8, 0x1

    .line 553
    :cond_69
    if-nez v8, :cond_4a

    .line 554
    if-eq v3, v4, :cond_a5

    .line 555
    const/4 p0, 0x0

    goto :goto_7

    .line 513
    .end local v8           #skip_compare:Z
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_6f
    if-nez v1, :cond_7b

    if-nez v2, :cond_7b

    .line 516
    const/4 v1, 0x0

    .end local v5           #okToIgnorePrefix:Z
    .local v1, okToIgnorePrefix:Z
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v3

    .end local v3           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v4

    .end local v4           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v1

    .end local v1           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    goto :goto_3e

    .line 518
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .restart local v3       #forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_7b
    if-eqz v1, :cond_8b

    .line 519
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .line 527
    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    :goto_80
    if-eqz v2, :cond_95

    .line 528
    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_3e

    .line 521
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_8b
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v1           #cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v1

    .line 522
    .local v1, tmp:I
    if-ltz v1, :cond_130

    .line 523
    move v1, v1

    .line 524
    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    const/4 v3, 0x1

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto :goto_80

    .line 530
    :cond_95
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v2           #cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v2

    .line 531
    .local v2, tmp:I
    if-ltz v2, :cond_128

    .line 532
    move v2, v2

    .line 533
    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    const/4 v4, 0x1

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v4, trunkPrefixIsOmittedB:Z
    move v10, v4

    .end local v4           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_3e

    .line 557
    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local v3, chA:C
    .local v4, chB:C
    .restart local v8       #skip_compare:Z
    :cond_a5
    add-int/lit8 v0, v0, -0x1

    .line 558
    add-int/lit8 v1, v1, -0x1

    goto :goto_4a

    .line 562
    .end local v3           #chA:C
    .end local v4           #chB:C
    .end local v8           #skip_compare:Z
    :cond_aa
    if-eqz v7, :cond_d8

    .line 563
    if-eqz v9, :cond_b0

    if-le v5, v0, :cond_b6

    :cond_b0
    invoke-static {p0, v5, v0}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    .end local v2           #bothHasCountryCallingCode:Z
    if-nez v2, :cond_c2

    .line 565
    :cond_b6
    if-eqz p2, :cond_bf

    .line 575
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_7

    .line 577
    .restart local p2
    :cond_bf
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 580
    :cond_c2
    if-eqz v10, :cond_c6

    if-le v6, v1, :cond_cc

    :cond_c6
    invoke-static {p1, v5, v1}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_125

    .line 582
    :cond_cc
    if-eqz p2, :cond_d5

    .line 583
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_7

    .line 585
    .restart local p2
    :cond_d5
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 598
    .restart local v2       #bothHasCountryCallingCode:Z
    :cond_d8
    if-nez v2, :cond_f7

    const/4 p2, 0x1

    .local p2, maybeNamp:Z
    :goto_db
    move v2, p2

    .local v2, maybeNamp:I
    move p2, v0

    .line 599
    .end local v0           #backwardIndexA:I
    .local p2, backwardIndexA:I
    :goto_dd
    if-lt p2, v5, :cond_122

    .line 600
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 601
    .local v0, chA:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 602
    if-eqz v2, :cond_f9

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chA:C
    const/4 v2, 0x1

    if-ne v0, v2, :cond_f9

    .line 603
    .end local v2           #maybeNamp:I
    const/4 v0, 0x0

    .line 608
    :goto_f3
    add-int/lit8 p2, p2, -0x1

    move v2, v0

    .line 609
    .restart local v2       #maybeNamp:I
    goto :goto_dd

    .line 598
    .local v0, backwardIndexA:I
    .local v2, bothHasCountryCallingCode:Z
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_f7
    const/4 p2, 0x0

    goto :goto_db

    .line 605
    .end local v0           #backwardIndexA:I
    .end local v2           #bothHasCountryCallingCode:Z
    .local p2, backwardIndexA:I
    :cond_f9
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 610
    .local v1, maybeNamp:I
    .local p0, backwardIndexB:I
    :goto_fc
    if-lt p0, v6, :cond_119

    .line 611
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 612
    .local v0, chB:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 613
    if-eqz v1, :cond_116

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chB:C
    const/4 v1, 0x1

    if-ne v0, v1, :cond_116

    .line 614
    .end local v1           #maybeNamp:I
    const/4 v0, 0x0

    .line 619
    :goto_112
    add-int/lit8 p0, p0, -0x1

    move v1, v0

    .line 620
    .restart local v1       #maybeNamp:I
    goto :goto_fc

    .line 616
    .end local v1           #maybeNamp:I
    :cond_116
    const/4 p0, 0x0

    goto/16 :goto_7

    .restart local v1       #maybeNamp:I
    :cond_119
    move p1, p0

    .end local p0           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, p2

    .line 623
    .end local v1           #maybeNamp:I
    .end local p2           #backwardIndexA:I
    .local p0, backwardIndexA:I
    :goto_11b
    const/4 p0, 0x1

    goto/16 :goto_7

    .restart local v0       #chB:C
    .restart local v1       #maybeNamp:I
    .local p0, backwardIndexB:I
    .local p1, b:Ljava/lang/String;
    .restart local p2       #backwardIndexA:I
    :cond_11e
    move v0, v1

    .end local v1           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_112

    .local v0, chA:C
    .local v1, backwardIndexB:I
    .local v2, maybeNamp:I
    .local p0, a:Ljava/lang/String;
    :cond_120
    move v0, v2

    .end local v2           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_f3

    .end local v0           #maybeNamp:I
    .restart local v2       #maybeNamp:I
    :cond_122
    move p0, v1

    .end local v1           #backwardIndexB:I
    .local p0, backwardIndexB:I
    move v1, v2

    .end local v2           #maybeNamp:I
    .local v1, maybeNamp:I
    goto :goto_fc

    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local p0, a:Ljava/lang/String;
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_125
    move p1, v1

    .end local v1           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, v0

    .end local v0           #backwardIndexA:I
    .local p0, backwardIndexA:I
    goto :goto_11b

    .end local v6           #forwardIndexB:I
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, forwardIndexA:I
    .local v2, tmp:I
    .local v3, trunkPrefixIsOmittedA:Z
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v7, trunkPrefixIsOmittedB:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_128
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v6, v4

    .end local v4           #forwardIndexB:I
    .restart local v6       #forwardIndexB:I
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto/16 :goto_3e

    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, tmp:I
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_130
    move v1, v3

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto/16 :goto_80
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "input"

    .prologue
    .line 1447
    if-nez p0, :cond_4

    move-object v4, p0

    .line 1463
    :goto_3
    return-object v4

    .line 1450
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1451
    .local v2, len:I
    if-nez v2, :cond_c

    move-object v4, p0

    .line 1452
    goto :goto_3

    .line 1455
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1457
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_21

    .line 1458
    aget-char v0, v3, v1

    .line 1460
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 1457
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1463
    .end local v0           #c:C
    :cond_21
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_3
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 189
    if-nez p0, :cond_4

    .line 190
    const/4 v5, 0x0

    .line 207
    :goto_3
    return-object v5

    .line 193
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 194
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 197
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_2e

    .line 198
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 199
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_21

    if-nez v1, :cond_28

    .line 200
    :cond_21
    const/4 v1, 0x1

    .line 201
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 202
    :cond_28
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 207
    .end local v0           #c:C
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 220
    if-nez p0, :cond_4

    .line 221
    const/4 v5, 0x0

    .line 243
    :goto_3
    return-object v5

    .line 224
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 225
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 228
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_2f

    .line 229
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 230
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1f

    .line 231
    if-eqz v1, :cond_1e

    .line 228
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 234
    :cond_1e
    const/4 v1, 0x1

    .line 236
    :cond_1f
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 237
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 238
    :cond_29
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 243
    .end local v0           #c:C
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 318
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 334
    :goto_3
    return-object v5

    .line 321
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 325
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 326
    .local v3, s:I
    :goto_13
    if-ge v1, v3, :cond_25

    .line 328
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 329
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 334
    .end local v0           #c:C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .parameter "postDialStr"

    .prologue
    .line 1768
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 1769
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1770
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v1

    .line 1774
    .end local v0           #c:C
    :goto_12
    return v2

    .line 1768
    .restart local v0       #c:C
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1774
    .end local v0           #c:C
    :cond_16
    const/4 v2, -0x1

    goto :goto_12
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 1294
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1295
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .registers 9
    .parameter "text"

    .prologue
    .line 1174
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1175
    .local v0, length:I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_e

    move p0, v0

    .line 1276
    .end local v0           #length:I
    .local p0, length:I
    :goto_d
    return-void

    .line 1178
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_e
    const/4 v1, 0x5

    if-gt v0, v1, :cond_13

    move p0, v0

    .line 1180
    .end local v0           #length:I
    .local p0, length:I
    goto :goto_d

    .line 1183
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_13
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1186
    .local v6, saved:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1187
    .local v0, p:I
    :goto_19
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1188
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2d

    .line 1189
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_19

    .line 1191
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1194
    :cond_30
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1199
    .local v3, length:I
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1200
    .end local v0           #p:I
    .local v1, dashPositions:[I
    const/4 v2, 0x0

    .line 1202
    .local v2, numDashes:I
    const/4 v5, 0x1

    .line 1203
    .local v5, state:I
    const/4 v4, 0x0

    .line 1204
    .local v4, numDigits:I
    const/4 v0, 0x0

    .local v0, i:I
    move v7, v5

    .end local v5           #state:I
    .local v7, state:I
    move v5, v4

    .end local v4           #numDigits:I
    .local v5, numDigits:I
    move v4, v2

    .end local v2           #numDashes:I
    .local v4, numDashes:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_3f
    if-ge v2, v3, :cond_85

    .line 1205
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1206
    .local v0, c:C
    packed-switch v0, :pswitch_data_bc

    .line 1250
    :cond_48
    :pswitch_48
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v0           #c:C
    move p0, v3

    .line 1251
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_d

    .line 1208
    .restart local v0       #c:C
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :pswitch_4e
    if-eqz v5, :cond_53

    const/4 v0, 0x2

    if-ne v7, v0, :cond_59

    .line 1209
    .end local v0           #c:C
    :cond_53
    const/4 v0, 0x3

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1204
    .end local v0           #state:I
    .restart local v7       #state:I
    :goto_55
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_3f

    .line 1222
    :cond_59
    :pswitch_59
    const/4 v0, 0x2

    if-ne v7, v0, :cond_62

    .line 1224
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move p0, v3

    .line 1225
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_d

    .line 1226
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_62
    const/4 v0, 0x3

    if-ne v7, v0, :cond_6f

    .line 1228
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    aput v2, v1, v4

    .line 1233
    :goto_69
    const/4 v7, 0x1

    .line 1234
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDigits:I
    .local v4, numDigits:I
    move v5, v4

    .end local v4           #numDigits:I
    .restart local v5       #numDigits:I
    move v4, v0

    .line 1235
    .end local v0           #numDashes:I
    .local v4, numDashes:I
    goto :goto_55

    .line 1229
    :cond_6f
    const/4 v0, 0x4

    if-eq v7, v0, :cond_ba

    const/4 v0, 0x3

    if-eq v5, v0, :cond_78

    const/4 v0, 0x6

    if-ne v5, v0, :cond_ba

    .line 1231
    :cond_78
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v0       #numDashes:I
    aput v2, v1, v4

    goto :goto_69

    .line 1238
    .local v0, c:C
    .restart local v4       #numDashes:I
    :pswitch_7d
    const/4 v0, 0x4

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1239
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_55

    .line 1242
    .local v0, c:C
    :pswitch_80
    if-nez v2, :cond_48

    .line 1244
    const/4 v0, 0x2

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1245
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_55

    .line 1255
    :cond_85
    const/4 v0, 0x7

    if-ne v5, v0, :cond_b8

    .line 1257
    add-int/lit8 v0, v4, -0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    move v2, v0

    .line 1261
    .end local v0           #numDashes:I
    .local v2, numDashes:I
    :goto_8b
    const/4 v0, 0x0

    .end local v5           #numDigits:I
    .end local v6           #saved:Ljava/lang/CharSequence;
    .local v0, i:I
    :goto_8c
    if-ge v0, v2, :cond_9b

    .line 1262
    aget v4, v1, v0

    .line 1263
    .local v4, pos:I
    add-int v5, v4, v0

    add-int/2addr v4, v0

    const-string v6, "-"

    .end local v4           #pos:I
    invoke-interface {p0, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1261
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 1267
    :cond_9b
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1268
    .end local v1           #dashPositions:[I
    .end local v2           #numDashes:I
    .local v0, len:I
    :goto_9f
    if-lez v0, :cond_b5

    .line 1269
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_b5

    .line 1270
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1271
    add-int/lit8 v0, v0, -0x1

    goto :goto_9f

    :cond_b5
    move p0, v3

    .line 1276
    .end local v3           #length:I
    .local p0, length:I
    goto/16 :goto_d

    .end local v0           #len:I
    .restart local v1       #dashPositions:[I
    .local v2, i:I
    .restart local v3       #length:I
    .local v4, numDashes:I
    .restart local v5       #numDigits:I
    .restart local v6       #saved:Ljava/lang/CharSequence;
    .local p0, text:Landroid/text/Editable;
    :cond_b8
    move v2, v4

    .end local v4           #numDashes:I
    .local v2, numDashes:I
    goto :goto_8b

    .local v2, i:I
    .restart local v4       #numDashes:I
    :cond_ba
    move v0, v4

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    goto :goto_69

    .line 1206
    :pswitch_data_bc
    .packed-switch 0x2b
        :pswitch_80
        :pswitch_48
        :pswitch_7d
        :pswitch_48
        :pswitch_48
        :pswitch_59
        :pswitch_4e
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "source"

    .prologue
    .line 1087
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1088
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1089
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1104
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1105
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1106
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 8
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1131
    move v0, p1

    .line 1133
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_1b

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1b

    .line 1134
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1f

    .line 1135
    const/4 v0, 0x1

    .line 1144
    :cond_1b
    :goto_1b
    packed-switch v0, :pswitch_data_3e

    .line 1152
    :cond_1e
    :goto_1e
    return-void

    .line 1136
    :cond_1f
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1e

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1e

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1e

    .line 1138
    const/4 v0, 0x2

    goto :goto_1b

    .line 1146
    :pswitch_36
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1149
    :pswitch_3a
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1144
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_3a
    .end packed-switch
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1648
    const/4 v0, 0x0

    .line 1649
    .local v0, ps:Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1650
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1651
    const-string v0, "011"

    .line 1653
    :cond_f
    return-object v0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "number"

    .prologue
    .line 1347
    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 1404
    .end local p0
    :goto_3
    return-object p0

    .line 1351
    .restart local p0
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1367
    const-string v1, ""

    .line 1369
    .local v1, numbers:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v3, v1

    .line 1370
    .end local v1           #numbers:Ljava/lang/String;
    .local v3, numbers:Ljava/lang/String;
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ril.ecclist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1371
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1373
    .local v2, n:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_59

    .line 1385
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .end local v0           #i:I
    if-nez v0, :cond_92

    .line 1388
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v3, v1

    .end local v1           #i$:I
    .end local v2           #n:Ljava/lang/String;
    .local v3, i$:I
    :goto_3d
    if-ge v3, v4, :cond_8f

    aget-object v1, v0, v3

    .line 1389
    .local v1, emergencyNum:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1390
    .local v1, splitStr:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 1391
    .local v2, eccNum:Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_88

    const/4 v5, 0x1

    aget-object v1, v1, v5

    .line 1392
    .local v1, eccCat:Ljava/lang/String;
    :goto_51
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .end local v2           #eccNum:Ljava/lang/String;
    if-eqz v2, :cond_8b

    move-object p0, v1

    .line 1393
    goto :goto_3

    .line 1376
    .end local v4           #len$:I
    .local v0, i:I
    .local v1, key:Ljava/lang/String;
    .local v2, n:Ljava/lang/String;
    .local v3, numbers:Ljava/lang/String;
    :cond_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #key:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1369
    .end local v3           #numbers:Ljava/lang/String;
    .local v1, numbers:Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object v3, v1

    .end local v1           #numbers:Ljava/lang/String;
    .restart local v3       #numbers:Ljava/lang/String;
    goto :goto_c

    .line 1391
    .local v0, arr$:[Ljava/lang/String;
    .local v1, splitStr:[Ljava/lang/String;
    .local v2, eccNum:Ljava/lang/String;
    .local v3, i$:I
    .restart local v4       #len$:I
    :cond_88
    const-string v1, ""

    goto :goto_51

    .line 1388
    .end local v2           #eccNum:Ljava/lang/String;
    .local v1, eccCat:Ljava/lang/String;
    :cond_8b
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i$:I
    .local v1, i$:I
    move v3, v1

    .end local v1           #i$:I
    .restart local v3       #i$:I
    goto :goto_3d

    .line 1397
    :cond_8f
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1401
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #len$:I
    .local v1, key:Ljava/lang/String;
    .local v2, n:Ljava/lang/String;
    .local v3, numbers:Ljava/lang/String;
    :cond_92
    const-string v0, "112"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-string v0, "911"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_a6

    .line 1402
    :cond_a2
    const-string p0, ""

    goto/16 :goto_3

    .line 1404
    :cond_a6
    const/4 p0, 0x0

    goto/16 :goto_3
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .parameter "locale"

    .prologue
    .line 1117
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 4
    .parameter "country"

    .prologue
    .line 1666
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 1667
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_15

    .line 1668
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 1669
    const/4 v2, 0x1

    .line 1675
    :goto_11
    return v2

    .line 1667
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1672
    :cond_15
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    .line 1673
    const/4 v2, 0x2

    goto :goto_11

    .line 1675
    :cond_1f
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 129
    const/4 v8, 0x0

    .line 131
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, scheme:Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 135
    :cond_1c
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_20
    return-object v0

    .line 140
    :cond_21
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 141
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 144
    :cond_33
    if-nez p1, :cond_37

    move-object v0, v3

    .line 145
    goto :goto_20

    .line 148
    :cond_37
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, type:Ljava/lang/String;
    const/4 v9, 0x0

    .line 152
    .local v9, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 154
    const-string v9, "number"

    .line 159
    :cond_4a
    :goto_4a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 162
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6d

    .line 164
    :try_start_5c
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 165
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_7a

    move-result-object v8

    .line 168
    :cond_6a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6d
    move-object v0, v8

    .line 172
    goto :goto_20

    .line 155
    .end local v7           #c:Landroid/database/Cursor;
    :cond_6f
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 156
    const-string v9, "data1"

    goto :goto_4a

    .line 168
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_7a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 667
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 671
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 7
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 296
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 297
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 299
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 301
    .local v2, trimIndex:I
    if-gez v2, :cond_1a

    .line 302
    sub-int v4, v0, v5

    .line 304
    :goto_19
    return v4

    :cond_1a
    sub-int v4, v2, v5

    goto :goto_19
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .registers 9
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 847
    move v2, p2

    .local v2, i:I
    :goto_1
    add-int v3, p3, p2

    if-ge v2, v3, :cond_10

    .line 851
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 853
    .local v1, c:C
    if-nez v1, :cond_11

    .line 880
    .end local v1           #c:C
    :cond_10
    return-void

    .line 856
    .restart local v1       #c:C
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 867
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_25

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_10

    .line 872
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 873
    if-eqz v1, :cond_10

    .line 877
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 680
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 693
    :goto_3
    return-object v5

    .line 682
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 683
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 685
    .local v2, length:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    move v4, v2

    .line 686
    .local v4, s:I
    :goto_11
    if-ltz v1, :cond_21

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_21

    .line 688
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 690
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 693
    .end local v0           #c:C
    :cond_21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static final is12Key(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 85
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_10

    const/16 v0, 0x23

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isCountryCallingCode(I)Z
    .registers 2
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 1942
    if-lez p0, :cond_e

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static final isDialable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 91
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x23

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 952
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 953
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 954
    const/4 v2, 0x0

    .line 957
    :goto_12
    return v2

    .line 952
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 957
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    .line 1325
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, cat:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1328
    const/4 v1, 0x0

    .line 1330
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 943
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 944
    const/4 v1, 0x0

    .line 948
    :goto_7
    return v1

    .line 947
    :cond_8
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 948
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method public static isISODigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 79
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    .line 1683
    const/4 v2, 0x0

    .line 1684
    .local v2, retVal:Z
    if-eqz p0, :cond_34

    .line 1685
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_30

    .line 1686
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1688
    const/4 v2, 0x1

    .line 1689
    const/4 v1, 0x1

    .local v1, i:I
    :goto_23
    if-ge v1, v4, :cond_30

    .line 1690
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1691
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1692
    const/4 v2, 0x0

    .line 1701
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_30
    :goto_30
    return v2

    .line 1689
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1699
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_34
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public static final isNonSeparator(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 103
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_20

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x23

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_20

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 961
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 962
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 963
    const/4 v2, 0x0

    .line 966
    :goto_12
    return v2

    .line 961
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 966
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .parameter "dialStr"

    .prologue
    .line 1708
    const/4 v1, 0x0

    .line 1709
    .local v1, retVal:Z
    if-eqz p0, :cond_19

    .line 1710
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1711
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1712
    const/4 v1, 0x1

    .line 1717
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_18
    :goto_18
    return v1

    .line 1715
    :cond_19
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public static final isReallyDialable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 97
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_14

    const/16 v0, 0x23

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isSeparator(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 117
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static isSpecialNumber(Ljava/lang/String;)Z
    .registers 8
    .parameter "strNumber"

    .prologue
    const/4 v5, 0x0

    const-string v6, "CallLogUtil"

    .line 2110
    const/4 v0, 0x0

    .line 2112
    .local v0, bIsDigit:Z
    if-nez p0, :cond_8

    move v3, v5

    .line 2135
    :goto_7
    return v3

    .line 2115
    :cond_8
    const-string v3, "CallLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*****[isSpecialNumber] strNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 2120
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2121
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2122
    const/4 v0, 0x1

    .line 2127
    .end local v1           #c:C
    :cond_32
    const-string v3, "CallLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSpecialNumber] bIsDigit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    if-eqz v0, :cond_51

    move v3, v5

    .line 2131
    goto :goto_7

    .line 2119
    .restart local v1       #c:C
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 2135
    .end local v1           #c:C
    :cond_51
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public static final isStartsPostDial(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 112
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isTwoToNine(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 1657
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 1658
    const/4 v0, 0x1

    .line 1660
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .parameter "number"

    .prologue
    .line 1733
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 5
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 1422
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_1b

    move-result-object v1

    .line 1429
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1433
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :goto_1a
    return v2

    .line 1423
    :catch_1b
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/SecurityException;
    move v2, v3

    .line 1424
    goto :goto_1a

    .end local v0           #ex:Ljava/lang/SecurityException;
    .restart local v1       #vmNumber:Ljava/lang/String;
    :cond_1f
    move v2, v3

    .line 1433
    goto :goto_1a
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 934
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 283
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 10
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1815
    const/4 v2, 0x0

    .line 1816
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_49

    .line 1817
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1819
    .local v0, c:C
    packed-switch v2, :pswitch_data_56

    .line 1838
    :pswitch_11
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    .line 1844
    .end local v0           #c:C
    :goto_18
    return v3

    .line 1821
    .restart local v0       #c:C
    :pswitch_19
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_21

    const/4 v2, 0x1

    .line 1816
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1822
    :cond_21
    if-ne v0, v6, :cond_25

    const/4 v2, 0x2

    goto :goto_1e

    .line 1823
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_18

    .line 1827
    :pswitch_2d
    if-ne v0, v6, :cond_31

    const/4 v2, 0x3

    goto :goto_1e

    .line 1828
    :cond_31
    if-ne v0, v7, :cond_35

    const/4 v2, 0x4

    goto :goto_1e

    .line 1829
    :cond_35
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_18

    .line 1833
    :pswitch_3d
    if-ne v0, v7, :cond_41

    const/4 v2, 0x5

    goto :goto_1e

    .line 1834
    :cond_41
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_18

    .line 1844
    .end local v0           #c:C
    :cond_49
    if-eq v2, v5, :cond_51

    const/4 v3, 0x3

    if-eq v2, v3, :cond_51

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    :cond_51
    move v3, v5

    goto :goto_18

    :cond_53
    move v3, v4

    goto :goto_18

    .line 1819
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_19
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_3d
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 9
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 1854
    const/4 v2, 0x0

    .line 1855
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, p1, :cond_69

    .line 1856
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1858
    .local v0, c:C
    packed-switch v2, :pswitch_data_78

    .line 1890
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    .line 1894
    .end local v0           #c:C
    :goto_17
    return v3

    .line 1860
    .restart local v0       #c:C
    :pswitch_18
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_20

    const/4 v2, 0x1

    .line 1855
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1861
    :cond_20
    if-ne v0, v5, :cond_24

    const/4 v2, 0x2

    goto :goto_1d

    .line 1862
    :cond_24
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 1866
    :pswitch_2c
    if-ne v0, v5, :cond_30

    const/4 v2, 0x3

    goto :goto_1d

    .line 1867
    :cond_30
    if-ne v0, v6, :cond_34

    const/4 v2, 0x4

    goto :goto_1d

    .line 1868
    :cond_34
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 1872
    :pswitch_3c
    if-ne v0, v6, :cond_40

    const/4 v2, 0x5

    goto :goto_1d

    .line 1873
    :cond_40
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 1879
    :pswitch_48
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v2, 0x6

    goto :goto_1d

    .line 1880
    :cond_50
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 1885
    :pswitch_58
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_61

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1886
    :cond_61
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 1894
    .end local v0           #c:C
    :cond_69
    const/4 v3, 0x6

    if-eq v2, v3, :cond_73

    const/4 v3, 0x7

    if-eq v2, v3, :cond_73

    const/16 v3, 0x8

    if-ne v2, v3, :cond_75

    :cond_73
    const/4 v3, 0x1

    goto :goto_17

    :cond_75
    move v3, v4

    goto :goto_17

    .line 1858
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_18
        :pswitch_48
        :pswitch_2c
        :pswitch_48
        :pswitch_3c
        :pswitch_48
        :pswitch_58
        :pswitch_58
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .parameter "a"
    .parameter "len"

    .prologue
    .line 1902
    const/4 v1, 0x0

    .line 1904
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, p1, :cond_1a

    .line 1905
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1907
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_12

    if-nez v1, :cond_12

    .line 1908
    const/4 v1, 0x1

    .line 1904
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1909
    :cond_12
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1910
    const/4 v3, 0x0

    .line 1914
    .end local v0           #c:C
    :goto_19
    return v3

    :cond_1a
    move v3, v1

    goto :goto_19
.end method

.method private static minPositive(II)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 271
    if-ltz p0, :cond_a

    if-ltz p1, :cond_a

    .line 272
    if-ge p0, p1, :cond_8

    move v0, p0

    .line 278
    :goto_7
    return v0

    :cond_8
    move v0, p1

    .line 272
    goto :goto_7

    .line 273
    :cond_a
    if-ltz p0, :cond_e

    move v0, p0

    .line 274
    goto :goto_7

    .line 275
    :cond_e
    if-ltz p1, :cond_12

    move v0, p1

    .line 276
    goto :goto_7

    .line 278
    :cond_12
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 976
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 986
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .parameter "number"

    .prologue
    .line 999
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 13
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1008
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1009
    .local v5, numberLenReal:I
    move v0, v5

    .line 1010
    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    const/4 v1, 0x1

    move v3, v1

    .line 1011
    .local v3, hasPlus:Z
    :goto_10
    if-eqz v3, :cond_14

    add-int/lit8 v0, v0, -0x1

    .line 1013
    :cond_14
    if-nez v0, :cond_1b

    const/4 p0, 0x0

    .line 1038
    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_17
    return-object p0

    .line 1010
    .end local v3           #hasPlus:Z
    .restart local v0       #numberLenEffective:I
    .restart local p0
    .restart local p1
    :cond_18
    const/4 v1, 0x0

    move v3, v1

    goto :goto_10

    .line 1015
    .restart local v3       #hasPlus:Z
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1016
    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .line 1017
    .local v0, extraBytes:I
    if-eqz p1, :cond_80

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1018
    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_25
    add-int v7, v1, v2

    .line 1020
    .end local v1           #resultLen:I
    .local v7, resultLen:I
    new-array v6, v7, [B

    .line 1022
    .local v6, result:[B
    const/4 v0, 0x0

    .line 1023
    .local v0, digitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    :goto_2d
    if-ge v4, v5, :cond_59

    .line 1024
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1025
    .local v0, c:C
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_3d

    move v0, v1

    .line 1023
    .end local v1           #digitCount:I
    .local v0, digitCount:I
    :goto_38
    add-int/lit8 v1, v4, 0x1

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    goto :goto_2d

    .line 1026
    .local v0, c:C
    :cond_3d
    and-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_57

    const/4 v8, 0x4

    .line 1027
    .local v8, shift:I
    :goto_43
    shr-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v2

    aget-byte v10, v6, v9

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v0

    .end local v0           #c:C
    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v8

    int-to-byte v0, v0

    or-int/2addr v0, v10

    int-to-byte v0, v0

    aput-byte v0, v6, v9

    .line 1028
    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_38

    .line 1026
    .end local v8           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_57
    const/4 v8, 0x0

    goto :goto_43

    .line 1032
    .end local v0           #c:C
    :cond_59
    and-int/lit8 p0, v1, 0x1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_68

    .end local p0
    shr-int/lit8 p0, v1, 0x1

    add-int/2addr p0, v2

    aget-byte v0, v6, p0

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    .line 1034
    :cond_68
    const/4 p0, 0x0

    .line 1035
    .local p0, offset:I
    if-eqz p1, :cond_74

    add-int/lit8 p1, p0, 0x1

    .end local p0           #offset:I
    .local p1, offset:I
    const/4 v0, 0x1

    sub-int v0, v7, v0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    move p0, p1

    .line 1036
    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_74
    if-eqz v3, :cond_7d

    const/16 p1, 0x91

    :goto_78
    int-to-byte p1, p1

    aput-byte p1, v6, p0

    move-object p0, v6

    .line 1038
    goto :goto_17

    .line 1036
    :cond_7d
    const/16 p1, 0x81

    goto :goto_78

    .end local v2           #extraBytes:I
    .end local v4           #i:I
    .end local v6           #result:[B
    .end local v7           #resultLen:I
    .local v0, extraBytes:I
    .local v1, resultLen:I
    .local p0, number:Ljava/lang/String;
    .local p1, includeLength:Z
    :cond_80
    move v2, v0

    .end local v0           #extraBytes:I
    .restart local v2       #extraBytes:I
    goto :goto_25
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    .line 1743
    move-object v2, p0

    .line 1748
    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1e

    .line 1751
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1752
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1754
    move-object v2, v1

    .line 1762
    .end local v1           #newStr:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object v2

    .line 1756
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1f
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 1758
    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 704
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 710
    :goto_3
    return-object v0

    .line 706
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2b

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2b
    move-object v0, p0

    .line 710
    goto :goto_3
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 252
    if-nez p0, :cond_4

    .line 253
    const/4 v4, 0x0

    .line 265
    :goto_3
    return-object v4

    .line 255
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 256
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_20

    .line 259
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 260
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 261
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 265
    .end local v0           #c:C
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 637
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, np:Ljava/lang/String;
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "phoneNumber"
    .parameter "minMatch"

    .prologue
    .line 654
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, np:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .registers 3
    .parameter "s"

    .prologue
    .line 720
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 721
    const/16 v0, 0x91

    .line 724
    :goto_13
    return v0

    :cond_14
    const/16 v0, 0x81

    goto :goto_13
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 13
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v7, 0x0

    .line 1981
    const/4 v5, 0x0

    .line 1982
    .local v5, state:I
    const/4 v0, 0x0

    .line 1983
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1984
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_a1

    .line 1985
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1986
    .local v1, ch:C
    packed-switch v5, :pswitch_data_a4

    move-object v6, v7

    .line 2055
    .end local v1           #ch:C
    :goto_18
    return-object v6

    .line 1988
    .restart local v1       #ch:C
    :pswitch_19
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_21

    const/4 v5, 0x1

    .line 1984
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1989
    :cond_21
    if-ne v1, v9, :cond_25

    const/4 v5, 0x2

    goto :goto_1e

    .line 1990
    :cond_25
    if-ne v1, v8, :cond_2e

    .line 1991
    if-eqz p1, :cond_2c

    .line 1992
    const/16 v5, 0x8

    goto :goto_1e

    :cond_2c
    move-object v6, v7

    .line 1994
    goto :goto_18

    .line 1996
    :cond_2e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 1997
    goto :goto_18

    .line 2002
    :pswitch_36
    if-ne v1, v9, :cond_3a

    const/4 v5, 0x3

    goto :goto_1e

    .line 2003
    :cond_3a
    if-ne v1, v8, :cond_3e

    const/4 v5, 0x4

    goto :goto_1e

    .line 2004
    :cond_3e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2005
    goto :goto_18

    .line 2010
    :pswitch_46
    if-ne v1, v8, :cond_4a

    const/4 v5, 0x5

    goto :goto_1e

    .line 2011
    :cond_4a
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2012
    goto :goto_18

    .line 2022
    :pswitch_52
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2023
    .local v4, ret:I
    if-lez v4, :cond_7c

    .line 2024
    mul-int/lit8 v6, v0, 0xa

    add-int v0, v6, v4

    .line 2025
    const/16 v6, 0x64

    if-ge v0, v6, :cond_66

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 2026
    :cond_66
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_18

    .line 2028
    :cond_6e
    const/4 v6, 0x1

    if-eq v5, v6, :cond_77

    const/4 v6, 0x3

    if-eq v5, v6, :cond_77

    const/4 v6, 0x5

    if-ne v5, v6, :cond_79

    .line 2029
    :cond_77
    const/4 v5, 0x6

    goto :goto_1e

    .line 2031
    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 2033
    :cond_7c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2034
    goto :goto_18

    .line 2039
    .end local v4           #ret:I
    :pswitch_84
    if-ne v1, v10, :cond_89

    const/16 v5, 0x9

    goto :goto_1e

    .line 2040
    :cond_89
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2041
    goto :goto_18

    .line 2045
    :pswitch_91
    if-ne v1, v10, :cond_9e

    .line 2046
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_18

    :cond_9e
    move-object v6, v7

    .line 2048
    goto/16 :goto_18

    .end local v1           #ch:C
    :cond_a1
    move-object v6, v7

    .line 2055
    goto/16 :goto_18

    .line 1986
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_19
        :pswitch_52
        :pswitch_36
        :pswitch_52
        :pswitch_46
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_84
        :pswitch_91
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .registers 3
    .parameter "ch"

    .prologue
    const/16 v1, 0x30

    .line 1952
    if-gt v1, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1953
    sub-int v0, p0, v1

    .line 1955
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v4, -0x1

    .line 2068
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2069
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_20

    .line 2070
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2071
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v3

    if-ltz v3, :cond_15

    .line 2072
    add-int/lit8 v3, v1, 0x1

    .line 2077
    .end local v0           #ch:C
    :goto_14
    return v3

    .line 2073
    .restart local v0       #ch:C
    :cond_15
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    .line 2074
    goto :goto_14

    .line 2069
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v0           #ch:C
    :cond_20
    move v3, v4

    .line 2077
    goto :goto_14
.end method
