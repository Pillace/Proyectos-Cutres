.class final Landroid/text/util/Linkify$1;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v2, 0x1

    .line 99
    if-nez p2, :cond_5

    move v0, v2

    .line 107
    :goto_4
    return v0

    .line 103
    :cond_5
    sub-int v0, p2, v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_11

    .line 104
    const/4 v0, 0x0

    goto :goto_4

    :cond_11
    move v0, v2

    .line 107
    goto :goto_4
.end method
