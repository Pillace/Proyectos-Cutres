.class public Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataBitmap.java"


# static fields
.field private static final LIMIT_SIZE:I = 0x7ce65


# instance fields
.field private mValue:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method


# virtual methods
.method public GetBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 6
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 29
    .local v0, Result:Z
    if-eqz v0, :cond_a

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    if-nez v2, :cond_c

    :cond_a
    move v1, v0

    .line 43
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_b
    return v1

    .line 31
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_c
    packed-switch p1, :pswitch_data_1c

    .end local p2
    :goto_f
    :pswitch_f
    move v1, v0

    .line 43
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_b

    .line 36
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_11
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p2
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 37
    goto :goto_f

    .line 31
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)Z
    .registers 7
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x0

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, Result:Z
    if-nez p1, :cond_6

    const/4 v2, 0x0

    .line 73
    :goto_5
    return v2

    .line 57
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    const v3, 0x7ce65

    if-le v2, v3, :cond_20

    .line 59
    const-string v2, "ClipboardServiceEx"

    const-string/jumbo v3, "very big size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    move v2, v0

    .line 61
    goto :goto_5

    .line 66
    :cond_20
    :try_start_20
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_29

    .line 67
    const/4 v0, 0x1

    :goto_27
    move v2, v0

    .line 73
    goto :goto_5

    .line 68
    :catch_29
    move-exception v2

    move-object v1, v2

    .line 70
    .local v1, e:Ljava/lang/Exception;
    iput-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    goto :goto_27
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .parameter "o"

    .prologue
    const-string v11, "ClipboardServiceEx"

    .line 88
    const-string v8, "ClipboardServiceEx"

    const-string v8, "bitmap equals"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, Result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    move v2, v1

    .line 126
    .end local v1           #Result:Z
    .local v2, Result:I
    :goto_11
    return v2

    .line 93
    .end local v2           #Result:I
    .restart local v1       #Result:Z
    :cond_12
    instance-of v8, p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-nez v8, :cond_18

    move v2, v1

    .line 94
    .restart local v2       #Result:I
    goto :goto_11

    .line 96
    .end local v2           #Result:I
    :cond_18
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    move-object v7, v0

    .line 97
    .local v7, trgData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 99
    .local v6, trgBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v8, v9, :cond_3e

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v8, v9, :cond_3e

    const/4 v8, 0x1

    move v1, v8

    .line 101
    :goto_3a
    if-nez v1, :cond_41

    move v2, v1

    .line 102
    .restart local v2       #Result:I
    goto :goto_11

    .line 99
    .end local v2           #Result:I
    :cond_3e
    const/4 v8, 0x0

    move v1, v8

    goto :goto_3a

    .line 104
    :cond_41
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .local v3, byteArraySrc:Ljava/io/ByteArrayOutputStream;
    :try_start_46
    iget-object v8, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_69

    .line 114
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    .local v4, byteArrayTgr:Ljava/io/ByteArrayOutputStream;
    :try_start_54
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v6, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_89

    .line 124
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    move v2, v1

    .line 126
    .restart local v2       #Result:I
    goto :goto_11

    .line 108
    .end local v2           #Result:I
    .end local v4           #byteArrayTgr:Ljava/io/ByteArrayOutputStream;
    :catch_69
    move-exception v8

    move-object v5, v8

    .line 110
    .local v5, e:Ljava/lang/Exception;
    const-string v8, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SourceImage convert error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 111
    .restart local v2       #Result:I
    goto :goto_11

    .line 118
    .end local v2           #Result:I
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #byteArrayTgr:Ljava/io/ByteArrayOutputStream;
    :catch_89
    move-exception v8

    move-object v5, v8

    .line 120
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TargetImage convert error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 121
    .restart local v2       #Result:I
    goto/16 :goto_11
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 5
    .parameter "source"

    .prologue
    .line 151
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 157
    :goto_a
    return-void

    .line 153
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-string v4, "ClipboardServiceEx"

    .line 132
    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v1, "write to parcel"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    :try_start_d
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataCapacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/BadParcelableException; {:try_start_d .. :try_end_3c} :catch_3d

    .line 144
    :goto_3c
    return-void

    .line 140
    :catch_3d
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, e:Landroid/os/BadParcelableException;
    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Landroid/os/BadParcelableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
