.class Lcom/android/internal/policy/impl/CircleLockScreen$1;
.super Ljava/lang/Object;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleTouchDown(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    .line 128
    return-void
.end method

.method public onCircleTouchMove(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 132
    return-void
.end method

.method public onCircleTouchUp(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    .line 138
    return-void
.end method
