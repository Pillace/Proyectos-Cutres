.class abstract Lcom/android/internal/telephony/gsm/stk/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 293
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 294
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 295
    .local v1, length:I
    if-eqz v1, :cond_1c

    .line 297
    :try_start_e
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SetupCallbcdToString([BII)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v4

    .line 303
    :goto_12
    return-object v4

    .line 299
    :catch_13
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 303
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    const/4 v4, 0x0

    goto :goto_12
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 278
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 279
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 280
    .local v1, length:I
    if-eqz v1, :cond_1c

    .line 282
    :try_start_e
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v4

    .line 288
    :goto_12
    return-object v4

    .line 284
    :catch_13
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 288
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    const/4 v4, 0x0

    goto :goto_12
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;-><init>()V

    .line 42
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 43
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 45
    .local v3, valueIndex:I
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    .line 46
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    .line 47
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    .line 48
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I
    :try_end_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_29} :catch_2a

    .line 49
    return-object v0

    .line 50
    :catch_2a
    move-exception v4

    move-object v1, v4

    .line 51
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDTMFstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .registers 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 364
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 365
    .local v4, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 367
    .local v2, length:I
    if-eqz v2, :cond_29

    .line 368
    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [B

    .line 369
    .local v0, dtmfString:[B
    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v0, v6

    .line 370
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #valueIndex:I
    .local v5, valueIndex:I
    :goto_18
    if-ge v1, v2, :cond_26

    .line 371
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    aget-byte v7, v3, v5

    aput-byte v7, v0, v6

    .line 370
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_18

    :cond_26
    move v4, v5

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    move-object v6, v0

    .line 375
    .end local v0           #dtmfString:[B
    .end local v1           #i:I
    :goto_28
    return-object v6

    :cond_29
    const/4 v6, 0x0

    goto :goto_28
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;-><init>()V

    .line 67
    .local v0, devIds:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 68
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 70
    .local v3, valueIndex:I
    :try_start_d
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->sourceId:I

    .line 71
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->destinationId:I
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_1b} :catch_1c

    .line 72
    return-object v0

    .line 73
    :catch_1c
    move-exception v4

    move-object v1, v4

    .line 74
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;
    .registers 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, timeInterval:I
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    .line 90
    .local v3, timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 91
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 94
    .local v4, valueIndex:I
    :try_start_b
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 95
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_19} :catch_21

    and-int/lit16 v2, v5, 0xff

    .line 99
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    return-object v5

    .line 96
    :catch_21
    move-exception v5

    move-object v0, v5

    .line 97
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;
    .registers 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/IconId;-><init>()V

    .line 164
    .local v1, id:Lcom/android/internal/telephony/gsm/stk/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 165
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 167
    .local v3, valueIndex:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_f
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_1f

    const/4 v5, 0x1

    :goto_16
    iput-boolean v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    .line 168
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_1e} :catch_21

    .line 173
    return-object v1

    .line 167
    :cond_1f
    const/4 v5, 0x0

    goto :goto_16

    .line 169
    :catch_21
    move-exception v5

    move-object v0, v5

    .line 170
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;
    .registers 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 112
    .local v2, item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 113
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 114
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v3

    .line 116
    .local v3, length:I
    if-eqz v3, :cond_21

    .line 117
    const/4 v8, 0x1

    sub-int v6, v3, v8

    .line 120
    .local v6, textLen:I
    :try_start_12
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 121
    .local v1, id:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, text:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Item;

    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/gsm/stk/Item;-><init>(ILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_21} :catch_22

    .line 129
    .end local v1           #id:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLen:I
    .restart local v2       #item:Lcom/android/internal/telephony/gsm/stk/Item;
    :cond_21
    return-object v2

    .line 124
    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    .restart local v6       #textLen:I
    :catch_22
    move-exception v8

    move-object v0, v8

    .line 125
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 143
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 146
    .local v3, valueIndex:I
    :try_start_9
    aget-byte v4, v2, v3
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_b} :catch_e

    and-int/lit16 v1, v4, 0xff

    .line 151
    return v1

    .line 147
    :catch_e
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    .registers 12
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 186
    const-string v8, "ValueParser"

    const-string/jumbo v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;-><init>()V

    .line 189
    .local v1, id:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 190
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 191
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    sub-int v4, v8, v10

    .line 192
    .local v4, numOfItems:I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    .line 196
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_22
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_3c

    move v8, v10

    :goto_29
    iput-boolean v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->selfExplanatory:Z

    .line 198
    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_2d
    if-ge v3, v4, :cond_49

    .line 199
    iget-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_31} :catch_3e

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :try_start_35
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_39
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_39} :catch_4a

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_2d

    .line 196
    .end local v3           #index:I
    :cond_3c
    const/4 v8, 0x0

    goto :goto_29

    .line 201
    :catch_3e
    move-exception v8

    move-object v0, v8

    move v6, v7

    .line 202
    .end local v7           #valueIndex:I
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #valueIndex:I
    :goto_41
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 204
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #valueIndex:I
    .restart local v3       #index:I
    .restart local v7       #valueIndex:I
    :cond_49
    return-object v1

    .line 201
    .end local v3           #index:I
    .end local v7           #valueIndex:I
    .restart local v2       #index:I
    .restart local v6       #valueIndex:I
    :catch_4a
    move-exception v8

    move-object v0, v8

    goto :goto_41
