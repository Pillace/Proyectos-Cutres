.class Landroid/os/StrictMode$StrictModeDiskWriteViolation;
.super Ldalvik/system/BlockGuard$BlockGuardPolicyException;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrictModeDiskWriteViolation"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "policyMask"

    .prologue
    .line 562
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;-><init>(II)V

    .line 563
    return-void
.end method
