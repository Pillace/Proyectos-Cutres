.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 4
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 49
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .registers 6
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 321
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method private dispatchWapPdu_DSNoti([BI)V
    .registers 6
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "application/vnd.syncml.ds.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 365
    const-string v1, "ds_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 366
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    const-string v1, "WAP PUSH"

    const-string v2, "ds noti intent is sent"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .registers 12
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 298
    new-array v2, p5, [B

    .line 299
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    add-int v1, p4, p5

    .line 301
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 302
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 309
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 311
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .registers 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 283
    new-array v0, p5, [B

    .line 284
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string/jumbo v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 291
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 293
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .registers 7
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 334
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 340
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method private dispatchWapPdu_default([BIILjava/lang/String;II)V
    .registers 13
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 263
    new-array v2, p6, [B

    .line 264
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    add-int v1, p5, p6

    .line 268
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 269
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 276
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 278
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 279
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .registers 22
    .parameter "pdu"

    .prologue
    .line 65
    const/16 v18, 0x0

    .line 66
    .local v18, index:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v3, p1, v18

    and-int/lit16 v5, v3, 0xff

    .line 67
    .local v5, transactionId:I
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v3, p1, v19

    and-int/lit16 v6, v3, 0xff

    .line 68
    .local v6, pduType:I
    const/4 v8, 0x0

    .line 70
    .local v8, headerLength:I
    const/4 v3, 0x6

    if-eq v6, v3, :cond_2f

    const/4 v3, 0x7

    if-eq v6, v3, :cond_2f

    .line 72
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received non-PUSH WAP PDU. Type = "

    .end local v5           #transactionId:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v3, 0x1

    .line 258
    :goto_2e
    return v3

    .line 76
    .restart local v5       #transactionId:I
    :cond_2f
    new-instance v3, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v3

    if-nez v3, :cond_53

    .line 85
    const-string v3, "WAP PUSH"

    const-string v4, "Received PDU. Header Length error."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x2

    goto :goto_2e

    .line 88
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    long-to-int v8, v3

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    add-int/lit8 v18, v3, 0x2

    .line 91
    move/from16 v7, v18

    .line 105
    .local v7, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v3

    if-nez v3, :cond_81

    .line 106
    const-string v3, "WAP PUSH"

    const-string v4, "Received PDU. Header Content-Type error."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v3, 0x2

    goto :goto_2e

    .line 110
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, mimeType:Ljava/lang/String;
    if-nez v13, :cond_100

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    move-wide v0, v3

    long-to-int v0, v0

    move/from16 v16, v0

    .line 114
    .local v16, binaryContentType:I
    sparse-switch v16, :sswitch_data_1ea

    .line 168
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PDU. Unsupported Content-Type = "

    .end local v5           #transactionId:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v3, 0x1

    goto/16 :goto_2e

    .line 116
    .restart local v5       #transactionId:I
    :sswitch_ba
    const-string v13, "application/vnd.oma.drm.rights+xml"

    .line 215
    :goto_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    add-int v18, v18, v3

    .line 217
    const/16 v17, 0x0

    .line 218
    .local v17, dispatchedByApplication:Z
    sparse-switch v16, :sswitch_data_224

    .line 254
    :goto_cc
    if-nez v17, :cond_d9

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v5

    move v12, v6

    move v14, v7

    move v15, v8

    .line 255
    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 258
    :cond_d9
    const/4 v3, -0x1

    goto/16 :goto_2e

    .line 119
    .end local v17           #dispatchedByApplication:Z
    :sswitch_dc
    const-string v13, "application/vnd.oma.drm.rights+wbxml"

    .line 120
    goto :goto_bc

    .line 122
    :sswitch_df
    const-string v13, "application/vnd.wap.sic"

    .line 123
    goto :goto_bc

    .line 125
    :sswitch_e2
    const-string v13, "application/vnd.wap.slc"

    .line 126
    goto :goto_bc

    .line 128
    :sswitch_e5
    const-string v13, "application/vnd.wap.coc"

    .line 129
    goto :goto_bc

    .line 131
    :sswitch_e8
    const-string v13, "application/vnd.wap.mms-message"

    .line 132
    goto :goto_bc

    .line 134
    :sswitch_eb
    const-string v13, "application/vnd.omaloc-supl-init"

    .line 135
    goto :goto_bc

    .line 137
    :sswitch_ee
    const-string v13, "application/vnd.docomo.pf"

    .line 138
    goto :goto_bc

    .line 145
    :sswitch_f1
    const-string v13, "application/vnd.syncml.notification"

    .line 146
    goto :goto_bc

    .line 151
    :sswitch_f4
    const-string v13, "application/vnd.syncml.ds.notification"

    .line 152
    goto :goto_bc

    .line 156
    :sswitch_f7
    const-string v13, "application/vnd.wap.connectivity-wbxml"

    .line 157
    goto :goto_bc

    .line 159
    :sswitch_fa
    const-string v13, "application/vnd.syncml.dm+wbxml"

    .line 160
    goto :goto_bc

    .line 162
    :sswitch_fd
    const-string v13, "application/vnd.syncml.dm+xml"

    .line 163
    goto :goto_bc

    .line 174
    .end local v16           #binaryContentType:I
    :cond_100
    const-string v3, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 175
    const/16 v16, 0x4a

    .restart local v16       #binaryContentType:I
    goto :goto_bc

    .line 176
    .end local v16           #binaryContentType:I
    :cond_10b
    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 177
    const/16 v16, 0x4b

    .restart local v16       #binaryContentType:I
    goto :goto_bc

    .line 178
    .end local v16           #binaryContentType:I
    :cond_116
    const-string v3, "application/vnd.wap.sic"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 179
    const/16 v16, 0x2e

    .restart local v16       #binaryContentType:I
    goto :goto_bc

    .line 180
    .end local v16           #binaryContentType:I
    :cond_121
    const-string v3, "application/vnd.wap.slc"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 181
    const/16 v16, 0x30

    .restart local v16       #binaryContentType:I
    goto :goto_bc

    .line 182
    .end local v16           #binaryContentType:I
    :cond_12c
    const-string v3, "application/vnd.wap.coc"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 183
    const/16 v16, 0x32

    .restart local v16       #binaryContentType:I
    goto :goto_bc

    .line 184
    .end local v16           #binaryContentType:I
    :cond_137
    const-string v3, "application/vnd.wap.mms-message"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_143

    .line 185
    const/16 v16, 0x3e

    .restart local v16       #binaryContentType:I
    goto/16 :goto_bc

    .line 186
    .end local v16           #binaryContentType:I
    :cond_143
    const-string v3, "application/vnd.omaloc-supl-init"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 187
    const/16 v16, 0x312

    .restart local v16       #binaryContentType:I
    goto/16 :goto_bc

    .line 188
    .end local v16           #binaryContentType:I
    :cond_14f
    const-string v3, "application/vnd.docomo.pf"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 189
    const/16 v16, 0x310

    .restart local v16       #binaryContentType:I
    goto/16 :goto_bc

    .line 195
    .end local v16           #binaryContentType:I
    :cond_15b
    const-string v3, "application/vnd.syncml.notification"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_167

    .line 196
    const/16 v16, 0x44

    .restart local v16       #binaryContentType:I
    goto/16 :goto_bc

    .line 197
    .end local v16           #binaryContentType:I
    :cond_167
    const-string v3, "application/vnd.syncml.ds.notification"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_173

    .line 198
    const/16 v16, 0x4e

    .restart local v16       #binaryContentType:I
    goto/16 :goto_bc

    .line 201
    .end local v16           #binaryContentType:I
    :cond_173
    const-string v3, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 202
    const/16 v16, 0x36

    .restart local v16       #binaryContentType:I
    goto/16 :goto_bc

    .line 203
    .end local v16           #binaryContentType:I
    :cond_17f
    const-string v3, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18b

    .line 204
    const/16 v16, 0x42

    .restart local v16       #binaryContentType:I
    goto/16 :goto_bc

    .line 205
    .end local v16           #binaryContentType:I
    :cond_18b
    const-string v3, "application/vnd.syncml.dm+xml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_197

    .line 206
    const/16 v16, 0x43

    .restart local v16       #binaryContentType:I
    goto/16 :goto_bc

    .line 207
    .end local v16           #binaryContentType:I
    :cond_197
    const-string v3, "application/vnd.syncml.ds.notification"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a3

    .line 208
    const/16 v16, 0x4e

    .restart local v16       #binaryContentType:I
    goto/16 :goto_bc

    .line 211
    .end local v16           #binaryContentType:I
    :cond_1a3
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PDU. Unknown Content-Type = "

    .end local v5           #transactionId:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v3, 0x1

    goto/16 :goto_2e

    .restart local v5       #transactionId:I
    .restart local v16       #binaryContentType:I
    .restart local v17       #dispatchedByApplication:Z
    :sswitch_1be
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 220
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 221
    const/16 v17, 0x1

    .line 222
    goto/16 :goto_cc

    :sswitch_1c9
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 224
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 225
    const/16 v17, 0x1

    .line 226
    goto/16 :goto_cc

    .line 232
    :sswitch_1d4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BI)V

    .line 233
    const/16 v17, 0x1

    .line 234
    goto/16 :goto_cc

    .line 242
    :sswitch_1e1
    const/16 v17, 0x0

    .line 243
    goto/16 :goto_cc

    .line 248
    :sswitch_1e5
    const/16 v17, 0x1

    .line 249
    goto/16 :goto_cc

    .line 114
    nop

    :sswitch_data_1ea
    .sparse-switch
        0x2e -> :sswitch_df
        0x30 -> :sswitch_e2
        0x32 -> :sswitch_e5
        0x36 -> :sswitch_f7
        0x3e -> :sswitch_e8
        0x42 -> :sswitch_fa
        0x43 -> :sswitch_fd
        0x44 -> :sswitch_f1
        0x4a -> :sswitch_ba
        0x4b -> :sswitch_dc
        0x4e -> :sswitch_f4
        0xce -> :sswitch_f4
        0x310 -> :sswitch_ee
        0x312 -> :sswitch_eb
    .end sparse-switch

    .line 218
    :sswitch_data_224
    .sparse-switch
        0x2e -> :sswitch_1e1
        0x30 -> :sswitch_1e1
        0x32 -> :sswitch_1be
        0x36 -> :sswitch_1e1
        0x3e -> :sswitch_1c9
        0x42 -> :sswitch_1e1
        0x43 -> :sswitch_1e1
        0x44 -> :sswitch_1d4
        0x4e -> :sswitch_1e5
        0xce -> :sswitch_1e5
    .end sparse-switch
.end method
