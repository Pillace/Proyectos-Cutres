.class Landroid/widget/NumberPicker$NumberRangeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberRangeKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method private constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Landroid/widget/NumberPicker$NumberRangeKeyListener;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 598
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker$NumberRangeKeyListener;-><init>(Landroid/widget/NumberPicker;)V

    return-void
.end method

.method private hardKeyConvert(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "source"

    .prologue
    .line 658
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-static {}, Landroid/widget/NumberPicker;->access$1600()[C

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3b

    .line 661
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-B7510"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    .line 662
    invoke-static {}, Landroid/widget/NumberPicker;->access$2000()[C

    move-result-object v2

    aget-char v2, v2, v0

    invoke-static {}, Landroid/widget/NumberPicker;->access$1600()[C

    move-result-object v3

    aget-char v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 660
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 664
    :cond_2a
    invoke-static {}, Landroid/widget/NumberPicker;->access$2100()[C

    move-result-object v2

    aget-char v2, v2, v0

    invoke-static {}, Landroid/widget/NumberPicker;->access$1600()[C

    move-result-object v3

    aget-char v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 668
    :cond_3b
    return-object v1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 21
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 618
    iget-object v3, p0, Landroid/widget/NumberPicker$NumberRangeKeyListener;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 619
    .local v10, config:Landroid/content/res/Configuration;
    iget v3, v10, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_67

    .line 620
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker$NumberRangeKeyListener;->hardKeyConvert(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, keyConverted:Ljava/lang/CharSequence;
    :goto_13
    move-object v3, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 625
    invoke-super/range {v3 .. v9}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 627
    .local v11, filtered:Ljava/lang/CharSequence;
    if-nez v11, :cond_2d

    .line 628
    move-object v0, v4

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 631
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move v1, v4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    .end local v4           #keyConverted:Ljava/lang/CharSequence;
    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v4

    move-object/from16 v0, p4

    move/from16 v1, p6

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 635
    .local v12, result:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    move-object v3, v12

    .line 651
    :goto_66
    return-object v3

    .line 622
    .end local v11           #filtered:Ljava/lang/CharSequence;
    .end local v12           #result:Ljava/lang/String;
    :cond_67
    move-object v4, p1

    .restart local v4       #keyConverted:Ljava/lang/CharSequence;
    goto :goto_13

    .line 638
    .end local v4           #keyConverted:Ljava/lang/CharSequence;
    .restart local v11       #filtered:Ljava/lang/CharSequence;
    .restart local v12       #result:Ljava/lang/String;
    :cond_69
    iget-object v3, p0, Landroid/widget/NumberPicker$NumberRangeKeyListener;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3, v12}, Landroid/widget/NumberPicker;->access$1700(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    move-result v13

    .line 640
    .local v13, val:I
    iget-object v3, p0, Landroid/widget/NumberPicker$NumberRangeKeyListener;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3, v11, v12}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 648
    iget-object v3, p0, Landroid/widget/NumberPicker$NumberRangeKeyListener;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)I

    move-result v3

    if-le v13, v3, :cond_80

    .line 649
    const-string v3, ""

    goto :goto_66

    :cond_80
    move-object v3, v11

    .line 651
    goto :goto_66
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 608
    invoke-static {}, Landroid/widget/NumberPicker;->access$1600()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 603
    const/4 v0, 0x2

    return v0
.end method
