.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "LinearGradient.java"


# direct methods
.method public constructor <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .registers 15
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "color0"
    .parameter "color1"
    .parameter "tile"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 54
    iget v6, p7, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/LinearGradient;->nativeCreate2(FFFFIII)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    .line 55
    return-void
.end method

.method public constructor <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .registers 15
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "colors"
    .parameter "positions"
    .parameter "tile"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 34
    array-length v0, p5

    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_f
    if-eqz p6, :cond_1d

    array-length v0, p5

    array-length v1, p6

    if-eq v0, v1, :cond_1d

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1d
    iget v6, p7, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/LinearGradient;->nativeCreate1(FFFF[I[FI)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    .line 41
    return-void
.end method

.method private static native nativeCreate1(FFFF[I[FI)I
.end method

.method private static native nativeCreate2(FFFFIII)I
.end method
