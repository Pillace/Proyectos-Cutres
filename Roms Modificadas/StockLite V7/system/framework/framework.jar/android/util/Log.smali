.class public final Landroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Log$TerribleFailureHandler;,
        Landroid/util/Log$TerribleFailure;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LEVEL:I = 0x8

.field public static final LOG_ID_EVENTS:I = 0x2

.field public static final LOG_ID_MAIN:I = 0x0

.field public static final LOG_ID_RADIO:I = 0x1

.field public static final LOG_ID_SYSTEM:I = 0x3

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sWtfHandler:Landroid/util/Log$TerribleFailureHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    new-instance v0, Landroid/util/Log$1;

    invoke-direct {v0}, Landroid/util/Log$1;-><init>()V

    sput-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 371
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 382
    const/4 v0, 0x0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4
    .parameter "tr"

    .prologue
    .line 516
    if-nez p0, :cond_5

    .line 517
    const-string v2, ""

    .line 522
    :goto_4
    return-object v2

    .line 519
    :cond_5
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 520
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 521
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 522
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native isLoggable(Ljava/lang/String;I)Z
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static secd(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public static secd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public static sece(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public static sece(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public static seci(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public static seci(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public static secv(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public static secv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public static secw(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public static secw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public static secw(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public static secwtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public static secwtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public static secwtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public static setWtfHandler(Landroid/util/Log$TerribleFailureHandler;)Landroid/util/Log$TerribleFailureHandler;
    .registers 4
    .parameter "handler"

    .prologue
    .line 503
    if-nez p0, :cond_a

    .line 504
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "handler == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_a
    sget-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 507
    .local v0, oldHandler:Landroid/util/Log$TerribleFailureHandler;
    sput-object p0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 508
    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 275
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 286
    const/4 v0, 0x0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 346
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 8
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 474
    new-instance v1, Landroid/util/Log$TerribleFailure;

    invoke-direct {v1, p1, p2}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    .local v1, what:Landroid/util/Log$TerribleFailure;
    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, bytes:I
    sget-object v2, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v2, p0, v1}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;)V

    .line 477
    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 449
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method