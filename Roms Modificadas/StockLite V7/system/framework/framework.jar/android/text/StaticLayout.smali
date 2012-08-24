.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_MASK:I = -0x40000000

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final FIRST_CJK:C = '\u2e80'

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field static mRTLText:Z


# instance fields
.field private mBottomPadding:I

.field private mChdirs:[B

.field private mChs:[C

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mTopPadding:I

.field private mWidths:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1408
    const/4 v0, 0x0

    sput-boolean v0, Landroid/text/StaticLayout;->mRTLText:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 57
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 29
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 67
    if-nez p10, :cond_a3

    move-object/from16 v3, p1

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1406
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 82
    if-eqz p10, :cond_c0

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Layout$Ellipsizer;

    .line 85
    .local v16, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 86
    move/from16 v0, p11

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 87
    move-object/from16 v0, p10

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 88
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 90
    const/4 v2, 0x5

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 96
    .end local v16           #e:Landroid/text/Layout$Ellipsizer;
    :goto_43
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [I

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 97
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [Landroid/text/Layout$Directions;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 100
    if-eqz p10, :cond_ce

    const/4 v2, 0x1

    move v13, v2

    :goto_6b
    move/from16 v0, p11

    int-to-float v0, v0

    move v14, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p9

    move-object/from16 v15, p10

    invoke-virtual/range {v2 .. v15}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 104
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 105
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 106
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 107
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 108
    return-void

    .line 67
    :cond_a3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v2, v0

    if-eqz v2, :cond_b5

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_4

    :cond_b5
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_4

    .line 92
    :cond_c0
    const/4 v2, 0x3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 93
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto/16 :goto_43

    .line 100
    :cond_ce
    const/4 v2, 0x0

    move v13, v2

    goto :goto_6b
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 48
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 50
    return-void
.end method

.method constructor <init>(Z)V
    .registers 9
    .parameter "ellipsize"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 111
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1406
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 113
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 114
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 115
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 117
    return-void
.end method

.method static bidi(I[C[BIZ)I
    .registers 10
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "hasInfo"

    .prologue
    .line 644
    invoke-static {p1, p2, p3}, Landroid/text/AndroidCharacter;->getDirectionalities([C[BI)V

    .line 667
    const/4 p4, 0x1

    if-eq p0, p4, :cond_9

    .end local p4
    const/4 p4, -0x1

    if-ne p0, p4, :cond_1c

    .line 689
    :cond_9
    :goto_9
    const/4 p4, 0x1

    if-ne p0, p4, :cond_34

    const/4 p4, 0x0

    .line 704
    .local p4, SOR:B
    :goto_d
    const/4 v0, 0x0

    .local v0, j:I
    :goto_e
    if-ge v0, p3, :cond_3e

    .line 705
    aget-byte v1, p2, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_19

    .line 706
    if-nez v0, :cond_36

    .line 707
    aput-byte p4, p2, v0

    .line 704
    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 674
    .end local v0           #j:I
    .end local p4           #SOR:B
    :cond_1c
    if-ltz p0, :cond_29

    const/4 p0, 0x1

    .line 675
    :goto_1f
    const/4 p4, 0x0

    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .restart local v0       #j:I
    :goto_21
    if-ge v0, p3, :cond_9

    .line 676
    aget-byte p4, p2, v0

    .line 678
    .local p4, d:I
    if-nez p4, :cond_2b

    .line 679
    const/4 p0, 0x1

    .line 680
    goto :goto_9

    .line 674
    .end local v0           #j:I
    .end local p4           #d:I
    :cond_29
    const/4 p0, -0x1

    goto :goto_1f

    .line 682
    .restart local v0       #j:I
    .restart local p4       #d:I
    :cond_2b
    const/4 v1, 0x1

    if-ne p4, v1, :cond_30

    .line 683
    const/4 p0, -0x1

    .line 684
    goto :goto_9

    .line 675
    :cond_30
    add-int/lit8 p4, v0, 0x1

    .end local v0           #j:I
    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .restart local v0       #j:I
    goto :goto_21

    .line 689
    .end local v0           #j:I
    :cond_34
    const/4 p4, 0x1

    goto :goto_d

    .line 709
    .restart local v0       #j:I
    .local p4, SOR:B
    :cond_36
    const/4 v1, 0x1

    sub-int v1, v0, v1

    aget-byte v1, p2, v1

    aput-byte v1, p2, v0

    goto :goto_19

    .line 716
    :cond_3e
    move v0, p4

    .line 717
    .local v0, cur:B
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_41
    if-ge v2, p3, :cond_5c

    .line 718
    aget-byte v1, p2, v2

    .line 720
    .local v1, d:B
    if-eqz v1, :cond_4d

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4d

    const/4 v3, 0x2

    if-ne v1, v3, :cond_52

    .line 723
    :cond_4d
    move v0, v1

    .line 717
    .end local v1           #d:B
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_41

    .line 724
    .local v1, d:B
    :cond_52
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4e

    .line 731
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    .line 733
    .end local v1           #d:B
    const/4 v1, 0x6

    aput-byte v1, p2, v2

    goto :goto_4e

    .line 741
    :cond_5c
    const/4 v0, 0x0

    .end local v2           #j:I
    .local v0, j:I
    :goto_5d
    if-ge v0, p3, :cond_6a

    .line 742
    aget-byte v1, p2, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_67

    .line 743
    const/4 v1, 0x1

    aput-byte v1, p2, v0

    .line 741
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 749
    :cond_6a
    const/4 v0, 0x1

    move v1, v0

    .end local v0           #j:I
    .local v1, j:I
    :goto_6c
    const/4 v0, 0x1

    sub-int v0, p3, v0

    if-ge v1, v0, :cond_a2

    .line 750
    aget-byte v0, p2, v1

    .line 751
    .local v0, d:B
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget-byte v3, p2, v2

    .line 752
    .local v3, prev:B
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p2, v2

    .line 754
    .local v2, next:B
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8c

    .line 755
    const/4 v0, 0x3

    if-ne v3, v0, :cond_88

    .end local v0           #d:B
    const/4 v0, 0x3

    if-ne v2, v0, :cond_88

    .line 757
    const/4 v0, 0x3

    aput-byte v0, p2, v1

    .line 749
    :cond_88
    :goto_88
    add-int/lit8 v0, v1, 0x1

    .end local v1           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    goto :goto_6c

    .line 758
    .local v0, d:B
    :cond_8c
    const/4 v4, 0x7

    if-ne v0, v4, :cond_88

    .line 759
    const/4 v0, 0x3

    if-ne v3, v0, :cond_98

    .end local v0           #d:B
    const/4 v0, 0x3

    if-ne v2, v0, :cond_98

    .line 761
    const/4 v0, 0x3

    aput-byte v0, p2, v1

    .line 762
    :cond_98
    const/4 v0, 0x6

    if-ne v3, v0, :cond_88

    const/4 v0, 0x6

    if-ne v2, v0, :cond_88

    .line 764
    const/4 v0, 0x6

    aput-byte v0, p2, v1

    goto :goto_88

    .line 771
    .end local v2           #next:B
    .end local v3           #prev:B
    :cond_a2
    const/4 v0, 0x0

    .line 772
    .local v0, adjacent:Z
    const/4 v1, 0x0

    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_a5
    if-ge v2, p3, :cond_bc

    .line 773
    aget-byte v1, p2, v2

    .line 775
    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_b1

    .line 776
    const/4 v0, 0x1

    .line 772
    .end local v1           #d:B
    :goto_ad
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_a5

    .line 777
    .local v1, d:B
    :cond_b1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_ba

    if-eqz v0, :cond_ba

    .line 778
    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_ad

    .line 780
    :cond_ba
    const/4 v0, 0x0

    goto :goto_ad

    .line 787
    .end local v1           #d:B
    :cond_bc
    const/4 v0, 0x0

    .line 788
    const/4 v1, 0x1

    sub-int v1, p3, v1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_c1
    if-ltz v2, :cond_ef

    .line 789
    aget-byte v1, p2, v2

    .line 791
    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_cd

    .line 792
    const/4 v0, 0x1

    .line 788
    .end local v1           #d:B
    :cond_c9
    :goto_c9
    add-int/lit8 v1, v2, -0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_c1

    .line 793
    .local v1, d:B
    :cond_cd
    const/4 v3, 0x5

    if-ne v1, v3, :cond_db

    .line 794
    if-eqz v0, :cond_d6

    .line 795
    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_c9

    .line 797
    :cond_d6
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_c9

    .line 800
    :cond_db
    const/4 v0, 0x0

    .line 802
    const/4 v3, 0x4

    if-eq v1, v3, :cond_ea

    const/4 v3, 0x7

    if-eq v1, v3, :cond_ea

    const/16 v3, 0xa

    if-eq v1, v3, :cond_ea

    const/16 v3, 0xb

    if-ne v1, v3, :cond_c9

    .line 806
    :cond_ea
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_c9

    .line 813
    .end local v1           #d:B
    :cond_ef
    move v0, p4

    .line 814
    .local v0, cur:B
    const/4 v1, 0x0

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_f2
    if-ge v2, p3, :cond_107

    .line 815
    aget-byte v1, p2, v2

    .line 817
    .local v1, d:B
    if-eq v1, p4, :cond_fd

    if-eqz v1, :cond_fd

    const/4 v3, 0x1

    if-ne v1, v3, :cond_fe

    .line 820
    :cond_fd
    move v0, v1

    .line 822
    :cond_fe
    const/4 v3, 0x3

    if-ne v1, v3, :cond_103

    .line 823
    aput-byte v0, p2, v2

    .line 814
    :cond_103
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_f2

    .line 829
    :cond_107
    move v0, p4

    .line 830
    const/4 v1, 0x0

    .end local v2           #j:I
    .restart local v1       #j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_10a
    if-ge v2, p3, :cond_14a

    .line 831
    aget-byte v1, p2, v2

    .line 833
    .local v1, d:B
    if-eqz v1, :cond_113

    const/4 v3, 0x1

    if-ne v1, v3, :cond_119

    .line 835
    :cond_113
    move v0, v1

    move v1, v2

    .line 830
    .end local v2           #j:I
    .local v1, j:I
    :goto_115
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_10a

    .line 836
    .local v1, d:B
    :cond_119
    const/4 v3, 0x3

    if-eq v1, v3, :cond_11f

    const/4 v3, 0x6

    if-ne v1, v3, :cond_122

    .line 838
    :cond_11f
    const/4 v0, 0x1

    move v1, v2

    .end local v2           #j:I
    .local v1, j:I
    goto :goto_115

    .line 840
    .local v1, d:B
    .restart local v2       #j:I
    :cond_122
    move v1, p4

    .line 843
    .local v1, dd:B
    add-int/lit8 v3, v2, 0x1

    .local v3, k:I
    :goto_125
    if-ge v3, p3, :cond_12e

    .line 844
    aget-byte v1, p2, v3

    .line 846
    if-eqz v1, :cond_12e

    const/4 v4, 0x1

    if-ne v1, v4, :cond_138

    .line 877
    :cond_12e
    :goto_12e
    move v2, v2

    .local v2, y:I
    :goto_12f
    if-ge v2, v3, :cond_146

    .line 878
    if-ne v1, v0, :cond_143

    .line 879
    aput-byte v0, p2, v2

    .line 877
    :goto_135
    add-int/lit8 v2, v2, 0x1

    goto :goto_12f

    .line 850
    .local v2, j:I
    :cond_138
    const/4 v4, 0x3

    if-eq v1, v4, :cond_13e

    const/4 v4, 0x6

    if-ne v1, v4, :cond_140

    .line 852
    :cond_13e
    const/4 v1, 0x1

    .line 853
    goto :goto_12e

    .line 843
    :cond_140
    add-int/lit8 v3, v3, 0x1

    goto :goto_125

    .line 881
    .local v2, y:I
    :cond_143
    aput-byte p4, p2, v2

    goto :goto_135

    .line 885
    :cond_146
    const/4 v1, 0x1

    sub-int v1, v3, v1

    .local v1, j:I
    goto :goto_115

    .line 895
    .end local v1           #j:I
    .end local v3           #k:I
    .local v2, j:I
    :cond_14a
    const/4 v0, 0x0

    .end local v2           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    :goto_14c
    if-ge v1, p3, :cond_164

    .line 896
    aget-char v0, p1, v1

    .line 898
    .local v0, c:C
    const/16 v2, 0x9

    if-eq v0, v2, :cond_15e

    const v2, 0xd800

    if-lt v0, v2, :cond_160

    const v2, 0xdfff

    if-gt v0, v2, :cond_160

    .line 899
    :cond_15e
    aput-byte p4, p2, v1

    .line 895
    :cond_160
    add-int/lit8 v0, v1, 0x1

    .end local v1           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    goto :goto_14c

    .line 903
    :cond_164
    return p0
.end method

.method private calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V
    .registers 29
    .parameter "linestart"
    .parameter "lineend"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    .line 1214
    sub-int v8, p2, p1

    .line 1216
    .local v8, len:I
    cmpg-float v15, p9, p6

    if-gtz v15, :cond_2d

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 1290
    :goto_2c
    return-void

    .line 1223
    :cond_2d
    const-string/jumbo v15, "\u2026"

    move-object/from16 v0, p10

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1226
    .local v4, ellipsiswid:F
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_7d

    .line 1227
    const/4 v13, 0x0

    .line 1230
    .local v13, sum:F
    move v5, v8

    .local v5, i:I
    :goto_40
    if-ltz v5, :cond_54

    .line 1231
    const/4 v15, 0x1

    sub-int v15, v5, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1233
    .local v14, w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_79

    .line 1240
    .end local v14           #w:F
    :cond_54
    const/4 v3, 0x0

    .line 1241
    .local v3, ellipsisStart:I
    move v2, v5

    .line 1288
    .end local v5           #i:I
    .end local v13           #sum:F
    .local v2, ellipsisCount:I
    :goto_56
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    aput v3, v15, v16

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    aput v2, v15, v16

    goto :goto_2c

    .line 1237
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v5       #i:I
    .restart local v13       #sum:F
    .restart local v14       #w:F
    :cond_79
    add-float/2addr v13, v14

    .line 1230
    add-int/lit8 v5, v5, -0x1

    goto :goto_40

    .line 1242
    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_7d
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-eq v0, v1, :cond_8b

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_a6

    .line 1243
    :cond_8b
    const/4 v13, 0x0

    .line 1246
    .restart local v13       #sum:F
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_8d
    if-ge v5, v8, :cond_9e

    .line 1247
    add-int v15, v5, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1249
    .restart local v14       #w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_a2

    .line 1256
    .end local v14           #w:F
    :cond_9e
    move v3, v5

    .line 1257
    .restart local v3       #ellipsisStart:I
    sub-int v2, v8, v5

    .line 1258
    .restart local v2       #ellipsisCount:I
    goto :goto_56

    .line 1253
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v14       #w:F
    :cond_a2
    add-float/2addr v13, v14

    .line 1246
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    .line 1259
    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_a6
    const/4 v9, 0x0

    .local v9, lsum:F
    const/4 v12, 0x0

    .line 1260
    .local v12, rsum:F
    const/4 v7, 0x0

    .local v7, left:I
    move v11, v8

    .line 1262
    .local v11, right:I
    sub-float v15, p6, v4

    const/high16 v16, 0x4000

    div-float v10, v15, v16

    .line 1263
    .local v10, ravail:F
    move v11, v8

    :goto_b1
    if-ltz v11, :cond_c4

    .line 1264
    const/4 v15, 0x1

    sub-int v15, v11, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1266
    .restart local v14       #w:F
    add-float v15, v14, v12

    cmpl-float v15, v15, v10

    if-lez v15, :cond_de

    .line 1273
    .end local v14           #w:F
    :cond_c4
    sub-float v15, p6, v4

    sub-float v6, v15, v12

    .line 1274
    .local v6, lavail:F
    const/4 v7, 0x0

    :goto_c9
    if-ge v7, v11, :cond_d9

    .line 1275
    add-int v15, v7, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 1277
    .restart local v14       #w:F
    add-float v15, v14, v9

    cmpl-float v15, v15, v6

    if-lez v15, :cond_e2

    .line 1284
    .end local v14           #w:F
    :cond_d9
    move v3, v7

    .line 1285
    .restart local v3       #ellipsisStart:I
    sub-int v2, v11, v7

    .restart local v2       #ellipsisCount:I
    goto/16 :goto_56

    .line 1270
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .end local v6           #lavail:F
    .restart local v14       #w:F
    :cond_de
    add-float/2addr v12, v14

    .line 1263
    add-int/lit8 v11, v11, -0x1

    goto :goto_b1

    .line 1281
    .restart local v6       #lavail:F
    :cond_e2
    add-float/2addr v9, v14

    .line 1274
    add-int/lit8 v7, v7, 0x1

    goto :goto_c9
.end method

.method private static getFit(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIF)I
    .registers 16
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "wid"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1015
    add-int/lit8 v8, p4, 0x1

    .local v8, high:I
    sub-int v9, p3, v6

    .line 1017
    .local v9, low:I
    :goto_6
    sub-int v0, v8, v9

    if-le v0, v6, :cond_1f

    .line 1018
    add-int v0, v8, v9

    div-int/lit8 v4, v0, 0x2

    .local v4, guess:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v5

    .line 1020
    invoke-static/range {v0 .. v7}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    cmpl-float v0, v0, p5

    if-lez v0, :cond_1d

    .line 1022
    move v8, v4

    goto :goto_6

    .line 1024
    :cond_1d
    move v9, v4

    goto :goto_6

    .line 1027
    .end local v4           #guess:I
    :cond_1f
    if-ge v9, p3, :cond_23

    move v0, p3

    .line 1030
    :goto_22
    return v0

    :cond_23
    move v0, v9

    goto :goto_22
.end method

.method private static final isIdeographic(CZ)Z
    .registers 5
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 918
    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_c

    const/16 v0, 0x2fff

    if-gt p0, v0, :cond_c

    move v0, v1

    .line 995
    :goto_b
    return v0

    .line 921
    :cond_c
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_12

    move v0, v1

    .line 922
    goto :goto_b

    .line 924
    :cond_12
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_23

    const/16 v0, 0x309f

    if-gt p0, v0, :cond_23

    .line 925
    if-nez p1, :cond_1f

    .line 926
    sparse-switch p0, :sswitch_data_88

    :cond_1f
    move v0, v1

    .line 946
    goto :goto_b

    :sswitch_21
    move v0, v2

    .line 943
    goto :goto_b

    .line 948
    :cond_23
    const/16 v0, 0x30a0

    if-lt p0, v0, :cond_34

    const/16 v0, 0x30ff

    if-gt p0, v0, :cond_34

    .line 949
    if-nez p1, :cond_30

    .line 950
    sparse-switch p0, :sswitch_data_ca

    :cond_30
    move v0, v1

    .line 971
    goto :goto_b

    :sswitch_32
    move v0, v2

    .line 968
    goto :goto_b

    .line 973
    :cond_34
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_3e

    const/16 v0, 0x4db5

    if-gt p0, v0, :cond_3e

    move v0, v1

    .line 974
    goto :goto_b

    .line 976
    :cond_3e
    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_49

    const v0, 0x9fbb

    if-gt p0, v0, :cond_49

    move v0, v1

    .line 977
    goto :goto_b

    .line 979
    :cond_49
    const v0, 0xf900

    if-lt p0, v0, :cond_55

    const v0, 0xfad9

    if-gt p0, v0, :cond_55

    move v0, v1

    .line 980
    goto :goto_b

    .line 982
    :cond_55
    const v0, 0xa000

    if-lt p0, v0, :cond_61

    const v0, 0xa48f

    if-gt p0, v0, :cond_61

    move v0, v1

    .line 983
    goto :goto_b

    .line 985
    :cond_61
    const v0, 0xa490

    if-lt p0, v0, :cond_6d

    const v0, 0xa4cf

    if-gt p0, v0, :cond_6d

    move v0, v1

    .line 986
    goto :goto_b

    .line 988
    :cond_6d
    const v0, 0xfe62

    if-lt p0, v0, :cond_79

    const v0, 0xfe66

    if-gt p0, v0, :cond_79

    move v0, v1

    .line 989
    goto :goto_b

    .line 991
    :cond_79
    const v0, 0xff10

    if-lt p0, v0, :cond_85

    const v0, 0xff19

    if-gt p0, v0, :cond_85

    move v0, v1

    .line 992
    goto :goto_b

    :cond_85
    move v0, v2

    .line 995
    goto :goto_b

    .line 926
    nop

    :sswitch_data_88
    .sparse-switch
        0x3041 -> :sswitch_21
        0x3043 -> :sswitch_21
        0x3045 -> :sswitch_21
        0x3047 -> :sswitch_21
        0x3049 -> :sswitch_21
        0x3063 -> :sswitch_21
        0x3083 -> :sswitch_21
        0x3085 -> :sswitch_21
        0x3087 -> :sswitch_21
        0x308e -> :sswitch_21
        0x3095 -> :sswitch_21
        0x3096 -> :sswitch_21
        0x309b -> :sswitch_21
        0x309c -> :sswitch_21
        0x309d -> :sswitch_21
        0x309e -> :sswitch_21
    .end sparse-switch

    .line 950
    :sswitch_data_ca
    .sparse-switch
        0x30a0 -> :sswitch_32
        0x30a1 -> :sswitch_32
        0x30a3 -> :sswitch_32
        0x30a5 -> :sswitch_32
        0x30a7 -> :sswitch_32
        0x30a9 -> :sswitch_32
        0x30c3 -> :sswitch_32
        0x30e3 -> :sswitch_32
        0x30e5 -> :sswitch_32
        0x30e7 -> :sswitch_32
        0x30ee -> :sswitch_32
        0x30f5 -> :sswitch_32
        0x30f6 -> :sswitch_32
        0x30fb -> :sswitch_32
        0x30fc -> :sswitch_32
        0x30fd -> :sswitch_32
        0x30fe -> :sswitch_32
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I
    .registers 63
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseht"
    .parameter "choosehtv"
    .parameter "fm"
    .parameter "tab"
    .parameter "needMultiply"
    .parameter "pstart"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "last"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "ellipsize"
    .parameter "ellipsiswidth"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    .line 1044
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v13, v0

    .line 1045
    .local v13, j:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    mul-int v31, v13, v5

    .line 1046
    .local v31, off:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v32, v5, 0x1

    .line 1047
    .local v32, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v29, v0

    .line 1073
    .local v29, lines:[I
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-lt v0, v1, :cond_6a

    .line 1074
    add-int/lit8 v5, v32, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v30

    .line 1075
    .local v30, nlen:I
    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 1076
    .local v22, grow:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v29

    move v1, v5

    move-object/from16 v2, v22

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1077
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 1078
    move-object/from16 v29, v22

    .line 1080
    move/from16 v0, v30

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v23, v0

    .line 1081
    .local v23, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v8, v0

    array-length v8, v8

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v23

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1083
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1086
    .end local v22           #grow:[I
    .end local v23           #grow2:[Landroid/text/Layout$Directions;
    .end local v30           #nlen:I
    :cond_6a
    if-eqz p11, :cond_d7

    .line 1087
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1088
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1089
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1090
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1092
    const/16 v25, 0x0

    .local v25, i:I
    :goto_86
    move-object/from16 v0, p11

    array-length v0, v0

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_bf

    .line 1093
    aget-object v5, p11, v25

    instance-of v5, v5, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v5, :cond_ad

    .line 1094
    aget-object v5, p11, v25

    check-cast v5, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v9, p12, v25

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p29

    invoke-interface/range {v5 .. v12}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1092
    :goto_aa
    add-int/lit8 v25, v25, 0x1

    goto :goto_86

    .line 1098
    :cond_ad
    aget-object v5, p11, v25

    aget v9, p12, v25

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    invoke-interface/range {v5 .. v11}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_aa

    .line 1102
    :cond_bf
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 1103
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 1104
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 1105
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 1108
    .end local v25           #i:I
    :cond_d7
    if-nez v13, :cond_e6

    .line 1109
    if-eqz p22, :cond_e2

    .line 1110
    sub-int v5, p6, p4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1113
    :cond_e2
    if-eqz p21, :cond_e6

    .line 1114
    move/from16 p4, p6

    .line 1117
    :cond_e6
    if-eqz p20, :cond_f5

    .line 1118
    if-eqz p22, :cond_f1

    .line 1119
    sub-int v5, p7, p5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1122
    :cond_f1
    if-eqz p21, :cond_f5

    .line 1123
    move/from16 p5, p7

    .line 1129
    :cond_f5
    if-eqz p15, :cond_17e

    .line 1130
    sub-int v5, p5, p4

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float v6, p9, v6

    mul-float/2addr v5, v6

    add-float v5, v5, p10

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 1131
    .local v19, ex:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v19, v5

    if-ltz v5, :cond_171

    .line 1132
    const-wide/high16 v5, 0x3fe0

    add-double v5, v5, v19

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    .line 1140
    .end local v19           #ex:D
    .local v21, extra:I
    :goto_113
    add-int/lit8 v5, v31, 0x0

    aput p2, v29, v5

    .line 1141
    add-int/lit8 v5, v31, 0x1

    aput p8, v29, v5

    .line 1142
    add-int/lit8 v5, v31, 0x2

    add-int v6, p5, v21

    aput v6, v29, v5

    .line 1144
    sub-int v5, p5, p4

    add-int v5, v5, v21

    add-int p8, p8, v5

    .line 1145
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x0

    aput p3, v29, v5

    .line 1146
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x1

    aput p8, v29, v5

    .line 1148
    if-eqz p14, :cond_148

    .line 1149
    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    aput v6, v29, v5

    .line 1152
    :cond_148
    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    shl-int/lit8 v7, p18, 0x1e

    or-int/2addr v6, v7

    aput v6, v29, v5

    .line 1154
    const/16 v18, 0x0

    .line 1155
    .local v18, cur:I
    const/16 v16, 0x0

    .line 1157
    .local v16, count:I
    if-nez p19, :cond_181

    .line 1158
    move/from16 v26, p2

    .local v26, k:I
    :goto_159
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_181

    .line 1159
    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_16e

    .line 1160
    add-int/lit8 v16, v16, 0x1

    .line 1161
    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    .line 1158
    :cond_16e
    add-int/lit8 v26, v26, 0x1

    goto :goto_159

    .line 1134
    .end local v16           #count:I
    .end local v18           #cur:I
    .end local v21           #extra:I
    .end local v26           #k:I
    .restart local v19       #ex:D
    :cond_171
    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide v5, v0

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v5, v5

    move v0, v5

    neg-int v0, v0

    move/from16 v21, v0

    .restart local v21       #extra:I
    goto :goto_113

    .line 1137
    .end local v19           #ex:D
    .end local v21           #extra:I
    :cond_17e
    const/16 v21, 0x0

    .restart local v21       #extra:I
    goto :goto_113

    .line 1168
    .restart local v16       #count:I
    .restart local v18       #cur:I
    :cond_181
    if-nez v16, :cond_1bb

    .line 1169
    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1196
    .local v28, linedirs:Landroid/text/Layout$Directions;
    :goto_185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    aput-object v28, v5, v13

    .line 1199
    if-eqz p26, :cond_1ae

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p26

    move-object v1, v5

    if-ne v0, v1, :cond_197

    if-eqz v13, :cond_1ae

    :cond_197
    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p23

    move/from16 v9, p24

    move/from16 v10, p25

    move/from16 v11, p27

    move-object/from16 v12, p26

    move/from16 v14, p28

    move-object/from16 v15, p29

    .line 1200
    invoke-direct/range {v5 .. v15}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V

    .line 1206
    :cond_1ae
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 1207
    return p8

    .line 1171
    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    :cond_1bb
    add-int/lit8 v5, v16, 0x1

    move v0, v5

    new-array v0, v0, [S

    move-object/from16 v27, v0

    .line 1173
    .local v27, ld:[S
    const/16 v18, 0x0

    .line 1174
    const/16 v16, 0x0

    .line 1175
    move/from16 v24, p2

    .line 1177
    .local v24, here:I
    move/from16 v26, p2

    .restart local v26       #k:I
    move/from16 v17, v16

    .end local v16           #count:I
    .local v17, count:I
    :goto_1cc
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_1ed

    .line 1178
    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_20f

    .line 1181
    add-int/lit8 v16, v17, 0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    sub-int v5, v26, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    .line 1182
    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    .line 1183
    move/from16 v24, v26

    .line 1177
    :goto_1e8
    add-int/lit8 v26, v26, 0x1

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    goto :goto_1cc

    .line 1187
    :cond_1ed
    sub-int v5, p3, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    .line 1189
    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_202

    const/4 v5, 0x0

    aget-short v5, v27, v5

    if-nez v5, :cond_202

    .line 1190
    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .restart local v28       #linedirs:Landroid/text/Layout$Directions;
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto :goto_185

    .line 1192
    .end local v16           #count:I
    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    .restart local v17       #count:I
    :cond_202
    new-instance v28, Landroid/text/Layout$Directions;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    .restart local v28       #linedirs:Landroid/text/Layout$Directions;
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto/16 :goto_185

    .end local v16           #count:I
    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    .restart local v17       #count:I
    :cond_20f
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto :goto_1e8
.end method

.method public static setRTLText(Z)V
    .registers 1
    .parameter "isRTL"

    .prologue
    .line 125
    sput-boolean p0, Landroid/text/StaticLayout;->mRTLText:Z

    .line 126
    return-void
.end method


# virtual methods
.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V
    .registers 174
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "breakOnlyAtSpaces"
    .parameter "ellipsizedWidth"
    .parameter "where"

    .prologue
    .line 136
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 138
    const/16 v20, 0x0

    .line 139
    .local v20, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_13

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_d7

    :cond_13
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 141
    .local v27, needMultiply:Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    .line 142
    .local v11, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v24, 0x0

    .line 144
    .local v24, choosehtv:[I
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v139

    .line 145
    .local v139, end:I
    if-ltz v139, :cond_dc

    sub-int v5, v139, p2

    move/from16 v135, v5

    .line 146
    .local v135, bufsiz:I
    :goto_30
    const/16 v140, 0x1

    .line 148
    .local v140, first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object v5, v0

    if-nez v5, :cond_62

    .line 149
    add-int/lit8 v5, v135, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    new-array v5, v5, [B

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 150
    add-int/lit8 v5, v135, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    new-array v5, v5, [C

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 151
    add-int/lit8 v5, v135, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 154
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object/from16 v29, v0

    .line 155
    .local v29, chdirs:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChs:[C

    move-object/from16 v137, v0

    .line 156
    .local v137, chs:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWidths:[F

    move-object v10, v0

    .line 158
    .local v10, widths:[F
    const/16 v130, 0x0

    .line 159
    .local v130, alter:Landroid/text/AlteredCharSequence;
    const/4 v7, 0x0

    .line 161
    .local v7, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_82

    .line 162
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 164
    :cond_82
    const/16 v117, 0x1

    .line 166
    .local v117, DEFAULT_DIR:I
    move/from16 v28, p2

    .local v28, start:I
    :goto_86
    move/from16 v0, v28

    move/from16 v1, p3

    if-gt v0, v1, :cond_6ac

    .line 167
    if-eqz v140, :cond_e2

    .line 168
    const/16 v140, 0x0

    .line 172
    :goto_90
    if-gez v139, :cond_f0

    .line 173
    move/from16 v139, p3

    .line 177
    :goto_94
    const/16 v141, 0x1

    .line 178
    .local v141, firstWidthLineCount:I
    move/from16 v142, p5

    .line 179
    .local v142, firstwidth:I
    move/from16 v151, p5

    .line 181
    .local v151, restwidth:I
    const/16 v23, 0x0

    .line 183
    .local v23, chooseht:[Landroid/text/style/LineHeightSpan;
    if-eqz v7, :cond_14a

    .line 186
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v152

    check-cast v152, [Landroid/text/style/LeadingMarginSpan;

    .line 187
    .local v152, sp:[Landroid/text/style/LeadingMarginSpan;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_ad
    move-object/from16 v0, v152

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_f3

    .line 188
    aget-object v148, v152, v8

    .line 189
    .local v148, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v152, v8

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v142, v142, v5

    .line 190
    aget-object v5, v152, v8

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v151, v151, v5

    .line 191
    move-object/from16 v0, v148

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_d4

    .line 192
    check-cast v148, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .end local v148           #lms:Landroid/text/style/LeadingMarginSpan;
    invoke-interface/range {v148 .. v148}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v141

    .line 187
    :cond_d4
    add-int/lit8 v8, v8, 0x1

    goto :goto_ad

    .line 139
    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #i:I
    .end local v10           #widths:[F
    .end local v11           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v24           #choosehtv:[I
    .end local v27           #needMultiply:Z
    .end local v28           #start:I
    .end local v29           #chdirs:[B
    .end local v117           #DEFAULT_DIR:I
    .end local v130           #alter:Landroid/text/AlteredCharSequence;
    .end local v135           #bufsiz:I
    .end local v137           #chs:[C
    .end local v139           #end:I
    .end local v140           #first:Z
    .end local v141           #firstWidthLineCount:I
    .end local v142           #firstwidth:I
    .end local v151           #restwidth:I
    .end local v152           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_d7
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_16

    .line 145
    .restart local v11       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v24       #choosehtv:[I
    .restart local v27       #needMultiply:Z
    .restart local v139       #end:I
    :cond_dc
    sub-int v5, p3, p2

    move/from16 v135, v5

    goto/16 :goto_30

    .line 170
    .restart local v7       #spanned:Landroid/text/Spanned;
    .restart local v10       #widths:[F
    .restart local v28       #start:I
    .restart local v29       #chdirs:[B
    .restart local v117       #DEFAULT_DIR:I
    .restart local v130       #alter:Landroid/text/AlteredCharSequence;
    .restart local v135       #bufsiz:I
    .restart local v137       #chs:[C
    .restart local v140       #first:Z
    :cond_e2
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v28

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v139

    goto :goto_90

    .line 175
    :cond_f0
    add-int/lit8 v139, v139, 0x1

    goto :goto_94

    .line 196
    .restart local v8       #i:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v141       #firstWidthLineCount:I
    .restart local v142       #firstwidth:I
    .restart local v151       #restwidth:I
    .restart local v152       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_f3
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    check-cast v23, [Landroid/text/style/LineHeightSpan;

    .line 198
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_14a

    .line 199
    if-eqz v24, :cond_113

    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_120

    .line 201
    :cond_113
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 205
    :cond_120
    const/4 v8, 0x0

    :goto_121
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_14a

    .line 206
    aget-object v5, v23, v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v150

    .line 208
    .local v150, o:I
    move/from16 v0, v150

    move/from16 v1, v28

    if-ge v0, v1, :cond_147

    .line 212
    move-object/from16 v0, p0

    move/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v24, v8

    .line 205
    :goto_144
    add-int/lit8 v8, v8, 0x1

    goto :goto_121

    .line 216
    :cond_147
    aput v20, v24, v8

    goto :goto_144

    .line 222
    .end local v8           #i:I
    .end local v150           #o:I
    .end local v152           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_14a
    sub-int v5, v139, v28

    move-object/from16 v0, v29

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_163

    .line 223
    sub-int v5, v139, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 224
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 226
    :cond_163
    sub-int v5, v139, v28

    move-object/from16 v0, v137

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_17c

    .line 227
    sub-int v5, v139, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v137, v0

    .line 228
    move-object/from16 v0, v137

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 230
    :cond_17c
    sub-int v5, v139, v28

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v10

    if-le v5, v6, :cond_192

    .line 231
    sub-int v5, v139, v28

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v10, v5, [F

    .line 232
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 235
    :cond_192
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v139

    move-object/from16 v3, v137

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 236
    sub-int v149, v139, v28

    .line 238
    .local v149, n:I
    const/16 v31, 0x1

    .line 239
    .local v31, easy:Z
    const/16 v131, 0x0

    .line 240
    .local v131, altered:Z
    move/from16 v30, v117

    .line 242
    .local v30, dir:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1a8
    move v0, v8

    move/from16 v1, v149

    if-ge v0, v1, :cond_1b5

    .line 243
    aget-char v5, v137, v8

    const/16 v6, 0x590

    if-lt v5, v6, :cond_200

    .line 244
    const/16 v31, 0x0

    .line 253
    :cond_1b5
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_206

    .line 254
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v152, v0

    .line 255
    .local v152, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v152

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v153

    check-cast v153, [Landroid/text/style/ReplacementSpan;

    .line 257
    .local v153, spans:[Landroid/text/style/ReplacementSpan;
    const/16 v159, 0x0

    .local v159, y:I
    :goto_1d3
    move-object/from16 v0, v153

    array-length v0, v0

    move v5, v0

    move/from16 v0, v159

    move v1, v5

    if-ge v0, v1, :cond_206

    .line 258
    aget-object v5, v153, v159

    move-object/from16 v0, v152

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v129

    .line 259
    .local v129, a:I
    aget-object v5, v153, v159

    move-object/from16 v0, v152

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v132

    .line 261
    .local v132, b:I
    move/from16 v158, v129

    .local v158, x:I
    :goto_1f0
    move/from16 v0, v158

    move/from16 v1, v132

    if-ge v0, v1, :cond_203

    .line 262
    sub-int v5, v158, v28

    const v6, 0xfffc

    aput-char v6, v137, v5

    .line 261
    add-int/lit8 v158, v158, 0x1

    goto :goto_1f0

    .line 242
    .end local v129           #a:I
    .end local v132           #b:I
    .end local v152           #sp:Landroid/text/Spanned;
    .end local v153           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v158           #x:I
    .end local v159           #y:I
    :cond_200
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a8

    .line 257
    .restart local v129       #a:I
    .restart local v132       #b:I
    .restart local v152       #sp:Landroid/text/Spanned;
    .restart local v153       #spans:[Landroid/text/style/ReplacementSpan;
    .restart local v158       #x:I
    .restart local v159       #y:I
    :cond_203
    add-int/lit8 v159, v159, 0x1

    goto :goto_1d3

    .line 267
    .end local v129           #a:I
    .end local v132           #b:I
    .end local v152           #sp:Landroid/text/Spanned;
    .end local v153           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v158           #x:I
    .end local v159           #y:I
    :cond_206
    if-nez v31, :cond_245

    .line 269
    const/4 v5, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v137

    move-object/from16 v2, v29

    move/from16 v3, v149

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout;->bidi(I[C[BIZ)I

    move-result v30

    .line 273
    const/4 v8, 0x0

    :goto_217
    move v0, v8

    move/from16 v1, v149

    if-ge v0, v1, :cond_245

    .line 274
    aget-byte v5, v29, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_23f

    .line 277
    move/from16 v147, v8

    .local v147, j:I
    :goto_223
    move/from16 v0, v147

    move/from16 v1, v149

    if-ge v0, v1, :cond_22e

    .line 278
    aget-byte v5, v29, v147

    const/4 v6, 0x1

    if-eq v5, v6, :cond_242

    .line 283
    :cond_22e
    sub-int v5, v147, v8

    move-object/from16 v0, v137

    move v1, v8

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    move-result v5

    if-eqz v5, :cond_23c

    .line 284
    const/16 v131, 0x1

    .line 286
    :cond_23c
    const/4 v5, 0x1

    sub-int v8, v147, v5

    .line 273
    .end local v147           #j:I
    :cond_23f
    add-int/lit8 v8, v8, 0x1

    goto :goto_217

    .line 277
    .restart local v147       #j:I
    :cond_242
    add-int/lit8 v147, v147, 0x1

    goto :goto_223

    .line 293
    .end local v147           #j:I
    :cond_245
    if-eqz v131, :cond_3b4

    .line 294
    if-nez v130, :cond_3a7

    .line 295
    move-object/from16 v0, p1

    move-object/from16 v1, v137

    move/from16 v2, v28

    move/from16 v3, v139

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v130

    .line 299
    :goto_255
    move-object/from16 v154, v130

    .line 304
    .local v154, sub:Ljava/lang/CharSequence;
    :goto_257
    move/from16 v157, v142

    .line 306
    .local v157, width:I
    const/16 v98, 0x0

    .line 307
    .local v98, w:F
    move/from16 v14, v28

    .line 309
    .local v14, here:I
    move/from16 v15, v28

    .line 310
    .local v15, ok:I
    move/from16 v40, v98

    .line 311
    .local v40, okwidth:F
    const/16 v16, 0x0

    .local v16, okascent:I
    const/16 v17, 0x0

    .local v17, okdescent:I
    const/16 v18, 0x0

    .local v18, oktop:I
    const/16 v19, 0x0

    .line 313
    .local v19, okbottom:I
    move/from16 v44, v28

    .line 314
    .local v44, fit:I
    move/from16 v69, v98

    .line 315
    .local v69, fitwidth:F
    const/16 v45, 0x0

    .local v45, fitascent:I
    const/16 v46, 0x0

    .local v46, fitdescent:I
    const/16 v47, 0x0

    .local v47, fittop:I
    const/16 v48, 0x0

    .line 317
    .local v48, fitbottom:I
    const/16 v26, 0x0

    .line 320
    .local v26, tab:Z
    move/from16 v8, v28

    :goto_279
    move v0, v8

    move/from16 v1, v139

    if-ge v0, v1, :cond_638

    .line 321
    if-nez v7, :cond_3b8

    .line 322
    move/from16 v9, v139

    .line 328
    .local v9, next:I
    :goto_282
    if-nez v7, :cond_3c5

    .line 329
    move-object/from16 v0, p4

    move-object/from16 v1, v154

    move v2, v8

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 330
    const/4 v5, 0x0

    sub-int v6, v139, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 352
    :goto_29f
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v146, v0

    .line 353
    .local v146, fmtop:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v144, v0

    .line 354
    .local v144, fmbottom:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v143, v0

    .line 355
    .local v143, fmascent:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v145, v0

    .line 367
    .local v145, fmdescent:I
    move/from16 v147, v8

    .restart local v147       #j:I
    :goto_2b5
    move/from16 v0, v147

    move v1, v9

    if-ge v0, v1, :cond_635

    .line 368
    sub-int v5, v147, v28

    aget-char v136, v137, v5

    .line 369
    .local v136, c:C
    move/from16 v133, v98

    .line 371
    .local v133, before:F
    const/16 v5, 0xa

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_41f

    .line 411
    :goto_2c7
    move/from16 v0, v157

    int-to-float v0, v0

    move v5, v0

    cmpg-float v5, v98, v5

    if-gtz v5, :cond_4b4

    .line 412
    move/from16 v69, v98

    .line 413
    add-int/lit8 v44, v147, 0x1

    .line 415
    move/from16 v0, v146

    move/from16 v1, v47

    if-ge v0, v1, :cond_2db

    .line 416
    move/from16 v47, v146

    .line 417
    :cond_2db
    move/from16 v0, v143

    move/from16 v1, v45

    if-ge v0, v1, :cond_2e3

    .line 418
    move/from16 v45, v143

    .line 419
    :cond_2e3
    move/from16 v0, v145

    move/from16 v1, v46

    if-le v0, v1, :cond_2eb

    .line 420
    move/from16 v46, v145

    .line 421
    :cond_2eb
    move/from16 v0, v144

    move/from16 v1, v48

    if-le v0, v1, :cond_2f3

    .line 422
    move/from16 v48, v144

    .line 440
    :cond_2f3
    const/16 v5, 0x20

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_37f

    const/16 v5, 0x9

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_37f

    const/16 v5, 0x2e

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_31d

    const/16 v5, 0x2c

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_31d

    const/16 v5, 0x3a

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_31d

    const/16 v5, 0x3b

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_33f

    :cond_31d
    const/4 v5, 0x1

    sub-int v5, v147, v5

    if-lt v5, v14, :cond_32f

    const/4 v5, 0x1

    sub-int v5, v147, v5

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_33f

    :cond_32f
    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_37f

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_37f

    :cond_33f
    const/16 v5, 0x2f

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_34d

    const/16 v5, 0x2d

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_35d

    :cond_34d
    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_37f

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_37f

    :cond_35d
    const/16 v5, 0x2e80

    move/from16 v0, v136

    move v1, v5

    if-lt v0, v1, :cond_3a3

    const/4 v5, 0x1

    move/from16 v0, v136

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_3a3

    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_3a3

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_3a3

    .line 448
    :cond_37f
    move/from16 v40, v98

    .line 449
    add-int/lit8 v15, v147, 0x1

    .line 451
    move/from16 v0, v47

    move/from16 v1, v18

    if-ge v0, v1, :cond_38b

    .line 452
    move/from16 v18, v47

    .line 453
    :cond_38b
    move/from16 v0, v45

    move/from16 v1, v16

    if-ge v0, v1, :cond_393

    .line 454
    move/from16 v16, v45

    .line 455
    :cond_393
    move/from16 v0, v46

    move/from16 v1, v17

    if-le v0, v1, :cond_39b

    .line 456
    move/from16 v17, v46

    .line 457
    :cond_39b
    move/from16 v0, v48

    move/from16 v1, v19

    if-le v0, v1, :cond_3a3

    .line 458
    move/from16 v19, v48

    .line 367
    :cond_3a3
    :goto_3a3
    add-int/lit8 v147, v147, 0x1

    goto/16 :goto_2b5

    .line 297
    .end local v9           #next:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v26           #tab:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v133           #before:F
    .end local v136           #c:C
    .end local v143           #fmascent:I
    .end local v144           #fmbottom:I
    .end local v145           #fmdescent:I
    .end local v146           #fmtop:I
    .end local v147           #j:I
    .end local v154           #sub:Ljava/lang/CharSequence;
    .end local v157           #width:I
    :cond_3a7
    move-object/from16 v0, v130

    move-object/from16 v1, v137

    move/from16 v2, v28

    move/from16 v3, v139

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->update([CII)V

    goto/16 :goto_255

    .line 301
    :cond_3b4
    move-object/from16 v154, p1

    .restart local v154       #sub:Ljava/lang/CharSequence;
    goto/16 :goto_257

    .line 324
    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v26       #tab:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v157       #width:I
    :cond_3b8
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object v0, v7

    move v1, v8

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .restart local v9       #next:I
    goto/16 :goto_282

    .line 335
    :cond_3c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/text/TextPaint;->baselineShift:I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v5, p4

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 340
    const/4 v5, 0x0

    sub-int v6, v139, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget v5, v5, Landroid/text/TextPaint;->baselineShift:I

    if-gez v5, :cond_405

    .line 344
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 345
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto/16 :goto_29f

    .line 347
    :cond_405
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 348
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_29f

    .line 373
    .restart local v133       #before:F
    .restart local v136       #c:C
    .restart local v143       #fmascent:I
    .restart local v144       #fmbottom:I
    .restart local v145       #fmdescent:I
    .restart local v146       #fmtop:I
    .restart local v147       #j:I
    :cond_41f
    const/16 v5, 0x9

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_438

    .line 374
    const/4 v5, 0x0

    move-object/from16 v0, v154

    move/from16 v1, v28

    move/from16 v2, v139

    move/from16 v3, v98

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v98

    .line 375
    const/16 v26, 0x1

    goto/16 :goto_2c7

    .line 376
    :cond_438
    const v5, 0xd800

    move/from16 v0, v136

    move v1, v5

    if-lt v0, v1, :cond_4a9

    const v5, 0xdfff

    move/from16 v0, v136

    move v1, v5

    if-gt v0, v1, :cond_4a9

    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_4a9

    .line 377
    sub-int v5, v147, v28

    move-object/from16 v0, v137

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v138

    .line 379
    .local v138, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v138

    move v1, v5

    if-lt v0, v1, :cond_49e

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v138

    move v1, v5

    if-gt v0, v1, :cond_49e

    .line 380
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v134

    .line 383
    .local v134, bm:Landroid/graphics/Bitmap;
    if-eqz v134, :cond_493

    .line 386
    if-nez v7, :cond_48c

    .line 387
    move-object/from16 v155, p4

    .line 392
    .local v155, whichPaint:Landroid/graphics/Paint;
    :goto_472
    invoke-virtual/range {v134 .. v134}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v155 .. v155}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v134 .. v134}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v156, v5, v6

    .line 396
    .local v156, wid:F
    add-float v98, v98, v156

    .line 397
    const/16 v26, 0x1

    .line 398
    add-int/lit8 v147, v147, 0x1

    .line 399
    goto/16 :goto_2c7

    .line 389
    .end local v155           #whichPaint:Landroid/graphics/Paint;
    .end local v156           #wid:F
    :cond_48c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v155, v0

    .restart local v155       #whichPaint:Landroid/graphics/Paint;
    goto :goto_472

    .line 400
    .end local v155           #whichPaint:Landroid/graphics/Paint;
    :cond_493
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_2c7

    .line 403
    .end local v134           #bm:Landroid/graphics/Bitmap;
    :cond_49e
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_2c7

    .line 406
    .end local v138           #emoji:I
    :cond_4a9
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_2c7

    .line 460
    :cond_4b4
    if-eqz p11, :cond_518

    .line 461
    if-eq v15, v14, :cond_4f2

    .line 464
    :goto_4b8
    if-ge v15, v9, :cond_4c5

    sub-int v5, v15, v28

    aget-char v5, v137, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_4c5

    .line 465
    add-int/lit8 v15, v15, 0x1

    goto :goto_4b8

    .line 468
    :cond_4c5
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_4ee

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_4cd
    sub-int v37, v139, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 480
    move v14, v15

    goto/16 :goto_3a3

    .line 468
    :cond_4ee
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_4cd

    .line 484
    :cond_4f2
    move/from16 v69, v98

    .line 485
    add-int/lit8 v44, v147, 0x1

    .line 487
    move/from16 v0, v146

    move/from16 v1, v47

    if-ge v0, v1, :cond_4fe

    .line 488
    move/from16 v47, v146

    .line 489
    :cond_4fe
    move/from16 v0, v143

    move/from16 v1, v45

    if-ge v0, v1, :cond_506

    .line 490
    move/from16 v45, v143

    .line 491
    :cond_506
    move/from16 v0, v145

    move/from16 v1, v46

    if-le v0, v1, :cond_50e

    .line 492
    move/from16 v46, v145

    .line 493
    :cond_50e
    move/from16 v0, v144

    move/from16 v1, v48

    if-le v0, v1, :cond_3a3

    .line 494
    move/from16 v48, v144

    goto/16 :goto_3a3

    .line 497
    :cond_518
    if-eq v15, v14, :cond_574

    .line 500
    :goto_51a
    if-ge v15, v9, :cond_527

    sub-int v5, v15, v28

    aget-char v5, v137, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_527

    .line 501
    add-int/lit8 v15, v15, 0x1

    goto :goto_51a

    .line 504
    :cond_527
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_570

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_52f
    sub-int v37, v139, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 516
    move v14, v15

    .line 556
    .end local v98           #w:F
    :goto_54e
    if-ge v14, v8, :cond_630

    .line 557
    move v9, v14

    move/from16 v147, v14

    .line 562
    :goto_553
    move/from16 v44, v14

    move v15, v14

    .line 563
    const/16 v98, 0x0

    .line 564
    .restart local v98       #w:F
    const/16 v48, 0x0

    move/from16 v47, v48

    move/from16 v46, v48

    move/from16 v45, v48

    .line 565
    const/16 v19, 0x0

    move/from16 v18, v19

    move/from16 v17, v19

    move/from16 v16, v19

    .line 567
    add-int/lit8 v141, v141, -0x1

    if-gtz v141, :cond_3a3

    .line 568
    move/from16 v157, v151

    goto/16 :goto_3a3

    .line 504
    :cond_570
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_52f

    .line 517
    :cond_574
    move/from16 v0, v44

    move v1, v14

    if-eq v0, v1, :cond_5bb

    .line 519
    move/from16 v0, v44

    move/from16 v1, p3

    if-ne v0, v1, :cond_5b7

    const/4 v5, 0x1

    move/from16 v61, v5

    :goto_582
    sub-int v66, v139, v28

    move-object/from16 v41, p0

    move-object/from16 v42, p1

    move/from16 v43, v14

    move/from16 v49, v20

    move/from16 v50, p7

    move/from16 v51, p8

    move-object/from16 v52, v23

    move-object/from16 v53, v24

    move-object/from16 v54, v11

    move/from16 v55, v26

    move/from16 v56, v27

    move/from16 v57, v28

    move-object/from16 v58, v29

    move/from16 v59, v30

    move/from16 v60, v31

    move/from16 v62, p9

    move/from16 v63, p10

    move-object/from16 v64, v10

    move/from16 v65, v28

    move-object/from16 v67, p13

    move/from16 v68, p12

    move-object/from16 v70, p4

    invoke-direct/range {v41 .. v70}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 532
    move/from16 v14, v44

    goto :goto_54e

    .line 519
    :cond_5b7
    const/4 v5, 0x0

    move/from16 v61, v5

    goto :goto_582

    .line 535
    :cond_5bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v33, v0

    add-int/lit8 v36, v14, 0x1

    const/16 v39, 0x0

    move-object/from16 v32, p4

    move-object/from16 v34, p1

    move/from16 v35, v14

    move-object/from16 v37, v11

    move/from16 v38, v26

    invoke-static/range {v32 .. v39}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    .line 539
    add-int/lit8 v73, v14, 0x1

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v74, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v75, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v76, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v77, v0

    add-int/lit8 v5, v14, 0x1

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_62c

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_5f2
    sub-int v95, v139, v28

    sub-int v5, v14, v28

    aget v98, v10, v5

    .end local v98           #w:F
    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 553
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_54e

    .line 539
    .restart local v98       #w:F
    :cond_62c
    const/4 v5, 0x0

    move/from16 v90, v5

    goto :goto_5f2

    .line 559
    .end local v98           #w:F
    :cond_630
    const/4 v5, 0x1

    sub-int v147, v14, v5

    goto/16 :goto_553

    .line 320
    .end local v133           #before:F
    .end local v136           #c:C
    .restart local v98       #w:F
    :cond_635
    move v8, v9

    goto/16 :goto_279

    .line 574
    .end local v9           #next:I
    .end local v143           #fmascent:I
    .end local v144           #fmbottom:I
    .end local v145           #fmdescent:I
    .end local v146           #fmtop:I
    .end local v147           #j:I
    :cond_638
    move/from16 v0, v139

    move v1, v14

    if-eq v0, v1, :cond_6a4

    .line 575
    or-int v5, v47, v48

    or-int v5, v5, v46

    or-int v5, v5, v45

    if-nez v5, :cond_65f

    .line 576
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 578
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v47, v0

    .line 579
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v48, v0

    .line 580
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v45, v0

    .line 581
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v46, v0

    .line 586
    :cond_65f
    move/from16 v0, v139

    move/from16 v1, p3

    if-ne v0, v1, :cond_711

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_668
    sub-int v95, v139, v28

    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v73, v139

    move/from16 v74, v45

    move/from16 v75, v46

    move/from16 v76, v47

    move/from16 v77, v48

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 598
    :cond_6a4
    move/from16 v28, v139

    .line 600
    move/from16 v0, v139

    move/from16 v1, p3

    if-ne v0, v1, :cond_716

    .line 604
    .end local v8           #i:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v26           #tab:Z
    .end local v30           #dir:I
    .end local v31           #easy:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v131           #altered:Z
    .end local v141           #firstWidthLineCount:I
    .end local v142           #firstwidth:I
    .end local v149           #n:I
    .end local v151           #restwidth:I
    .end local v154           #sub:Ljava/lang/CharSequence;
    .end local v157           #width:I
    :cond_6ac
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_6c0

    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_710

    .line 607
    :cond_6c0
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 609
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v103, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v113, 0x0

    const/16 v118, 0x1

    const/16 v119, 0x1

    const/16 v124, 0x0

    const/16 v127, 0x0

    move-object/from16 v99, p0

    move-object/from16 v100, p1

    move/from16 v101, p3

    move/from16 v102, p3

    move/from16 v107, v20

    move/from16 v108, p7

    move/from16 v109, p8

    move-object/from16 v112, v11

    move/from16 v114, v27

    move/from16 v115, p3

    move-object/from16 v116, v29

    move/from16 v120, p9

    move/from16 v121, p10

    move-object/from16 v122, v10

    move/from16 v123, p2

    move-object/from16 v125, p13

    move/from16 v126, p12

    move-object/from16 v128, p4

    invoke-direct/range {v99 .. v128}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 620
    :cond_710
    return-void

    .line 586
    .restart local v8       #i:I
    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v26       #tab:Z
    .restart local v30       #dir:I
    .restart local v31       #easy:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v131       #altered:Z
    .restart local v141       #firstWidthLineCount:I
    .restart local v142       #firstwidth:I
    .restart local v149       #n:I
    .restart local v151       #restwidth:I
    .restart local v154       #sub:Ljava/lang/CharSequence;
    .restart local v157       #width:I
    :cond_711
    const/4 v5, 0x0

    move/from16 v90, v5

    goto/16 :goto_668

    .line 166
    :cond_716
    move/from16 v28, v139

    goto/16 :goto_86
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 1349
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1354
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 1355
    const/4 v0, 0x0

    .line 1358
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1363
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 1364
    const/4 v0, 0x0

    .line 1367
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 1372
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 4
    .parameter "line"

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 1317
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1325
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .parameter "line"

    .prologue
    .line 1341
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .registers 8
    .parameter "vertical"

    .prologue
    .line 1297
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1298
    .local v1, high:I
    const/4 v3, -0x1

    .line 1300
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1301
    .local v2, lines:[I
    :goto_5
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1b

    .line 1302
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1303
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_19

    .line 1304
    move v1, v0

    goto :goto_5

    .line 1306
    :cond_19
    move v3, v0

    goto :goto_5

    .line 1309
    .end local v0           #guess:I
    :cond_1b
    if-gez v3, :cond_1f

    .line 1310
    const/4 v4, 0x0

    .line 1312
    :goto_1e
    return v4

    :cond_1f
    move v4, v3

    goto :goto_1e
.end method

.method public getLineStart(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1329
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 1333
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 1345
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public setIsRTLText(Z)V
    .registers 2
    .parameter "isRTLText"

    .prologue
    .line 121
    invoke-static {p1}, Landroid/text/StaticLayout;->setRTLText(Z)V

    .line 122
    return-void
.end method
