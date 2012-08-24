.class public Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;
.super Lcom/broadcom/bt/service/map/provider/BaseProvider;
.source "SmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;
    }
.end annotation


# static fields
.field private static final CFG_SEND_MSG_SIZE_INFO_IN_LISTING:Z = true

.field private static final COL_ADDRESS:I = 0x1

.field private static final COL_BODY:I = 0x9

.field private static final COL_DATE:I = 0x2

.field private static final COL_DISPLAY_NAME:I = 0x3

.field private static final COL_FAMILY_NAME:I = 0x2

.field private static final COL_GIVEN_NAME:I = 0x0

.field private static final COL_ID:I = 0x0

.field private static final COL_LOCKED:I = 0x3

.field private static final COL_MIDDLE_NAME:I = 0x1

.field private static final COL_PERSON:I = 0x4

.field private static final COL_READ:I = 0x5

.field private static final COL_SUBJECT:I = 0x6

.field private static final COL_THREAD_ID:I = 0x8

.field private static final COL_TYPE_ID:I = 0x7

.field private static final DEL_COL_ADDRESS:I = 0x2

.field private static final DEL_COL_BODY:I = 0xb

.field private static final DEL_COL_DATE:I = 0x4

.field private static final DEL_COL_ID:I = 0x0

.field private static final DEL_COL_LOCKED:I = 0xd

.field private static final DEL_COL_PERSON:I = 0x3

.field private static final DEL_COL_READ:I = 0x6

.field private static final DEL_COL_SUBJECT:I = 0xa

.field private static final DEL_COL_THREAD_ID:I = 0x1

.field private static final DEL_COL_TYPE_ID:I = 0x8

.field private static final DS_SMS_DISPLAY_NAME_ID:I = 0x0

.field protected static final FOLDER_PATH_INBOX:Ljava/lang/String; = "/inbox"

.field protected static final FOLDER_PATH_OUTBOX:Ljava/lang/String; = "/outbox"

.field protected static final FOLDER_PATH_SENT:Ljava/lang/String; = "/sent"

