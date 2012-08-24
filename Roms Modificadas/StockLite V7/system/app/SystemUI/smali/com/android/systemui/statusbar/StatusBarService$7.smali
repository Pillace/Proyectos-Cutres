.class Lcom/android/systemui/statusbar/StatusBarService$7;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarService;->makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;

.field final synthetic val$notification:Lcom/android/internal/statusbar/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$7;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarService$7;->val$notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$7;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$7;->val$notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService$7;->val$notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v2, v2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService$7;->val$notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    goto :goto_0
.end method
