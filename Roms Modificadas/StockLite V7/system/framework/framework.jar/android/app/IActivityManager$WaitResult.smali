.class public Landroid/app/IActivityManager$WaitResult;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitResult"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public result:I

.field public thisTime:J

.field public timeout:Z

.field public totalTime:J

.field public who:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 395
    new-instance v0, Landroid/app/IActivityManager$WaitResult$1;

    invoke-direct {v0}, Landroid/app/IActivityManager$WaitResult$1;-><init>()V

    sput-object v0, Landroid/app/IActivityManager$WaitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 409
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 412
    return-void

    .line 408
    :cond_25
    const/4 v0, 0x0

    goto :goto_10
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/IActivityManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Landroid/app/IActivityManager$WaitResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 388
    iget v0, p0, Landroid/app/IActivityManager$WaitResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget-boolean v0, p0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-object v0, p0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 391
    iget-wide v0, p0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 392
    iget-wide v0, p0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 393
    return-void

    .line 389
    :cond_1d
    const/4 v0, 0x0

    goto :goto_a
.end method
