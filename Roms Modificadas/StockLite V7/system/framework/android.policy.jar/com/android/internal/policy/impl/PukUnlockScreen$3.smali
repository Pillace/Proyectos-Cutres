.class Lcom/android/internal/policy/impl/PukUnlockScreen$3;
.super Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;
.source "PukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PukUnlockScreen;->checkPUK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .registers 4
    .parameter "success"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 491
    if-eqz p1, :cond_1e

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1500(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 507
    :goto_1d
    return-void

    .line 499
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104030a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$502(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$202(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_1d
.end method