.field private static final PERSON_NAME_INFO_PROJ:[Ljava/lang/String; = null

.field private static final PROVIDER_DISPLAY_NAME_ID:I = 0x0

.field private static final PROVIDER_ID:Ljava/lang/String; = "com.broadcom.bt"

.field private static final SMS_PROVIDER_PROJ:[Ljava/lang/String; = null

.field private static final SMS_PROVIDER_PROJ_NO_BODY:[Ljava/lang/String; = null

.field private static final SMS_ROOT_FOLDERS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MapSMSProvider"


# instance fields
.field protected mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

.field protected mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field private mOwnerPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

.field protected mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

.field private mTmpDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "data5"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    .line 273
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v3

    const-string/jumbo v1, "outbox"

    aput-object v1, v0, v4

    const-string/jumbo v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "deleted"

    aput-object v1, v0, v6

    const-string v1, "draft"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "undelivered"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "failed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "queued"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    .line 282
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "locked"

    aput-object v1, v0, v6

    const-string/jumbo v1, "person"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ_NO_BODY:[Ljava/lang/String;

    .line 287
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "locked"

    aput-object v1, v0, v6

    const-string/jumbo v1, "person"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;-><init>()V

    .line 92
    new-instance v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    .line 94
    return-void
.end method

.method private static createFolderUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "folderPath"

    .prologue
    .line 387
    invoke-static {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 388
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid folder path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v0, 0x0

    .line 392
    :goto_1f
    return-object v0

    :cond_20
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_35

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_30
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1f

    :cond_35
    move-object v1, p0

    goto :goto_30
.end method

.method static final getFolderPath(I)Ljava/lang/String;
    .registers 2
    .parameter "smsMessageType"

    .prologue
    .line 326
    packed-switch p0, :pswitch_data_18

    .line 340
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 328
    :pswitch_5
    const-string v0, "/draft"

    goto :goto_4

    .line 330
    :pswitch_8
    const-string v0, "/failed"

    goto :goto_4

    .line 332
    :pswitch_b
    const-string v0, "/inbox"

    goto :goto_4

    .line 334
    :pswitch_e
    const-string v0, "/outbox"

    goto :goto_4

    .line 336
    :pswitch_11
    const-string v0, "/queued"

    goto :goto_4

    .line 338
    :pswitch_14
    const-string v0, "/sent"

    goto :goto_4

    .line 326
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_b
        :pswitch_14
        :pswitch_5
        :pswitch_e
        :pswitch_8
        :pswitch_11
    .end packed-switch
.end method

.method static getFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "virtualPath"

    .prologue
    const-string/jumbo v2, "root/telecom/msg"

    .line 368
    if-eqz p0, :cond_2b

    .line 369
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "root/telecom/msg"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2b

    const-string/jumbo v0, "root/telecom/msg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 372
    const-string/jumbo v0, "root/telecom/msg"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_2a
    return-object v0

    :cond_2b
    move-object v0, p0

    goto :goto_2a
.end method

.method static final getMessageType(Ljava/lang/String;)I
    .registers 2
    .parameter "folderPath"

    .prologue
    .line 345
    if-eqz p0, :cond_3e

    .line 346
    const-string v0, "/draft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 347
    const/4 v0, 0x3

    .line 360
    :goto_b
    return v0

    .line 348
    :cond_c
    const-string v0, "/failed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 349
    const/4 v0, 0x5

    goto :goto_b

    .line 350
    :cond_16
    const-string v0, "/inbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 351
    const/4 v0, 0x1

    goto :goto_b

    .line 352
    :cond_20
    const-string v0, "/outbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 353
    const/4 v0, 0x4

    goto :goto_b

    .line 354
    :cond_2a
    const-string v0, "/queued"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 355
    const/4 v0, 0x6

    goto :goto_b

    .line 356
    :cond_34
    const-string v0, "/sent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 357
    const/4 v0, 0x2

    goto :goto_b

    .line 360
    :cond_3e
    const/4 v0, -0x1

    goto :goto_b
.end method

.method private getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .registers 12
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 459
    const/4 v7, 0x0

    .line 460
    .local v7, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v6, 0x0

    .line 462
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 465
    new-instance v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;

    invoke-direct {v8}, Lcom/broadcom/bt/service/map/provider/PersonInfo;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_37

    .line 466
    .end local v7           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .local v8, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v0, 0x0

    :try_start_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    .line 468
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    .line 469
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mDisplayName:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_39

    move-object v7, v8

    .line 474
    .end local v8           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v7       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_30
    :goto_30
    if-eqz v6, :cond_36

    .line 475
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 476
    const/4 v6, 0x0

    .line 478
    :cond_36
    return-object v7

    .line 471
    :catch_37
    move-exception v0

    goto :goto_30

    .end local v7           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v8       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :catch_39
    move-exception v0

    move-object v7, v8

    .end local v8           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v7       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    goto :goto_30
.end method

.method private getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .registers 5
    .parameter "personId"

    .prologue
    .line 450
    if-nez p1, :cond_4

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_3
    return-object v0

    :cond_4
    const-string v0, "mimetype = \'vnd.android.cursor.item/name\' AND contact_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v0

    goto :goto_3
.end method

.method private getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .registers 14
    .parameter "phoneNumber"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 415
    const/4 v7, 0x0

    .line 416
    .local v7, lookupKey:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 417
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 419
    .local v6, c:Landroid/database/Cursor;
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 421
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 422
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_2a} :catch_35

    move-result-object v7

    .line 427
    :cond_2b
    :goto_2b
    if-eqz v6, :cond_31

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    const/4 v6, 0x0

    .line 431
    :cond_31
    if-nez v7, :cond_50

    move-object v0, v9

    .line 438
    :goto_34
    return-object v0

    .line 424
    :catch_35
    move-exception v0

    move-object v8, v0

    .line 425
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get contact lookup uri for phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 438
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_50
    const-string v0, "mimetype = \'vnd.android.cursor.item/name\' AND lookup = ?"

    new-array v2, v11, [Ljava/lang/String;

    aput-object v7, v2, v10

    invoke-direct {p0, v0, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v0

    goto :goto_34
.end method

.method private getThreadRecipientAddresses(I)Ljava/util/List;
    .registers 15
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v12, "MapSMSProvider"

    .line 483
    const/4 v6, 0x0

    .line 484
    .local v6, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 485
    .local v9, recipientIds:Ljava/lang/String;
    const/4 v7, 0x0

    .line 487
    .local v7, c:Landroid/database/Cursor;
    :try_start_5
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/recipients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "recipient_ids"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 490
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 491
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3e} :catch_c4

    move-result-object v9

    .line 496
    :cond_3f
    :goto_3f
    if-eqz v7, :cond_44

    .line 497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_44
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 500
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v0, " "

    invoke-direct {v10, v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .local v10, t:Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 503
    :cond_57
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 504
    .local v8, recipientId:Ljava/lang/String;
    new-instance v6, Ljava/util/LinkedList;

    .end local v6           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 506
    .restart local v6       #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_60
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canonical-address/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 509
    if-eqz v7, :cond_b7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 510
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_b7} :catch_e0

    .line 516
    :cond_b7
    :goto_b7
    if-eqz v7, :cond_bd

    .line 517
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 518
    const/4 v7, 0x0

    .line 520
    :cond_bd
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_57

    .line 523
    .end local v8           #recipientId:Ljava/lang/String;
    .end local v10           #t:Ljava/util/StringTokenizer;
    :cond_c3
    return-object v6

    .line 493
    :catch_c4
    move-exception v0

    move-object v10, v0

    .line 494
    .local v10, t:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting conversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 513
    .restart local v8       #recipientId:Ljava/lang/String;
    .local v10, t:Ljava/util/StringTokenizer;
    :catch_e0
    move-exception v0

    move-object v11, v0

    .line 514
    .local v11, tt:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    const-string v0, "Unable to get canonical address"

    invoke-static {v12, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b7
.end method

.method private isDeletedFolder(Ljava/lang/String;)Z
    .registers 3
    .parameter "folderPath"

    .prologue
    .line 1040
    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidFolderPath(Ljava/lang/String;)Z
    .registers 3
    .parameter "folderPath"

    .prologue
    const/4 v1, 0x1

    .line 322
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_13

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static toProviderMessageDBID(I)I
    .registers 2
    .parameter "messageId"

    .prologue
    .line 405
    if-lez p0, :cond_4

    move v0, p0

    :goto_3
    return v0

    :cond_4
    const/4 v0, -0x1

    goto :goto_3
.end method


# virtual methods
.method protected disableNotifications(Ljava/lang/String;)Z
    .registers 3
    .parameter "datasourceId"

    .prologue
    .line 868
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 869
    const/4 v0, 0x1

    return v0
.end method

.method protected enableNotifications(Ljava/lang/String;)Z
    .registers 3
    .parameter "datasourceId"

    .prologue
    const/4 v0, 0x1

    .line 859
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 860
    return v0
.end method

.method protected getProviderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 766
    const-string v0, "com.broadcom.bt"

    return-object v0
.end method

.method protected notificationsEnabled()Z
    .registers 2

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    return v0
.end method

.method protected onClientConnected(Ljava/lang/String;)V
    .registers 5
    .parameter "deviceName"

    .prologue
    .line 1570
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    return-void
.end method

.method protected onClientDisconnected()V
    .registers 3

    .prologue
    .line 1575
    const-string v0, "MapSMSProvider"

    const-string v1, "onClientDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    return-void
.end method

.method protected onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 880
    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 881
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetFolderListing(): SMS only contains root folders...Request path is not the root folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V

    .line 889
    :goto_23
    return-void

    .line 888
    :cond_24
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    sget-object v1, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .registers 34
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSetId"
    .parameter "includeAttachments"

    .prologue
    .line 897
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 898
    :cond_c
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetMsg(): Invalid folder path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1035
    :goto_36
    return-void

    .line 904
    :cond_37
    if-eqz p7, :cond_40

    .line 905
    const-string v5, "MapSMSProvider"

    const-string v6, "onGetMsg(): SMS provider currently doesn\'t support returning attachments"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_40
    move/from16 v11, p6

    .line 911
    .local v11, bCharset:B
    const/16 v16, 0x0

    .line 912
    .local v16, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    const/16 v22, 0x0

    .line 913
    .local v22, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v23, 0x0

    .line 914
    .local v23, outFile:Ljava/io/File;
    const/16 v19, 0x0

    .line 915
    .local v19, content:Ljava/lang/String;
    const/16 v18, 0x0

    .line 916
    .local v18, c:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 917
    .local v21, err:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_158

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    move-object v5, v0

    const/16 v6, 0xa

    move-object/from16 v0, p5

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->getItemById(I)Landroid/database/Cursor;

    move-result-object v6

    .line 920
    .end local v18           #c:Landroid/database/Cursor;
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_147

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_147

    .line 922
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toDeletedMessageInfo(Landroid/database/Cursor;Z)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v22

    .line 923
    const/16 v5, 0xb

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 924
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 968
    :cond_84
    :goto_84
    :try_start_84
    new-instance v17, Lcom/broadcom/bt/util/bmsg/BMessage;

    invoke-direct/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessage;-><init>()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_89} :catch_223

    .line 969
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .local v17, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    const/4 v5, 0x0

    :try_start_8a
    move-object/from16 v0, v17

    move v1, v5

    move-object/from16 v2, p4

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setBMessageHeaderInfo(Lcom/broadcom/bt/util/bmsg/BMessage;BLjava/lang/String;Lcom/broadcom/bt/service/map/MessageInfo;)V

    .line 973
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v15

    .line 974
    .local v15, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v15}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v13

    .line 977
    .local v13, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 986
    invoke-virtual {v13}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->addContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v14

    .line 991
    .local v14, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v11, :cond_d8

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d8

    .line 993
    .end local v6           #c:Landroid/database/Cursor;
    const-string v5, "MapSMSProvider"

    const-string v6, "Native charset requested"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessage;->encodeSMSDeliverPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 997
    .local v20, encodedContent:Ljava/lang/String;
    if-nez v20, :cond_1fb

    .line 998
    const-string v5, "MapSMSProvider"

    const-string v6, "Native charset requested but encoding failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v20           #encodedContent:Ljava/lang/String;
    :cond_d8
    :goto_d8
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->addMessageContent(Ljava/lang/String;)V

    .line 1016
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_117} :catch_206

    .line 1018
    .end local v23           #outFile:Ljava/io/File;
    .local v24, outFile:Ljava/io/File;
    :try_start_117
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->write(Ljava/io/File;)Z
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_117 .. :try_end_11e} :catch_227

    move-object/from16 v23, v24

    .end local v24           #outFile:Ljava/io/File;
    .restart local v23       #outFile:Ljava/io/File;
    move-object/from16 v16, v17

    .line 1023
    .end local v13           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v14           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v15           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :goto_122
    if-eqz v16, :cond_129

    .line 1024
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1025
    const/16 v16, 0x0

    .line 1028
    :cond_129
    if-eqz v21, :cond_20f

    .line 1029
    const-string v5, "MapSMSProvider"

    const-string v6, "onGetMsg(): Unable to create BMessage"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 928
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84

    .line 934
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v18       #c:Landroid/database/Cursor;
    :cond_158
    :try_start_158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16f
    .catch Ljava/lang/Throwable; {:try_start_158 .. :try_end_16f} :catch_1cb

    move-result-object v6

    .line 937
    .end local v18           #c:Landroid/database/Cursor;
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_197

    :try_start_172
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_197

    .line 938
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v22

    .line 939
    const/16 v5, 0x9

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 940
    if-eqz v22, :cond_197

    if-eqz v19, :cond_197

    .line 941
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I
    :try_end_197
    .catch Ljava/lang/Throwable; {:try_start_172 .. :try_end_197} :catch_22f

    .line 948
    :cond_197
    :goto_197
    if-eqz v6, :cond_19d

    .line 949
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 950
    const/4 v6, 0x0

    .line 953
    :cond_19d
    if-nez v22, :cond_1dc

    .line 954
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #c:Landroid/database/Cursor;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetMsg(): Unable to find message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 944
    .restart local v18       #c:Landroid/database/Cursor;
    :catch_1cb
    move-exception v5

    move-object/from16 v25, v5

    move-object/from16 v6, v18

    .line 945
    .end local v18           #c:Landroid/database/Cursor;
    .restart local v6       #c:Landroid/database/Cursor;
    .local v25, t:Ljava/lang/Throwable;
    :goto_1d0
    const-string v5, "MapSMSProvider"

    const-string v7, "onGetMsg(): Unable to query for SMS messages"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_197

    .line 959
    .end local v25           #t:Ljava/lang/Throwable;
    :cond_1dc
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    move v5, v0

    if-nez v5, :cond_84

    .line 960
    const-string v5, "MapSMSProvider"

    const-string v6, "onGetMsg(): Binary SMS not currentlly supported"

    .end local v6           #c:Landroid/database/Cursor;
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 1002
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v13       #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .restart local v14       #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .restart local v15       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v20       #encodedContent:Ljava/lang/String;
    :cond_1fb
    move-object/from16 v19, v20

    .line 1003
    :try_start_1fd
    invoke-virtual {v13, v11}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 1004
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setEncoding(B)V
    :try_end_204
    .catch Ljava/lang/Throwable; {:try_start_1fd .. :try_end_204} :catch_206

    goto/16 :goto_d8

    .line 1019
    .end local v13           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v14           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v15           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v20           #encodedContent:Ljava/lang/String;
    :catch_206
    move-exception v5

    move-object/from16 v25, v5

    move-object/from16 v16, v17

    .line 1020
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v25       #t:Ljava/lang/Throwable;
    :goto_20b
    move-object/from16 v21, v25

    goto/16 :goto_122

    .line 1032
    .end local v25           #t:Ljava/lang/Throwable;
    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v7, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v7 .. v12}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnMessage(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_36

    .line 1019
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_223
    move-exception v5

    move-object/from16 v25, v5

    goto :goto_20b

    .end local v6           #c:Landroid/database/Cursor;
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v23           #outFile:Ljava/io/File;
    .restart local v13       #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .restart local v14       #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .restart local v15       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v24       #outFile:Ljava/io/File;
    :catch_227
    move-exception v5

    move-object/from16 v25, v5

    move-object/from16 v23, v24

    .end local v24           #outFile:Ljava/io/File;
    .restart local v23       #outFile:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    goto :goto_20b

    .line 944
    .end local v13           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v14           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v15           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_22f
    move-exception v5

    move-object/from16 v25, v5

    goto :goto_1d0
.end method

.method protected onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .registers 46
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxEntries"
    .parameter "offsetMessageId"
    .parameter "subjectLength"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 1050
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 1051
    :cond_c
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetMsgListing(): Invalid folder path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    .line 1258
    :goto_36
    return-void

    .line 1059
    :cond_37
    and-int/lit8 v5, p8, 0x1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_41

    and-int/lit8 v5, p8, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_58

    .line 1063
    :cond_41
    const-string v5, "MapSMSProvider"

    const-string v6, "onGetMsgListing(): Filtering on SMS so send back nothing"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 1067
    :cond_58
    if-gtz p5, :cond_b7

    const/4 v5, 0x1

    move/from16 v27, v5

    .line 1069
    .local v27, returnAllMsgs:Z
    :goto_5d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 1074
    invoke-static/range {p6 .. p6}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toProviderMessageDBID(I)I

    move-result v22

    .line 1075
    .local v22, messageDbId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->getAllItemsGreaterThan(I)Landroid/database/Cursor;

    move-result-object v9

    .line 1076
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_bb

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 1079
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 1082
    .local v20, mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_84
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toDeletedMessageInfo(Landroid/database/Cursor;Z)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v19

    .line 1084
    .local v19, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1086
    if-nez v27, :cond_98

    .line 1087
    add-int/lit8 p5, p5, -0x1

    .line 1090
    :cond_98
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    if-nez v27, :cond_84

    if-gtz p5, :cond_84

    .line 1091
    :cond_a2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_36

    .line 1067
    .end local v9           #c:Landroid/database/Cursor;
    .end local v19           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v20           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .end local v22           #messageDbId:I
    .end local v27           #returnAllMsgs:Z
    :cond_b7
    const/4 v5, 0x0

    move/from16 v27, v5

    goto :goto_5d

    .line 1096
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v22       #messageDbId:I
    .restart local v27       #returnAllMsgs:Z
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 1102
    .end local v9           #c:Landroid/database/Cursor;
    .end local v22           #messageDbId:I
    :cond_cc
    const/16 v16, 0x0

    .line 1103
    .local v16, filterPriority:B
    const/4 v15, 0x0

    .line 1104
    .local v15, filterNewMsg:Z
    move/from16 v17, p11

    .line 1106
    .local v17, filterReadStatus:B
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->createFolderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1107
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_e8

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 1113
    :cond_e8
    const/4 v14, 0x0

    .line 1114
    .local v14, c:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 1115
    .restart local v20       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    .local v30, where:Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .line 1138
    .local v18, hasWhereCondition:Z
    const-string v5, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetMsgList(): readStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-static/range {v17 .. v17}, Lcom/broadcom/bt/service/map/BluetoothMAP;->isValidMsgStatus(B)Z

    move-result v5

    if-eqz v5, :cond_14c

    .line 1147
    if-eqz v18, :cond_2a8

    .line 1149
    const-string v5, " AND "

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    :goto_11d
    const-string v5, "("

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    const-string/jumbo v5, "read"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_2ac

    const-string v5, "0"

    :goto_13e
    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    const-string v5, ")"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    :cond_14c
    if-eqz p9, :cond_1c6

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x8

    if-lt v5, v7, :cond_1c6

    .line 1162
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 1163
    .local v29, time:Landroid/text/format/Time;
    const-wide/16 v23, 0x0

    .line 1164
    .local v23, periodBeginmillis:J
    move-object/from16 v0, v29

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1166
    const/4 v5, 0x0

    move-object/from16 v0, v29

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v23

    .line 1167
    const-string v5, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "periodBegin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    if-eqz v18, :cond_2b0

    .line 1171
    const-string v5, " AND "

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :goto_192
    const-string v5, "("

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    const-string v5, "date"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " >= "

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    .end local v23           #periodBeginmillis:J
    .end local v29           #time:Landroid/text/format/Time;
    :cond_1c6
    if-eqz p10, :cond_240

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x8

    if-lt v5, v7, :cond_240

    .line 1184
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 1185
    .restart local v29       #time:Landroid/text/format/Time;
    const-wide/16 v25, 0x0

    .line 1186
    .local v25, periodEndmillis:J
    move-object/from16 v0, v29

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1188
    const/4 v5, 0x0

    move-object/from16 v0, v29

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v25

    .line 1189
    const-string v5, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "periodEnd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    if-eqz v18, :cond_2b4

    .line 1193
    const-string v5, " AND "

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    :goto_20c
    const-string v5, "("

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    const-string v5, "date"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " <= "

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    .end local v25           #periodEndmillis:J
    .end local v29           #time:Landroid/text/format/Time;
    :cond_240
    :try_start_240
    sget-object v7, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    .line 1214
    .local v7, projections:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2b8

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_253
    const/4 v9, 0x0

    const-string v10, "_id desc "

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_259
    .catch Ljava/lang/Throwable; {:try_start_240 .. :try_end_259} :catch_2c4

    move-result-object v9

    .line 1217
    .end local v14           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    if-eqz v9, :cond_28f

    :try_start_25c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_28f

    .line 1223
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V
    :try_end_267
    .catch Ljava/lang/Throwable; {:try_start_25c .. :try_end_267} :catch_2e7

    .line 1226
    .end local v6           #uri:Landroid/net/Uri;
    .end local v20           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .local v21, mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_267
    if-nez p6, :cond_2ba

    .line 1228
    const/4 v10, 0x1

    move-object/from16 v8, p0

    move/from16 v11, p4

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    :try_start_272
    invoke-virtual/range {v8 .. v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v19

    .line 1229
    .restart local v19       #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    if-eqz v19, :cond_27f

    .line 1230
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_27f
    if-nez v27, :cond_283

    .line 1233
    add-int/lit8 p5, p5, -0x1

    .line 1240
    .end local v19           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :cond_283
    :goto_283
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_286
    .catch Ljava/lang/Throwable; {:try_start_272 .. :try_end_286} :catch_2eb

    move-result v5

    if-eqz v5, :cond_28d

    if-nez v27, :cond_267

    if-gtz p5, :cond_267

    :cond_28d
    move-object/from16 v20, v21

    .line 1247
    .end local v7           #projections:[Ljava/lang/String;
    .end local v21           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v20       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_28f
    :goto_28f
    if-eqz v9, :cond_295

    .line 1248
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1249
    const/4 v9, 0x0

    .line 1252
    :cond_295
    if-nez v20, :cond_2d4

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 1152
    .end local v9           #c:Landroid/database/Cursor;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    :cond_2a8
    const/16 v18, 0x1

    goto/16 :goto_11d

    .line 1156
    :cond_2ac
    const-string v5, "1"

    goto/16 :goto_13e

    .line 1173
    .restart local v23       #periodBeginmillis:J
    .restart local v29       #time:Landroid/text/format/Time;
    :cond_2b0
    const/16 v18, 0x1

    goto/16 :goto_192

    .line 1195
    .end local v23           #periodBeginmillis:J
    .restart local v25       #periodEndmillis:J
    :cond_2b4
    const/16 v18, 0x1

    goto/16 :goto_20c

    .line 1214
    .end local v25           #periodEndmillis:J
    .end local v29           #time:Landroid/text/format/Time;
    .restart local v7       #projections:[Ljava/lang/String;
    :cond_2b8
    const/4 v8, 0x0

    goto :goto_253

    .line 1237
    .end local v6           #uri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v20           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v21       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_2ba
    :try_start_2ba
    const-string v5, "MapSMSProvider"

    const-string v6, "OnGetMsgListing() : skipping upto the offset"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c1
    .catch Ljava/lang/Throwable; {:try_start_2ba .. :try_end_2c1} :catch_2eb

    .line 1238
    add-int/lit8 p6, p6, -0x1

    goto :goto_283

    .line 1243
    .end local v7           #projections:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v21           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v20       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :catch_2c4
    move-exception v5

    move-object/from16 v28, v5

    move-object v9, v14

    .line 1244
    .end local v6           #uri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    .local v28, t:Ljava/lang/Throwable;
    :goto_2c8
    const-string v5, "MapSMSProvider"

    const-string v6, "onGetMsgListing(): Unable to query for SMS messages"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28f

    .line 1255
    .end local v28           #t:Ljava/lang/Throwable;
    :cond_2d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_36

    .line 1243
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #projections:[Ljava/lang/String;
    :catch_2e7
    move-exception v5

    move-object/from16 v28, v5

    goto :goto_2c8

    .end local v6           #uri:Landroid/net/Uri;
    .end local v20           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v21       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :catch_2eb
    move-exception v5

    move-object/from16 v28, v5

    move-object/from16 v20, v21

    .end local v21           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v20       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    goto :goto_2c8
.end method

.method protected onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 38
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "msgContentUri"
    .parameter "folderPath"
    .parameter "virtualFolderPath"

    .prologue
    .line 1264
    const/4 v8, 0x0

    .line 1265
    .local v8, content:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1266
    .local v7, destAddress:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1267
    .local v11, isRead:Z
    const/4 v9, 0x0

    .line 1268
    .local v9, subject:Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->parseBMessage(Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v18

    .line 1269
    .local v18, bMessage:Lcom/broadcom/bt/util/bmsg/BMessage;
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPushMsg() charset = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " msgContentUri = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    if-nez v18, :cond_47

    .line 1271
    const-string v5, "MapSMSProvider"

    const-string v6, "(onPushMsg(): Unable to push SMS message. Null BMessage"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    .line 1433
    .end local v9           #subject:Ljava/lang/String;
    :goto_46
    return-void

    .line 1280
    .restart local v9       #subject:Ljava/lang/String;
    :cond_47
    :try_start_47
    invoke-virtual/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;->getMessageType()B

    move-result v23

    .line 1286
    .local v23, msgType:B
    const/4 v5, 0x4

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_77

    const/4 v5, 0x2

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_77

    .line 1288
    const-string v5, "MapSMSProvider"

    const-string v6, "onPushMsg(): Unable to process BMessage: not a SMS message type"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5e} :catch_9f

    .line 1349
    .end local v23           #msgType:B
    :cond_5e
    :goto_5e
    if-eqz v8, :cond_62

    if-nez v7, :cond_124

    .line 1350
    :cond_62
    const-string v5, "MapSMSProvider"

    const-string v6, "onPushMsg(): Unable to push SMS text message. Invalid destination address or content"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto :goto_46

    .line 1294
    .restart local v23       #msgType:B
    :cond_77
    :try_start_77
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_83

    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ae

    .line 1295
    :cond_83
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPushMsg(): invalid folder path:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_9e} :catch_9f

    goto :goto_5e

    .line 1344
    .end local v23           #msgType:B
    :catch_9f
    move-exception v5

    move-object/from16 v21, v5

    .line 1345
    .local v21, e:Ljava/lang/Exception;
    const-string v5, "MapSMSProvider"

    const-string v6, "onPushMsg(): Error parsing BMessage"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    .line 1299
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v23       #msgType:B
    :cond_ae
    :try_start_ae
    invoke-virtual/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;->isRead()Z

    move-result v11

    .line 1302
    invoke-virtual/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v17

    .line 1303
    .local v17, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    if-nez v17, :cond_c0

    .line 1304
    const-string v5, "MapSMSProvider"

    const-string v6, "onPushMsg(): Unable to process BMessage. Envelope is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1309
    :cond_c0
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v20

    .line 1310
    .local v20, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    if-nez v20, :cond_ce

    .line 1311
    const-string v5, "MapSMSProvider"

    const-string v6, "onPushMsg(): Unable to process BMessage. Recipient is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1316
    :cond_ce
    const/4 v5, 0x2

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->getProperty(B)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    move-result-object v19

    .line 1318
    .local v19, bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    if-nez v19, :cond_e1

    .line 1319
    const-string v5, "MapSMSProvider"

    const-string v6, "onPushMsg(): Unable to process BMessage. Recipient TEL property is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 1323
    :cond_e1
    invoke-virtual/range {v19 .. v19}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1326
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v15

    .line 1327
    .local v15, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-nez v15, :cond_f4

    .line 1328
    const-string v5, "MapSMSProvider"

    const-string v6, "onPushMsg(): Unable to process BMessage. Body is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 1333
    :cond_f4
    invoke-virtual {v15}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->getContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v16

    .line 1334
    .local v16, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v16, :cond_103

    .line 1335
    const-string v5, "MapSMSProvider"

    const-string v6, "onPushMsg(): Unable to process BMessage. Cintent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 1338
    :cond_103
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getFirstMessageContent()Ljava/lang/String;

    move-result-object v8

    .line 1339
    const/16 v24, 0x0

    .line 1340
    .local v24, next:Ljava/lang/String;
    :goto_109
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getNextMessageContent()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_5e

    .line 1341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_122} :catch_9f

    move-result-object v8

    goto :goto_109

    .line 1355
    .end local v15           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v16           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v17           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v19           #bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .end local v20           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v23           #msgType:B
    .end local v24           #next:Ljava/lang/String;
    :cond_124
    if-nez p5, :cond_13e

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13e

    .line 1360
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->decodeSMSSubmitPDU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1361
    .local v25, sUTF8Content:Ljava/lang/String;
    if-nez v25, :cond_187

    .line 1362
    const-string v5, "MapSMSProvider"

    const-string v6, "Decoded message body - failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    .end local v25           #sUTF8Content:Ljava/lang/String;
    :cond_13e
    invoke-virtual/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1377
    const/16 v18, 0x0

    .line 1379
    const/16 v22, 0x0

    .line 1381
    .local v22, messageUri:Landroid/net/Uri;
    :try_start_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v13

    .line 1382
    .local v13, threadId:J
    const-string v5, "/outbox"

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    move-object v5, v0

    invoke-virtual {v5, v7, v8, v13, v14}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_161} :catch_20d

    move-result-object v22

    .line 1416
    .end local v9           #subject:Ljava/lang/String;
    .end local v13           #threadId:J
    :cond_162
    :goto_162
    if-eqz v22, :cond_21d

    .line 1424
    const-string v5, "/outbox"

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_171

    .line 1426
    const-string p7, "/sent"

    .line 1428
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_46

    .line 1367
    .end local v22           #messageUri:Landroid/net/Uri;
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v25       #sUTF8Content:Ljava/lang/String;
    :cond_187
    move-object/from16 v8, v25

    .line 1368
    if-nez v8, :cond_13e

    .line 1369
    const-string v5, "MapSMSProvider"

    const-string v6, "onPushMsg(): Unable to push SMS text message. Empty content - conversion failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_46

    .line 1393
    .end local v25           #sUTF8Content:Ljava/lang/String;
    .restart local v13       #threadId:J
    .restart local v22       #messageUri:Landroid/net/Uri;
    :cond_1a1
    :try_start_1a1
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->createFolderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1394
    .local v6, addrUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x1

    invoke-static/range {v5 .. v14}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v22

    .line 1397
    if-eqz v22, :cond_162

    .line 1398
    const/4 v5, 0x1

    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getMessageType(Ljava/lang/String;)I

    move-result v6

    .end local v6           #addrUri:Landroid/net/Uri;
    if-ne v5, v6, :cond_162

    .line 1404
    new-instance v26, Landroid/content/ContentValues;

    const/4 v5, 0x3

    move-object/from16 v0, v26

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1405
    .local v26, v:Landroid/content/ContentValues;
    const-string/jumbo v5, "protocol"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1406
    const-string/jumbo v5, "reply_path_present"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1407
    const-string/jumbo v5, "status"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_20b} :catch_20d

    goto/16 :goto_162

    .line 1412
    .end local v9           #subject:Ljava/lang/String;
    .end local v13           #threadId:J
    .end local v26           #v:Landroid/content/ContentValues;
    :catch_20d
    move-exception v5

    move-object/from16 v21, v5

    .line 1413
    .restart local v21       #e:Ljava/lang/Exception;
    const-string v5, "MapSMSProvider"

    const-string v6, "Unable to push message"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_162

    .line 1431
    .end local v21           #e:Ljava/lang/Exception;
    :cond_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_46
