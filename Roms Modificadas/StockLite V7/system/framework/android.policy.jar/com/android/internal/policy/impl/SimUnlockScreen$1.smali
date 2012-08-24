.class Lcom/android/internal/policy/impl/SimUnlockScreen$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 153
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_65

    .line 154
    const/16 v2, 0x43

    if-ne p2, v2, :cond_24

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v2

    if-lez v2, :cond_22

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$110(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    :cond_22
    move v2, v4

    .line 181
    :goto_23
    return v2

    .line 162
    :cond_24
    const/16 v2, 0x42

    if-ne p2, v2, :cond_4e

    .line 163
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, focused:Landroid/view/View;
    const-string v2, "SimUnlockScreen"

    const-string v3, "onKeyDown :: KEYCODE_ENTER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/Button;

    move-result-object v2

    if-ne v0, v2, :cond_48

    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    :goto_46
    move v2, v4

    .line 170
    goto :goto_23

    .line 168
    :cond_48
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    goto :goto_46

    .line 173
    .end local v0           #focused:Landroid/view/View;
    :cond_4e
    invoke-static {}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600()[C

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v1

    .line 174
    .local v1, match:C
    if-eqz v1, :cond_63

    .line 175
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/16 v3, 0x30

    sub-int v3, v1, v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V

    move v2, v4

    .line 176
    goto :goto_23

    :cond_63
    move v2, v3

    .line 179
    goto :goto_23

    .end local v1           #match:C
    :cond_65
    move v2, v3

    .line 181
    goto :goto_23
.end method
