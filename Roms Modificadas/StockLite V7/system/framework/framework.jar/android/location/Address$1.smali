.class final Landroid/location/Address$1;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;
    .registers 14
    .parameter "in"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, language:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, country:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4d

    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 483
    .local v7, locale:Ljava/util/Locale;
    :goto_16
    new-instance v1, Landroid/location/Address;

    invoke-direct {v1, v7}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 485
    .local v1, a:Landroid/location/Address;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 486
    .local v0, N:I
    if-lez v0, :cond_54

    .line 487
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v1, v8}, Landroid/location/Address;->access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 488
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2a
    if-ge v3, v0, :cond_5c

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 490
    .local v4, index:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 491
    .local v6, line:Ljava/lang/String;
    invoke-static {v1}, Landroid/location/Address;->access$000(Landroid/location/Address;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-static {v1}, Landroid/location/Address;->access$100(Landroid/location/Address;)I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$102(Landroid/location/Address;I)I

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 480
    .end local v0           #N:I
    .end local v1           #a:Landroid/location/Address;
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #locale:Ljava/util/Locale;
    :cond_4d
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_16

    .line 496
    .restart local v0       #N:I
    .restart local v1       #a:Landroid/location/Address;
    .restart local v7       #locale:Ljava/util/Locale;
    :cond_54
    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroid/location/Address;->access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 497
    const/4 v8, -0x1

    invoke-static {v1, v8}, Landroid/location/Address;->access$102(Landroid/location/Address;I)I

    .line 499
    :cond_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$302(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$402(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$502(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$602(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$902(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$1002(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$1102(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$1202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_ed

    move v8, v10

    :goto_b0
    invoke-static {v1, v8}, Landroid/location/Address;->access$1302(Landroid/location/Address;Z)Z

    .line 511
    invoke-static {v1}, Landroid/location/Address;->access$1300(Landroid/location/Address;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v1, v8, v9}, Landroid/location/Address;->access$1402(Landroid/location/Address;D)D

    .line 514
    :cond_c0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_ef

    move v8, v10

    :goto_c7
    invoke-static {v1, v8}, Landroid/location/Address;->access$1502(Landroid/location/Address;Z)Z

    .line 515
    invoke-static {v1}, Landroid/location/Address;->access$1500(Landroid/location/Address;)Z

    move-result v8

    if-eqz v8, :cond_d7

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v1, v8, v9}, Landroid/location/Address;->access$1602(Landroid/location/Address;D)D

    .line 518
    :cond_d7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$1702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$1802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/location/Address;->access$1902(Landroid/location/Address;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 521
    return-object v1

    :cond_ed
    move v8, v11

    .line 510
    goto :goto_b0

    :cond_ef
    move v8, v11

    .line 514
    goto :goto_c7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Landroid/location/Address$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Address;
    .registers 3
    .parameter "size"

    .prologue
    .line 525
    new-array v0, p1, [Landroid/location/Address;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Landroid/location/Address$1;->newArray(I)[Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method