.end method

.method protected onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 29
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "deletedStatus"

    .prologue
    .line 1448
    const/16 v21, 0x0

    .line 1450
    .local v21, status:B
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 1451
    :cond_e
    const-string v4, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetMessageDeletedStatus(): Invalid folder path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    move/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v11}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    move/from16 v9, v21

    .line 1526
    .end local v21           #status:B
    .local v9, status:B
    :cond_41
    :goto_41
    return-void

    .line 1459
    .end local v9           #status:B
    .restart local v21       #status:B
    :cond_42
    const/4 v4, 0x1

    move v0, v4

    move/from16 v1, p5

    if-ne v0, v1, :cond_148

    .line 1466
    const/16 v19, 0x0

    .line 1468
    .local v19, c:Landroid/database/Cursor;
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1471
    if-eqz v19, :cond_d8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    move-object/from16 v0, v19

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x2

    move-object/from16 v0, v19

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    move-object/from16 v0, v19

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x7

    move-object/from16 v0, v19

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-object/from16 v0, v19

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    const/16 v18, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-virtual/range {v4 .. v18}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->addItem(IILjava/lang/String;IIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_d5

    .line 1488
    const-string v4, "MapSMSProvider"

    const-string v5, "onSetMessageDeletedStatus(): Unable to add item to deleted folder"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_d5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_d8} :catch_139

    .line 1497
    :cond_d8
    :goto_d8
    if-eqz v19, :cond_df

    .line 1498
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1499
    const/16 v19, 0x0

    .line 1503
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 1505
    .local v20, rowsDeleted:I
    if-gtz v20, :cond_151

    .line 1506
    const/4 v9, 0x1

    .line 1507
    .end local v21           #status:B
    .restart local v9       #status:B
    const-string v4, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    .end local v19           #c:Landroid/database/Cursor;
    .end local v20           #rowsDeleted:I
    :goto_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    move/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v11}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    .line 1521
    if-nez v9, :cond_41

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41

    .line 1492
    .end local v9           #status:B
    .restart local v19       #c:Landroid/database/Cursor;
    .restart local v21       #status:B
    :catch_139
    move-exception v4

    move-object/from16 v22, v4

    .line 1495
    .local v22, t:Ljava/lang/Throwable;
    const-string v4, "MapSMSProvider"

    const-string v5, "onSetMessageDeletedStatus(): Unable to query for SMS messages"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d8

    .line 1515
    .end local v19           #c:Landroid/database/Cursor;
    .end local v22           #t:Ljava/lang/Throwable;
    :cond_148
    const/4 v9, 0x1

    .line 1516
    .end local v21           #status:B
    .restart local v9       #status:B
    const-string v4, "MapSMSProvider"

    const-string v5, "Undelete is not supported for SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    .end local v9           #status:B
    .restart local v19       #c:Landroid/database/Cursor;
    .restart local v20       #rowsDeleted:I
    .restart local v21       #status:B
    :cond_151
    move/from16 v9, v21

    .end local v21           #status:B
    .restart local v9       #status:B
    goto :goto_111
