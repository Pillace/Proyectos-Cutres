.class final Landroid/app/ActivityThread$ContextCleanupInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContextCleanupInfo"
.end annotation


# instance fields
.field context:Landroid/app/ContextImpl;

.field what:Ljava/lang/String;

.field who:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    invoke-direct {p0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    return-void
.end method
