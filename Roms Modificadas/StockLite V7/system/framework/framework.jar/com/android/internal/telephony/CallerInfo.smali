.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final VDBG:Z


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cnapName:Ljava/lang/String;

.field public contactExists:Z

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public isCachedPhotoCurrent:Z

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public person_id:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public shouldSendToVoicemail:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "CallerInfo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 113
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .registers 6
    .parameter "context"
    .parameter "number"
    .parameter "previousResult"

    .prologue
    .line 271
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_29

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 273
    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 275
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object p2

    .line 280
    .end local v0           #username:Ljava/lang/String;
    :cond_29
    return-object p2
.end method

.method public static getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "number"

    .prologue
    .line 300
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 301
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 303
    .local v0, callerID:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 304
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 306
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 307
    move-object v0, v2

    .line 313
    .end local v2           #name:Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v0

    .line 309
    .restart local v2       #name:Ljava/lang/String;
    :cond_11
    move-object v0, p1

    goto :goto_10
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .registers 8
    .parameter "context"
    .parameter "contactRef"

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .registers 14
    .parameter "context"
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v10, "CallerInfo"

    .line 124
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 125
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 126
    iput-object v8, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 127
    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 128
    iput-object v8, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 129
    iput-object v8, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 131
    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 133
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_24

    const-string v3, "CallerInfo"

    const-string v3, "construct callerInfo from cursor"

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_24
    if-eqz p2, :cond_cc

    .line 136
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 144
    const-string v3, "display_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, columnIndex:I
    if-eq v0, v6, :cond_3a

    .line 146
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 150
    :cond_3a
    const-string v3, "number"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 151
    if-eq v0, v6, :cond_48

    .line 152
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 156
    :cond_48
    const-string v3, "label"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 157
    if-eq v0, v6, :cond_73

    .line 158
    const-string/jumbo v3, "type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 159
    .local v2, typeColumnIndex:I
    if-eq v2, v6, :cond_73

    .line 160
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 161
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 162
    iget v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 169
    .end local v2           #typeColumnIndex:I
    :cond_73
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 170
    if-eq v0, v6, :cond_d9

    .line 171
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 172
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_9d

    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.person_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_9d
    :goto_9d
    const-string v3, "custom_ringtone"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 184
    if-eq v0, v6, :cond_f2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f2

    .line 185
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 192
    :goto_b5
    const-string/jumbo v3, "send_to_voicemail"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 193
    if-eq v0, v6, :cond_f5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v9, :cond_f5

    move v3, v9

    :goto_c5
    iput-boolean v3, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 195
    iput-boolean v9, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 197
    .end local v0           #columnIndex:I
    :cond_c9
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_cc
    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 201
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 202
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 204
    return-object v1

    .line 175
    .restart local v0       #columnIndex:I
    :cond_d9
    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find person_id column for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 187
    :cond_f2
    iput-object v8, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_b5

    :cond_f5
    move v3, v7

    .line 193
    goto :goto_c5
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .registers 6
    .parameter "context"
    .parameter "number"

    .prologue
    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 233
    const/4 v2, 0x0

    .line 256
    :goto_7
    return-object v2

    .line 239
    :cond_8
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 240
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    goto :goto_7

    .line 241
    :cond_18
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 242
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    goto :goto_7

    .line 245
    :cond_28
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 247
    .local v0, contactUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 248
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 252
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 253
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_44
    move-object v2, v1

    .line 256
    goto :goto_7
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .registers 8
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    const-string v5, "CallerInfo"

    .line 434
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_24

    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_24
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 442
    .local v1, columnName:Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 445
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_3c

    const-string v3, "CallerInfo"

    const-string v3, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_3c
    const-string v1, "contact_id"

    .line 462
    :goto_3e
    if-eqz v1, :cond_bd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 463
    .local v0, columnIndex:I
    :goto_45
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_71

    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Using column \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (columnIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for person_id lookup..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_71
    return v0

    .line 447
    .end local v0           #columnIndex:I
    :cond_72
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 450
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_85

    const-string v3, "CallerInfo"

    const-string v3, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_85
    const-string v1, "contact_id"

    goto :goto_3e

    .line 453
    :cond_88
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 457
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_9b

    const-string v3, "CallerInfo"

    const-string v3, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_9b
    const-string v1, "_id"

    goto :goto_3e

    .line 460
    :cond_9e
    const-string v3, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected prefix for contactRef \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 462
    :cond_bd
    const/4 v3, -0x1

    move v0, v3

    goto :goto_45
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 384
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    :cond_8
    move-object v0, p0

    .line 387
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .registers 2

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .registers 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .registers 3
    .parameter "context"

    .prologue
    .line 345
    const v0, 0x104030c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 347
    const v0, 0x108024a

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 349
    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .registers 5

    .prologue
    .line 363
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 366
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, voiceMailLabel:Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_d} :catch_e

    .line 380
    .end local v1           #voiceMailLabel:Ljava/lang/String;
    :goto_d
    return-object p0

    .line 369
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 375
    .local v0, se:Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const-string v5, "null"

    const-string v4, "non-null"

    .line 474
    const/4 v0, 0x0

    .line 500
    .local v0, VERBOSE_DEBUG:Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CallerInfo { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_59

    const-string v3, "null"

    move-object v3, v5

    :goto_24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_5d

    const-string v3, "null"

    move-object v3, v5

    :goto_42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_59
    const-string v3, "non-null"

    move-object v3, v4

    goto :goto_24

    :cond_5d
    const-string v3, "non-null"

    move-object v3, v4

    goto :goto_42
.end method