.end method

.method protected onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 14
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "readStatus"

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v5, "read"

    const-string v7, "MapSMSProvider"

    .line 1536
    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1537
    :cond_12
    const-string v3, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetMessageReadStatus(): Invalid folder path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_2a
    :goto_2a
    return-void

    .line 1542
    :cond_2b
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1543
    .local v2, values:Landroid/content/ContentValues;
    if-ne v4, p5, :cond_7e

    .line 1544
    const-string/jumbo v3, "read"

    const-string v3, "1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    :cond_3a
    :goto_3a
    :try_start_3a
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1551
    .local v0, result:I
    if-gtz v0, :cond_2a

    .line 1552
    const-string v3, "MapSMSProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetMessageReadStatus(): Unable to update read status. Message not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_62} :catch_63

    goto :goto_2a

    .line 1556
    .end local v0           #result:I
    :catch_63
    move-exception v3

    move-object v1, v3

    .line 1557
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EonSetMessageReadStatus(): rror updating read status for message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 1545
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_7e
    const/4 v3, 0x2

    if-ne v3, p5, :cond_3a

    .line 1546
    const-string/jumbo v3, "read"

    const-string v3, "0"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method protected onStarted()V
    .registers 6

    .prologue
    .line 796
    new-instance v1, Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 799
    new-instance v1, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    .line 800
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    move-result-object v0

    .line 801
    .local v0, handler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 805
    new-instance v1, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    .line 806
    return-void
