.class Lcom/android/internal/policy/impl/SimUnlockScreen$2;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .registers 5
    .parameter "success"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 345
    :cond_11
    if-eqz p1, :cond_2f

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 364
    :goto_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 365
    return-void

    .line 353
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1002(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 354
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimLockChangedResponse(): num_of_retry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104030a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$102(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto :goto_25
.end method
