.class Lcom/android/internal/policy/impl/CircleUnlockView$8;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleUnlockView;->setAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V
    .registers 2
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$8;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$8;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$1300(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 429
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 424
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 419
    return-void
.end method