.end method

.method static retrieveLanguage(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 5
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 693
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 694
    .local v2, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    .line 695
    .local v0, length:I
    if-eqz v0, :cond_14

    .line 696
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 699
    :goto_13
    return-object v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method static retrieveSMSCaddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 433
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 435
    .local v5, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .line 437
    .local v2, length:I
    add-int/lit8 v6, v2, 0x1

    new-array v4, v6, [B

    .line 440
    .local v4, rawValueSmscaddress:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    add-int/lit8 v6, v2, 0x1

    if-ge v1, v6, :cond_2a

    .line 442
    const/4 v6, 0x1

    sub-int v6, v5, v6

    add-int/2addr v6, v1

    :try_start_19
    aget-byte v6, v3, v6

    aput-byte v6, v4, v1
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_1d} :catch_20

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 444
    :catch_20
    move-exception v6

    move-object v0, v6

    .line 445
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 447
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2a
    if-eqz v2, :cond_31

    .line 448
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 450
    :cond_31
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6
.end method

.method static retrieveSMSTPDU(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;Z)Ljava/lang/String;
    .registers 13
    .parameter "ctlv"
    .parameter "ispacking_req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 456
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 457
    .local v2, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    .line 458
    .local v0, length:I
    const/4 p0, 0x0

    .line 459
    .local p0, destaddlen:I
    const/4 p0, 0x0

    .line 462
    .local p0, rawPdu:[B
    add-int/lit8 p0, v2, 0x2

    aget-byte p0, v1, p0

    .end local p0           #rawPdu:[B
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_31

    .line 463
    add-int/lit8 p0, v2, 0x2

    aget-byte p0, v1, p0

    div-int/lit8 p0, p0, 0x2

    .line 467
    .local p0, destaddlen:I
    :goto_1c
    add-int/lit8 p0, p0, 0x6

    if-ne v0, p0, :cond_3a

    .line 468
    .end local p0           #destaddlen:I
    add-int/lit8 p0, v0, 0x1

    new-array p0, p0, [B

    .local p0, rawPdu:[B
    move-object v6, p0

    .line 474
    .end local p0           #rawPdu:[B
    .local v6, rawPdu:[B
    :goto_25
    const/4 p0, 0x0

    .local p0, i:I
    :goto_26
    if-ge p0, v0, :cond_47

    .line 476
    add-int v3, v2, p0

    :try_start_2a
    aget-byte v3, v1, v3

    aput-byte v3, v6, p0
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_2e} :catch_3e

    .line 474
    add-int/lit8 p0, p0, 0x1

    goto :goto_26

    .line 465
    .end local v6           #rawPdu:[B
    .end local p0           #i:I
    :cond_31
    add-int/lit8 p0, v2, 0x2

    aget-byte p0, v1, p0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    .local p0, destaddlen:I
    goto :goto_1c

    .line 470
    .end local p0           #destaddlen:I
    :cond_3a
    new-array p0, v0, [B

    .local p0, rawPdu:[B
    move-object v6, p0

    .end local p0           #rawPdu:[B
    .restart local v6       #rawPdu:[B
    goto :goto_25

    .line 478
    .local p0, i:I
    :catch_3e
    move-exception p0

    .line 479
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 482
    .local p0, i:I
    .restart local p1
    :cond_47
    const/4 p0, 0x1

    if-ne p1, p0, :cond_2bb

    .line 484
    .end local p0           #i:I
    const/4 p0, 0x0

    .line 486
    .local p0, packingUserDataIndex:I
    const/4 p0, 0x0

    .line 488
    .local p0, packingUserDatalen:I
    const/4 p0, 0x0

    .line 490
    .local p0, adjustedUserDatalen:I
    const/4 p1, 0x0

    .line 492
    .local p1, lengthtoCheck:I
    const/4 p1, 0x0

    .line 494
    .local p1, tpvpvalue:I
    const/4 v1, 0x0

    .line 496
    .local v1, tpvplength:I
    const/4 p1, 0x0

    .line 498
    .local p1, destaddrlen:I
    const-string p1, "ValueParser"

    .end local p1           #destaddrlen:I
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #valueIndex:I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rawtpvp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/4 p1, 0x0

    aget-byte p1, v6, p1

    and-int/lit8 p1, p1, 0x18

    .line 502
    .local p1, tpvpvalue:I
    const-string v2, "ValueParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tpvpvalue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    if-nez p1, :cond_ee

    .line 505
    const/4 p1, 0x0

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v8, p1

    .line 518
    .end local p1           #tpvplength:I
    .local v8, tpvplength:I
    :goto_8f
    const/4 p1, 0x2

    aget-byte p1, v6, p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_103

    .line 519
    const/4 p1, 0x2

    aget-byte p1, v6, p1

    div-int/lit8 p1, p1, 0x2

    .line 524
    .local p1, destaddrlen:I
    :goto_9b
    add-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v8

    add-int/lit8 v4, p1, 0x1

    .line 529
    .end local p1           #destaddrlen:I
    .local v4, packingUserDataIndex:I
    :try_start_a4
    aget-byte p1, v6, v4
    :try_end_a6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a4 .. :try_end_a6} :catch_10b

    and-int/lit16 v5, p1, 0xff

    .line 534
    .local v5, packingUserDatalen:I
    add-int/lit8 p1, v4, 0x1

    sub-int p1, v0, p1

    .line 536
    .local p1, lengthtoCheck:I
    const-string v1, "ValueParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length to be checked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    if-ne p1, v5, :cond_1f1

    .line 541
    const-string p1, "ValueParser"

    .end local p1           #lengthtoCheck:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TPUDL_packingUserDatalen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, shorten:I
    new-array v1, v5, [B

    .line 546
    .local v1, packinUserData:[B
    const/4 p1, 0x0

    .local p1, j:I
    :goto_e2
    if-ge p1, v5, :cond_11d

    .line 548
    add-int/lit8 v3, v4, 0x1

    add-int/2addr v3, p1

    :try_start_e7
    aget-byte v3, v6, v3

    aput-byte v3, v1, p1
    :try_end_eb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e7 .. :try_end_eb} :catch_114

    .line 546
    add-int/lit8 p1, p1, 0x1

    goto :goto_e2

    .line 507
    .end local v2           #shorten:I
    .end local v4           #packingUserDataIndex:I
    .end local v5           #packingUserDatalen:I
    .end local v8           #tpvplength:I
    .local v1, tpvplength:I
    .local p1, tpvpvalue:I
    :cond_ee
    const/16 v2, 0x10

    if-ne p1, v2, :cond_f5

    .line 508
    const/4 p1, 0x1

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v8, p1

    .end local p1           #tpvplength:I
    .restart local v8       #tpvplength:I
    goto :goto_8f

    .line 510
    .end local v8           #tpvplength:I
    .restart local v1       #tpvplength:I
    .local p1, tpvpvalue:I
    :cond_f5
    const/16 v2, 0x8

    if-ne p1, v2, :cond_fc

    .line 511
    const/4 p1, 0x7

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v8, p1

    .end local p1           #tpvplength:I
    .restart local v8       #tpvplength:I
    goto :goto_8f

    .line 513
    .end local v8           #tpvplength:I
    .restart local v1       #tpvplength:I
    .local p1, tpvpvalue:I
    :cond_fc
    const/16 v2, 0x18

    if-ne p1, v2, :cond_2d3

    .line 514
    const/4 p1, 0x7

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v8, p1

    .end local p1           #tpvplength:I
    .restart local v8       #tpvplength:I
    goto :goto_8f

    .line 521
    :cond_103
    const/4 p1, 0x2

    aget-byte p1, v6, p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    .local p1, destaddrlen:I
    goto :goto_9b

    .line 530
    .end local p1           #destaddrlen:I
    .restart local v4       #packingUserDataIndex:I
    :catch_10b
    move-exception p0

    .line 531
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 550
    .local v1, packinUserData:[B
    .restart local v2       #shorten:I
    .restart local v5       #packingUserDatalen:I
    .local p0, adjustedUserDatalen:I
    .local p1, j:I
    :catch_114
    move-exception p0

    .line 551
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #j:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 555
    .local p0, adjustedUserDatalen:I
    .restart local p1       #j:I
    :cond_11d
    const/4 p1, 0x0

    invoke-static {v1, p1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .end local p1           #j:I
    move-result-object v1

    .line 558
    .local v1, packinUserDataString:Ljava/lang/String;
    const-string p1, "ValueParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TPUDL_packingUserDatastring:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :try_start_13a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0xa0

    if-le p1, v3, :cond_2cf

    .line 562
    const/4 p1, 0x0

    const/16 v3, 0x9e

    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 563
    .local p1, fullSizePackinUserDataString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .end local v2           #shorten:I
    const/16 v3, 0x9e

    sub-int/2addr v2, v3

    .line 564
    .restart local v2       #shorten:I
    aget-byte v3, v6, v4

    sub-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v6, v4
    :try_end_156
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_13a .. :try_end_156} :catch_2ca

    .line 565
    move-object p1, p1

    .end local v1           #packinUserDataString:Ljava/lang/String;
    .local p1, packinUserDataString:Ljava/lang/String;
    move-object v3, p1

    .end local p1           #packinUserDataString:Ljava/lang/String;
    .local v3, packinUserDataString:Ljava/lang/String;
    move v7, v2

    .line 570
    .end local v2           #shorten:I
    .local v7, shorten:I
    :goto_159
    :try_start_159
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 572
    .local v1, packedUserData:[B
    array-length v2, v1

    .line 574
    .local v2, packedUserDatalen:I
    const-string p1, "ValueParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TPUDL_Packed user data len:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_176
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_159 .. :try_end_176} :catch_1e6

    .line 577
    const/4 p1, 0x1

    .local p1, k:I
    :goto_177
    if-ge p1, v2, :cond_182

    .line 579
    add-int v9, v4, p1

    :try_start_17b
    aget-byte v10, v1, p1

    aput-byte v10, v6, v9

    .line 577
    add-int/lit8 p1, p1, 0x1

    goto :goto_177

    .line 582
    :cond_182
    const/4 p0, 0x1

    sub-int p0, v2, p0

    sub-int p0, v5, p0

    sub-int p0, v0, p0

    .line 584
    const-string p1, "ValueParser"

    .end local p1           #k:I
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #length:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TPUDL_Adjusted user data len:"

    .end local v1           #packedUserData:[B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17b .. :try_end_1a1} :catch_1dd
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_17b .. :try_end_1a1} :catch_1e6

    move p1, v5

    .line 646
    .end local v3           #packinUserDataString:Ljava/lang/String;
    .end local v5           #packingUserDatalen:I
    .end local v7           #shorten:I
    .local p1, packingUserDatalen:I
    :goto_1a2
    const-string p1, "ValueParser"

    .end local p1           #packingUserDatalen:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data coding scheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v8, 0x1

    sub-int v1, v4, v1

    aget-byte v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/16 v0, 0xf0

    .line 650
    .local v0, datacodingscheme:I
    const/4 p1, 0x0

    .line 651
    .local p1, datacodingfromsim:I
    add-int/lit8 p1, v8, 0x1

    sub-int p1, v4, p1

    aget-byte p1, v6, p1

    .line 652
    and-int/2addr p1, v0

    .line 653
    add-int/lit8 v0, v8, 0x1

    sub-int v0, v4, v0

    int-to-byte p1, p1

    aput-byte p1, v6, v0

    .line 655
    .end local v0           #datacodingscheme:I
    .end local p1           #datacodingfromsim:I
    new-array v0, p0, [B

    .line 658
    .local v0, packeddata:[B
    const/4 p1, 0x0

    .local p1, l:I
    :goto_1d4
    if-ge p1, p0, :cond_2ac

    .line 660
    :try_start_1d6
    aget-byte v1, v6, p1

    aput-byte v1, v0, p1
    :try_end_1da
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d6 .. :try_end_1da} :catch_2a3

    .line 658
    add-int/lit8 p1, p1, 0x1

    goto :goto_1d4

    .line 586
    .end local v0           #packeddata:[B
    .end local p1           #l:I
    .restart local v3       #packinUserDataString:Ljava/lang/String;
    .restart local v5       #packingUserDatalen:I
    .restart local v7       #shorten:I
    :catch_1dd
    move-exception p1

    .line 587
    .local p1, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1de
    new-instance p1, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p1           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p1
    :try_end_1e6
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1de .. :try_end_1e6} :catch_1e6

    .line 589
    .end local v2           #packedUserDatalen:I
    :catch_1e6
    move-exception p1

    move-object v0, v3

    .end local v3           #packinUserDataString:Ljava/lang/String;
    .local v0, packinUserDataString:Ljava/lang/String;
    move v1, v7

    .line 590
    .end local v7           #shorten:I
    .local v1, shorten:I
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :goto_1e9
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 597
    .end local v1           #shorten:I
    .local v0, length:I
    .restart local p0       #adjustedUserDatalen:I
    .local p1, lengthtoCheck:I
    :cond_1f1
    add-int/lit8 v3, p1, 0x1

    .line 599
    .end local v5           #packingUserDatalen:I
    .local v3, packingUserDatalen:I
    const-string p1, "ValueParser"

    .end local p1           #lengthtoCheck:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packingUserDatalen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-array v1, v3, [B

    .line 604
    .local v1, packinUserData:[B
    const/4 p1, 0x0

    .local p1, j:I
    :goto_20f
    if-ge p1, v3, :cond_223

    .line 606
    add-int v2, v4, p1

    :try_start_213
    aget-byte v2, v6, v2

    aput-byte v2, v1, p1
    :try_end_217
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_213 .. :try_end_217} :catch_21a

    .line 604
    add-int/lit8 p1, p1, 0x1

    goto :goto_20f

    .line 608
    :catch_21a
    move-exception p0

    .line 609
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #j:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 614
    .local p0, adjustedUserDatalen:I
    .restart local p1       #j:I
    :cond_223
    const/4 p1, 0x0

    invoke-static {v1, p1, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .end local p1           #j:I
    move-result-object p1

    .line 617
    .local p1, packinUserDataString:Ljava/lang/String;
    const-string v1, "ValueParser"

    .end local v1           #packinUserData:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packingUserDatastring:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :try_start_241
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 622
    .local v1, packedUserData:[B
    array-length v2, v1

    .line 624
    .restart local v2       #packedUserDatalen:I
    const-string p1, "ValueParser"

    .end local p1           #packinUserDataString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packed user data len:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25e
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_241 .. :try_end_25e} :catch_29a

    .line 627
    const/4 p1, 0x0

    .local p1, k:I
    :goto_25f
    const/4 v5, 0x1

    sub-int v5, v2, v5

    if-ge p1, v5, :cond_26f

    .line 629
    add-int v5, v4, p1

    add-int/lit8 v7, p1, 0x1

    :try_start_268
    aget-byte v7, v1, v7

    aput-byte v7, v6, v5

    .line 627
    add-int/lit8 p1, p1, 0x1

    goto :goto_25f

    .line 632
    :cond_26f
    const/4 p0, 0x1

    sub-int p0, v2, p0

    sub-int p0, v3, p0

    sub-int p0, v0, p0

    .line 634
    const-string p1, "ValueParser"

    .end local p1           #k:I
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #length:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjusted user data len:"

    .end local v1           #packedUserData:[B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_268 .. :try_end_28e} :catch_291
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_268 .. :try_end_28e} :catch_29a

    move p1, v3

    .line 641
    .end local v3           #packingUserDatalen:I
    .local p1, packingUserDatalen:I
    goto/16 :goto_1a2

    .line 636
    .end local p1           #packingUserDatalen:I
    .restart local v3       #packingUserDatalen:I
    :catch_291
    move-exception p1

    .line 637
    .local p1, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_292
    new-instance p1, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p1           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p1
    :try_end_29a
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_292 .. :try_end_29a} :catch_29a

    .line 639
    .end local v2           #packedUserDatalen:I
    :catch_29a
    move-exception p1

    .line 640
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 662
    .end local v3           #packingUserDatalen:I
    .local v0, packeddata:[B
    .restart local v2       #packedUserDatalen:I
    .restart local p0       #adjustedUserDatalen:I
    .local p1, l:I
    :catch_2a3
    move-exception p0

    .line 663
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #l:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 666
    .local p0, adjustedUserDatalen:I
    .restart local p1       #l:I
    :cond_2ac
    if-eqz p0, :cond_2b3

    .line 667
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 676
    .end local v0           #packeddata:[B
    .end local v2           #packedUserDatalen:I
    .end local v4           #packingUserDataIndex:I
    .end local v8           #tpvplength:I
    .end local p0           #adjustedUserDatalen:I
    .end local p1           #l:I
    :goto_2b2
    return-object p0

    .line 669
    .restart local v0       #packeddata:[B
    .restart local v2       #packedUserDatalen:I
    .restart local v4       #packingUserDataIndex:I
    .restart local v8       #tpvplength:I
    .restart local p0       #adjustedUserDatalen:I
    .restart local p1       #l:I
    :cond_2b3
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #l:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 675
    .end local v4           #packingUserDataIndex:I
    .end local v8           #tpvplength:I
    .local v0, length:I
    .local v1, rawValue:[B
    .local v2, valueIndex:I
    .local p1, ispacking_req:Z
    :cond_2bb
    if-eqz v0, :cond_2c2

    .line 676
    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_2b2

    .line 678
    :cond_2c2
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ispacking_req:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 589
    .local v1, packinUserDataString:Ljava/lang/String;
    .local v2, shorten:I
    .restart local v4       #packingUserDataIndex:I
    .restart local v5       #packingUserDatalen:I
    .restart local v8       #tpvplength:I
    .restart local p0       #adjustedUserDatalen:I
    :catch_2ca
    move-exception p1

    move-object v0, v1

    .end local v1           #packinUserDataString:Ljava/lang/String;
    .local v0, packinUserDataString:Ljava/lang/String;
    move v1, v2

    .end local v2           #shorten:I
    .local v1, shorten:I
    goto/16 :goto_1e9

    .local v0, length:I
    .local v1, packinUserDataString:Ljava/lang/String;
    .restart local v2       #shorten:I
    :cond_2cf
    move-object v3, v1

    .end local v1           #packinUserDataString:Ljava/lang/String;
    .local v3, packinUserDataString:Ljava/lang/String;
    move v7, v2

    .end local v2           #shorten:I
    .restart local v7       #shorten:I
    goto/16 :goto_159

    .end local v3           #packinUserDataString:Ljava/lang/String;
    .end local v4           #packingUserDataIndex:I
    .end local v5           #packingUserDatalen:I
    .end local v7           #shorten:I
    .end local v8           #tpvplength:I
    .local v1, tpvplength:I
    .local p1, tpvpvalue:I
    :cond_2d3
    move v8, v1

    .end local v1           #tpvplength:I
    .restart local v8       #tpvplength:I
    goto/16 :goto_8f
.end method

.method static retrieveSSstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 316
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 317
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .line 318
    .local v1, length:I
    if-eqz v1, :cond_1c

    .line 320
    :try_start_e
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SSbcdToString([BII)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v4

    .line 326
    :goto_12
    return-object v4

    .line 322
    :catch_13
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .line 326
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    const/4 v4, 0x0

    goto :goto_12
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/util/List;
    .registers 19
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v14, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/stk/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v15

    .line 220
    .local v15, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 221
    .local v2, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result p0

    .line 223
    .local p0, length:I
    if-eqz p0, :cond_ad

    .line 225
    div-int/lit8 v13, p0, 0x4

    .line 228
    .local v13, itemCount:I
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v12, p0

    .end local p0           #i:I
    .local v12, i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .local v16, valueIndex:I
    :goto_1b
    if-ge v12, v13, :cond_9d

    .line 229
    :try_start_1d
    aget-byte p0, v15, v16

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v3, v0

    .line 230
    .local v3, start:I
    add-int/lit8 p0, v16, 0x1

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .line 231
    .local v4, textLength:I
    add-int/lit8 p0, v16, 0x2

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v10, v0

    .line 232
    .local v10, format:I
    add-int/lit8 p0, v16, 0x3

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    .line 234
    .local v2, colorValue:I
    and-int/lit8 p0, v10, 0x3

    .line 235
    .local p0, alignValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextAlignment;

    move-result-object v5

    .line 237
    .local v5, align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    shr-int/lit8 p0, v10, 0x2

    and-int/lit8 p0, p0, 0x3

    .line 238
    .local p0, sizeValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/FontSize;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/FontSize;

    move-result-object v6

    .line 239
    .local v6, size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    if-nez v6, :cond_51

    .line 241
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/FontSize;->NORMAL:Lcom/android/internal/telephony/gsm/stk/FontSize;

    .line 244
    :cond_51
    and-int/lit8 p0, v10, 0x10

    if-eqz p0, :cond_89

    .end local p0           #sizeValue:I
    const/16 p0, 0x1

    move/from16 v7, p0

    .line 245
    .local v7, bold:Z
    :goto_59
    and-int/lit8 p0, v10, 0x20

    if-eqz p0, :cond_8e

    const/16 p0, 0x1

    move/from16 v8, p0

    .line 246
    .local v8, italic:Z
    :goto_61
    and-int/lit8 p0, v10, 0x40

    if-eqz p0, :cond_93

    const/16 p0, 0x1

    move/from16 v9, p0

    .line 247
    .local v9, underlined:Z
    :goto_69
    move v0, v10

    and-int/lit16 v0, v0, 0x80

    move/from16 p0, v0

    if-eqz p0, :cond_98

    const/16 p0, 0x1

    move/from16 v10, p0

    .line 249
    .local v10, strikeThrough:Z
    :goto_74
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/TextColor;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextColor;

    move-result-object v11

    .line 251
    .local v11, color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextAttribute;

    .end local v2           #colorValue:I
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/gsm/stk/TextAttribute;-><init>(IILcom/android/internal/telephony/gsm/stk/TextAlignment;Lcom/android/internal/telephony/gsm/stk/FontSize;ZZZZLcom/android/internal/telephony/gsm/stk/TextColor;)V

    .line 254
    .local v2, attr:Lcom/android/internal/telephony/gsm/stk/TextAttribute;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_80} :catch_a1

    .line 228
    add-int/lit8 p0, v12, 0x1

    .end local v12           #i:I
    .local p0, i:I
    add-int/lit8 v2, v16, 0x4

    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    move/from16 v12, p0

    .end local p0           #i:I
    .restart local v12       #i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .restart local v16       #valueIndex:I
    goto :goto_1b

    .line 244
    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v11           #color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    .local v2, colorValue:I
    .local v10, format:I
    :cond_89
    const/16 p0, 0x0

    move/from16 v7, p0

    goto :goto_59

    .line 245
    .restart local v7       #bold:Z
    :cond_8e
    const/16 p0, 0x0

    move/from16 v8, p0

    goto :goto_61

    .line 246
    .restart local v8       #italic:Z
    :cond_93
    const/16 p0, 0x0

    move/from16 v9, p0

    goto :goto_69

    .line 247
    .restart local v9       #underlined:Z
    :cond_98
    const/16 p0, 0x0

    move/from16 v10, p0

    goto :goto_74

    .end local v2           #colorValue:I
    .end local v3           #start:I
    .end local v4           #textLength:I
    .end local v5           #align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    .end local v6           #size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v10           #format:I
    :cond_9d
    move/from16 p0, v16

    .end local v16           #valueIndex:I
    .local p0, valueIndex:I
    move-object v2, v14

    .line 263
    .end local v12           #i:I
    .end local v13           #itemCount:I
    :goto_a0
    return-object v2

    .line 259
    .end local p0           #valueIndex:I
    .restart local v12       #i:I
    .restart local v13       #itemCount:I
    .restart local v16       #valueIndex:I
    :catch_a1
    move-exception p0

    .line 260
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .line 263
    .end local v12           #i:I
    .end local v13           #itemCount:I
    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    .local p0, length:I
    :cond_ad
    const/16 p0, 0x0

    move/from16 v17, v2

    .end local v2           #valueIndex:I
    .local v17, valueIndex:I
    move-object/from16 v2, p0

    move/from16 p0, v17

    .end local v17           #valueIndex:I
    .local p0, valueIndex:I
    goto :goto_a0
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .registers 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 388
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 389
    .local v6, valueIndex:I
    const/4 v0, 0x0

    .line 390
    .local v0, codingScheme:B
    const/4 v3, 0x0

    .line 391
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 394
    .local v5, textLen:I
    if-nez v5, :cond_12

    move-object v4, v3

    .line 422
    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_11
    return-object v4

    .line 400
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_12
    add-int/lit8 v5, v5, -0x1

    .line 404
    :try_start_14
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 406
    if-nez v0, :cond_27

    .line 407
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_25
    move-object v4, v3

    .line 422
    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto :goto_11

    .line 409
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_27
    const/4 v7, 0x4

    if-ne v0, v7, :cond_31

    .line 410
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 412
    :cond_31
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3f

    .line 413
    new-instance v3, Ljava/lang/String;

    .end local v3           #text:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_25

    .line 414
    :cond_3f
    const/16 v7, 0xc

    if-ne v0, v7, :cond_4e

    .line 416
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 419
    :cond_4e
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
    :try_end_56
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_56} :catch_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_56} :catch_60

    .line 423
    .end local v3           #text:Ljava/lang/String;
    :catch_56
    move-exception v7

    move-object v1, v7

    .line 424
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 425
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_60
    move-exception v7

    move-object v1, v7

    .line 427
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
.end method

.method static retrieveUSSDstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .registers 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 340
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 341
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v3

    .line 342
    .local v3, length:I
    add-int v8, v6, v3

    const/4 v9, 0x1

    sub-int v0, v8, v9

    .line 343
    .local v0, endOfUssdString:I
    if-eqz v3, :cond_28

    .line 344
    new-array v5, v3, [B

    .line 345
    .local v5, ussdString:[B
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :goto_18
    if-gt v7, v0, :cond_25

    .line 346
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, v4, v7

    aput-byte v8, v5, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_18

    :cond_25
    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    move-object v8, v5

    .line 350
    .end local v2           #i:I
    .end local v5           #ussdString:[B
    :goto_27
    return-object v8

    :cond_28
    const/4 v8, 0x0

    goto :goto_27
.end method
