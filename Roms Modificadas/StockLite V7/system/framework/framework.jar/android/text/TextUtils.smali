.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static isSpannedText:Z

.field private static isStaticText:Z

.field private static sEllipsis:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 643
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 991
    sput-object v2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .line 1706
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 1707
    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 1709
    const/4 v0, 0x1

    sput-boolean v0, Landroid/text/TextUtils;->isStaticText:Z

    .line 1710
    sput-boolean v1, Landroid/text/TextUtils;->isSpannedText:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method private static blank(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 9
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 1264
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1265
    .local v2, len:I
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1267
    .local v0, buf:[C
    if-eqz p1, :cond_e

    .line 1268
    invoke-static {p0, v5, p1, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1270
    :cond_e
    if-eq p2, v2, :cond_13

    .line 1271
    invoke-static {p0, p2, v2, v0, p2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1274
    :cond_13
    if-eq p1, p2, :cond_25

    .line 1275
    const/16 v4, 0x2026

    aput-char v4, v0, p1

    .line 1277
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_1b
    if-ge v1, p2, :cond_25

    .line 1278
    const v4, 0xfeff

    aput-char v4, v0, v1

    .line 1277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1282
    .end local v1           #i:I
    :cond_25
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1283
    .local v3, ret:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1285
    return-object v3
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 26
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "oneMore"
    .parameter "more"

    .prologue
    .line 1303
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 1304
    .local v14, len:I
    new-array v12, v14, [C

    .line 1305
    .local v12, buf:[C
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v14

    move-object v3, v12

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1307
    const/4 v5, 0x0

    .line 1308
    .local v5, commaCount:I
    const/4 v8, 0x0

    .local v8, i:I
    move v13, v5

    .end local v5           #commaCount:I
    .local v13, commaCount:I
    :goto_14
    if-ge v8, v14, :cond_22

    .line 1309
    aget-char v5, v12, v8

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_112

    .line 1310
    add-int/lit8 v5, v13, 0x1

    .line 1308
    .end local v13           #commaCount:I
    .restart local v5       #commaCount:I
    :goto_1e
    add-int/lit8 v8, v8, 0x1

    move v13, v5

    .end local v5           #commaCount:I
    .restart local v13       #commaCount:I
    goto :goto_14

    .line 1316
    :cond_22
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_b6

    .line 1317
    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 1318
    .local v7, sp:Landroid/text/Spanned;
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 1319
    .local v6, temppaint:Landroid/text/TextPaint;
    mul-int/lit8 v5, v14, 0x2

    new-array v10, v5, [F

    .line 1322
    .local v10, wid:[F
    const/4 v8, 0x0

    :goto_38
    if-ge v8, v14, :cond_50

    .line 1323
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v8, v14, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1325
    .local v9, next:I
    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 1326
    const/4 v5, 0x0

    add-int v11, v14, v8

    sub-int v8, v9, v8

    invoke-static {v10, v5, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1322
    .end local v8           #i:I
    move v8, v9

    .restart local v8       #i:I
    goto :goto_38

    .line 1329
    .end local v9           #next:I
    :cond_50
    const/4 v5, 0x0

    invoke-static {v10, v14, v10, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1335
    .end local v6           #temppaint:Landroid/text/TextPaint;
    .end local v7           #sp:Landroid/text/Spanned;
    :goto_54
    const/4 v6, 0x0

    .line 1336
    .local v6, ok:I
    add-int/lit8 v9, v13, 0x1

    .line 1337
    .local v9, okRemaining:I
    const-string v7, ""

    .line 1339
    .local v7, okFormat:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1340
    .local v11, w:I
    const/4 v5, 0x0

    .line 1342
    .local v5, count:I
    const/4 v8, 0x0

    move v15, v9

    .end local v9           #okRemaining:I
    .local v15, okRemaining:I
    move v9, v6

    .end local v6           #ok:I
    .local v9, ok:I
    move v6, v11

    .end local v11           #w:I
    .local v6, w:I
    move-object v11, v7

    .end local v7           #okFormat:Ljava/lang/String;
    .local v11, okFormat:Ljava/lang/String;
    :goto_60
    if-ge v8, v14, :cond_ea

    .line 1343
    int-to-float v6, v6

    aget v7, v10, v8

    .end local v6           #w:I
    add-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1345
    .local v17, w:I
    aget-char v6, v12, v8

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_10e

    .line 1346
    add-int/lit8 v5, v5, 0x1

    .line 1348
    sub-int v6, v13, v5

    add-int/lit8 v16, v6, 0x1

    .line 1352
    .local v16, remaining:I
    const/4 v6, 0x1

    move/from16 v0, v16

    move v1, v6

    if-ne v0, v1, :cond_c4

    .line 1353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1358
    .local v6, format:Ljava/lang/String;
    :goto_92
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1360
    .local v7, moreWid:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v7, v7, v18

    cmpg-float v7, v7, p2

    if-gtz v7, :cond_10e

    .line 1361
    .end local v7           #moreWid:F
    add-int/lit8 v7, v8, 0x1

    .line 1362
    .end local v9           #ok:I
    .local v7, ok:I
    move/from16 v9, v16

    .line 1363
    .end local v15           #okRemaining:I
    .local v9, okRemaining:I
    move-object v6, v6

    .end local v11           #okFormat:Ljava/lang/String;
    .local v6, okFormat:Ljava/lang/String;
    move-object/from16 v20, v6

    .end local v6           #okFormat:Ljava/lang/String;
    .local v20, okFormat:Ljava/lang/String;
    move v6, v7

    .end local v7           #ok:I
    .local v6, ok:I
    move-object/from16 v7, v20

    .line 1342
    .end local v16           #remaining:I
    .end local v20           #okFormat:Ljava/lang/String;
    .local v7, okFormat:Ljava/lang/String;
    :goto_ae
    add-int/lit8 v8, v8, 0x1

    move-object v11, v7

    .end local v7           #okFormat:Ljava/lang/String;
    .restart local v11       #okFormat:Ljava/lang/String;
    move v15, v9

    .end local v9           #okRemaining:I
    .restart local v15       #okRemaining:I
    move v9, v6

    .end local v6           #ok:I
    .local v9, ok:I
    move/from16 v6, v17

    .end local v17           #w:I
    .local v6, w:I
    goto :goto_60

    .line 1331
    .end local v5           #count:I
    .end local v6           #w:I
    .end local v9           #ok:I
    .end local v10           #wid:[F
    .end local v11           #okFormat:Ljava/lang/String;
    .end local v15           #okRemaining:I
    :cond_b6
    new-array v10, v14, [F

    .line 1332
    .restart local v10       #wid:[F
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    move v3, v14

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    goto :goto_54

    .line 1355
    .restart local v5       #count:I
    .restart local v9       #ok:I
    .restart local v11       #okFormat:Ljava/lang/String;
    .restart local v15       #okRemaining:I
    .restart local v16       #remaining:I
    .restart local v17       #w:I
    :cond_c4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v18

    move-object/from16 v0, p4

    move-object v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, format:Ljava/lang/String;
    goto :goto_92

    .line 1368
    .end local v16           #remaining:I
    .end local v17           #w:I
    .local v6, w:I
    :cond_ea
    move v0, v6

    int-to-float v0, v0

    move/from16 p1, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_f3

    .line 1373
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_f2
    return-object p0

    .line 1371
    .restart local p0
    .restart local p2
    .restart local p3
    :cond_f3
    new-instance p1, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1372
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x0

    const/16 p3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .end local p2
    .end local p3
    move-object/from16 p0, p1

    .line 1373
    goto :goto_f2

    .end local v6           #w:I
    .restart local v17       #w:I
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_10e
    move-object v7, v11

    .end local v11           #okFormat:Ljava/lang/String;
    .restart local v7       #okFormat:Ljava/lang/String;
    move v6, v9

    .end local v9           #ok:I
    .local v6, ok:I
    move v9, v15

    .end local v15           #okRemaining:I
    .local v9, okRemaining:I
    goto :goto_ae

    .end local v5           #count:I
    .end local v6           #ok:I
    .end local v7           #okFormat:Ljava/lang/String;
    .end local v9           #okRemaining:I
    .end local v10           #wid:[F
    .end local v17           #w:I
    :cond_112
    move v5, v13

    .end local v13           #commaCount:I
    .local v5, commaCount:I
    goto/16 :goto_1e
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 1438
    array-length v0, p0

    if-nez v0, :cond_7

    .line 1439
    const-string v0, ""

    .line 1475
    :goto_6
    return-object v0

    .line 1442
    :cond_7
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    .line 1443
    aget-object v0, p0, v1

    goto :goto_6

    .line 1446
    :cond_e
    const/4 v8, 0x0

    .line 1447
    .local v8, spanned:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_10
    array-length v0, p0

    if-ge v6, v0, :cond_1a

    .line 1448
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2b

    .line 1449
    const/4 v8, 0x1

    .line 1454
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1455
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_20
    array-length v0, p0

    if-ge v6, v0, :cond_2e

    .line 1456
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1455
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 1447
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1459
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_2e
    if-nez v8, :cond_35

    .line 1460
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1463
    :cond_35
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1464
    .local v4, ss:Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1465
    .local v5, off:I
    const/4 v6, 0x0

    :goto_3c
    array-length v0, p0

    if-ge v6, v0, :cond_58

    .line 1466
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1468
    .local v2, len:I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_54

    .line 1469
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1472
    :cond_54
    add-int/2addr v5, v2

    .line 1465
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 1475
    .end local v2           #len:I
    :cond_58
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .registers 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "kind"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 955
    if-nez p3, :cond_4

    .line 956
    const-class p3, Ljava/lang/Object;

    .line 959
    :cond_4
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 961
    .local v3, spans:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v5, v3

    if-ge v2, v5, :cond_32

    .line 962
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 963
    .local v4, st:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 964
    .local v0, en:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 966
    .local v1, fl:I
    if-ge v4, p1, :cond_21

    .line 967
    move v4, p1

    .line 968
    :cond_21
    if-le v0, p2, :cond_24

    .line 969
    move v0, p2

    .line 971
    :cond_24
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 974
    .end local v0           #en:I
    .end local v1           #fl:I
    .end local v4           #st:I
    :cond_32
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .registers 9
    .parameter "delimitedString"
    .parameter "delimiter"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1685
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    move v3, v5

    .line 1703
    :goto_f
    return v3

    .line 1688
    :cond_10
    const/4 v2, -0x1

    .line 1689
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1690
    .local v1, length:I
    :cond_15
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    .line 1691
    if-lez v2, :cond_28

    sub-int v3, v2, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_15

    .line 1694
    :cond_28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1695
    .local v0, expectedDelimiterPos:I
    if-ne v0, v1, :cond_32

    move v3, v4

    .line 1697
    goto :goto_f

    .line 1699
    :cond_32
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_15

    move v3, v4

    .line 1700
    goto :goto_f

    .end local v0           #expectedDelimiterPos:I
    :cond_3a
    move v3, v5

    .line 1703
    goto :goto_f
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 11
    .parameter "cs"
    .parameter "printer"
    .parameter "prefix"

    .prologue
    .line 756
    instance-of v5, p0, Landroid/text/Spanned;

    if-eqz v5, :cond_8a

    .line 757
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    .line 758
    .local v4, sp:Landroid/text/Spanned;
    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 760
    .local v3, os:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    array-length v5, v3

    if-ge v1, v5, :cond_a4

    .line 761
    aget-object v2, v3, v1

    .line 762
    .local v2, o:Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fl=#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 760
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 770
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #os:[Ljava/lang/Object;
    .end local v4           #sp:Landroid/text/Spanned;
    :cond_8a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": (no spans)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 772
    :cond_a4
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "where"

    .prologue
    .line 1002
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .registers 27
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "where"
    .parameter "preserveLength"
    .parameter "callback"

    .prologue
    .line 1021
    sget-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    if-nez v5, :cond_11

    .line 1022
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 1023
    .local v5, r:Landroid/content/res/Resources;
    const v6, 0x10400b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #r:Landroid/content/res/Resources;
    sput-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .line 1026
    :cond_11
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1031
    .local v8, len:I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-nez v5, :cond_1ad

    .line 1032
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v14

    .line 1034
    .local v14, wid:F
    cmpg-float v5, v14, p2

    if-gtz v5, :cond_3b

    .line 1035
    if-eqz p5, :cond_3a

    .line 1036
    const/16 p1, 0x0

    const/16 p2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1258
    .end local v14           #wid:F
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :cond_3a
    :goto_3a
    return-object p0

    .line 1042
    .restart local v14       #wid:F
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_3b
    sget-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 1044
    .local v14, ellipsiswid:F
    cmpl-float v5, v14, p2

    if-lez v5, :cond_7c

    .line 1045
    if-eqz p5, :cond_54

    .line 1046
    const/16 p0, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p0

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1049
    .end local p0
    :cond_54
    if-eqz p4, :cond_79

    .line 1050
    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p0

    .line 1051
    .local p0, buf:[C
    const/4 v12, 0x0

    .end local p1
    .local v12, i:I
    :goto_5b
    if-ge v12, v8, :cond_65

    .line 1052
    const p1, 0xfeff

    aput-char p1, p0, v12

    .line 1051
    add-int/lit8 v12, v12, 0x1

    goto :goto_5b

    .line 1054
    :cond_65
    new-instance p1, Ljava/lang/String;

    const/16 p2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1055
    .end local p2
    .local p1, ret:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->recycle([C)V

    move-object/from16 p0, p1

    .line 1056
    goto :goto_3a

    .line 1058
    .end local v12           #i:I
    .end local p0           #buf:[C
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    :cond_79
    const-string p0, ""

    goto :goto_3a

    .line 1062
    .local p0, text:Ljava/lang/CharSequence;
    :cond_7c
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_d8

    .line 1063
    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-float v10, p2, v14

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p1

    .line 1066
    .local p1, fit:I
    if-eqz p5, :cond_9f

    .line 1067
    const/16 p2, 0x0

    sub-int p3, v8, p1

    move-object/from16 v0, p5

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1070
    .end local p2
    .end local p3
    :cond_9f
    if-eqz p4, :cond_b0

    .line 1071
    const/16 p2, 0x0

    sub-int p1, v8, p1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .end local p1           #fit:I
    move-result-object p0

    goto :goto_3a

    .line 1073
    .restart local p1       #fit:I
    :cond_b0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    sub-int p1, v8, p1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p1           #fit:I
    move-result-object p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1075
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_d8
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_12c

    .line 1076
    const/4 v7, 0x0

    const/4 v9, 0x1

    sub-float v10, p2, v14

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p1

    .line 1079
    .local p1, fit:I
    if-eqz p5, :cond_f6

    .line 1080
    move-object/from16 v0, p5

    move/from16 v1, p1

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1083
    :cond_f6
    if-eqz p4, :cond_103

    .line 1084
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1086
    :cond_103
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    const/16 p3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p3
    move-result-object p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p1           #fit:I
    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1089
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_12c
    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-float p3, p2, v14

    const/high16 v5, 0x4000

    div-float v10, p3, v5

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .end local p3
    move-result p3

    .line 1091
    .local p3, right:I
    sub-int v5, v8, p3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 1092
    .local v5, used:F
    const/4 v11, 0x0

    sub-int v12, v8, p3

    const/4 v13, 0x1

    sub-float p2, p2, v14

    sub-float v14, p2, v5

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .end local v14           #ellipsiswid:F
    .end local p2
    move-result p1

    .line 1095
    .local p1, left:I
    if-eqz p5, :cond_167

    .line 1096
    sub-int p2, v8, p3

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1099
    :cond_167
    if-eqz p4, :cond_171

    .line 1100
    sub-int p2, v8, p3

    invoke-static/range {p0 .. p2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1102
    :cond_171
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1103
    .local p0, s:Ljava/lang/String;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p4
    move-result-object p1

    .end local p1           #left:I
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int p2, v8, p3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #s:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3a

    .line 1117
    .end local v5           #used:F
    .local p0, text:Ljava/lang/CharSequence;
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    .restart local p4
    :cond_1ad
    mul-int/lit8 v5, v8, 0x2

    new-array v14, v5, [F

    .line 1118
    .local v14, wid:[F
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 1119
    .local v10, temppaint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v11, v0

    .line 1122
    .local v11, sp:Landroid/text/Spanned;
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1bc
    if-ge v12, v8, :cond_1d4

    .line 1123
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v11, v12, v8, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v13

    .line 1125
    .local v13, next:I
    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 1126
    const/4 v5, 0x0

    add-int v6, v8, v12

    sub-int v7, v13, v12

    invoke-static {v14, v5, v14, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1122
    move v12, v13

    goto :goto_1bc

    .line 1129
    .end local v13           #next:I
    :cond_1d4
    const/4 v5, 0x0

    .line 1130
    .local v5, sum:F
    const/4 v12, 0x0

    :goto_1d6
    if-ge v12, v8, :cond_1e0

    .line 1131
    add-int v6, v8, v12

    aget v6, v14, v6

    add-float/2addr v5, v6

    .line 1130
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d6

    .line 1134
    :cond_1e0
    cmpg-float v5, v5, p2

    if-gtz v5, :cond_1f5

    .line 1135
    .end local v5           #sum:F
    if-eqz p5, :cond_3a

    .line 1136
    const/16 p1, 0x0

    const/16 p2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    goto/16 :goto_3a

    .line 1142
    :cond_1f5
    sget-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 1144
    .local p1, ellipsiswid:F
    cmpl-float v5, p1, p2

    if-lez v5, :cond_24d

    .line 1145
    if-eqz p5, :cond_20e

    .line 1146
    const/16 p0, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p0

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1149
    .end local p0           #text:Ljava/lang/CharSequence;
    :cond_20e
    if-eqz p4, :cond_249

    .line 1150
    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p0

    .line 1151
    .local p0, buf:[C
    const/4 v12, 0x0

    .end local p1           #ellipsiswid:F
    :goto_215
    if-ge v12, v8, :cond_21f

    .line 1152
    const p1, 0xfeff

    aput-char p1, p0, v12

    .line 1151
    add-int/lit8 v12, v12, 0x1

    goto :goto_215

    .line 1154
    :cond_21f
    new-instance v19, Landroid/text/SpannableString;

    new-instance p1, Ljava/lang/String;

    const/16 p2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .end local p2
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1155
    .local v19, ss:Landroid/text/SpannableString;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1156
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1157
    goto/16 :goto_3a

    .line 1159
    .end local v19           #ss:Landroid/text/SpannableString;
    .end local p0           #buf:[C
    .restart local p1       #ellipsiswid:F
    .restart local p2
    :cond_249
    const-string p0, ""

    goto/16 :goto_3a

    .line 1163
    .local p0, text:Ljava/lang/CharSequence;
    :cond_24d
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_2b6

    .line 1164
    const/16 p3, 0x0

    .line 1167
    .local p3, sum:F
    move v12, v8

    :goto_257
    if-ltz v12, :cond_267

    .line 1168
    add-int v5, v8, v12

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v5, v14, v5

    .line 1170
    .local v5, w:F
    add-float v6, v5, p3

    add-float v6, v6, p1

    cmpl-float v6, v6, p2

    if-lez v6, :cond_299

    .line 1177
    .end local v5           #w:F
    :cond_267
    if-eqz p5, :cond_273

    .line 1178
    const/16 p1, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move v2, v12

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1181
    .end local p1           #ellipsiswid:F
    :cond_273
    if-eqz p4, :cond_29e

    .line 1182
    new-instance v19, Landroid/text/SpannableString;

    const/16 p1, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1183
    .restart local v19       #ss:Landroid/text/SpannableString;
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1184
    goto/16 :goto_3a

    .line 1174
    .end local v19           #ss:Landroid/text/SpannableString;
    .restart local v5       #w:F
    .restart local p0       #text:Ljava/lang/CharSequence;
    .restart local p1       #ellipsiswid:F
    :cond_299
    add-float p3, p3, v5

    .line 1167
    add-int/lit8 v12, v12, -0x1

    goto :goto_257

    .line 1186
    .end local v5           #w:F
    .end local p1           #ellipsiswid:F
    :cond_29e
    new-instance p1, Landroid/text/SpannableStringBuilder;

    sget-object p2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p2
    invoke-direct/range {p1 .. p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1187
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v12

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-object/from16 p0, p1

    .line 1189
    goto/16 :goto_3a

    .line 1191
    .local p1, ellipsiswid:F
    .restart local p2
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    :cond_2b6
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_31a

    .line 1192
    const/16 p3, 0x0

    .line 1195
    .local p3, sum:F
    const/4 v12, 0x0

    :goto_2c0
    if-ge v12, v8, :cond_2ce

    .line 1196
    add-int v5, v8, v12

    aget v5, v14, v5

    .line 1198
    .restart local v5       #w:F
    add-float v6, v5, p3

    add-float v6, v6, p1

    cmpl-float v6, v6, p2

    if-lez v6, :cond_2fa

    .line 1205
    .end local v5           #w:F
    :cond_2ce
    if-eqz p5, :cond_2d7

    .line 1206
    move-object/from16 v0, p5

    move v1, v12

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1209
    :cond_2d7
    if-eqz p4, :cond_2ff

    .line 1210
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    move v1, v12

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1211
    .restart local v19       #ss:Landroid/text/SpannableString;
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1212
    goto/16 :goto_3a

    .line 1202
    .end local v19           #ss:Landroid/text/SpannableString;
    .restart local v5       #w:F
    .restart local p0       #text:Ljava/lang/CharSequence;
    :cond_2fa
    add-float p3, p3, v5

    .line 1195
    add-int/lit8 v12, v12, 0x1

    goto :goto_2c0

    .line 1214
    .end local v5           #w:F
    :cond_2ff
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .end local p1           #ellipsiswid:F
    sget-object p2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p2
    invoke-direct/range {p1 .. p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1215
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x0

    const/16 p3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .end local p3           #sum:F
    move-object/from16 p0, p1

    .line 1217
    goto/16 :goto_3a

    .line 1220
    .local p1, ellipsiswid:F
    .restart local p2
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    :cond_31a
    const/4 v5, 0x0

    .local v5, lsum:F
    const/4 v7, 0x0

    .line 1221
    .local v7, rsum:F
    const/16 p3, 0x0

    .local p3, left:I
    move/from16 p3, v8

    .line 1223
    .local p3, right:I
    sub-float p3, p2, p1

    const/high16 v6, 0x4000

    div-float p3, p3, v6

    .line 1224
    .local p3, ravail:F
    move v6, v8

    .end local v10           #temppaint:Landroid/text/TextPaint;
    .local v6, right:I
    :goto_327
    if-ltz v6, :cond_335

    .line 1225
    add-int v9, v8, v6

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget v9, v14, v9

    .line 1227
    .local v9, w:F
    add-float v10, v9, v7

    cmpl-float v10, v10, p3

    if-lez v10, :cond_37a

    .line 1234
    .end local v9           #w:F
    :cond_335
    sub-float p1, p2, p1

    sub-float p1, p1, v7

    .line 1235
    .local p1, lavail:F
    const/16 p2, 0x0

    .local p2, left:I
    move/from16 p3, v5

    .end local v5           #lsum:F
    .end local v7           #rsum:F
    .local p3, lsum:F
    :goto_33d
    move/from16 v0, p2

    move v1, v6

    if-ge v0, v1, :cond_34c

    .line 1236
    add-int v5, v8, p2

    aget v5, v14, v5

    .line 1238
    .local v5, w:F
    add-float v7, v5, p3

    cmpl-float v7, v7, p1

    if-lez v7, :cond_37e

    .line 1245
    .end local v5           #w:F
    :cond_34c
    if-eqz p5, :cond_356

    .line 1246
    move-object/from16 v0, p5

    move/from16 v1, p2

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1249
    :cond_356
    if-eqz p4, :cond_383

    .line 1250
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1251
    .restart local v19       #ss:Landroid/text/SpannableString;
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1252
    goto/16 :goto_3a

    .line 1231
    .end local v19           #ss:Landroid/text/SpannableString;
    .local v5, lsum:F
    .restart local v7       #rsum:F
    .restart local v9       #w:F
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, ellipsiswid:F
    .local p2, avail:F
    .local p3, ravail:F
    :cond_37a
    add-float/2addr v7, v9

    .line 1224
    add-int/lit8 v6, v6, -0x1

    goto :goto_327

    .line 1242
    .end local v7           #rsum:F
    .end local v9           #w:F
    .local v5, w:F
    .local p1, lavail:F
    .local p2, left:I
    .local p3, lsum:F
    :cond_37e
    add-float p3, p3, v5

    .line 1235
    add-int/lit8 p2, p2, 0x1

    goto :goto_33d

    .line 1254
    .end local v5           #w:F
    :cond_383
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .end local p1           #lavail:F
    sget-object p3, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p3           #lsum:F
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1255
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p3, 0x0

    const/16 p4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p0

    move/from16 v3, p4

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1256
    .end local p4
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .end local p2           #left:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v6

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-object/from16 p0, p1

    .line 1258
    goto/16 :goto_3a
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 476
    :goto_5
    return v2

    .line 466
    :cond_6
    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 467
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_21

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 468
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 470
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    if-ge v0, v1, :cond_33

    .line 471
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_30

    move v2, v4

    goto :goto_5

    .line 470
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    move v2, v5

    .line 473
    goto :goto_5

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_35
    move v2, v4

    .line 476
    goto :goto_5
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "template"
    .parameter "values"

    .prologue
    const/16 v6, 0x5e

    const-string/jumbo v4, "template requests value ^"

    .line 826
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_12

    .line 827
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 830
    :cond_12
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 833
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 834
    .local v0, i:I
    :goto_18
    :try_start_18
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_62

    .line 835
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_a3

    .line 836
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 837
    .local v1, next:C
    if-ne v1, v6, :cond_36

    .line 838
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 839
    add-int/lit8 v0, v0, 0x1

    .line 840
    goto :goto_18

    .line 841
    :cond_36
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 842
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 843
    .local v3, which:I
    if-gez v3, :cond_63

    .line 844
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 859
    .end local v1           #next:C
    .end local v3           #which:I
    :catch_61
    move-exception v4

    .line 862
    :cond_62
    return-object v2

    .line 847
    .restart local v1       #next:C
    .restart local v3       #which:I
    :cond_63
    array-length v4, p1

    if-lt v3, v4, :cond_93

    .line 848
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 852
    :cond_93
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 853
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_9f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_9f} :catch_61

    move-result v4

    add-int/2addr v0, v4

    .line 854
    goto/16 :goto_18

    .line 857
    .end local v1           #next:C
    .end local v3           #which:I
    :cond_a3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .registers 14
    .parameter "cs"
    .parameter "off"
    .parameter "reqModes"

    .prologue
    const/16 v10, 0x27

    const/16 v9, 0x22

    const/16 v8, 0x2e

    const/4 v7, 0x1

    .line 1589
    if-gez p1, :cond_b

    .line 1590
    const/4 v5, 0x0

    .line 1674
    :goto_a
    return v5

    .line 1595
    :cond_b
    const/4 v4, 0x0

    .line 1597
    .local v4, mode:I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_12

    .line 1598
    or-int/lit16 v4, v4, 0x1000

    .line 1600
    :cond_12
    and-int/lit16 v5, p2, 0x6000

    if-nez v5, :cond_18

    move v5, v4

    .line 1601
    goto :goto_a

    .line 1606
    :cond_18
    move v1, p1

    .local v1, i:I
    :goto_19
    if-lez v1, :cond_2d

    .line 1607
    sub-int v5, v1, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1609
    .local v0, c:C
    if-eq v0, v9, :cond_41

    if-eq v0, v10, :cond_41

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_41

    .line 1617
    .end local v0           #c:C
    :cond_2d
    move v2, v1

    .line 1618
    .local v2, j:I
    :goto_2e
    if-lez v2, :cond_44

    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_3e

    const/16 v5, 0x9

    if-ne v0, v5, :cond_44

    .line 1619
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .line 1606
    .end local v2           #j:I
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 1621
    .end local v0           #c:C
    .restart local v2       #j:I
    :cond_44
    if-eqz v2, :cond_50

    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_53

    .line 1622
    :cond_50
    or-int/lit16 v5, v4, 0x2000

    goto :goto_a

    .line 1627
    :cond_53
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_5d

    .line 1628
    if-eq v1, v2, :cond_5b

    or-int/lit16 v4, v4, 0x2000

    :cond_5b
    move v5, v4

    .line 1629
    goto :goto_a

    .line 1634
    :cond_5d
    if-ne v1, v2, :cond_63

    move v5, v4

    .line 1635
    goto :goto_a

    .line 1640
    .restart local v0       #c:C
    :cond_61
    add-int/lit8 v2, v2, -0x1

    .end local v0           #c:C
    :cond_63
    if-lez v2, :cond_77

    .line 1641
    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1643
    .restart local v0       #c:C
    if-eq v0, v9, :cond_61

    if-eq v0, v10, :cond_61

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_61

    .line 1649
    .end local v0           #c:C
    :cond_77
    if-lez v2, :cond_a6

    .line 1650
    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1652
    .restart local v0       #c:C
    if-eq v0, v8, :cond_89

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_89

    const/16 v5, 0x21

    if-ne v0, v5, :cond_a6

    .line 1656
    :cond_89
    if-ne v0, v8, :cond_9f

    .line 1657
    const/4 v5, 0x2

    sub-int v3, v2, v5

    .local v3, k:I
    :goto_8e
    if-ltz v3, :cond_9f

    .line 1658
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1660
    if-ne v0, v8, :cond_99

    move v5, v4

    .line 1661
    goto/16 :goto_a

    .line 1664
    :cond_99
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 1670
    .end local v3           #k:I
    :cond_9f
    or-int/lit16 v5, v4, 0x4000

    goto/16 :goto_a

    .line 1657
    .restart local v3       #k:I
    :cond_a3
    add-int/lit8 v3, v3, -0x1

    goto :goto_8e

    .end local v0           #c:C
    .end local v3           #k:I
    :cond_a6
    move v5, v4

    .line 1674
    goto/16 :goto_a
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .registers 9
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, c:Ljava/lang/Class;
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_e

    .line 63
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 74
    :goto_d
    return-void

    .line 64
    .restart local p0
    :cond_e
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_18

    .line 65
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_d

    .line 66
    .restart local p0
    :cond_18
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_22

    .line 67
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_d

    .line 68
    .restart local p0
    :cond_22
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_2c

    .line 69
    check-cast p0, Landroid/text/GetChars;

    .end local p0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_d

    .line 71
    .restart local p0
    :cond_2c
    move v2, p1

    .local v2, i:I
    move v1, p4

    .end local p4
    .local v1, destoff:I
    :goto_2e
    if-ge v2, p2, :cond_3c

    .line 72
    add-int/lit8 p4, v1, 0x1

    .end local v1           #destoff:I
    .restart local p4
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 71
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4
    .restart local v1       #destoff:I
    goto :goto_2e

    :cond_3c
    move p4, v1

    .end local v1           #destoff:I
    .restart local p4
    goto :goto_d
.end method

.method public static getIsSpannedText()Z
    .registers 1

    .prologue
    .line 497
    sget-boolean v0, Landroid/text/TextUtils;->isSpannedText:Z

    return v0
.end method

.method public static getIsStaticText()Z
    .registers 1

    .prologue
    .line 487
    sget-boolean v0, Landroid/text/TextUtils;->isStaticText:Z

    return v0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .registers 12
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 901
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 903
    .local v5, len:I
    if-ne p1, v5, :cond_8

    move v8, v5

    .line 934
    :goto_7
    return v8

    .line 905
    :cond_8
    const/4 v8, 0x1

    sub-int v8, v5, v8

    if-ne p1, v8, :cond_f

    move v8, v5

    .line 906
    goto :goto_7

    .line 908
    :cond_f
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 910
    .local v1, c:C
    const v8, 0xd800

    if-lt v1, v8, :cond_62

    const v8, 0xdbff

    if-gt v1, v8, :cond_62

    .line 911
    add-int/lit8 v8, p1, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 913
    .local v2, c1:C
    const v8, 0xdc00

    if-lt v2, v8, :cond_5f

    const v8, 0xdfff

    if-gt v2, v8, :cond_5f

    .line 914
    add-int/lit8 p1, p1, 0x2

    .line 921
    .end local v2           #c1:C
    :goto_2f
    instance-of v8, p0, Landroid/text/Spanned;

    if-eqz v8, :cond_65

    .line 922
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ReplacementSpan;

    .line 925
    .local v6, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_40
    array-length v8, v6

    if-ge v4, v8, :cond_65

    .line 926
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v6, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 927
    .local v7, start:I
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v6, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 929
    .local v3, end:I
    if-ge v7, p1, :cond_5c

    if-le v3, p1, :cond_5c

    .line 930
    move p1, v3

    .line 925
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 916
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v6           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v7           #start:I
    .restart local v2       #c1:C
    :cond_5f
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    .line 918
    .end local v2           #c1:C
    :cond_62
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    :cond_65
    move v8, p1

    .line 934
    goto :goto_7
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .registers 11
    .parameter "text"
    .parameter "offset"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 866
    if-nez p1, :cond_5

    .line 897
    :cond_4
    :goto_4
    return v7

    .line 868
    :cond_5
    if-eq p1, v8, :cond_4

    .line 871
    sub-int v7, p1, v8

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 873
    .local v1, c:C
    const v7, 0xdc00

    if-lt v1, v7, :cond_5d

    const v7, 0xdfff

    if-gt v1, v7, :cond_5d

    .line 874
    const/4 v7, 0x2

    sub-int v7, p1, v7

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 876
    .local v2, c1:C
    const v7, 0xd800

    if-lt v2, v7, :cond_5a

    const v7, 0xdbff

    if-gt v2, v7, :cond_5a

    .line 877
    add-int/lit8 p1, p1, -0x2

    .line 884
    .end local v2           #c1:C
    :goto_2a
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_60

    .line 885
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 888
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3b
    array-length v7, v5

    if-ge v4, v7, :cond_60

    .line 889
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    aget-object v8, v5, v4

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 890
    .local v6, start:I
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    aget-object v8, v5, v4

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 892
    .local v3, end:I
    if-ge v6, p1, :cond_57

    if-le v3, p1, :cond_57

    .line 893
    move p1, v6

    .line 888
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 879
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    .restart local v2       #c1:C
    :cond_5a
    add-int/lit8 p1, p1, -0x1

    goto :goto_2a

    .line 881
    .end local v2           #c1:C
    :cond_5d
    add-int/lit8 p1, p1, -0x1

    goto :goto_2a

    :cond_60
    move v7, p1

    .line 897
    goto :goto_4
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 504
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "s"

    .prologue
    const/16 v4, 0x20

    .line 440
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 442
    .local v1, len:I
    const/4 v2, 0x0

    .line 443
    .local v2, start:I
    :goto_7
    if-ge v2, v1, :cond_12

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_12

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 447
    :cond_12
    move v0, v1

    .line 448
    .local v0, end:I
    :goto_13
    if-le v0, v2, :cond_21

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_21

    .line 449
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 452
    :cond_21
    sub-int v3, v0, v2

    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 1406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1408
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 1409
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1410
    .local v0, c:C
    sparse-switch v0, :sswitch_data_3c

    .line 1427
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1408
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1412
    :sswitch_19
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1415
    :sswitch_1f
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1418
    :sswitch_25
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1421
    :sswitch_2b
    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1424
    :sswitch_31
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1430
    .end local v0           #c:C
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1410
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_31
        0x26 -> :sswitch_25
        0x27 -> :sswitch_2b
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .registers 3
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .parameter "s"
    .parameter "ch"
    .parameter "start"

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, c:Ljava/lang/Class;
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 84
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 86
    :goto_e
    return v1

    .restart local p0
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .registers 12
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, -0x1

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, c:Ljava/lang/Class;
    instance-of v6, p0, Landroid/text/GetChars;

    if-nez v6, :cond_15

    const-class v6, Ljava/lang/StringBuffer;

    if-eq v1, v6, :cond_15

    const-class v6, Ljava/lang/StringBuilder;

    if-eq v1, v6, :cond_15

    const-class v6, Ljava/lang/String;

    if-ne v1, v6, :cond_41

    .line 94
    :cond_15
    const/16 v0, 0x1f4

    .line 95
    .local v0, INDEX_INCREMENT:I
    const/16 v6, 0x1f4

    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 97
    .local v5, temp:[C
    :goto_1d
    if-ge p2, p3, :cond_3c

    .line 98
    add-int/lit16 v4, p2, 0x1f4

    .line 99
    .local v4, segend:I
    if-le v4, p3, :cond_24

    .line 100
    move v4, p3

    .line 102
    :cond_24
    const/4 v6, 0x0

    invoke-static {p0, p2, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 104
    sub-int v2, v4, p2

    .line 105
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2b
    if-ge v3, v2, :cond_3a

    .line 106
    aget-char v6, v5, v3

    if-ne v6, p1, :cond_37

    .line 107
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 108
    add-int v6, v3, p2

    .line 123
    .end local v0           #INDEX_INCREMENT:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    .end local v5           #temp:[C
    :goto_36
    return v6

    .line 105
    .restart local v0       #INDEX_INCREMENT:I
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #segend:I
    .restart local v5       #temp:[C
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 112
    :cond_3a
    move p2, v4

    .line 113
    goto :goto_1d

    .line 115
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    :cond_3c
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move v6, v7

    .line 116
    goto :goto_36

    .line 119
    .end local v0           #INDEX_INCREMENT:I
    .end local v5           #temp:[C
    :cond_41
    move v3, p2

    .restart local v3       #i:I
    :goto_42
    if-ge v3, p3, :cond_4f

    .line 120
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4c

    move v6, v3

    .line 121
    goto :goto_36

    .line 119
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_4f
    move v6, v7

    .line 123
    goto :goto_36
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4
    .parameter "s"
    .parameter "needle"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter "s"
    .parameter "needle"
    .parameter "start"

    .prologue
    .line 189
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .registers 9
    .parameter "s"
    .parameter "needle"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 194
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 195
    .local v1, nlen:I
    if-nez v1, :cond_a

    move v2, p2

    .line 216
    :goto_9
    return v2

    .line 198
    :cond_a
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 201
    .local v0, c:C
    :goto_e
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 202
    sub-int v2, p3, v1

    if-le p2, v2, :cond_18

    move v2, v3

    .line 216
    goto :goto_9

    .line 206
    :cond_18
    if-gez p2, :cond_1c

    move v2, v3

    .line 207
    goto :goto_9

    .line 210
    :cond_1c
    invoke-static {p0, p2, p1, v4, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, p2

    .line 211
    goto :goto_9

    .line 214
    :cond_24
    add-int/lit8 p2, p2, 0x1

    goto :goto_e
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 1516
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1517
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1518
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1519
    const/4 v2, 0x0

    .line 1522
    :goto_12
    return v2

    .line 1517
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1522
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "str"

    .prologue
    .line 428
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 429
    :cond_8
    const/4 v0, 0x1

    .line 431
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isGraphic(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 1502
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1503
    .local v0, gc:I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_20

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x13

    if-eq v0, v1, :cond_20

    if-eqz v0, :cond_20

    const/16 v1, 0xd

    if-eq v0, v1, :cond_20

    const/16 v1, 0xe

    if-eq v0, v1, :cond_20

    const/16 v1, 0xc

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "str"

    .prologue
    .line 1482
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1483
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_2e

    .line 1484
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1485
    .local v0, gc:I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x13

    if-eq v0, v3, :cond_2b

    if-eqz v0, :cond_2b

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2b

    .line 1492
    const/4 v3, 0x1

    .line 1495
    .end local v0           #gc:I
    :goto_2a
    return v3

    .line 1483
    .restart local v0       #gc:I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1495
    .end local v0           #gc:I
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public static isPrintableAscii(C)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 1529
    const/16 v0, 0x20

    .line 1530
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 1531
    .local v1, asciiLast:I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_c

    const/16 v2, 0x7e

    if-le p0, v2, :cond_14

    :cond_c
    const/16 v2, 0xd

    if-eq p0, v2, :cond_14

    const/16 v2, 0xa

    if-ne p0, v2, :cond_16

    :cond_14
    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 1538
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1539
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1540
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1541
    const/4 v2, 0x0

    .line 1544
    :goto_12
    return v2

    .line 1539
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1544
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 7
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 289
    .local v0, firstTime:Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 290
    .local v3, token:Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 291
    const/4 v0, 0x0

    .line 295
    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 293
    :cond_1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 297
    .end local v3           #token:Ljava/lang/Object;
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 270
    .local v1, firstTime:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_1a

    aget-object v5, v0, v2

    .line 271
    .local v5, token:Ljava/lang/Object;
    if-eqz v1, :cond_16

    .line 272
    const/4 v1, 0x0

    .line 276
    :goto_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 274
    :cond_16
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 278
    .end local v5           #token:Ljava/lang/Object;
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .registers 4
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 127
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .parameter "s"
    .parameter "ch"
    .parameter "last"

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 133
    .local v0, c:Ljava/lang/Class;
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 134
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 136
    :goto_e
    return v1

    .restart local p0
    :cond_f
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .registers 15
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "last"

    .prologue
    const/16 v10, 0x1f4

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 141
    if-gez p3, :cond_8

    move v7, v8

    .line 181
    :goto_7
    return v7

    .line 143
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt p3, v7, :cond_14

    .line 144
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int p3, v7, v9

    .line 146
    :cond_14
    add-int/lit8 v3, p3, 0x1

    .line 148
    .local v3, end:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 150
    .local v1, c:Ljava/lang/Class;
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_2a

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_2a

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_2a

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_55

    .line 152
    :cond_2a
    const/16 v0, 0x1f4

    .line 153
    .local v0, INDEX_INCREMENT:I
    invoke-static {v10}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 155
    .local v6, temp:[C
    :goto_30
    if-ge p2, v3, :cond_50

    .line 156
    sub-int v5, v3, v10

    .line 157
    .local v5, segstart:I
    if-ge v5, p2, :cond_37

    .line 158
    move v5, p2

    .line 160
    :cond_37
    const/4 v7, 0x0

    invoke-static {p0, v5, v3, v6, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 162
    sub-int v2, v3, v5

    .line 163
    .local v2, count:I
    sub-int v4, v2, v9

    .local v4, i:I
    :goto_3f
    if-ltz v4, :cond_4e

    .line 164
    aget-char v7, v6, v4

    if-ne v7, p1, :cond_4b

    .line 165
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 166
    add-int v7, v4, v5

    goto :goto_7

    .line 163
    :cond_4b
    add-int/lit8 v4, v4, -0x1

    goto :goto_3f

    .line 170
    :cond_4e
    move v3, v5

    .line 171
    goto :goto_30

    .line 173
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #segstart:I
    :cond_50
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    move v7, v8

    .line 174
    goto :goto_7

    .line 177
    .end local v0           #INDEX_INCREMENT:I
    .end local v6           #temp:[C
    :cond_55
    sub-int v4, v3, v9

    .restart local v4       #i:I
    :goto_57
    if-lt v4, p2, :cond_64

    .line 178
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, p1, :cond_61

    move v7, v4

    .line 179
    goto :goto_7

    .line 177
    :cond_61
    add-int/lit8 v4, v4, -0x1

    goto :goto_57

    :cond_64
    move v7, v8

    .line 181
    goto :goto_7
.end method

.method static obtain(I)[C
    .registers 4
    .parameter "len"

    .prologue
    .line 1380
    sget-object v1, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1381
    :try_start_3
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1382
    .local v0, buf:[C
    const/4 v2, 0x0

    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 1383
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 1385
    if-eqz v0, :cond_e

    array-length v1, v0

    if-ge v1, p0, :cond_14

    .line 1386
    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v1

    new-array v0, v1, [C

    .line 1388
    :cond_14
    return-object v0

    .line 1383
    .end local v0           #buf:[C
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 6
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 938
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 939
    return-void
.end method

.method static recycle([C)V
    .registers 3
    .parameter "temp"

    .prologue
    .line 1392
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    .line 1398
    :goto_5
    return-void

    .line 1395
    :cond_6
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1396
    :try_start_9
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1397
    monitor-exit v0

    goto :goto_5

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 10
    .parameter "one"
    .parameter "toffset"
    .parameter "two"
    .parameter "ooffset"
    .parameter "len"

    .prologue
    .line 222
    mul-int/lit8 v3, p4, 0x2

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 224
    .local v2, temp:[C
    add-int v3, p1, p4

    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v2, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 225
    add-int v3, p3, p4

    invoke-static {p2, p3, v3, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 227
    const/4 v1, 0x1

    .line 228
    .local v1, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, p4, :cond_1e

    .line 229
    aget-char v3, v2, v0

    add-int v4, v0, p4

    aget-char v4, v2, v4

    if-eq v3, v4, :cond_22

    .line 230
    const/4 v1, 0x0

    .line 235
    :cond_1e
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 236
    return v1

    .line 228
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .parameter "template"
    .parameter "sources"
    .parameter "destinations"

    .prologue
    .line 781
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 783
    .local v3, tb:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v5, p1

    if-ge v1, v5, :cond_22

    .line 784
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 786
    .local v4, where:I
    if-ltz v4, :cond_1f

    .line 787
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 783
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 791
    .end local v4           #where:I
    :cond_22
    const/4 v1, 0x0

    :goto_23
    array-length v5, p1

    if-ge v1, v5, :cond_3c

    .line 792
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 793
    .local v2, start:I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 795
    .local v0, end:I
    if-ltz v2, :cond_39

    .line 796
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 791
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 800
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_3c
    return-object v3
.end method

.method public static setIsSpannedText(Z)V
    .registers 1
    .parameter "value"

    .prologue
    .line 492
    sput-boolean p0, Landroid/text/TextUtils;->isSpannedText:Z

    .line 493
    return-void
.end method

.method public static setIsStaticText(Z)V
    .registers 1
    .parameter "value"

    .prologue
    .line 482
    sput-boolean p0, Landroid/text/TextUtils;->isStaticText:Z

    .line 483
    return-void
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "text"
    .parameter "expression"

    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 312
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 314
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .registers 3
    .parameter "text"
    .parameter "pattern"

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 329
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 331
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "source"

    .prologue
    .line 412
    if-nez p0, :cond_4

    .line 413
    const/4 v0, 0x0

    .line 419
    :goto_3
    return-object v0

    .line 414
    :cond_4
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_a

    move-object v0, p0

    .line 415
    goto :goto_3

    .line 416
    :cond_a
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_14

    .line 417
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 419
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 7
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 247
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 248
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 259
    :goto_b
    return-object v2

    .line 249
    .restart local p0
    :cond_c
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    .line 250
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 251
    .restart local p0
    :cond_17
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_22

    .line 252
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 254
    .restart local p0
    :cond_22
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 255
    .local v1, temp:[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 256
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 257
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    move-object v2, v0

    .line 259
    goto :goto_b
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .registers 13
    .parameter "cs"
    .parameter "p"
    .parameter "parcelableFlags"

    .prologue
    const/4 v9, 0x0

    .line 598
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_4b

    .line 599
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v6, v0

    .line 603
    .local v6, sp:Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v6, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 610
    .local v3, os:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    array-length v7, v3

    if-ge v1, v7, :cond_47

    .line 611
    aget-object v2, v3, v1

    .line 612
    .local v2, o:Ljava/lang/Object;
    aget-object v4, v3, v1

    .line 614
    .local v4, prop:Ljava/lang/Object;
    instance-of v7, v4, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_2f

    .line 615
    check-cast v4, Landroid/text/style/CharacterStyle;

    .end local v4           #prop:Ljava/lang/Object;
    invoke-virtual {v4}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v4

    .line 618
    :cond_2f
    instance-of v7, v4, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_44

    .line 619
    move-object v0, v4

    check-cast v0, Landroid/text/ParcelableSpan;

    move-object v5, v0

    .line 620
    .local v5, ps:Landroid/text/ParcelableSpan;
    invoke-interface {v5}, Landroid/text/ParcelableSpan;->getSpanTypeId()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    invoke-interface {v5, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 622
    invoke-static {p1, v6, v2}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    .line 610
    .end local v5           #ps:Landroid/text/ParcelableSpan;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 626
    .end local v2           #o:Ljava/lang/Object;
    :cond_47
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    .end local v1           #i:I
    .end local v3           #os:[Ljava/lang/Object;
    .end local v6           #sp:Landroid/text/Spanned;
    :goto_4a
    return-void

    .line 628
    :cond_4b
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    if-eqz p0, :cond_59

    .line 630
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4a

    .line 632
    :cond_59
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .registers 4
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 638
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    return-void
.end method
