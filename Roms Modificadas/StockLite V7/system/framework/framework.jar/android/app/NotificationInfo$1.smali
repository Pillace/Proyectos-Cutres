.class final Landroid/app/NotificationInfo$1;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationInfo;
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
        "Landroid/app/NotificationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationInfo;
    .registers 3
    .parameter "parcel"

    .prologue
    .line 105
    new-instance v0, Landroid/app/NotificationInfo;

    invoke-direct {v0, p1}, Landroid/app/NotificationInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/app/NotificationInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/NotificationInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 110
    new-array v0, p1, [Landroid/app/NotificationInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/app/NotificationInfo$1;->newArray(I)[Landroid/app/NotificationInfo;

    move-result-object v0

    return-object v0
.end method