.end method

.method protected onStopped()V
    .registers 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->closeDeletedFolderDatabase()V

    .line 811
    return-void
.end method

.method protected onUpdateInbox(Ljava/lang/String;)V
    .registers 4
    .parameter "datasourceId"

    .prologue
    .line 1565
    const-string v0, "MapSMSProvider"

    const-string/jumbo v1, "onUpdateInbox(): Update inbox is not supported for SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    return-void
.end method

.method protected preStart()V
    .registers 5

    .prologue
    .line 771
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 773
    .local v0, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    .line 774
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    .line 777
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    .line 778
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    if-nez v1, :cond_5a

    .line 779
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.broadcom.bt.app.system/map"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    .line 780
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 781
    const-string v1, "MapSMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******Cannot create temporary directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_5a
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->openDeletedFolderDatabase()Z

    .line 792
    return-void
.end method

.method protected registerDatasources()V
    .registers 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 814
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    .line 816
    .local v7, folderMappings:[Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v1, "inbox=inbox"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v2

    .line 817
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "outbox=outbox"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v7, v0

    .line 818
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "sent=sent"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v4

    .line 819
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/String;

    const-string v3, "deleted=deleted"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v7, v0

    .line 820
    new-instance v0, Ljava/lang/String;

    const-string v1, "draft=draft"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v5

    .line 822
    iget v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    if-ne v0, v4, :cond_4d

    move v0, v5

    :goto_3c
    iput-byte v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    .line 824
    iget-byte v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    const-string v3, "SMS"

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z

    .line 826
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->startMSEInstance()V

    .line 827
    return-void

    :cond_4d
    move v0, v4

    .line 822
    goto :goto_3c
.end method

.method protected startMSEInstance()V
    .registers 3

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->startMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 844
    return-void
.end method

.method protected stopMSEInstance()V
    .registers 3

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->stopMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 852
    return-void
.end method

.method protected toDeletedMessageInfo(Landroid/database/Cursor;Z)Lcom/broadcom/bt/service/map/MessageInfo;
    .registers 16
    .parameter "c"
    .parameter "includeMessageSize"

    .prologue
    .line 528
    new-instance v5, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v5}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 529
    .local v5, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 530
    const/16 v9, 0x10d7

    iput v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 534
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 535
    iget v9, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f2

    const/4 v9, 0x4

    :goto_19
    iput-byte v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 537
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 539
    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    invoke-static {p1, v9, v10, v11}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v3

    .line 540
    .local v3, lDateTime:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 541
    .local v1, d:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyyMMddHHmmss"

    invoke-direct {v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 543
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "T"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/16 v11, 0x8

    const/16 v12, 0xe

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 547
    const/4 v9, 0x0

    iput-byte v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 549
    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v10

    if-ne v9, v10, :cond_f5

    const/4 v9, 0x1

    :goto_71
    iput-boolean v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 550
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 551
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 552
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v9

    iput-boolean v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 553
    const/4 v9, 0x0

    iput v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 555
    const/16 v9, 0xa

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 556
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v7

    .line 559
    .local v7, ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v8

    .line 560
    .local v8, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, address:Ljava/lang/String;
    if-eqz v8, :cond_a7

    .line 563
    invoke-static {v5, v8}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 564
    invoke-static {v5, v8}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 566
    :cond_a7
    iput-object v0, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 567
    iput-object v0, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 570
    if-eqz v7, :cond_b0

    .line 571
    invoke-static {v5, v7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 573
    :cond_b0
    iget-object v9, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    iput-object v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 575
    if-eqz p2, :cond_f1

    .line 576
    const/16 v9, 0xb

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, msg:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_e6

    .line 578
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x10

    if-le v9, v10, :cond_f8

    .line 579
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 586
    :cond_e6
    :goto_e6
    if-eqz v6, :cond_ee

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_fb

    :cond_ee
    const/4 v9, 0x0

    :goto_ef
    iput v9, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 589
    .end local v6           #msg:Ljava/lang/String;
    :cond_f1
    return-object v5

    .line 535
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #d:Ljava/util/Date;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #lDateTime:J
    .end local v7           #ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local v8           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_f2
    const/4 v9, 0x2

    goto/16 :goto_19

    .line 549
    .restart local v1       #d:Ljava/util/Date;
    .restart local v2       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v3       #lDateTime:J
    :cond_f5
    const/4 v9, 0x0

    goto/16 :goto_71

    .line 582
    .restart local v0       #address:Ljava/lang/String;
    .restart local v6       #msg:Ljava/lang/String;
    .restart local v7       #ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v8       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_f8
    iput-object v6, v5, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_e6

    .line 586
    :cond_fb
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v9, v9, 0x16

    goto :goto_ef
.end method

.method protected toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MessageInfo;
    .registers 27
    .parameter "c"
    .parameter "includeMessageSize"
    .parameter "parameterMask"
    .parameter "recipient"
    .parameter "originator"

    .prologue
    .line 595
    const/16 v17, 0x7

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v15

    .line 596
    .local v15, smsFolderType:I
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v12

    .line 599
    .local v12, ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    new-instance v10, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v10}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 600
    .local v10, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 602
    if-nez p3, :cond_2a6

    .line 604
    const/16 v17, 0x10ff

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 615
    :goto_2f
    invoke-static {v15}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v17

    if-nez v17, :cond_3c

    const/16 v17, 0x3

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_2ad

    :cond_3c
    const/16 v17, 0x1

    :goto_3e
    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b1

    const/16 v17, 0x4

    :goto_53
    move/from16 v0, v17

    move-object v1, v10

    iput-byte v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 618
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 620
    const/16 v17, 0x2

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v8

    .line 621
    .local v8, lDateTime:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 622
    .local v6, d:Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v17, "yyyyMMddHHmmss"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 624
    .local v7, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 626
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x8

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "T"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0xe

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 628
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v10

    iput-byte v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 630
    const/16 v17, 0x1

    const/16 v18, 0x5

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b5

    const/16 v17, 0x1

    :goto_db
    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 632
    const/16 v17, 0x2

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_ee

    const/16 v17, 0x5

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_2b9

    :cond_ee
    const/16 v17, 0x1

    :goto_f0
    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 633
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 634
    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 635
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 637
    const/16 v17, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 641
    move-object v0, v10

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2f8

    .line 642
    const-string v17, "MapSMSProvider"

    const-string/jumbo v18, "outbound message"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/16 v17, 0x3

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_2bd

    .line 647
    const/16 v17, 0x8

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v16

    .line 648
    .local v16, threadId:I
    if-lez v16, :cond_17d

    .line 649
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getThreadRecipientAddresses(I)Ljava/util/List;

    move-result-object v5

    .line 650
    .local v5, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_17d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_17d

    .line 652
    const/16 v17, 0x0

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 653
    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v13

    .line 654
    .local v13, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    if-eqz v13, :cond_17d

    .line 655
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 670
    .end local v5           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local v16           #threadId:I
    :cond_17d
    :goto_17d
    if-eqz v12, :cond_185

    .line 671
    invoke-static {v10, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 672
    invoke-static {v10, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 674
    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 707
    :goto_19b
    if-eqz p2, :cond_1ed

    .line 708
    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 711
    .local v11, msg:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1de

    .line 712
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_339

    .line 713
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x10

    move-object v0, v11

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 719
    :cond_1de
    :goto_1de
    if-eqz v11, :cond_1e6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_33d

    :cond_1e6
    const/16 v17, 0x0

    :goto_1e8
    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 724
    .end local v11           #msg:Ljava/lang/String;
    :cond_1ed
    if-eqz p4, :cond_248

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_248

    const-string v17, "*"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_248

    .line 726
    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_22b

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_34a

    .line 728
    :cond_22b
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "toMessageInfo: receipient matches filter"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_248
    :goto_248
    if-eqz v10, :cond_2a5

    if-eqz p5, :cond_2a5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2a5

    const-string v17, "*"

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2a5

    .line 736
    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_288

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_34d

    .line 738
    :cond_288
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "toMessageInfo: sender matches filter"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_2a5
    :goto_2a5
    return-object v10

    .line 612
    .end local v6           #d:Ljava/util/Date;
    .end local v7           #formatter:Ljava/text/SimpleDateFormat;
    .end local v8           #lDateTime:J
    .restart local p3
    :cond_2a6
    move/from16 v0, p3

    move-object v1, v10

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    goto/16 :goto_2f

    .line 615
    :cond_2ad
    const/16 v17, 0x0

    goto/16 :goto_3e

    .line 616
    :cond_2b1
    const/16 v17, 0x2

    goto/16 :goto_53

    .line 630
    .restart local v6       #d:Ljava/util/Date;
    .restart local v7       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v8       #lDateTime:J
    :cond_2b5
    const/16 v17, 0x0

    goto/16 :goto_db

    .line 632
    :cond_2b9
    const/16 v17, 0x0

    goto/16 :goto_f0

    .line 660
    :cond_2bd
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 661
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 662
    .local v14, personId:Ljava/lang/String;
    if-nez v14, :cond_2ee

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v17

    move-object/from16 v13, v17

    .line 664
    .restart local v13       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :goto_2e7
    if-eqz v13, :cond_17d

    .line 665
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    goto/16 :goto_17d

    .line 662
    .end local v13           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_2ee
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v17

    move-object/from16 v13, v17

    goto :goto_2e7

    .line 680
    .end local v14           #personId:Ljava/lang/String;
    :cond_2f8
    const-string v17, "MapSMSProvider"

    const-string v18, "inbound message"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v13

    .line 682
    .restart local v13       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, address:Ljava/lang/String;
    if-eqz v13, :cond_323

    .line 687
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 688
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 690
    :cond_323
    iput-object v4, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 691
    iput-object v4, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 694
    if-eqz v12, :cond_32c

    .line 695
    invoke-static {v10, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 697
    :cond_32c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    goto/16 :goto_19b

    .line 716
    .end local v4           #address:Ljava/lang/String;
    .end local v13           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local p3
    .restart local v11       #msg:Ljava/lang/String;
    :cond_339
    iput-object v11, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto/16 :goto_1de

    .line 719
    :cond_33d
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x16

    goto/16 :goto_1e8

    .line 730
    .end local v11           #msg:Ljava/lang/String;
    :cond_34a
    const/4 v10, 0x0

    goto/16 :goto_248

    .line 740
    :cond_34d
    const/4 v10, 0x0

    goto/16 :goto_2a5
.end method

.method protected unregisterDatasources()V
    .registers 2

    .prologue
    .line 834
    const-string v0, "SMS"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->unregisterDS(Ljava/lang/String;)Z

    .line 835
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->stopMSEInstance()V

    .line 836
    return-void
.end method
