.class final Landroid/location/Location$1;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
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
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .registers 8
    .parameter "in"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, provider:Ljava/lang/String;
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, l:Landroid/location/Location;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/Location;->access$002(Landroid/location/Location;J)J

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/Location;->access$102(Landroid/location/Location;D)D

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/Location;->access$202(Landroid/location/Location;D)D

    .line 705
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6c

    move v2, v5

    :goto_27
    invoke-static {v0, v2}, Landroid/location/Location;->access$302(Landroid/location/Location;Z)Z

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/Location;->access$402(Landroid/location/Location;D)D

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6e

    move v2, v5

    :goto_38
    invoke-static {v0, v2}, Landroid/location/Location;->access$502(Landroid/location/Location;Z)Z

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->access$602(Landroid/location/Location;F)F

    .line 709
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_70

    move v2, v5

    :goto_49
    invoke-static {v0, v2}, Landroid/location/Location;->access$702(Landroid/location/Location;Z)Z

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->access$802(Landroid/location/Location;F)F

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_72

    move v2, v5

    :goto_5a
    invoke-static {v0, v2}, Landroid/location/Location;->access$902(Landroid/location/Location;Z)Z

    .line 712
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->access$1002(Landroid/location/Location;F)F

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/location/Location;->access$1102(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 714
    return-object v0

    :cond_6c
    move v2, v4

    .line 705
    goto :goto_27

    :cond_6e
    move v2, v4

    .line 707
    goto :goto_38

    :cond_70
    move v2, v4

    .line 709
    goto :goto_49

    :cond_72
    move v2, v4

    .line 711
    goto :goto_5a
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Location;
    .registers 3
    .parameter "size"

    .prologue
    .line 718
    new-array v0, p1, [Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->newArray(I)[Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
