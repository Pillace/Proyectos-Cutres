.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PduParser"
.end annotation


# instance fields
.field cur:I

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field pdu:[B

.field userData:[B

.field userDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field validityPeriodFormat:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 739
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 740
    return-void
.end method

.method constructor <init>([B)V
    .registers 3
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    .line 743
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    .line 744
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 745
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 746
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .registers 17
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    .line 856
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 859
    .local v5, offset:I
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    packed-switch v10, :pswitch_data_98

    .line 872
    :goto_7
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    aget-byte v10, v10, v5

    and-int/lit16 v9, v10, 0xff

    .line 873
    .local v9, userDataLength:I
    const/4 v4, 0x0

    .line 874
    .local v4, headerSeptets:I
    const/4 v8, 0x0

    .line 876
    .local v8, userDataHeaderLength:I
    if-eqz p1, :cond_96

    .line 877
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6           #offset:I
    .restart local v5       #offset:I
    aget-byte v10, v10, v6

    and-int/lit16 v8, v10, 0xff

    .line 879
    new-array v7, v8, [B

    .line 880
    .local v7, udh:[B
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    const/4 v11, 0x0

    invoke-static {v10, v5, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    invoke-static {v7}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 882
    add-int/2addr v5, v8

    .line 884
    add-int/lit8 v10, v8, 0x1

    mul-int/lit8 v3, v10, 0x8

    .line 885
    .local v3, headerBits:I
    div-int/lit8 v4, v3, 0x7

    .line 886
    rem-int/lit8 v10, v3, 0x7

    if-lez v10, :cond_66

    const/4 v10, 0x1

    :goto_35
    add-int/2addr v4, v10

    .line 887
    mul-int/lit8 v10, v4, 0x7

    sub-int/2addr v10, v3

    iput v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 891
    .end local v3           #headerBits:I
    .end local v7           #udh:[B
    :goto_3b
    if-eqz p2, :cond_68

    .line 897
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v10, v10

    sub-int v1, v10, v5

    .line 909
    .local v1, bufferLen:I
    :cond_42
    :goto_42
    new-array v10, v1, [B

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    .line 913
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->access$000()Z

    move-result v10

    if-nez v10, :cond_74

    .line 914
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v13, v13

    invoke-static {v10, v5, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    :goto_57
    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 922
    if-eqz p2, :cond_8c

    .line 924
    sub-int v2, v9, v4

    .line 926
    .local v2, count:I
    if-gez v2, :cond_8a

    const/4 v10, 0x0

    .line 939
    .end local v2           #count:I
    :goto_60
    return v10

    .line 862
    .end local v1           #bufferLen:I
    .end local v4           #headerSeptets:I
    .end local v8           #userDataHeaderLength:I
    .end local v9           #userDataLength:I
    :pswitch_61
    const/4 v5, 0x7

    .line 863
    goto :goto_7

    .line 865
    :pswitch_63
    add-int/lit8 v5, v5, 0x1

    .line 866
    goto :goto_7

    .line 886
    .restart local v3       #headerBits:I
    .restart local v4       #headerSeptets:I
    .restart local v7       #udh:[B
    .restart local v8       #userDataHeaderLength:I
    .restart local v9       #userDataLength:I
    :cond_66
    const/4 v10, 0x0

    goto :goto_35

    .line 903
    .end local v3           #headerBits:I
    .end local v7           #udh:[B
    :cond_68
    if-eqz p1, :cond_72

    add-int/lit8 v10, v8, 0x1

    :goto_6c
    sub-int v1, v9, v10

    .line 904
    .restart local v1       #bufferLen:I
    if-gez v1, :cond_42

    .line 905
    const/4 v1, 0x0

    goto :goto_42

    .line 903
    .end local v1           #bufferLen:I
    :cond_72
    const/4 v10, 0x0

    goto :goto_6c

    .line 915
    .restart local v1       #bufferLen:I
    :cond_74
    if-eqz p1, :cond_82

    .line 916
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v13, v13

    invoke-static {v10, v5, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_57

    .line 918
    :cond_82
    const-string v10, "Gsm/SmsMessage"

    const-string v11, "array copy skip! if dataCodingScheme is unsupporting,\n encodingType is Unknown and messageBody is null"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .restart local v2       #count:I
    :cond_8a
    move v10, v2

    .line 926
    goto :goto_60

    .line 933
    .end local v2           #count:I
    :cond_8c
    move v0, v9

    .line 935
    .local v0, UCS2Count:I
    if-eqz p1, :cond_94

    .line 937
    sub-int v10, v0, v8

    const/4 v11, 0x1

    sub-int v0, v10, v11

    :cond_94
    move v10, v0

    .line 939
    goto :goto_60

    .end local v0           #UCS2Count:I
    .end local v1           #bufferLen:I
    .end local v5           #offset:I
    .restart local v6       #offset:I
    :cond_96
    move v5, v6

    .end local v6           #offset:I
    .restart local v5       #offset:I
    goto :goto_3b

    .line 859
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_61
        :pswitch_63
        :pswitch_61
    .end packed-switch
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 6

    .prologue
    .line 796
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 797
    .local v0, addressLength:I
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x2

    .line 799
    .local v1, lengthBytes:I
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .line 801
    .local v2, ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 803
    return-object v2
.end method

.method getByte()I
    .registers 4

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 759
    .local v0, len:I
    if-nez v0, :cond_d

    .line 761
    const/4 v1, 0x0

    .line 773
    .local v1, ret:Ljava/lang/String;
    :goto_7
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 775
    return-object v1

    .line 765
    .end local v1           #ret:Ljava/lang/String;
    :cond_d
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7

    .line 767
    .end local v1           #ret:Ljava/lang/String;
    :catch_16
    move-exception v3

    move-object v2, v3

    .line 768
    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "Gsm/SmsMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7
.end method

.method getSCTimestampMillis()J
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 813
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 814
    .local v8, year:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 815
    .local v3, month:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 816
    .local v0, day:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 817
    .local v1, hour:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 818
    .local v2, minute:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 825
    .local v4, second:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v7, v9, v10

    .line 828
    .local v7, tzByte:B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 830
    .local v6, timezoneOffset:I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_92

    .line 832
    :goto_6a
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 835
    .local v5, time:Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_95

    add-int/lit16 v9, v8, 0x76c

    :goto_77
    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 836
    sub-int v9, v3, v12

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 837
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 838
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 839
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 840
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 843
    invoke-virtual {v5, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    .line 830
    .end local v5           #time:Landroid/text/format/Time;
    :cond_92
    neg-int v9, v6

    move v6, v9

    goto :goto_6a

    .line 835
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_95
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_77
.end method

.method getUserData()[B
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    return-object v0
.end method

.method getUserDataEUC_KR(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 1070
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "EUC_KR"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_11

    .line 1076
    .local v1, ret:Ljava/lang/String;
    :goto_b
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1077
    return-object v1

    .line 1071
    .end local v1           #ret:Ljava/lang/String;
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 1072
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1073
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method getUserDataGSM7Bit(III)Ljava/lang/String;
    .registers 11
    .parameter "septetCount"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v6

    .line 1040
    .local v6, ret:Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    mul-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1042
    return-object v6
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataSeptetPadding()I
    .registers 2

    .prologue
    .line 962
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 1056
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string/jumbo v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_12

    .line 1062
    .local v1, ret:Ljava/lang/String;
    :goto_c
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1063
    return-object v1

    .line 1057
    .end local v1           #ret:Ljava/lang/String;
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 1058
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1059
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method moreDataPresent()Z
    .registers 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
