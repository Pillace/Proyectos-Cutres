.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_RELEASE:Z = false

.field public static final FLAGS_ORIENTATION_ANIMATION_DISABLE:I = 0x1

.field public static final FULL_SCREEN:I = 0x400

.field public static final FX_SURFACE_BLUR:I = 0x10000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final GPU:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HARDWARE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HIDDEN:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "Surface"

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final PUSH_BUFFERS:I = 0x200

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SECURE:I = 0x80

.field public static final SURACE_FROZEN:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SURFACE_BLUR_FREEZE:I = 0x10

.field public static final SURFACE_DITHER:I = 0x4

.field public static final SURFACE_FROZEN:I = 0x2

.field public static final SURFACE_HIDDEN:I = 0x1

.field private static isTransactionLockLocked:Z


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mCreationStack:Ljava/lang/Exception;

.field private mName:Ljava/lang/String;

.field private mNativeSurface:I

.field private mSaveCount:I

.field private mSurfaceControl:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 184
    invoke-static {}, Landroid/view/Surface;->nativeClassInit()V

    .line 339
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/Surface;->isTransactionLockLocked:Z

    .line 445
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 226
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    invoke-direct {p0, p1}, Landroid/view/Surface;->init(Landroid/os/Parcel;)V

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Surface$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/Surface;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;IIIIII)V
    .registers 17
    .parameter "s"
    .parameter "pid"
    .parameter "display"
    .parameter "w"
    .parameter "h"
    .parameter "format"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 198
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;->init(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V
    .registers 11
    .parameter "s"
    .parameter "pid"
    .parameter "name"
    .parameter "display"
    .parameter "w"
    .parameter "h"
    .parameter "format"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 212
    invoke-direct/range {p0 .. p8}, Landroid/view/Surface;->init(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .line 213
    iput-object p3, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 214
    return-void
.end method

.method static synthetic access$100(Landroid/view/Surface;)Landroid/util/DisplayMetrics;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private static declared-synchronized acquireLock()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 342
    const-class v0, Landroid/view/Surface;

    monitor-enter v0

    :try_start_4
    sget-boolean v1, Landroid/view/Surface;->isTransactionLockLocked:Z

    if-nez v1, :cond_e

    .line 343
    const/4 v1, 0x1

    sput-boolean v1, Landroid/view/Surface;->isTransactionLockLocked:Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move v1, v2

    .line 346
    :goto_c
    monitor-exit v0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 342
    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static native closeTransaction()V
.end method

.method public static closeTransactionLocked()V
    .registers 0

    .prologue
    .line 368
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 369
    invoke-static {}, Landroid/view/Surface;->releaseLock()V

    .line 370
    return-void
.end method

.method public static native freezeDisplay(I)V
.end method

.method private native getIdentity()I
.end method

.method private native init(Landroid/os/Parcel;)V
.end method

.method private native init(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native lockCanvasNative(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
.end method

.method private static native nativeClassInit()V
.end method

.method public static native openTransaction()V
.end method

.method public static openTransactionLocked()V
    .registers 3

    .prologue
    .line 355
    :goto_0
    invoke-static {}, Landroid/view/Surface;->acquireLock()Z

    move-result v1

    if-nez v1, :cond_19

    .line 357
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_0

    .line 359
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 360
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Surface"

    const-string v2, "Exception sleep() in openTransactionLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 363
    .end local v0           #e:Ljava/lang/Exception;
    :cond_19
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 364
    return-void
.end method

.method private static declared-synchronized releaseLock()V
    .registers 2

    .prologue
    .line 350
    const-class v0, Landroid/view/Surface;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Landroid/view/Surface;->isTransactionLockLocked:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 351
    monitor-exit v0

    return-void

    .line 350
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setOrientation(II)V
    .registers 3
    .parameter "display"
    .parameter "orientation"

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/Surface;->setOrientation(III)V

    .line 405
    return-void
.end method

.method public static native setOrientation(III)V
.end method

.method public static native unfreezeDisplay(I)V
.end method


# virtual methods
.method public native copyFrom(Landroid/view/Surface;)V
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public native destroy()V
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 465
    iget v0, p0, Landroid/view/Surface;->mNativeSurface:I

    if-nez v0, :cond_8

    iget v0, p0, Landroid/view/Surface;->mSurfaceControl:I

    if-eqz v0, :cond_34

    .line 470
    :cond_8
    const-string v0, "Surface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface.finalize() has work. You should have called release() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/Surface;->mNativeSurface:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/Surface;->mSurfaceControl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_34
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 475
    return-void
.end method

.method public native freeze()V
.end method

.method public native hide()V
.end method

.method public native isValid()Z
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/view/Surface;->lockCanvasNative(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public native readFromParcel(Landroid/os/Parcel;)V
.end method

.method public native release()V
.end method

.method public native setAlpha(F)V
.end method

.method setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V
    .registers 5
    .parameter "metrics"
    .parameter "translator"

    .prologue
    .line 283
    iput-object p1, p0, Landroid/view/Surface;->mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 284
    if-eqz p2, :cond_12

    .line 285
    iget v0, p2, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 286
    .local v0, appScale:F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 287
    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 289
    .end local v0           #appScale:F
    :cond_12
    return-void
.end method

.method public native setFlags(II)V
.end method

.method public native setFreezeTint(I)V
.end method

.method public native setLayer(I)V
.end method

.method public native setMatrix(FFFF)V
.end method

.method public native setPosition(II)V
.end method

.method public native setSize(II)V
.end method

.method public native setTransparentRegionHint(Landroid/graphics/Region;)V
.end method

.method public native show()V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/Surface;->getIdentity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native unfreeze()V
.end method

.method public native unlockCanvas(Landroid/graphics/Canvas;)V
.end method

.method public native unlockCanvasAndPost(Landroid/graphics/Canvas;)V
.end method

.method public native writeToParcel(Landroid/os/Parcel;I)V
.end method
