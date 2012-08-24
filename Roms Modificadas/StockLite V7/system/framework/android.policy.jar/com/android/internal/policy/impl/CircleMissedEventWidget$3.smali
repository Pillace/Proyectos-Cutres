.class Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;
.super Ljava/lang/Object;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleUnlocked(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    if-nez v1, :cond_9

    .line 170
    :goto_8
    return-void

    .line 146
    :cond_9
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$5;->$SwitchMap$com$android$internal$policy$impl$CircleMissedEventWidget$UnlockMode:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_68

    goto :goto_8

    .line 149
    :pswitch_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidget;Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_8

    .line 154
    :pswitch_2c
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidget;Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_8

    .line 159
    :pswitch_3d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "ViewBy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_8

    .line 146
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_2c
        :pswitch_3d
    .end packed-switch
.end method
