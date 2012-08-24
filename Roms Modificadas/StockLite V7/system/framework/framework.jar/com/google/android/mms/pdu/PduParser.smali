.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 78
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 83
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 35
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 68
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 73
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 98
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 99
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 5
    .parameter "headers"

    .prologue
    .line 1800
    if-nez p0, :cond_4

    .line 1801
    const/4 p0, 0x0

    .line 2007
    .end local p0
    :goto_3
    return p0

    .line 1805
    .restart local p0
    :cond_4
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 1808
    .local v0, messageType:I
    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1809
    .local v1, mmsVersion:I
    if-nez v1, :cond_14

    .line 1811
    const/4 p0, 0x0

    goto :goto_3

    .line 1815
    :cond_14
    packed-switch v0, :pswitch_data_15c

    .line 2004
    const/4 p0, 0x0

    goto :goto_3

    .line 1818
    :pswitch_19
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1819
    .local v0, srContentType:[B
    if-nez v0, :cond_23

    .line 1820
    const/4 p0, 0x0

    goto :goto_3

    .line 1824
    :cond_23
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #srContentType:[B
    move-result-object v0

    .line 1825
    .local v0, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_2d

    .line 1826
    const/4 p0, 0x0

    goto :goto_3

    .line 1830
    :cond_2d
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p0

    .line 1831
    .local p0, srTransactionId:[B
    if-nez p0, :cond_158

    .line 1832
    const/4 p0, 0x0

    goto :goto_3

    .line 1838
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_37
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1839
    .local v0, scResponseStatus:I
    if-nez v0, :cond_41

    .line 1840
    const/4 p0, 0x0

    goto :goto_3

    .line 1844
    :cond_41
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #scResponseStatus:I
    move-result-object p0

    .line 1845
    .local p0, scTransactionId:[B
    if-nez p0, :cond_158

    .line 1846
    const/4 p0, 0x0

    goto :goto_3

    .line 1852
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_4b
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1853
    .local v0, niContentLocation:[B
    if-nez v0, :cond_55

    .line 1854
    const/4 p0, 0x0

    goto :goto_3

    .line 1858
    :cond_55
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niContentLocation:[B
    move-result-wide v0

    .line 1859
    .end local v1           #mmsVersion:I
    .local v0, niExpiry:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_63

    .line 1860
    .end local v0           #niExpiry:J
    const/4 p0, 0x0

    goto :goto_3

    .line 1864
    :cond_63
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1865
    .local v0, niMessageClass:[B
    if-nez v0, :cond_6d

    .line 1866
    const/4 p0, 0x0

    goto :goto_3

    .line 1870
    :cond_6d
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niMessageClass:[B
    move-result-wide v0

    .line 1871
    .local v0, niMessageSize:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_7b

    .line 1872
    .end local v0           #niMessageSize:J
    const/4 p0, 0x0

    goto :goto_3

    .line 1876
    :cond_7b
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1877
    .local p0, niTransactionId:[B
    if-nez p0, :cond_158

    .line 1878
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1884
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_86
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1885
    .local v0, nriStatus:I
    if-nez v0, :cond_91

    .line 1886
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1890
    :cond_91
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #nriStatus:I
    move-result-object p0

    .line 1891
    .local p0, nriTransactionId:[B
    if-nez p0, :cond_158

    .line 1892
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1898
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_9c
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1899
    .local v0, rcContentType:[B
    if-nez v0, :cond_a7

    .line 1900
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1904
    :cond_a7
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #rcContentType:[B
    move-result-wide v0

    .line 1905
    .end local v1           #mmsVersion:I
    .local v0, rcDate:J
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_158

    .line 1906
    .end local p0           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1912
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .restart local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_b6
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1913
    .end local v1           #mmsVersion:I
    .local v0, diDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_c5

    .line 1914
    .end local v0           #diDate:J
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1918
    :cond_c5
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1919
    .local v0, diMessageId:[B
    if-nez v0, :cond_d0

    .line 1920
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1924
    :cond_d0
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #diMessageId:[B
    move-result v0

    .line 1925
    .local v0, diStatus:I
    if-nez v0, :cond_db

    .line 1926
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1930
    :cond_db
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #diStatus:I
    move-result-object p0

    .line 1931
    .local p0, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 1932
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1938
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_e6
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object p0

    .line 1939
    .local p0, aiTransactionId:[B
    if-nez p0, :cond_158

    .line 1940
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1946
    .restart local v0       #messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_f1
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1947
    .end local v1           #mmsVersion:I
    .local v0, roDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_100

    .line 1948
    .end local v0           #roDate:J
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1952
    :cond_100
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 1953
    .local v0, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_10b

    .line 1954
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1958
    :cond_10b
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1959
    .local v0, roMessageId:[B
    if-nez v0, :cond_116

    .line 1960
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1964
    :cond_116
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #roMessageId:[B
    move-result v0

    .line 1965
    .local v0, roReadStatus:I
    if-nez v0, :cond_121

    .line 1966
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1970
    :cond_121
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #roReadStatus:I
    move-result-object p0

    .line 1971
    .local p0, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 1972
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1978
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_12c
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #messageType:I
    move-result-object v0

    .line 1979
    .local v0, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_137

    .line 1980
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1984
    :cond_137
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1985
    .local v0, rrMessageId:[B
    if-nez v0, :cond_142

    .line 1986
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1990
    :cond_142
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #rrMessageId:[B
    move-result v0

    .line 1991
    .local v0, rrReadStatus:I
    if-nez v0, :cond_14d

    .line 1992
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1996
    :cond_14d
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #rrReadStatus:I
    move-result-object p0

    .line 1997
    .local p0, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 1998
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2007
    .end local v1           #mmsVersion:I
    .end local p0           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_158
    const/4 p0, 0x1

    goto/16 :goto_3

    .line 1815
    nop

    :pswitch_data_15c
    .packed-switch 0x80
        :pswitch_19
        :pswitch_37
        :pswitch_4b
        :pswitch_86
        :pswitch_9c
        :pswitch_e6
        :pswitch_b6
        :pswitch_12c
        :pswitch_f1
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 6
    .parameter "part"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1764
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    if-nez p0, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1765
    :cond_e
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_18

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_18

    move v2, v3

    .line 1790
    :goto_17
    return v2

    .line 1771
    :cond_18
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_2c

    .line 1772
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1773
    .local v0, contentId:[B
    if-eqz v0, :cond_2c

    .line 1774
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_2c

    move v2, v4

    .line 1775
    goto :goto_17

    .line 1781
    .end local v0           #contentId:[B
    :cond_2c
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_40

    .line 1782
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1783
    .local v1, contentType:[B
    if-eqz v1, :cond_40

    .line 1784
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_40

    move v2, v4

    .line 1785
    goto :goto_17

    .end local v1           #contentType:[B
    :cond_40
    move v2, v3

    .line 1790
    goto :goto_17
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1200
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1201
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1202
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1203
    :cond_1d
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 6
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1166
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1167
    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1168
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1169
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1170
    :cond_22
    if-eq v3, v1, :cond_4c

    if-eqz v1, :cond_4c

    .line 1172
    const/4 v2, 0x2

    if-ne p1, v2, :cond_42

    .line 1173
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1174
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1182
    :cond_32
    :goto_32
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1183
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1177
    :cond_42
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1178
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_32

    .line 1186
    :cond_4c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 1187
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1190
    :goto_56
    return-object v2

    :cond_57
    const/4 v2, 0x0

    goto :goto_56
.end method

.method protected static isText(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 1150
    const/16 v0, 0x20

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_11

    :cond_9
    const/16 v0, 0x80

    if-lt p0, v0, :cond_13

    const/16 v0, 0xff

    if-gt p0, v0, :cond_13

    :cond_11
    move v0, v1

    .line 1161
    :goto_12
    return v0

    .line 1154
    :cond_13
    packed-switch p0, :pswitch_data_1a

    .line 1161
    :pswitch_16
    const/4 v0, 0x0

    goto :goto_12

    :pswitch_18
    move v0, v1

    .line 1158
    goto :goto_12

    .line 1154
    :pswitch_data_1a
    .packed-switch 0x9
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v1, 0x0

    .line 1106
    const/16 v0, 0x21

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_b

    :cond_9
    move v0, v1

    .line 1131
    :goto_a
    return v0

    .line 1110
    :cond_b
    sparse-switch p0, :sswitch_data_12

    .line 1131
    const/4 v0, 0x1

    goto :goto_a

    :sswitch_10
    move v0, v1

    .line 1128
    goto :goto_a

    .line 1110
    :sswitch_data_12
    .sparse-switch
        0x22 -> :sswitch_10
        0x28 -> :sswitch_10
        0x29 -> :sswitch_10
        0x2c -> :sswitch_10
        0x2f -> :sswitch_10
        0x3a -> :sswitch_10
        0x3b -> :sswitch_10
        0x3c -> :sswitch_10
        0x3d -> :sswitch_10
        0x3e -> :sswitch_10
        0x3f -> :sswitch_10
        0x40 -> :sswitch_10
        0x5b -> :sswitch_10
        0x5c -> :sswitch_10
        0x5d -> :sswitch_10
        0x7b -> :sswitch_10
        0x7d -> :sswitch_10
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 917
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 9
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1504
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1506
    .restart local p0
    :cond_c
    const/4 v0, 0x0

    .line 1507
    .local v0, contentType:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1508
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1509
    .local v2, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_22

    const/4 v1, -0x1

    if-ne v1, v2, :cond_22

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1510
    .restart local p0
    :cond_22
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1512
    and-int/lit16 v1, v2, 0xff

    .line 1514
    .local v1, cur:I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_ba

    .line 1515
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 1516
    .local v2, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1517
    .local v3, startPos:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1518
    .end local v1           #cur:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1519
    .local v4, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_48

    const/4 v1, -0x1

    if-ne v1, v4, :cond_48

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1520
    .restart local p0
    :cond_48
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1521
    and-int/lit16 v1, v4, 0xff

    .line 1523
    .local v1, first:I
    const/16 v5, 0x20

    if-lt v1, v5, :cond_82

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_82

    .line 1524
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #contentType:[B
    move-result-object v0

    .line 1539
    .end local v1           #first:I
    .restart local v0       #contentType:[B
    :goto_5a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1540
    .local v1, endPos:I
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    .line 1541
    .local v1, parameterLen:I
    if-lez v1, :cond_6b

    .line 1542
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #length:I
    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1545
    :cond_6b
    if-gez v1, :cond_b6

    .line 1546
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt MMS message"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .local v6, contentType:[B
    move-object v0, p0

    move-object p0, v6

    .line 1556
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .end local v6           #contentType:[B
    .local p0, contentType:[B
    :goto_81
    return-object v0

    .line 1525
    .restart local v0       #contentType:[B
    .local v1, first:I
    .restart local v2       #length:I
    .restart local v3       #startPos:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_82
    const/16 v5, 0x7f

    if-le v1, v5, :cond_a1

    .line 1526
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1528
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #first:I
    array-length v1, v1

    if-ge v0, v1, :cond_98

    .line 1529
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, contentType:[B
    goto :goto_5a

    .line 1531
    .local v0, index:I
    :cond_98
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1532
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #index:I
    move-result-object v0

    .local v0, contentType:[B
    goto :goto_5a

    .line 1535
    .restart local v1       #first:I
    :cond_a1
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt content-type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .restart local v6       #contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v6           #contentType:[B
    .local p0, contentType:[B
    goto :goto_81

    .end local v2           #length:I
    .restart local v0       #contentType:[B
    .local v1, parameterLen:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_b6
    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object p0, v0

    .end local v0           #contentType:[B
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .local p0, contentType:[B
    :goto_b8
    move-object v0, p0

    .line 1556
    goto :goto_81

    .line 1549
    .restart local v0       #contentType:[B
    .local v1, cur:I
    .local v2, temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_ba
    const/16 p1, 0x7f

    if-gt v1, p1, :cond_c5

    .line 1550
    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .local p1, temp:I
    goto :goto_b8

    .line 1552
    .end local p1           #temp:I
    .restart local v0       #contentType:[B
    .restart local v2       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_c5
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .restart local p1       #temp:I
    goto :goto_b8
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 8
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1333
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1334
    .restart local p0
    :cond_c
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1336
    .restart local p0
    :cond_1c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1337
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1338
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, lastLen:I
    move v3, v1

    .line 1339
    .end local v1           #tempPos:I
    .local v3, tempPos:I
    :goto_26
    if-lez v0, :cond_143

    .line 1340
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1341
    .local v1, param:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_39

    const/4 v4, -0x1

    if-ne v4, v1, :cond_39

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1342
    .restart local p0
    :cond_39
    add-int/lit8 v0, v0, -0x1

    .line 1344
    sparse-switch v1, :sswitch_data_14e

    .line 1475
    const/4 v1, -0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v1           #param:I
    move-result v4

    if-ne v1, v4, :cond_13f

    .line 1476
    const-string v1, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    :goto_4d
    move v3, v1

    .line 1482
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    goto :goto_26

    .line 1360
    .local v1, param:I
    :sswitch_4f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1361
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1362
    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1363
    const/16 v1, 0x7f

    if-le v0, v1, :cond_84

    .line 1365
    .end local v1           #param:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1367
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_78

    .line 1368
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1369
    .local v0, type:[B
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .end local v0           #type:[B
    :cond_78
    :goto_78
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1382
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1383
    .local v0, lastLen:I
    goto :goto_4d

    .line 1375
    .end local v1           #tempPos:I
    .local v0, first:I
    .restart local v3       #tempPos:I
    :cond_84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #first:I
    move-result-object v0

    .line 1376
    .local v0, type:[B
    if-eqz v0, :cond_78

    if-eqz p1, :cond_78

    .line 1377
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 1400
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_97
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1401
    .local v0, start:[B
    if-eqz v0, :cond_a9

    if-eqz p1, :cond_a9

    .line 1402
    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    :cond_a9
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1406
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #start:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1407
    .local v0, lastLen:I
    goto :goto_4d

    .line 1424
    .local v1, param:I
    .restart local v3       #tempPos:I
    :sswitch_b5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1425
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1426
    .local v0, firstValue:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1428
    const/16 v1, 0x20

    if-le v0, v1, :cond_c8

    .end local v1           #param:I
    const/16 v1, 0x7f

    if-lt v0, v1, :cond_ca

    :cond_c8
    if-nez v0, :cond_10b

    .line 1431
    :cond_ca
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #firstValue:I
    move-result-object v1

    .line 1433
    .local v1, charsetStr:[B
    :try_start_cf
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    .line 1435
    .local v0, charsetInt:I
    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v3           #tempPos:I
    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charsetInt:I
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cf .. :try_end_e5} :catch_f2

    .line 1449
    .end local v1           #charsetStr:[B
    :cond_e5
    :goto_e5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1450
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1451
    .local v0, lastLen:I
    goto/16 :goto_4d

    .line 1436
    .end local v0           #lastLen:I
    .local v1, charsetStr:[B
    :catch_f2
    move-exception v0

    .line 1438
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PduParser"

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .end local v1           #charsetStr:[B
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 1443
    .local v0, firstValue:I
    .restart local v3       #tempPos:I
    :cond_10b
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    .end local v0           #firstValue:I
    long-to-int v0, v0

    .line 1444
    .local v0, charset:I
    if-eqz p1, :cond_e5

    .line 1445
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charset:I
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 1463
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1464
    .local v0, name:[B
    if-eqz v0, :cond_132

    if-eqz p1, :cond_132

    .line 1465
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    :cond_132
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1469
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #name:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1470
    .local v0, lastLen:I
    goto/16 :goto_4d

    .line 1478
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_13f
    const/4 v0, 0x0

    move v1, v3

    .end local v3           #tempPos:I
    .restart local v1       #tempPos:I
    goto/16 :goto_4d

    .line 1484
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_143
    if-eqz v0, :cond_14c

    .line 1485
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Content-Type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_14c
    return-void

    .line 1344
    nop

    :sswitch_data_14e
    .sparse-switch
        0x81 -> :sswitch_b5
        0x83 -> :sswitch_4f
        0x85 -> :sswitch_120
        0x89 -> :sswitch_4f
        0x8a -> :sswitch_97
        0x97 -> :sswitch_120
        0x99 -> :sswitch_97
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 12
    .parameter "pduDataStream"

    .prologue
    const/4 v9, 0x0

    const-string/jumbo v10, "ro.csc.sales_code"

    .line 1000
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_10

    if-nez p0, :cond_10

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1001
    :cond_10
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1002
    const/4 v3, 0x0

    .line 1003
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1004
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1005
    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_27

    const/4 v7, -0x1

    if-ne v7, v5, :cond_27

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1006
    :cond_27
    and-int/lit16 v2, v5, 0xff

    .line 1007
    .local v2, first:I
    if-nez v2, :cond_4b

    const-string v7, "TUR"

    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_49

    const-string v7, "TRC"

    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    :cond_49
    move-object v7, v9

    .line 1032
    :goto_4a
    return-object v7

    .line 1013
    :cond_4b
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1014
    const/16 v7, 0x20

    if-ge v2, v7, :cond_59

    .line 1015
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1017
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1020
    :cond_59
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1023
    .local v6, textString:[B
    if-eqz v0, :cond_68

    .line 1024
    :try_start_60
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_66
    move-object v7, v3

    .line 1032
    goto :goto_4a

    .line 1026
    :cond_68
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6d} :catch_6f

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_66

    .line 1028
    :catch_6f
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/Exception;
    move-object v7, v9

    .line 1029
    goto :goto_4a
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4
    .parameter "pduDataStream"

    .prologue
    .line 1275
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1276
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1277
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1278
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1279
    :cond_21
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1280
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2e

    .line 1281
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1283
    :goto_2d
    return-wide v1

    :cond_2e
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_2d
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 10
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1243
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    if-nez p0, :cond_f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1244
    :cond_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1245
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1f

    if-ne v7, v4, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1246
    :cond_1f
    and-int/lit16 v0, v4, 0xff

    .line 1248
    .local v0, count:I
    if-le v0, v8, :cond_2b

    .line 1249
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1252
    :cond_2b
    const-wide/16 v2, 0x0

    .line 1254
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v0, :cond_48

    .line 1255
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1256
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_40

    if-ne v7, v4, :cond_40

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1257
    :cond_40
    shl-long/2addr v2, v8

    .line 1258
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1254
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1261
    :cond_48
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 11
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1569
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1570
    .restart local p0
    :cond_c
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-nez p1, :cond_18

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1571
    .restart local p0
    :cond_18
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_24

    if-gtz p2, :cond_24

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1589
    .restart local p0
    :cond_24
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1590
    .local v3, startPos:I
    const/4 v1, 0x0

    .line 1591
    .local v1, tempPos:I
    move v0, p2

    .local v0, lastLen:I
    move v4, v1

    .end local v1           #tempPos:I
    .local v4, tempPos:I
    move v1, v0

    .line 1592
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    :goto_2c
    if-lez v1, :cond_16d

    .line 1593
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1594
    .local v0, header:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_3f

    const/4 v2, -0x1

    if-ne v2, v0, :cond_3f

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1595
    .restart local p0
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    .line 1597
    const/16 v2, 0x7f

    if-le v0, v2, :cond_129

    .line 1599
    sparse-switch v0, :sswitch_data_18a

    .line 1715
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v2

    if-ne v0, v2, :cond_125

    .line 1716
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .line 1753
    .end local v1           #lastLen:I
    .local p0, lastLen:I
    :goto_59
    return p1

    .line 1605
    .restart local v0       #header:I
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :sswitch_5a
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1606
    .local v0, contentLocation:[B
    if-eqz v0, :cond_64

    .line 1607
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1610
    :cond_64
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1611
    .end local v4           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    :cond_6c
    :goto_6c
    move v4, v1

    .end local v1           #tempPos:I
    .restart local v4       #tempPos:I
    move v1, v0

    .line 1746
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    goto :goto_2c

    .line 1618
    .local v0, header:I
    :sswitch_6f
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1619
    .local v0, contentId:[B
    if-eqz v0, :cond_79

    .line 1620
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1623
    :cond_79
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1624
    .end local v4           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .line 1625
    .local v0, lastLen:I
    goto :goto_6c

    .line 1641
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v4       #tempPos:I
    :sswitch_82
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .end local v0           #header:I
    const v2, 0x10d0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1644
    .local v0, contentDisposition:Z
    if-eqz v0, :cond_186

    .line 1645
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 1646
    .local v2, len:I
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1647
    .end local v0           #contentDisposition:Z
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 1648
    .local v6, thisStartPos:I
    const/4 v0, 0x0

    .line 1649
    .local v0, thisEndPos:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1651
    .local v5, value:I
    const/16 v0, 0x80

    if-ne v5, v0, :cond_e0

    .line 1652
    .end local v0           #thisEndPos:I
    sget-object v0, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1664
    :goto_a9
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1665
    .restart local v0       #thisEndPos:I
    sub-int v7, v6, v0

    if-ge v7, v2, :cond_180

    .line 1666
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 1667
    .end local v5           #value:I
    .local v7, value:I
    const/16 v0, 0x98

    if-ne v7, v0, :cond_100

    .line 1668
    .end local v0           #thisEndPos:I
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1689
    :cond_c1
    :goto_c1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1690
    .local v5, thisEndPos:I
    sub-int v0, v6, v5

    if-ge v0, v2, :cond_d3

    .line 1691
    sub-int v0, v6, v5

    sub-int v0, v2, v0

    .line 1692
    .local v0, last:I
    new-array v2, v0, [B

    .line 1693
    .local v2, temp:[B
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v0           #last:I
    .end local v2           #temp:[B
    .end local v6           #thisStartPos:I
    :cond_d3
    move v2, v5

    .end local v5           #thisEndPos:I
    .local v2, thisEndPos:I
    move v0, v1

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v4

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    move v4, v7

    .line 1697
    .end local v7           #value:I
    .local v4, value:I
    :goto_d7
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1698
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .line 1699
    goto :goto_6c

    .line 1653
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    .local v2, len:I
    .local v4, tempPos:I
    .local v5, value:I
    .restart local v6       #thisStartPos:I
    :cond_e0
    const/16 v0, 0x81

    if-ne v5, v0, :cond_ea

    .line 1654
    sget-object v0, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_a9

    .line 1655
    :cond_ea
    const/16 v0, 0x82

    if-ne v5, v0, :cond_f4

    .line 1656
    sget-object v0, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_a9

    .line 1658
    :cond_f4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1660
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_a9

    .line 1674
    .end local v5           #value:I
    .restart local v7       #value:I
    :cond_100
    const/16 v0, 0x9c

    if-ne v7, v0, :cond_c1

    .line 1676
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1679
    .local v0, content:[B
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1680
    .end local v4           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .line 1681
    .local v0, lastLen:I
    if-eqz v0, :cond_6c

    move v4, v1

    .end local v1           #tempPos:I
    .restart local v4       #tempPos:I
    move v1, v0

    .end local v0           #lastLen:I
    .local v1, lastLen:I
    goto :goto_c1

    .line 1705
    .end local v2           #len:I
    .end local v6           #thisStartPos:I
    .end local v7           #value:I
    .local v0, header:I
    :sswitch_116
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1707
    .local v0, location:[B
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1708
    .end local v4           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .line 1709
    .local v0, lastLen:I
    goto/16 :goto_6c

    .line 1719
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    .restart local v4       #tempPos:I
    :cond_125
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .restart local v0       #lastLen:I
    move v1, v4

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_6c

    .line 1722
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v4       #tempPos:I
    :cond_129
    const/16 v2, 0x20

    if-lt v0, v2, :cond_156

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_156

    .line 1724
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1725
    .local v0, tempHeader:[B
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v1           #lastLen:I
    move-result-object v1

    .line 1728
    .local v1, tempValue:[B
    const/4 v2, 0x1

    const-string v4, "Content-Transfer-Encoding"

    .end local v4           #tempPos:I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #tempHeader:[B
    if-ne v2, v0, :cond_14c

    .line 1730
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1733
    :cond_14c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1734
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .line 1735
    .local v0, lastLen:I
    goto/16 :goto_6c

    .line 1740
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v4       #tempPos:I
    :cond_156
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v2

    if-ne v0, v2, :cond_169

    .line 1741
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_59

    .line 1744
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_169
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v4

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_6c

    .line 1748
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    .restart local v4       #tempPos:I
    :cond_16d
    if-eqz v1, :cond_17b

    .line 1749
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_59

    .line 1753
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_17b
    const/4 p0, 0x1

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_59

    .local v0, thisEndPos:I
    .restart local v1       #lastLen:I
    .restart local v2       #len:I
    .restart local v5       #value:I
    .restart local v6       #thisStartPos:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_180
    move v2, v0

    .end local v0           #thisEndPos:I
    .local v2, thisEndPos:I
    move v0, v1

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v4

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    move v4, v5

    .end local v5           #value:I
    .local v4, value:I
    goto/16 :goto_d7

    .end local v2           #thisEndPos:I
    .end local v6           #thisStartPos:I
    .local v0, contentDisposition:Z
    .local v1, lastLen:I
    .local v4, tempPos:I
    :cond_186
    move v0, v1

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v4

    .end local v4           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_6c

    .line 1599
    :sswitch_data_18a
    .sparse-switch
        0x8e -> :sswitch_5a
        0x9c -> :sswitch_116
        0xae -> :sswitch_82
        0xc0 -> :sswitch_6f
        0xc5 -> :sswitch_82
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;
    .registers 11
    .parameter "pduDataStream"
    .parameter "contType"

    .prologue
    .line 768
    if-nez p0, :cond_4

    .line 769
    const/4 p0, 0x0

    .line 905
    .end local p0
    .end local p1
    :goto_3
    return-object p0

    .line 772
    .restart local p0
    .restart local p1
    :cond_4
    const/4 v1, 0x0

    .line 773
    .local v1, count:I
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 775
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 776
    .local v2, ctTypeStr:Ljava/lang/String;
    const-string p1, "application/vnd.wap.multipart.mixed"

    .end local p1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_133

    .line 779
    :cond_1f
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 781
    const/4 p1, 0x0

    .local p1, i:I
    move v4, p1

    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local p1           #i:I
    .local v4, i:I
    :goto_25
    if-ge v4, v1, :cond_12f

    .line 782
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 783
    .local v3, headerLength:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 784
    .local v2, dataLength:I
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 785
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 786
    .local v7, startPos:I
    if-gtz v7, :cond_3c

    .line 788
    const/4 p0, 0x0

    goto :goto_3

    .line 792
    :cond_3c
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 793
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, v5}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object p1

    .line 794
    .local p1, contentType:[B
    if-eqz p1, :cond_84

    .line 795
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 801
    .end local p1           #contentType:[B
    :goto_4a
    const/16 p1, 0x97

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    .line 802
    .local p1, name:[B
    if-eqz p1, :cond_5d

    .line 803
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 807
    :cond_5d
    const/16 p1, 0x81

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p1           #name:[B
    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 808
    .local p1, charset:Ljava/lang/Integer;
    if-eqz p1, :cond_72

    .line 809
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1           #charset:Ljava/lang/Integer;
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 813
    :cond_72
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    .line 814
    .local p1, endPos:I
    sub-int p1, v7, p1

    sub-int p1, v3, p1

    .line 815
    .local p1, partHeaderLen:I
    if-lez p1, :cond_91

    .line 816
    invoke-static {p0, v6, p1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result p1

    .end local p1           #partHeaderLen:I
    if-nez p1, :cond_96

    .line 818
    const/4 p0, 0x0

    goto :goto_3

    .line 797
    .local p1, contentType:[B
    :cond_84
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local p1           #contentType:[B
    const/4 v8, 0x0

    aget-object p1, p1, v8

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_4a

    .line 820
    .local p1, partHeaderLen:I
    :cond_91
    if-gez p1, :cond_96

    .line 822
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 828
    .end local p1           #partHeaderLen:I
    :cond_96
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object p1

    if-nez p1, :cond_bd

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object p1

    if-nez p1, :cond_bd

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object p1

    if-nez p1, :cond_bd

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object p1

    if-nez p1, :cond_bd

    .line 832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .end local v7           #startPos:I
    invoke-static {v7, v8}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 837
    :cond_bd
    if-lez v2, :cond_129

    .line 838
    new-array v3, v2, [B

    .line 839
    .local v3, partData:[B
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p1, v5}, Ljava/lang/String;-><init>([B)V

    .line 840
    .local p1, partContentType:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 841
    const-string v2, "application/vnd.wap.multipart.alternative"

    .end local v2           #dataLength:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .end local p1           #partContentType:Ljava/lang/String;
    if-eqz p1, :cond_f7

    .line 843
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object p1

    .line 845
    .local p1, childBody:Lcom/google/android/mms/pdu/PduBody;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object p1

    .line 870
    .end local v3           #partData:[B
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .local p1, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_e8
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v2

    if-nez v2, :cond_12b

    .line 872
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 781
    :goto_f2
    add-int/lit8 p1, v4, 0x1

    .end local v4           #i:I
    .local p1, i:I
    move v4, p1

    .end local p1           #i:I
    .restart local v4       #i:I
    goto/16 :goto_25

    .line 848
    .restart local v3       #partData:[B
    .restart local v6       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_f7
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v2

    .line 849
    .local v2, partDataEncoding:[B
    if-eqz v2, :cond_1a3

    .line 850
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    .line 851
    .local p1, encoding:Ljava/lang/String;
    const-string v2, "base64"

    .end local v2           #partDataEncoding:[B
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 853
    invoke-static {v3}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object p1

    .line 861
    .end local v3           #partData:[B
    .local p1, partData:[B
    :goto_10e
    if-nez p1, :cond_126

    .line 862
    const-string p0, "Decode part data error!"

    .end local p0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 863
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 854
    .restart local v3       #partData:[B
    .restart local p0
    .local p1, encoding:Ljava/lang/String;
    :cond_118
    const-string/jumbo v2, "quoted-printable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .end local p1           #encoding:Ljava/lang/String;
    if-eqz p1, :cond_1a3

    .line 856
    invoke-static {v3}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object p1

    .end local v3           #partData:[B
    .local p1, partData:[B
    goto :goto_10e

    .line 865
    :cond_126
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .end local p1           #partData:[B
    :cond_129
    move-object p1, v6

    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .local p1, part:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_e8

    .line 875
    :cond_12b
    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_f2

    .end local p1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_12f
    move p0, v1

    .end local v1           #count:I
    .end local v4           #i:I
    .local p0, count:I
    :goto_130
    move-object p0, v0

    .line 905
    goto/16 :goto_3

    .line 880
    .restart local v1       #count:I
    .local v2, ctTypeStr:Ljava/lang/String;
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_133
    const-string/jumbo p1, "text/plain"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a1

    .line 882
    new-instance p1, Ljava/lang/String;

    const-string v2, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    .end local v2           #ctTypeStr:Ljava/lang/String;
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 887
    .local p1, smilDoc:Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 888
    .local v2, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string/jumbo v3, "smil.txt"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 889
    const-string/jumbo v3, "smil.txt"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 890
    const-string v3, "application/smil"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 891
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .end local p1           #smilDoc:Ljava/lang/String;
    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 892
    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 894
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    .end local v2           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 895
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    const-string p1, "attach.txt"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 896
    const-string p1, "attach.txt"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 897
    const-string/jumbo p1, "text/plain"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 898
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    .line 899
    .local p1, dataLength:I
    new-array v3, p1, [B

    .line 900
    .restart local v3       #partData:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 901
    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 902
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v3           #partData:[B
    .end local p1           #dataLength:I
    :cond_1a1
    move p0, v1

    .end local v1           #count:I
    .local p0, count:I
    goto :goto_130

    .restart local v1       #count:I
    .restart local v3       #partData:[B
    .restart local v4       #i:I
    .restart local v6       #part:Lcom/google/android/mms/pdu/PduPart;
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_1a3
    move-object p1, v3

    .end local v3           #partData:[B
    .local p1, partData:[B
    goto/16 :goto_10e
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1220
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1221
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1222
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1223
    :cond_1d
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 931
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 932
    :cond_d
    const/4 v0, 0x0

    .line 933
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 934
    .local v1, temp:I
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 950
    :goto_15
    return v2

    .line 938
    :cond_16
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_27

    .line 939
    shl-int/lit8 v0, v0, 0x7

    .line 940
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 941
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 942
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 943
    goto :goto_15

    .line 947
    :cond_27
    shl-int/lit8 v0, v0, 0x7

    .line 948
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 950
    goto :goto_15
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 4
    .parameter "pduDataStream"

    .prologue
    .line 968
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 969
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 970
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 971
    :cond_1d
    and-int/lit16 v0, v1, 0xff

    .line 973
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_25

    move v2, v0

    .line 982
    :goto_24
    return v2

    .line 975
    :cond_25
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2e

    .line 976
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    goto :goto_24

    :cond_2e
    move v2, v0

    .line 982
    goto :goto_24
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 1044
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    if-nez p0, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1062
    :cond_d
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1065
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1066
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1067
    :cond_21
    if-ne v2, p1, :cond_2f

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2f

    .line 1070
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1085
    :goto_2a
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1071
    :cond_2f
    if-nez p1, :cond_39

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_39

    .line 1074
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_2a

    .line 1077
    :cond_39
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_2a
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1295
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1296
    :cond_c
    new-array v0, p1, [B

    .line 1297
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1298
    .local v1, readLen:I
    if-ge v1, p1, :cond_17

    .line 1299
    const/4 v2, -0x1

    .line 1301
    :goto_16
    return v2

    :cond_17
    move v2, v1

    goto :goto_16
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 20

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    .line 109
    const/16 v16, 0x0

    .line 206
    :goto_a
    return-object v16

    .line 113
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    if-nez v16, :cond_2a

    .line 116
    const/16 v16, 0x0

    goto :goto_a

    .line 120
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    const/16 v17, 0x8c

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 126
    .local v8, messageType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    const/16 v17, 0x84

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 129
    .local v4, contType:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v16

    if-nez v16, :cond_56

    .line 130
    const-string v16, "check mandatory headers failed!"

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 131
    const/16 v16, 0x0

    goto :goto_a

    .line 134
    :cond_56
    const/16 v16, 0x80

    move/from16 v0, v16

    move v1, v8

    if-eq v0, v1, :cond_64

    const/16 v16, 0x84

    move/from16 v0, v16

    move v1, v8

    if-ne v0, v1, :cond_a4

    .line 138
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v16, v0

    if-nez v16, :cond_82

    .line 142
    const/16 v16, 0x0

    goto :goto_a

    .line 145
    :cond_82
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    .line 146
    .local v6, ctTypeStr:Ljava/lang/String;
    const-string/jumbo v16, "text/plain"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a4

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    const-string v17, "application/vnd.wap.multipart.mixed"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x84

    invoke-virtual/range {v16 .. v18}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 154
    .end local v6           #ctTypeStr:Ljava/lang/String;
    :cond_a4
    packed-switch v8, :pswitch_data_192

    .line 205
    const-string v16, "Parser doesn\'t support this message type in this version!"

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 206
    const/16 v16, 0x0

    goto/16 :goto_a

    .line 156
    :pswitch_b0
    new-instance v15, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v15, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v16, v15

    .line 157
    goto/16 :goto_a

    .line 159
    .end local v15           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_c5
    new-instance v14, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v14, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object/from16 v16, v14

    .line 160
    goto/16 :goto_a

    .line 162
    .end local v14           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_d7
    new-instance v9, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v9, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v16, v9

    .line 164
    goto/16 :goto_a

    .line 166
    .end local v9           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_e9
    new-instance v10, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object/from16 v16, v10

    .line 168
    goto/16 :goto_a

    .line 170
    .end local v10           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_fb
    new-instance v13, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 173
    .local v13, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v5

    .line 174
    .local v5, contentType:[B
    if-nez v5, :cond_11b

    .line 175
    const/16 v16, 0x0

    goto/16 :goto_a

    .line 177
    :cond_11b
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 179
    .restart local v6       #ctTypeStr:Ljava/lang/String;
    const-string v16, "application/vnd.wap.multipart.mixed"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_142

    const-string v16, "application/vnd.wap.multipart.related"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_142

    const-string/jumbo v16, "text/plain"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_146

    :cond_142
    move-object/from16 v16, v13

    .line 185
    goto/16 :goto_a

    .line 187
    :cond_146
    const/16 v16, 0x0

    goto/16 :goto_a

    .line 189
    .end local v5           #contentType:[B
    .end local v6           #ctTypeStr:Ljava/lang/String;
    .end local v13           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_14a
    new-instance v7, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object/from16 v16, v7

    .line 191
    goto/16 :goto_a

    .line 193
    .end local v7           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_15c
    new-instance v3, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object/from16 v16, v3

    .line 195
    goto/16 :goto_a

    .line 197
    .end local v3           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_16e
    new-instance v11, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v11, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object/from16 v16, v11

    .line 199
    goto/16 :goto_a

    .line 201
    .end local v11           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_180
    new-instance v12, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v12, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object/from16 v16, v12

    .line 203
    goto/16 :goto_a

    .line 154
    :pswitch_data_192
    .packed-switch 0x80
        :pswitch_b0
        :pswitch_c5
        :pswitch_d7
        :pswitch_e9
        :pswitch_fb
        :pswitch_15c
        :pswitch_14a
        :pswitch_180
        :pswitch_16e
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 34
    .parameter "pduDataStream"

    .prologue
    .line 217
    if-nez p1, :cond_5

    .line 218
    const/16 v28, 0x0

    .line 757
    .end local p0
    :goto_4
    return-object v28

    .line 221
    .restart local p0
    :cond_5
    const/4 v13, 0x1

    .line 222
    .local v13, keepParsing:Z
    new-instance v12, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 224
    .end local p0
    .local v12, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_b
    :goto_b
    if-eqz v13, :cond_624

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v28

    if-lez v28, :cond_624

    .line 225
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 226
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 228
    .local v11, headerField:I
    const/16 v28, 0x20

    move v0, v11

    move/from16 v1, v28

    if-lt v0, v1, :cond_3c

    const/16 v28, 0x7f

    move v0, v11

    move/from16 v1, v28

    if-gt v0, v1, :cond_3c

    .line 229
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 230
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 235
    .local v5, bVal:[B
    goto :goto_b

    .line 237
    .end local v5           #bVal:[B
    :cond_3c
    packed-switch v11, :pswitch_data_628

    .line 752
    :pswitch_3f
    const-string v28, "Unknown header"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 240
    :pswitch_45
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .line 241
    .local v17, messageType:I
    packed-switch v17, :pswitch_data_6aa

    .line 261
    :try_start_4c
    move-object v0, v12

    move/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_53
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4c .. :try_end_53} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_53} :catch_82

    goto :goto_b

    .line 262
    :catch_54
    move-exception v7

    .line 263
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 265
    const/16 v28, 0x0

    goto :goto_4

    .line 258
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_7f
    const/16 v28, 0x0

    goto :goto_4

    .line 266
    :catch_82
    move-exception v7

    .line 267
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 268
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 301
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v17           #messageType:I
    :pswitch_a0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .line 304
    .local v25, value:I
    :try_start_a4
    move-object v0, v12

    move/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_ab
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_a4 .. :try_end_ab} :catch_ad
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_ab} :catch_d9

    goto/16 :goto_b

    .line 305
    :catch_ad
    move-exception v7

    .line 306
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 308
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 309
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_d9
    move-exception v7

    .line 310
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 311
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 322
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:I
    :pswitch_f7
    :try_start_f7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .line 323
    .local v25, value:J
    move-object v0, v12

    move-wide/from16 v1, v25

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_102
    .catch Ljava/lang/RuntimeException; {:try_start_f7 .. :try_end_102} :catch_104

    goto/16 :goto_b

    .line 324
    .end local v25           #value:J
    :catch_104
    move-exception v28

    move-object/from16 v7, v28

    .line 325
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 326
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 337
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_124
    :try_start_124
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .line 338
    .restart local v25       #value:J
    move-object v0, v12

    move-wide/from16 v1, v25

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_12f
    .catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_12f} :catch_131

    goto/16 :goto_b

    .line 339
    .end local v25           #value:J
    :catch_131
    move-exception v28

    move-object/from16 v7, v28

    .line 340
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 341
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 367
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_151
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v25

    .line 368
    .local v25, value:[B
    if-eqz v25, :cond_b

    .line 370
    :try_start_15d
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_164
    .catch Ljava/lang/NullPointerException; {:try_start_15d .. :try_end_164} :catch_166
    .catch Ljava/lang/RuntimeException; {:try_start_15d .. :try_end_164} :catch_16e

    goto/16 :goto_b

    .line 371
    :catch_166
    move-exception v7

    .line 372
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 373
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_16e
    move-exception v7

    .line 374
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 375
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 384
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:[B
    :pswitch_18c
    const-string v28, "TUR"

    const-string/jumbo v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1aa

    const-string v28, "TRC"

    const-string/jumbo v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1da

    .line 387
    :cond_1aa
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .line 389
    .local v25, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_b

    .line 391
    :try_start_1b0
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1b7
    .catch Ljava/lang/NullPointerException; {:try_start_1b0 .. :try_end_1b7} :catch_1b9
    .catch Ljava/lang/RuntimeException; {:try_start_1b0 .. :try_end_1b7} :catch_1bc

    goto/16 :goto_b

    .line 392
    :catch_1b9
    move-exception v28

    goto/16 :goto_b

    .line 393
    :catch_1bc
    move-exception v7

    .line 394
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 395
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 409
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1da
    :pswitch_1da
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .line 411
    .restart local v25       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_b

    .line 413
    :try_start_1e0
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1e7
    .catch Ljava/lang/NullPointerException; {:try_start_1e0 .. :try_end_1e7} :catch_1e9
    .catch Ljava/lang/RuntimeException; {:try_start_1e0 .. :try_end_1e7} :catch_1f1

    goto/16 :goto_b

    .line 414
    :catch_1e9
    move-exception v7

    .line 415
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 416
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1f1
    move-exception v7

    .line 417
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 418
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 429
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_20f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .line 431
    .restart local v25       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_b

    .line 432
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 433
    .local v4, address:[B
    if-eqz v4, :cond_245

    .line 434
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 435
    .local v21, str:Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 436
    .local v8, endIndex:I
    if-lez v8, :cond_23a

    .line 437
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 440
    :cond_23a
    :try_start_23a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_245
    .catch Ljava/lang/NullPointerException; {:try_start_23a .. :try_end_245} :catch_256

    .line 448
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_245
    :try_start_245
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_24c
    .catch Ljava/lang/NullPointerException; {:try_start_245 .. :try_end_24c} :catch_24e
    .catch Ljava/lang/RuntimeException; {:try_start_245 .. :try_end_24c} :catch_262

    goto/16 :goto_b

    .line 449
    :catch_24e
    move-exception v7

    .line 450
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 441
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v8       #endIndex:I
    .restart local v21       #str:Ljava/lang/String;
    :catch_256
    move-exception v28

    move-object/from16 v7, v28

    .line 442
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 443
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 451
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :catch_262
    move-exception v7

    .line 452
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 453
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 466
    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_280
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 469
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 474
    .local v24, token:I
    :try_start_287
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_28a
    .catch Ljava/lang/RuntimeException; {:try_start_287 .. :try_end_28a} :catch_2c4

    move-result-wide v22

    .line 479
    .local v22, timeValue:J
    const/16 v28, 0x81

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_29d

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    add-long v22, v22, v28

    .line 486
    :cond_29d
    :try_start_29d
    move-object v0, v12

    move-wide/from16 v1, v22

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2a4
    .catch Ljava/lang/RuntimeException; {:try_start_29d .. :try_end_2a4} :catch_2a6

    goto/16 :goto_b

    .line 487
    :catch_2a6
    move-exception v7

    .line 488
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 489
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 475
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v22           #timeValue:J
    :catch_2c4
    move-exception v7

    .line 476
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 477
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 499
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v24           #token:I
    :pswitch_2e2
    const/4 v9, 0x0

    .line 500
    .local v9, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 503
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 506
    .local v10, fromToken:I
    const/16 v28, 0x80

    move/from16 v0, v28

    move v1, v10

    if-ne v0, v1, :cond_345

    .line 508
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 509
    if-eqz v9, :cond_326

    .line 510
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 511
    .restart local v4       #address:[B
    if-eqz v4, :cond_326

    .line 512
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 513
    .restart local v21       #str:Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 514
    .restart local v8       #endIndex:I
    if-lez v8, :cond_31c

    .line 515
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 518
    :cond_31c
    :try_start_31c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_326
    .catch Ljava/lang/NullPointerException; {:try_start_31c .. :try_end_326} :catch_339

    .line 536
    .end local v4           #address:[B
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_326
    :goto_326
    const/16 v28, 0x89

    :try_start_328
    move-object v0, v12

    move-object v1, v9

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_32f
    .catch Ljava/lang/NullPointerException; {:try_start_328 .. :try_end_32f} :catch_331
    .catch Ljava/lang/RuntimeException; {:try_start_328 .. :try_end_32f} :catch_374

    goto/16 :goto_b

    .line 537
    :catch_331
    move-exception v7

    .line 538
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 519
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v4       #address:[B
    .restart local v8       #endIndex:I
    .restart local v21       #str:Ljava/lang/String;
    :catch_339
    move-exception v28

    move-object/from16 v7, v28

    .line 520
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 521
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 527
    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_345
    :try_start_345
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v28, "insert-address-token"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_353
    .catch Ljava/lang/NullPointerException; {:try_start_345 .. :try_end_353} :catch_354

    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_326

    .line 529
    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_354
    move-exception v28

    move-object/from16 v7, v28

    .line 530
    .restart local v7       #e:Ljava/lang/NullPointerException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 531
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 539
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_374
    move-exception v7

    .line 540
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 541
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 548
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10           #fromToken:I
    :pswitch_392
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 549
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v15

    .line 551
    .local v15, messageClass:I
    const/16 v28, 0x80

    move v0, v15

    move/from16 v1, v28

    if-lt v0, v1, :cond_435

    .line 554
    const/16 v28, 0x80

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_3ca

    .line 555
    :try_start_3ad
    const-string/jumbo v28, "personal"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3be
    .catch Ljava/lang/NullPointerException; {:try_start_3ad .. :try_end_3be} :catch_3c0
    .catch Ljava/lang/RuntimeException; {:try_start_3ad .. :try_end_3be} :catch_3e3

    goto/16 :goto_b

    .line 571
    :catch_3c0
    move-exception v28

    move-object/from16 v7, v28

    .line 572
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 558
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_3ca
    const/16 v28, 0x81

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_403

    .line 559
    :try_start_3d1
    const-string v28, "advertisement"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3e1
    .catch Ljava/lang/NullPointerException; {:try_start_3d1 .. :try_end_3e1} :catch_3c0
    .catch Ljava/lang/RuntimeException; {:try_start_3d1 .. :try_end_3e1} :catch_3e3

    goto/16 :goto_b

    .line 573
    :catch_3e3
    move-exception v28

    move-object/from16 v7, v28

    .line 574
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 575
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 562
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_403
    const/16 v28, 0x82

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_41c

    .line 563
    :try_start_40a
    const-string v28, "informational"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_b

    .line 566
    :cond_41c
    const/16 v28, 0x83

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_b

    .line 567
    const-string v28, "auto"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_433
    .catch Ljava/lang/NullPointerException; {:try_start_40a .. :try_end_433} :catch_3c0
    .catch Ljava/lang/RuntimeException; {:try_start_40a .. :try_end_433} :catch_3e3

    goto/16 :goto_b

    .line 579
    :cond_435
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 580
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 581
    .local v16, messageClassString:[B
    if-eqz v16, :cond_b

    .line 583
    const/16 v28, 0x8a

    :try_start_446
    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_44e
    .catch Ljava/lang/NullPointerException; {:try_start_446 .. :try_end_44e} :catch_450
    .catch Ljava/lang/RuntimeException; {:try_start_446 .. :try_end_44e} :catch_458

    goto/16 :goto_b

    .line 584
    :catch_450
    move-exception v7

    .line 585
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 586
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_458
    move-exception v7

    .line 587
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 588
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 596
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v15           #messageClass:I
    .end local v16           #messageClassString:[B
    :pswitch_476
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v27

    .line 599
    .local v27, version:I
    const/16 v28, 0x8d

    :try_start_47c
    move-object v0, v12

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_484
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_47c .. :try_end_484} :catch_486
    .catch Ljava/lang/RuntimeException; {:try_start_47c .. :try_end_484} :catch_4b2

    goto/16 :goto_b

    .line 600
    :catch_486
    move-exception v7

    .line 601
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 603
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 604
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_4b2
    move-exception v7

    .line 605
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 606
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 615
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v27           #version:I
    :pswitch_4d0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 619
    :try_start_4d3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4d6
    .catch Ljava/lang/RuntimeException; {:try_start_4d3 .. :try_end_4d6} :catch_4f0

    .line 626
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 628
    .local v20, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v20, :cond_b

    .line 630
    const/16 v28, 0xa0

    :try_start_4de
    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_4e6
    .catch Ljava/lang/NullPointerException; {:try_start_4de .. :try_end_4e6} :catch_4e8
    .catch Ljava/lang/RuntimeException; {:try_start_4de .. :try_end_4e6} :catch_50e

    goto/16 :goto_b

    .line 632
    :catch_4e8
    move-exception v7

    .line 633
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 620
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v20           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_4f0
    move-exception v7

    .line 621
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 622
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 634
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v20       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_50e
    move-exception v7

    .line 635
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 636
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 646
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v20           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_52c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 650
    :try_start_52f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_532
    .catch Ljava/lang/RuntimeException; {:try_start_52f .. :try_end_532} :catch_562

    .line 658
    :try_start_532
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    .line 659
    .local v18, perviouslySentDate:J
    const/16 v28, 0xa1

    move-object v0, v12

    move-wide/from16 v1, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_540
    .catch Ljava/lang/RuntimeException; {:try_start_532 .. :try_end_540} :catch_542

    goto/16 :goto_b

    .line 661
    .end local v18           #perviouslySentDate:J
    :catch_542
    move-exception v28

    move-object/from16 v7, v28

    .line 662
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 663
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 651
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catch_562
    move-exception v7

    .line 652
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 653
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 676
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_580
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 679
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 682
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_b

    .line 695
    :pswitch_58b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 698
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 702
    :try_start_591
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_594
    .catch Ljava/lang/RuntimeException; {:try_start_591 .. :try_end_594} :catch_596

    goto/16 :goto_b

    .line 703
    :catch_596
    move-exception v7

    .line 704
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 705
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 714
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_5b4
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_b

    .line 722
    :pswitch_5bf
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 724
    .local v14, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 727
    .local v6, contentType:[B
    if-eqz v6, :cond_5d6

    .line 729
    const/16 v28, 0x84

    :try_start_5cf
    move-object v0, v12

    move-object v1, v6

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_5d6
    .catch Ljava/lang/NullPointerException; {:try_start_5cf .. :try_end_5d6} :catch_5ff
    .catch Ljava/lang/RuntimeException; {:try_start_5cf .. :try_end_5d6} :catch_606

    .line 739
    :cond_5d6
    :goto_5d6
    const/16 v28, 0x99

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 742
    const/16 v28, 0x83

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 744
    const/4 v13, 0x0

    .line 745
    goto/16 :goto_b

    .line 730
    :catch_5ff
    move-exception v7

    .line 731
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_5d6

    .line 732
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_606
    move-exception v7

    .line 733
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 734
    const/16 v28, 0x0

    goto/16 :goto_4

    .end local v6           #contentType:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v11           #headerField:I
    .end local v14           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_624
    move-object/from16 v28, v12

    .line 757
    goto/16 :goto_4

    .line 237
    :pswitch_data_628
    .packed-switch 0x81
        :pswitch_20f
        :pswitch_20f
        :pswitch_151
        :pswitch_5bf
        :pswitch_f7
        :pswitch_a0
        :pswitch_280
        :pswitch_280
        :pswitch_2e2
        :pswitch_392
        :pswitch_151
        :pswitch_45
        :pswitch_476
        :pswitch_f7
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_1da
        :pswitch_a0
        :pswitch_a0
        :pswitch_18c
        :pswitch_20f
        :pswitch_151
        :pswitch_a0
        :pswitch_1da
        :pswitch_a0
        :pswitch_a0
        :pswitch_280
        :pswitch_151
        :pswitch_f7
        :pswitch_4d0
        :pswitch_52c
        :pswitch_a0
        :pswitch_a0
        :pswitch_580
        :pswitch_a0
        :pswitch_1da
        :pswitch_a0
        :pswitch_3f
        :pswitch_a0
        :pswitch_58b
        :pswitch_a0
        :pswitch_58b
        :pswitch_124
        :pswitch_3f
        :pswitch_124
        :pswitch_3f
        :pswitch_a0
        :pswitch_5b4
        :pswitch_124
        :pswitch_a0
        :pswitch_1da
        :pswitch_1da
        :pswitch_151
        :pswitch_151
        :pswitch_151
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_151
        :pswitch_151
        :pswitch_a0
    .end packed-switch

    .line 241
    :pswitch_data_6aa
    .packed-switch 0x89
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
    .end packed-switch
.end method
